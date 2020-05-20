% import model
% rebase('base.tpl')

<blockquote>
  Vislice, ikonična ter vsem dobro znana igra.
</blockquote>

<table>
  <tr>
    <td>
      <h2>{{ igra.pravilni_del_gesla() }}</h2>
    </td>
  </tr>

  <tr>
    <td>
      Nepravilni ugibi: {{ igra.nepravilni_ugibi() }}
    </td>
  </tr>

  <tr>
    <td>
      <img src="../../img/{{igra.stevilo_napak()}}.jpg" alt="SLIKA 2 NE DELA">
    </td>
  </tr>
</table>


% if poskus == model.ZMAGA:
<h1> ZMAGAL SI </h1>
<form action="/igra/" method="post">
  <button type="submit">Grem še eno igro!</button>
</form>

% elif poskus == model.PORAZ:
<h1> IZGUBIL SI </h1>
<h3> Pravilno geslo je bilo: {{ igra.geslo }} </h3>
<form action="/igra/" method="post">
  <button type="submit">Grem še eno igro!</button>
</form>

% else:
<form action="/igra/{{ id_igre }}/" method="post">
  Ugibaj črko: <input type="text", name="crka">
  <button type="submit">Ugibaj</button>
</form>

% end
