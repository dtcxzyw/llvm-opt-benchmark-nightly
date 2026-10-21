Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/test-conversions?download=true
inline.NumInlined: 4646
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL29TestStringToDoubleOctalStringv:bb.a
  %i.ase = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 1.000000e+01)
  %putchar.i904 = call i32 @putchar(i32 10)       ; 0 uses
  %i.asf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.asb)
  %putchar12.i905 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit906: ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit903
  %i.asg = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %.not.i907 = icmp eq i32 %i.asg, 4
  br i1 %.not.i907, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit910, label %bb.jq

bb.jq:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit906
  %i.ash = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3628, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.asi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 4)
  %putchar.i908 = call i32 @putchar(i32 10)       ; 0 uses
  %i.asj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.asg)
  %putchar12.i909 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit910: ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit906
  %i.ask = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1317, i32 noundef 22, double noundef 1.000000e+00, ptr noundef %i.a, ptr noundef %i.b, i16 noundef zeroext 0) ; 2 uses
  %i.asl = fcmp une double %i.ask, 0.000000e+00
  br i1 %i.asl, label %bb.jr, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit913

bb.jr:                                            ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit910
  %i.asm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3630, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.1316) ; 0 uses
  %i.asn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 0.000000e+00)
  %putchar.i911 = call i32 @putchar(i32 10)       ; 0 uses
  %i.aso = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.ask)
  %putchar12.i912 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit913: ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit910
  %i.asp = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %.not.i914 = icmp eq i32 %i.asp, 3
  br i1 %.not.i914, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit917, label %bb.js

bb.js:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit913
  %i.asq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3631, ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.asr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 3)
  %putchar.i915 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ass = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.asp)
  %putchar12.i916 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit917: ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit913
  %i.ast = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1319, i32 noundef 22, double noundef +qnan, ptr noundef %i.a, ptr noundef %i.b, i16 noundef zeroext 0) ; 2 uses
  %i.asu = fcmp une double %i.ast, f0x419D6F3454000000
  br i1 %i.asu, label %bb.jt, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit920

bb.jt:                                            ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit917
  %i.asv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3635, ptr noundef nonnull @.str.1244, ptr noundef nonnull @.str.1318) ; 0 uses
  %i.asw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef f0x419D6F3454000000)
  %putchar.i918 = call i32 @putchar(i32 10)       ; 0 uses
  %i.asx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.ast)
  %putchar12.i919 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit920: ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit917
  %i.asy = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %.not.i921 = icmp eq i32 %i.asy, 11
  br i1 %.not.i921, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit924, label %bb.ju

bb.ju:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit920
  %i.asz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3636, ptr noundef nonnull @.str.1328, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.ata = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 11)
  %putchar.i922 = call i32 @putchar(i32 10)       ; 0 uses
  %i.atb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.asy)
  %putchar12.i923 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit924: ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit920
  %i.atc = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1321, i32 noundef 22, double noundef +qnan, ptr noundef %i.a, ptr noundef %i.b, i16 noundef zeroext 0) ; 2 uses
  %i.atd = fcmp une double %i.atc, 3.423910e+05
  br i1 %i.atd, label %bb.jv, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit927

bb.jv:                                            ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit924
  %i.ate = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3640, ptr noundef nonnull @.str.1247, ptr noundef nonnull @.str.1320) ; 0 uses
  %i.atf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 3.423910e+05)
  %putchar.i925 = call i32 @putchar(i32 10)       ; 0 uses
  %i.atg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.atc)
  %putchar12.i926 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit927: ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit924
  %i.ath = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %.not.i928 = icmp eq i32 %i.ath, 9
  br i1 %.not.i928, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit931, label %bb.jw

bb.jw:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit927
  %i.ati = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3641, ptr noundef nonnull @.str.600, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.atj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 9)
  %putchar.i929 = call i32 @putchar(i32 10)       ; 0 uses
  %i.atk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.ath)
  %putchar12.i930 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit931: ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit927
  %i.atl = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1323, i32 noundef 22, double noundef +qnan, ptr noundef %i.a, ptr noundef %i.b, i16 noundef zeroext 0) ; 2 uses
  %i.atm = fcmp une double %i.atl, 3.423910e+05
  br i1 %i.atm, label %bb.jx, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit934

bb.jx:                                            ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit931
  %i.atn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3645, ptr noundef nonnull @.str.1247, ptr noundef nonnull @.str.1322) ; 0 uses
  %i.ato = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 3.423910e+05)
  %putchar.i932 = call i32 @putchar(i32 10)       ; 0 uses
  %i.atp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.atl)
  %putchar12.i933 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit934: ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit931
  %i.atq = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %.not.i935 = icmp eq i32 %i.atq, 10
  br i1 %.not.i935, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit938, label %bb.jy

bb.jy:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit934
  %i.atr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3646, ptr noundef nonnull @.str.1301, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.ats = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 10)
  %putchar.i936 = call i32 @putchar(i32 10)       ; 0 uses
  %i.att = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.atq)
  %putchar12.i937 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit938: ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit934
  %i.atu = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1325, i32 noundef 22, double noundef +qnan, ptr noundef %i.a, ptr noundef %i.b, i16 noundef zeroext 0) ; 2 uses
  %i.atv = fcmp une double %i.atu, -3.423910e+05
  br i1 %i.atv, label %bb.jz, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit941

bb.jz:                                            ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit938
  %i.atw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3650, ptr noundef nonnull @.str.1252, ptr noundef nonnull @.str.1324) ; 0 uses
  %i.atx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef -3.423910e+05)
  %putchar.i939 = call i32 @putchar(i32 10)       ; 0 uses
  %i.aty = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.atu)
  %putchar12.i940 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit941: ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit938
  %i.atz = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %.not.i942 = icmp eq i32 %i.atz, 10
  br i1 %.not.i942, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit945, label %bb.ka

bb.ka:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit941
  %i.aua = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3651, ptr noundef nonnull @.str.1301, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.aub = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 10)
  %putchar.i943 = call i32 @putchar(i32 10)       ; 0 uses
  %i.auc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.atz)
  %putchar12.i944 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit945: ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL27TestStringToDoubleSeparatorv() #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 9 uses
  %0 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.b = alloca [256 x i16], align 16             ; 7 uses
  %1 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.c = alloca [256 x i16], align 16             ; 6 uses
  %2 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.d = alloca [256 x i16], align 16             ; 5 uses
  %3 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.e = alloca [256 x i16], align 16             ; 5 uses
  %4 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.f = alloca [256 x i16], align 16             ; 5 uses
  %5 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.g = alloca [256 x i16], align 16             ; 7 uses
  %6 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.h = alloca [256 x i16], align 16             ; 5 uses
  %7 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.i = alloca [256 x i16], align 16             ; 8 uses
  %8 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.j = alloca [256 x i16], align 16             ; 5 uses
  %9 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.k = alloca [256 x i16], align 16             ; 6 uses
  %10 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.l = alloca [256 x i16], align 16             ; 6 uses
  %11 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.m = alloca i32, align 4                      ; 151 uses
  %i.n = alloca i8, align 1                       ; 100 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  %i.o = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1330, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %i.m, ptr noundef %i.n, i16 noundef zeroext 39) ; 2 uses
  %i.p = fcmp une double %i.o, 1.000000e+00
  br i1 %i.p, label %bb.b, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3665, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.1329) ; 0 uses
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 1.000000e+00)
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.o)
  %putchar12.i = call i32 @putchar(i32 10)        ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit:   ; preds = %bb.a
  %i.t = load i8, ptr %i.n, align 1, !tbaa !25, !range !26, !noundef !27
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZL11CheckHelperPKciS0_b.exit, label %bb.c

bb.c:                                             ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.183, ptr noundef nonnull @.str, i32 noundef 3666, ptr noundef nonnull @.str.1015) ; 0 uses
  call void @abort() #11
  unreachable

_ZL11CheckHelperPKciS0_b.exit:                    ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit
  %i.w = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1332, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %i.m, ptr noundef %i.n, i16 noundef zeroext 39) ; 2 uses
  %i.x = fcmp une double %i.w, 1.000000e+00
  br i1 %i.x, label %bb.d, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit176

bb.d:                                             ; preds = %_ZL11CheckHelperPKciS0_b.exit
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3669, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.1331) ; 0 uses
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 1.000000e+00)
  %putchar.i174 = call i32 @putchar(i32 10)       ; 0 uses
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.w)
  %putchar12.i175 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit176: ; preds = %_ZL11CheckHelperPKciS0_b.exit
  %i.ab = load i8, ptr %i.n, align 1, !tbaa !25, !range !26, !noundef !27
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZL11CheckHelperPKciS0_b.exit177, label %bb.e

bb.e:                                             ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit176
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.183, ptr noundef nonnull @.str, i32 noundef 3670, ptr noundef nonnull @.str.1015) ; 0 uses
  call void @abort() #11
  unreachable

_ZL11CheckHelperPKciS0_b.exit177:                 ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit176
  %i.ae = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1334, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %i.m, ptr noundef %i.n, i16 noundef zeroext 39) ; 2 uses
  %i.af = fcmp ord double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.f, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit180

bb.f:                                             ; preds = %_ZL11CheckHelperPKciS0_b.exit177
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3673, ptr noundef nonnull @.str.1028, ptr noundef nonnull @.str.1333) ; 0 uses
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef +qnan)
  %putchar.i178 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.ae)
  %putchar12.i179 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit180: ; preds = %_ZL11CheckHelperPKciS0_b.exit177
  %i.aj = load i32, ptr %i.m, align 4, !tbaa !19  ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit, label %bb.g

bb.g:                                             ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit180
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3674, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 0)
  %putchar.i181 = call i32 @putchar(i32 10)       ; 0 uses
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.aj)
  %putchar12.i182 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit:   ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit180
  %i.an = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1336, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %i.m, ptr noundef %i.n, i16 noundef zeroext 39) ; 2 uses
  %i.ao = fcmp ord double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.h, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit185

bb.h:                                             ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3677, ptr noundef nonnull @.str.1028, ptr noundef nonnull @.str.1335) ; 0 uses
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef +qnan)
  %putchar.i183 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.an)
  %putchar12.i184 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit185: ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit
  %i.as = load i32, ptr %i.m, align 4, !tbaa !19  ; 2 uses
  %.not.i186 = icmp eq i32 %i.as, 0
  br i1 %.not.i186, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit189, label %bb.i

bb.i:                                             ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit185
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3678, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 0)
  %putchar.i187 = call i32 @putchar(i32 10)       ; 0 uses
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.as)
  %putchar12.i188 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit189: ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit185
  %i.aw = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1338, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %i.m, ptr noundef %i.n, i16 noundef zeroext 39) ; 2 uses
  %i.ax = fcmp ord double %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.j, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit192

bb.j:                                             ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit189
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3681, ptr noundef nonnull @.str.1028, ptr noundef nonnull @.str.1337) ; 0 uses
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef +qnan)
  %putchar.i190 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.aw)
  %putchar12.i191 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit192: ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit189
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !19  ; 2 uses
  %.not.i193 = icmp eq i32 %i.bb, 0
  br i1 %.not.i193, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit196, label %bb.k

bb.k:                                             ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit192
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3682, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 0)
  %putchar.i194 = call i32 @putchar(i32 10)       ; 0 uses
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.bb)
  %putchar12.i195 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit196: ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit192
  %i.bf = call fastcc noundef double @_ZL6StrToDPKcidPiPbt(ptr noundef nonnull @.str.1340, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %i.m, ptr noundef %i.n, i16 noundef zeroext 39) ; 2 uses
  %i.bg = fcmp ord double %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.l, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit199

bb.l:                                             ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit196
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3685, ptr noundef nonnull @.str.1028, ptr noundef nonnull @.str.1339) ; 0 uses
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef +qnan)
  %putchar.i197 = call i32 @putchar(i32 10)       ; 0 uses
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.bf)
  %putchar12.i198 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit199: ; preds = %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit196
  %i.bk = load i32, ptr %i.m, align 4, !tbaa !19  ; 2 uses
  %.not.i200 = icmp eq i32 %i.bk, 0
  br i1 %.not.i200, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit203, label %bb.m

bb.m:                                             ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit199
  %i.bl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3686, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 0)
  %putchar.i201 = call i32 @putchar(i32 10)       ; 0 uses
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.bk)
  %putchar12.i202 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

end_hunk_0
begin_hunk_1_@_ZL27TestStringToDoubleSeparatorv:bb.a
  %i.aaw = load i32, ptr %i.m, align 4, !tbaa !19
  %i.aax = icmp eq i32 %i.aaw, 13                 ; 2 uses
  %i.aay = zext i1 %i.aax to i8
  store i8 %i.aay, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  %i.aaz = fcmp une double %i.aav, f0x416579BDE0000000
  br i1 %i.aaz, label %bb.ff, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit650

bb.ff:                                            ; preds = %_ZL8StrToD16PKcidPiPbct.exit647
  %i.aba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 3998, ptr noundef nonnull @.str.1084, ptr noundef nonnull @.str.1450) ; 0 uses
  %i.abb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef f0x416579BDE0000000)
  %putchar.i648 = call i32 @putchar(i32 10)       ; 0 uses
  %i.abc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.aav)
  %putchar12.i649 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit650: ; preds = %_ZL8StrToD16PKcidPiPbct.exit647
  br i1 %i.aax, label %_ZL8StrToD16PKcidPiPbct.exit655, label %bb.fg

bb.fg:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit650
  %i.abd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.183, ptr noundef nonnull @.str, i32 noundef 3999, ptr noundef nonnull @.str.1015) ; 0 uses
  call void @abort() #11
  unreachable

_ZL8StrToD16PKcidPiPbct.exit655:                  ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store <4 x i16> <i16 48, i16 120, i16 8239, i16 49>, ptr %i.g, align 16, !tbaa !29
  %i.abe = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i16 8239, ptr %i.abe, align 8, !tbaa !29
  %i.abf = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  store i16 50, ptr %i.abf, align 2, !tbaa !29
  %i.abg = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i16 0, ptr %i.abg, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i32 153, ptr %6, align 8, !tbaa !32
  %i.abh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x double> <double 0.000000e+00, double +qnan>, ptr %i.abh, align 8, !tbaa !33
  %i.abi = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.abj = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abi, i8 0, i64 16, i1 false)
  store i16 8239, ptr %i.abj, align 8, !tbaa !34
  %i.abk = call noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %6, ptr noundef nonnull %i.g, i32 noundef 6, ptr noundef nonnull %i.m) ; 2 uses
  %i.abl = load i32, ptr %i.m, align 4, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %i.abm = fcmp ord double %i.abk, 0.000000e+00
  br i1 %i.abm, label %bb.fh, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit658

bb.fh:                                            ; preds = %_ZL8StrToD16PKcidPiPbct.exit655
  %i.abn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4003, ptr noundef nonnull @.str.1028, ptr noundef nonnull @.str.1452) ; 0 uses
  %i.abo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef +qnan)
  %putchar.i656 = call i32 @putchar(i32 10)       ; 0 uses
  %i.abp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.abk)
  %putchar12.i657 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit658: ; preds = %_ZL8StrToD16PKcidPiPbct.exit655
  %.not.i659 = icmp eq i32 %i.abl, 0
  br i1 %.not.i659, label %_ZL8StrToD16PKcidPiPbct.exit666, label %bb.fi

bb.fi:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit658
  %i.abq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4004, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.abr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 0)
  %putchar.i660 = call i32 @putchar(i32 10)       ; 0 uses
  %i.abs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.abl)
  %putchar12.i661 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_ZL8StrToD16PKcidPiPbct.exit666:                  ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store <4 x i16> <i16 48, i16 8239, i16 120, i16 48>, ptr %i.f, align 16, !tbaa !29
  %i.abt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i16 0, ptr %i.abt, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i32 153, ptr %5, align 8, !tbaa !32
  %i.abu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x double> <double 1.000000e+00, double +qnan>, ptr %i.abu, align 8, !tbaa !33
  %i.abv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.abw = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abv, i8 0, i64 16, i1 false)
  store i16 8239, ptr %i.abw, align 8, !tbaa !34
  %i.abx = call noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %5, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull %i.m) ; 2 uses
  %i.aby = load i32, ptr %i.m, align 4, !tbaa !19 ; 3 uses
  %i.abz = icmp eq i32 %i.aby, 4
  %i.aca = zext i1 %i.abz to i8
  store i8 %i.aca, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  %i.acb = fcmp ord double %i.abx, 0.000000e+00
  br i1 %i.acb, label %bb.fj, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit669

bb.fj:                                            ; preds = %_ZL8StrToD16PKcidPiPbct.exit666
  %i.acc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4008, ptr noundef nonnull @.str.1028, ptr noundef nonnull @.str.1454) ; 0 uses
  %i.acd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef +qnan)
  %putchar.i667 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ace = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.abx)
  %putchar12.i668 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit669: ; preds = %_ZL8StrToD16PKcidPiPbct.exit666
  %.not.i670 = icmp eq i32 %i.aby, 0
  br i1 %.not.i670, label %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit673, label %bb.fk

bb.fk:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit669
  %i.acf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4009, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.acg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 0)
  %putchar.i671 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ach = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.aby)
  %putchar12.i672 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit673: ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fn, %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit673
  %indvars.iv.i674 = phi i64 [ %indvars.iv.next.i675, %bb.fn ], [ 0, %_Z17CheckEqualsHelperIiiEvPKciS1_T_S1_T0_.exit673 ] ; 6 uses
  %i.aci = shl nuw i64 1, %indvars.iv.i674
  %i.acj = and i64 %i.aci, 349544
  %.not718 = icmp eq i64 %i.acj, 0
  br i1 %.not718, label %bb.fm, label %.thread.i676

.thread.i676:                                     ; preds = %bb.fl
  %i.ack = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i674
  store i16 8239, ptr %i.ack, align 2, !tbaa !29
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.acl = getelementptr inbounds nuw i8, ptr @.str.1457, i64 %indvars.iv.i674
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !21
  %i.acn = sext i8 %i.acm to i16
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i674
  store i16 %i.acn, ptr %i.aco, align 2, !tbaa !29
  %i.acp = icmp eq i64 %indvars.iv.i674, 20
  br i1 %i.acp, label %_ZL8StrToD16PKcidPiPbct.exit677, label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %.thread.i676
  %indvars.iv.next.i675 = add nuw nsw i64 %indvars.iv.i674, 1
  br label %bb.fl, !llvm.loop !43

_ZL8StrToD16PKcidPiPbct.exit677:                  ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 153, ptr %4, align 8, !tbaa !32
  %i.acq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x double> splat (double +qnan), ptr %i.acq, align 8, !tbaa !33
  %i.acr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.acs = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acr, i8 0, i64 16, i1 false)
  store i16 8239, ptr %i.acs, align 8, !tbaa !34
  %i.act = call noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %4, ptr noundef nonnull %i.e, i32 noundef 20, ptr noundef nonnull %i.m) ; 2 uses
  %i.acu = load i32, ptr %i.m, align 4, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %i.acv = fcmp ord double %i.act, 0.000000e+00
  br i1 %i.acv, label %bb.fo, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit680

bb.fo:                                            ; preds = %_ZL8StrToD16PKcidPiPbct.exit677
  %i.acw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4013, ptr noundef nonnull @.str.1028, ptr noundef nonnull @.str.1456) ; 0 uses
  %i.acx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef +qnan)
  %putchar.i678 = call i32 @putchar(i32 10)       ; 0 uses
  %i.acy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.act)
  %putchar12.i679 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit680: ; preds = %_ZL8StrToD16PKcidPiPbct.exit677
  %.not.i681 = icmp eq i32 %i.acu, 0
  br i1 %.not.i681, label %.peel.next812, label %bb.fp

bb.fp:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit680
  %i.acz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4014, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1031) ; 0 uses
  %i.ada = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef 0)
  %putchar.i682 = call i32 @putchar(i32 10)       ; 0 uses
  %i.adb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIiEvT_(i32 noundef %i.acu)
  %putchar12.i683 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

.peel.next812:                                    ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store <4 x i16> <i16 48, i16 120, i16 48, i16 8239>, ptr %i.d, align 16, !tbaa !29
  %12 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <4 x i16> <i16 51, i16 112, i16 48, i16 0>, ptr %12, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i32 153, ptr %3, align 8, !tbaa !32
  %i.adc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x double> <double 0.000000e+00, double +qnan>, ptr %i.adc, align 8, !tbaa !33
  %i.add = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ade = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.add, i8 0, i64 16, i1 false)
  store i16 8239, ptr %i.ade, align 8, !tbaa !34
  %i.adf = call noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %3, ptr noundef nonnull %i.d, i32 noundef 7, ptr noundef nonnull %i.m) ; 2 uses
  %i.adg = load i32, ptr %i.m, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  %i.adh = fcmp une double %i.adf, 3.000000e+00
  br i1 %i.adh, label %bb.fq, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit691

bb.fq:                                            ; preds = %.peel.next812
  %i.adi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4018, ptr noundef nonnull @.str.1142, ptr noundef nonnull @.str.1458) ; 0 uses
  %i.adj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 3.000000e+00)
  %putchar.i689 = call i32 @putchar(i32 10)       ; 0 uses
  %i.adk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.adf)
  %putchar12.i690 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit691: ; preds = %.peel.next812
  %i.adl = icmp eq i32 %i.adg, 7
  br i1 %i.adl, label %.peel.next827, label %bb.fr

bb.fr:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit691
  %i.adm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.183, ptr noundef nonnull @.str, i32 noundef 4019, ptr noundef nonnull @.str.1015) ; 0 uses
  call void @abort() #11
  unreachable

.peel.next827:                                    ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store <4 x i16> <i16 48, i16 120, i16 46, i16 48>, ptr %i.c, align 16, !tbaa !29
  %i.adn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 8239, ptr %i.adn, align 8, !tbaa !29
  %i.ado = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store <4 x i16> <i16 48, i16 112, i16 48, i16 0>, ptr %i.ado, align 2, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i32 153, ptr %2, align 8, !tbaa !32
  %i.adp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x double> <double 0.000000e+00, double +qnan>, ptr %i.adp, align 8, !tbaa !33
  %i.adq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.adr = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adq, i8 0, i64 16, i1 false)
  store i16 8239, ptr %i.adr, align 8, !tbaa !34
  %i.ads = call noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef nonnull %i.c, i32 noundef 8, ptr noundef nonnull %i.m) ; 2 uses
  %i.adt = load i32, ptr %i.m, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.adu = fcmp une double %i.ads, 0.000000e+00
  br i1 %i.adu, label %bb.fs, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit699

bb.fs:                                            ; preds = %.peel.next827
  %i.adv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4023, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.1460) ; 0 uses
  %i.adw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 0.000000e+00)
  %putchar.i697 = call i32 @putchar(i32 10)       ; 0 uses
  %i.adx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.ads)
  %putchar12.i698 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit699: ; preds = %.peel.next827
  %i.ady = icmp eq i32 %i.adt, 8
  br i1 %i.ady, label %.peel.next845, label %bb.ft

bb.ft:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit699
  %i.adz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.183, ptr noundef nonnull @.str, i32 noundef 4024, ptr noundef nonnull @.str.1015) ; 0 uses
  call void @abort() #11
  unreachable

.peel.next845:                                    ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store <4 x i16> <i16 48, i16 120, i16 51, i16 46>, ptr %i.b, align 16, !tbaa !29
  %i.aea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 48, ptr %i.aea, align 8, !tbaa !29
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 8239, ptr %i.aeb, align 2, !tbaa !29
  %i.aec = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store <4 x i16> <i16 48, i16 112, i16 48, i16 0>, ptr %i.aec, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i32 153, ptr %1, align 8, !tbaa !32
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x double> <double 0.000000e+00, double +qnan>, ptr %i.aed, align 8, !tbaa !33
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aee, i8 0, i64 16, i1 false)
  store i16 8239, ptr %i.aef, align 8, !tbaa !34
  %i.aeg = call noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull %i.b, i32 noundef 9, ptr noundef nonnull %i.m) ; 2 uses
  %i.aeh = load i32, ptr %i.m, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.aei = fcmp une double %i.aeg, 3.000000e+00
  br i1 %i.aei, label %bb.fu, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit707

bb.fu:                                            ; preds = %.peel.next845
  %i.aej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4028, ptr noundef nonnull @.str.1142, ptr noundef nonnull @.str.1462) ; 0 uses
  %i.aek = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 3.000000e+00)
  %putchar.i705 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ael = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.aeg)
  %putchar12.i706 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit707: ; preds = %.peel.next845
  %i.aem = icmp eq i32 %i.aeh, 9
  br i1 %i.aem, label %.peel.next857, label %bb.fv

bb.fv:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit707
  %i.aen = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.183, ptr noundef nonnull @.str, i32 noundef 4029, ptr noundef nonnull @.str.1015) ; 0 uses
  call void @abort() #11
  unreachable

.peel.next857:                                    ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store <4 x i16> <i16 48, i16 120, i16 48, i16 8239>, ptr %i.a, align 16, !tbaa !29
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 51, ptr %i.aeo, align 8, !tbaa !29
  %i.aep = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 46, ptr %i.aep, align 2, !tbaa !29
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 112, ptr %i.aeq, align 4, !tbaa !29
  %i.aer = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 48, ptr %i.aer, align 2, !tbaa !29
  %i.aes = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 0, ptr %i.aes, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store i32 153, ptr %0, align 8, !tbaa !32
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double 0.000000e+00, double +qnan>, ptr %i.aet, align 8, !tbaa !33
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aeu, i8 0, i64 16, i1 false)
  store i16 8239, ptr %i.aev, align 8, !tbaa !34
  %i.aew = call noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull %i.a, i32 noundef 8, ptr noundef nonnull %i.m) ; 2 uses
  %i.aex = load i32, ptr %i.m, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.aey = fcmp une double %i.aew, 3.000000e+00
  br i1 %i.aey, label %bb.fw, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit715

bb.fw:                                            ; preds = %.peel.next857
  %i.aez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4033, ptr noundef nonnull @.str.1142, ptr noundef nonnull @.str.1464) ; 0 uses
  %i.afa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef 3.000000e+00)
  %putchar.i713 = call i32 @putchar(i32 10)       ; 0 uses
  %i.afb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef %i.aew)
  %putchar12.i714 = call i32 @putchar(i32 10)     ; 0 uses
  call void @abort() #11
  unreachable

_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit715: ; preds = %.peel.next857
  %i.afc = icmp eq i32 %i.aex, 8
  br i1 %i.afc, label %_ZL11CheckHelperPKciS0_b.exit716, label %bb.fx

bb.fx:                                            ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit715
  %i.afd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.183, ptr noundef nonnull @.str, i32 noundef 4034, ptr noundef nonnull @.str.1015) ; 0 uses
  call void @abort() #11
  unreachable

_ZL11CheckHelperPKciS0_b.exit716:                 ; preds = %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL31TestStringToDoubleSpecialValuesv() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %0 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 11 uses
  %1 = alloca %"class.double_conversion::StringToDoubleConverter", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store i32 0, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @.str.1466, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @.str.165, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 0, ptr %i.e, align 8, !tbaa !34
  %i.f = call noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull @.str.1468, i32 noundef 4, ptr noundef nonnull %i.a) ; 2 uses
  %i.g = fcmp ord double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %_Z17CheckEqualsHelperIddEvPKciS1_T_S1_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.377, ptr noundef nonnull @.str, i32 noundef 4045, ptr noundef nonnull @.str.1028, ptr noundef nonnull @.str.1467) ; 0 uses
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.378) ; 0 uses
  call void @_Z11PrintfValueIdEvT_(double noundef +qnan)
end_hunk_1
