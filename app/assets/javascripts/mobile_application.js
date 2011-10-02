//= require jquery
//= require jquery_ujs
//= require jqm_setup
//= require jquery.mobile-1.0rc1
//= require jquery.mobile.datebox


jQuery.extend(jQuery.mobile.datebox.prototype.options, {
	titleDateDialogLabel: '日付設定',
	setDateButtonLabel: 'OK',
	dateFormat: 'YYYY-mm-dd',
  headerFormat: 'YYYY-mm-dd',
	dateFieldOrder: ['y', 'm', 'd'],
	monthsOfYear: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],
	monthsOfYearShort: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]
});
