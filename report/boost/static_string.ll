Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5361
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5371
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN5boost14static_strings8testFindEv:_ZNK5boost14static_strings19basic_static_stringILm5EcSt11char_traitsIcEE4findINS_17basic_string_viewIcS3_EEvEEmRKT_m.exit
  %i.kme = add i8 %i.kmd, -104
  %i.kmf = icmp ult i8 %i.kme, -7
  %i.kmg = add i8 %i.kmc, -117
  %i.kmh = icmp ult i8 %i.kmg, -5
  %.not38005.18 = and i1 %i.kmh, %i.kmf
  br i1 %.not38005.18, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34887, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.19

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.19: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.18
  %i.kmi = getelementptr inbounds nuw i8, ptr %169, i64 2
  %i.kmj = load i8, ptr %i.kmi, align 2, !tbaa !26, !noalias !583 ; 2 uses
  %i.kmk = and i8 %i.kmj, -9
  %i.kml = add i8 %i.kmk, -104
  %i.kmm = icmp ult i8 %i.kml, -7
  %i.kmn = add i8 %i.kmj, -117
  %i.kmo = icmp ult i8 %i.kmn, -5
  %.not38005.19 = and i1 %i.kmo, %i.kmm
  br i1 %.not38005.19, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34887, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.1

_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34887: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.2, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.3, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.4, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.5, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.6, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.7, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.8, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.9, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.10, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.11, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.12, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.13, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.14, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.15, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.16, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.17, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.18, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.19
  %.lcssa41811 = phi ptr [ %i.kmb, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.19 ], [ %i.khl, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.1 ], [ %i.khm, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.2 ], [ %i.kht, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.3 ], [ %i.kia, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.4 ], [ %i.kih, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.5 ], [ %i.kio, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.6 ], [ %i.kiv, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.7 ], [ %i.kjc, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.8 ], [ %i.kjj, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.9 ], [ %i.kjq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.10 ], [ %i.kjx, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.11 ], [ %i.kke, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.12 ], [ %i.kkl, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.13 ], [ %i.kks, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.14 ], [ %i.kkz, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.15 ], [ %i.klg, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.16 ], [ %i.kln, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.17 ], [ %i.klu, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.18 ]
  %i.kmp = ptrtoint ptr %i.khk to i64
  %i.kmq = ptrtoint ptr %.lcssa41811 to i64
  %i.kmr = add i64 %i.kmq, 20
  %i.kms = sub i64 %i.kmp, %i.kmr
  %i.kmt = icmp eq i64 %i.kms, -8
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.1

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.1: ; preds = %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34887, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.19
  %.0.i.i34886 = phi i1 [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34883.19 ], [ %i.kmt, %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34887 ]
  %i.kmu = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3945, ptr noundef nonnull @.str.13, i32 noundef 6123, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings8testFindEv, i1 noundef zeroext %.0.i.i34886) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #32
  %i.kmv = getelementptr inbounds nuw i8, ptr %170, i64 2
  %i.kmw = getelementptr inbounds nuw i8, ptr %170, i64 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(381) %i.kmw, i8 0, i64 381, i1 false)
  store <16 x i8> <i8 104, i8 110, i8 98, i8 114, i8 99, i8 112, i8 108, i8 115, i8 106, i8 102, i8 103, i8 105, i8 107, i8 116, i8 111, i8 101>, ptr %i.kmv, align 2, !tbaa !26
  %i.kmx = getelementptr inbounds nuw i8, ptr %170, i64 18
  store <4 x i8> <i8 100, i8 109, i8 97, i8 113>, ptr %i.kmx, align 2, !tbaa !26
  store i16 20, ptr %170, align 2, !tbaa !48
  %i.kmy = getelementptr inbounds nuw i8, ptr %170, i64 22
  %i.kmz = getelementptr inbounds nuw i8, ptr %170, i64 21
  %i.kna = getelementptr inbounds nuw i8, ptr %170, i64 20 ; 2 uses
  %i.knb = load i8, ptr %i.kna, align 2, !tbaa !26, !noalias !584
  %i.knc = add i8 %i.knb, -117
  %i.knd = icmp ult i8 %i.knc, -20
  br i1 %i.knd, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.2

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.2: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.1
  %i.kne = getelementptr inbounds nuw i8, ptr %170, i64 19 ; 2 uses
  %i.knf = load i8, ptr %i.kne, align 1, !tbaa !26, !noalias !584
  %i.kng = add i8 %i.knf, -117
  %i.knh = icmp ult i8 %i.kng, -20
  br i1 %i.knh, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.3

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.3: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.2
  %i.kni = getelementptr inbounds nuw i8, ptr %170, i64 18 ; 2 uses
  %i.knj = load i8, ptr %i.kni, align 2, !tbaa !26, !noalias !584
  %i.knk = add i8 %i.knj, -117
  %i.knl = icmp ult i8 %i.knk, -20
  br i1 %i.knl, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.4

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.4: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.3
  %i.knm = getelementptr inbounds nuw i8, ptr %170, i64 17 ; 2 uses
  %i.knn = load i8, ptr %i.knm, align 1, !tbaa !26, !noalias !584
  %i.kno = add i8 %i.knn, -117
  %i.knp = icmp ult i8 %i.kno, -20
  br i1 %i.knp, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.5

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.5: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.4
  %i.knq = getelementptr inbounds nuw i8, ptr %170, i64 16 ; 2 uses
  %i.knr = load i8, ptr %i.knq, align 2, !tbaa !26, !noalias !584
  %i.kns = add i8 %i.knr, -117
  %i.knt = icmp ult i8 %i.kns, -20
  br i1 %i.knt, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.6

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.6: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.5
  %i.knu = getelementptr inbounds nuw i8, ptr %170, i64 15 ; 2 uses
  %i.knv = load i8, ptr %i.knu, align 1, !tbaa !26, !noalias !584
  %i.knw = add i8 %i.knv, -117
  %i.knx = icmp ult i8 %i.knw, -20
  br i1 %i.knx, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.7

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.7: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.6
  %i.kny = getelementptr inbounds nuw i8, ptr %170, i64 14 ; 2 uses
  %i.knz = load i8, ptr %i.kny, align 2, !tbaa !26, !noalias !584
  %i.koa = add i8 %i.knz, -117
  %i.kob = icmp ult i8 %i.koa, -20
  br i1 %i.kob, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.8

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.8: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.7
  %i.koc = getelementptr inbounds nuw i8, ptr %170, i64 13 ; 2 uses
  %i.kod = load i8, ptr %i.koc, align 1, !tbaa !26, !noalias !584
  %i.koe = add i8 %i.kod, -117
  %i.kof = icmp ult i8 %i.koe, -20
  br i1 %i.kof, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.9

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.9: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.8
  %i.kog = getelementptr inbounds nuw i8, ptr %170, i64 12 ; 2 uses
  %i.koh = load i8, ptr %i.kog, align 2, !tbaa !26, !noalias !584
  %i.koi = add i8 %i.koh, -117
  %i.koj = icmp ult i8 %i.koi, -20
  br i1 %i.koj, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.10

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.10: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.9
  %i.kok = getelementptr inbounds nuw i8, ptr %170, i64 11 ; 2 uses
  %i.kol = load i8, ptr %i.kok, align 1, !tbaa !26, !noalias !584
  %i.kom = add i8 %i.kol, -117
  %i.kon = icmp ult i8 %i.kom, -20
  br i1 %i.kon, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.11

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.11: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.10
  %i.koo = getelementptr inbounds nuw i8, ptr %170, i64 10 ; 2 uses
  %i.kop = load i8, ptr %i.koo, align 2, !tbaa !26, !noalias !584
  %i.koq = add i8 %i.kop, -117
  %i.kor = icmp ult i8 %i.koq, -20
  br i1 %i.kor, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.12

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.12: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.11
  %i.kos = getelementptr inbounds nuw i8, ptr %170, i64 9 ; 2 uses
  %i.kot = load i8, ptr %i.kos, align 1, !tbaa !26, !noalias !584
  %i.kou = add i8 %i.kot, -117
  %i.kov = icmp ult i8 %i.kou, -20
  br i1 %i.kov, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.13

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.13: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.12
  %i.kow = getelementptr inbounds nuw i8, ptr %170, i64 8 ; 2 uses
  %i.kox = load i8, ptr %i.kow, align 2, !tbaa !26, !noalias !584
  %i.koy = add i8 %i.kox, -117
  %i.koz = icmp ult i8 %i.koy, -20
  br i1 %i.koz, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.14

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.14: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.13
  %i.kpa = getelementptr inbounds nuw i8, ptr %170, i64 7 ; 2 uses
  %i.kpb = load i8, ptr %i.kpa, align 1, !tbaa !26, !noalias !584
  %i.kpc = add i8 %i.kpb, -117
  %i.kpd = icmp ult i8 %i.kpc, -20
  br i1 %i.kpd, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.15

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.15: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.14
  %i.kpe = getelementptr inbounds nuw i8, ptr %170, i64 6 ; 2 uses
  %i.kpf = load i8, ptr %i.kpe, align 2, !tbaa !26, !noalias !584
  %i.kpg = add i8 %i.kpf, -117
  %i.kph = icmp ult i8 %i.kpg, -20
  br i1 %i.kph, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.16

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.16: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.15
  %i.kpi = getelementptr inbounds nuw i8, ptr %170, i64 5 ; 2 uses
  %i.kpj = load i8, ptr %i.kpi, align 1, !tbaa !26, !noalias !584
  %i.kpk = add i8 %i.kpj, -117
  %i.kpl = icmp ult i8 %i.kpk, -20
  br i1 %i.kpl, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.17

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.17: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.16
  %i.kpm = getelementptr inbounds nuw i8, ptr %170, i64 4 ; 2 uses
  %i.kpn = load i8, ptr %i.kpm, align 2, !tbaa !26, !noalias !584
  %i.kpo = add i8 %i.kpn, -117
  %i.kpp = icmp ult i8 %i.kpo, -20
  br i1 %i.kpp, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.18

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.18: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.17
  %i.kpq = getelementptr inbounds nuw i8, ptr %170, i64 3 ; 2 uses
  %i.kpr = load i8, ptr %i.kpq, align 1, !tbaa !26, !noalias !584
  %i.kps = add i8 %i.kpr, -117
  %i.kpt = icmp ult i8 %i.kps, -20
  br i1 %i.kpt, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.19

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.19: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.18
  %i.kpu = getelementptr inbounds nuw i8, ptr %170, i64 2
  %i.kpv = load i8, ptr %i.kpu, align 2, !tbaa !26, !noalias !584
  %i.kpw = add i8 %i.kpv, -117
  %i.kpx = icmp ult i8 %i.kpw, -20
  br i1 %i.kpx, label %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906, label %_ZN5boost14static_strings7testFLNINS0_19basic_static_stringILm400EcSt11char_traitsIcEEEEEbRKT_PKNS6_10value_typeENS6_9size_typeESC_SC_.exit34907

_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.2, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.3, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.4, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.5, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.6, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.7, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.8, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.9, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.10, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.11, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.12, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.13, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.14, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.15, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.16, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.17, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.18, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.19
  %.lcssa = phi ptr [ %i.kpq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.19 ], [ %i.kmz, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.1 ], [ %i.kna, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.2 ], [ %i.kne, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.3 ], [ %i.kni, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.4 ], [ %i.knm, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.5 ], [ %i.knq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.6 ], [ %i.knu, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.7 ], [ %i.kny, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.8 ], [ %i.koc, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.9 ], [ %i.kog, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.10 ], [ %i.kok, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.11 ], [ %i.koo, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.12 ], [ %i.kos, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.13 ], [ %i.kow, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.14 ], [ %i.kpa, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.15 ], [ %i.kpe, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.16 ], [ %i.kpi, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.17 ], [ %i.kpm, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.18 ]
  %i.kpy = ptrtoint ptr %i.kmy to i64
  %i.kpz = ptrtoint ptr %.lcssa to i64
  %i.kqa = add i64 %i.kpz, 20
  %i.kqb = icmp eq i64 %i.kqa, %i.kpy
  br label %_ZN5boost14static_strings7testFLNINS0_19basic_static_stringILm400EcSt11char_traitsIcEEEEEbRKT_PKNS6_10value_typeENS6_9size_typeESC_SC_.exit34907

_ZN5boost14static_strings7testFLNINS0_19basic_static_stringILm400EcSt11char_traitsIcEEEEEbRKT_PKNS6_10value_typeENS6_9size_typeESC_SC_.exit34907: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.19, %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906
  %.0.i.i34905 = phi i1 [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i34902.19 ], [ %i.kqb, %_ZN5boost14static_strings6detail11find_not_ofISt11char_traitsIcEcSt16reverse_iteratorIPKcEEET1_S9_S9_PKT0_m.exit.i.i34906 ]
  %i.kqc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3946, ptr noundef nonnull @.str.13, i32 noundef 6124, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings8testFindEv, i1 noundef zeroext %.0.i.i34905) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost14static_strings11testReplaceEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 10 uses
  %1 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 11 uses
  %2 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 11 uses
  %3 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 9 uses
  %4 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 8 uses
  %5 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 8 uses
  %6 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 10 uses
  %7 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 11 uses
  %8 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 11 uses
  %9 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 12 uses
  %10 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 8 uses
  %11 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 8 uses
  %12 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 14 uses
  %13 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 11 uses
  %14 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 5 uses
  %15 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 7 uses
  %16 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 8 uses
  %17 = alloca %"class.boost::static_strings::basic_static_string.18", align 1 ; 6 uses
  %18 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 7 uses
  %19 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 8 uses
  %20 = alloca %"class.boost::static_strings::basic_static_string.18", align 1 ; 6 uses
  %21 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 7 uses
  %22 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 7 uses
  %23 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 7 uses
  %24 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 6 uses
  %25 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 7 uses
  %26 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 8 uses
  %27 = alloca %"class.boost::static_strings::basic_static_string.18", align 1 ; 6 uses
  %28 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 7 uses
  %29 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 7 uses
  %30 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 7 uses
  %31 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 6 uses
  %32 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 10 uses
  %33 = alloca %"class.boost::static_strings::basic_static_string.10", align 8 ; 11 uses
  %34 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 18 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.boost::static_strings::basic_static_string.19", align 1 ; 8 uses
  %37 = alloca %"class.std::istream_iterator", align 8 ; 5 uses
  %38 = alloca %"class.std::istream_iterator", align 8 ; 4 uses
  %39 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %40 = alloca %"class.boost::static_strings::basic_static_string.5", align 2 ; 9 uses
  %41 = alloca %"class.boost::static_strings::basic_static_string.21", align 1 ; 3 uses
  %42 = alloca %"class.boost::static_strings::basic_static_string.21", align 1 ; 8 uses
  %43 = alloca %"class.boost::static_strings::basic_static_string.21", align 1 ; 3 uses
  %44 = alloca %"class.boost::static_strings::basic_static_string.21", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %0, i8 0, i64 22, i1 false)
  %i.a = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %0, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i8, ptr %0, align 1, !tbaa !84      ; 3 uses
  %i.e = icmp ult i8 %i.d, 5
  br i1 %i.e, label %bb.b, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit: ; preds = %bb.a
  %i.f = zext i8 %i.d to i64                      ; 2 uses
  %i.g = add nsw i64 %i.f, -5                     ; 2 uses
  %.sroa.speculated.i.i = call noundef i64 @llvm.umin.i64(i64 %i.g, i64 2) ; 7 uses
  %i.h = sub nuw nsw i64 %i.f, %.sroa.speculated.i.i
  %.not.i338 = icmp samesign ult i64 %i.h, 12
  br i1 %.not.i338, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i351, label %.critedge.i339

.critedge.i339:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i351:    ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.speculated.i.i
  %i.k = or disjoint i64 %.sroa.speculated.i.i, 4 ; 3 uses
  %i.l = sub nuw nsw i64 %i.g, %.sroa.speculated.i.i
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 %i.m, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 %i.k, i1 false)
  %i.o = sub nuw nsw i64 4, %.sroa.speculated.i.i
  %i.p = sub nsw i64 1, %.sroa.speculated.i.i
  %i.q = getelementptr i8, ptr %i.b, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = getelementptr i8, ptr %i.r, i64 %i.k
  %i.t = getelementptr i8, ptr %i.i, i64 %i.k
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.o, i1 false)
  %i.u = trunc nuw nsw i64 %.sroa.speculated.i.i to i8
  %reass.sub = sub nuw i8 %i.d, %i.u
  %i.v = add i8 %reass.sub, 8                     ; 2 uses
  store i8 %i.v, ptr %0, align 1, !tbaa !84
  %or.cond.not.i = icmp eq i8 %i.v, 16
  br i1 %or.cond.not.i, label %bb.c, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i351
  %i.w = load i128, ptr %i.b, align 1
  %i.x = icmp ne i128 %i.w, 133485888425965762407862136046357341544
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i351, %bb.c
  %.0.i.i = phi i1 [ false, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i351 ], [ %i.z, %bb.c ]
  %i.aa = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3947, ptr noundef nonnull @.str.13, i32 noundef 6141, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %1, i8 0, i64 22, i1 false)
  %i.ab = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ae = load i8, ptr %1, align 1, !tbaa !84     ; 3 uses
  %i.af = icmp ult i8 %i.ae, 3
  br i1 %i.af, label %bb.d, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit42

bb.d:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit42: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit
  %i.ag = zext i8 %i.ae to i64                    ; 2 uses
  %i.ah = add nsw i64 %i.ag, -3                   ; 3 uses
  %.sroa.speculated.i.i41 = call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 2) ; 5 uses
  %i.ai = sub nuw nsw i64 %i.ag, %.sroa.speculated.i.i41
  %.not.i354 = icmp samesign ult i64 %i.ai, 18
  br i1 %.not.i354, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i368, label %.critedge.i355

.critedge.i355:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit42
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i368:    ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit42
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.speculated.i.i41
  %.not.not = icmp eq i64 %i.ah, 0                ; 2 uses
  %.sroa.speculated.i367 = select i1 %.not.not, i64 1, i64 2
  %i.al = sub nuw nsw i64 %i.ah, %.sroa.speculated.i.i41
  %i.am = add nuw nsw i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 6
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i64 %i.am, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i64 %.sroa.speculated.i367, i1 false)
  br i1 %.not.not, label %bb.e, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit371

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i368
  %i.ao = sub nuw nsw i64 2, %.sroa.speculated.i.i41
  %i.ap = getelementptr i8, ptr %i.ac, i64 %i.ao
  %.sroa.gep689.a = getelementptr i8, ptr %i.ap, i64 3
  %.sroa.gep691 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aq = load i8, ptr %.sroa.gep689.a, align 1
  store i8 %i.aq, ptr %.sroa.gep691, align 1
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit371

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit371: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i368, %bb.e
  %i.ar = trunc nuw nsw i64 %.sroa.speculated.i.i41 to i8
  %reass.sub632 = sub nuw i8 %i.ae, %i.ar
  %i.as = add i8 %reass.sub632, 2                 ; 2 uses
  store i8 %i.as, ptr %1, align 1, !tbaa !84
  %or.cond.not.i43 = icmp eq i8 %i.as, 10
  br i1 %or.cond.not.i43, label %bb.f, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit46

bb.f:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit371
  %i.at = load i64, ptr %i.ac, align 1
  %i.au = xor i64 %i.at, 8245940750297884008
  %i.av = getelementptr i8, ptr %i.ac, i64 8
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = zext i16 %i.aw to i64
  %i.ay = xor i64 %i.ax, 25708
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit46

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit46: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit371, %bb.f
  %.0.i.i44 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit371 ], [ %i.bc, %bb.f ]
  %i.bd = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3949, ptr noundef nonnull @.str.13, i32 noundef 6145, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i44) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %2, i8 0, i64 22, i1 false)
  %i.be = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %.ptr633 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.bf = load i8, ptr %2, align 1, !tbaa !84     ; 3 uses
  %i.bg = icmp ult i8 %i.bf, 5
  br i1 %i.bg, label %bb.g, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit48

bb.g:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit46
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit48: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit46
  %i.bh = zext i8 %i.bf to i64                    ; 2 uses
  %i.bi = add nsw i64 %i.bh, -5                   ; 2 uses
  %.sroa.speculated.i.i47 = call noundef i64 @llvm.umin.i64(i64 %i.bi, i64 2) ; 4 uses
  %i.bj = sub nuw nsw i64 %i.bh, %.sroa.speculated.i.i47
  %.not.i373 = icmp samesign ult i64 %i.bj, 18
  br i1 %.not.i373, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i378, label %.critedge.i374

.critedge.i374:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit48
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i378:      ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit48
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.speculated.i.i47
  %i.bm = sub nuw nsw i64 %i.bi, %.sroa.speculated.i.i47
  %i.bn = add nuw nsw i64 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bo, ptr noundef nonnull align 1 dereferenceable(1) %i.bl, i64 %i.bn, i1 false)
  %i.bp = load i8, ptr %.ptr633, align 1, !tbaa !26
  store i8 %i.bp, ptr %i.bk, align 1, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 7
  %.068.i.i382.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.br = load i8, ptr %.068.i.i382.ptr.1, align 1, !tbaa !26
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !26
  %i.bs = trunc nuw nsw i64 %.sroa.speculated.i.i47 to i8
  %reass.sub634 = sub nuw i8 %i.bf, %i.bs
  %i.bt = add i8 %reass.sub634, 2                 ; 2 uses
  store i8 %i.bt, ptr %2, align 1, !tbaa !84
  %or.cond.not.i49 = icmp eq i8 %i.bt, 10
  br i1 %or.cond.not.i49, label %bb.h, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit52

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i378
  %i.bu = load i64, ptr %.ptr633, align 1
  %i.bv = xor i64 %i.bu, 3977012946700218672
  %i.bw = getelementptr i8, ptr %.ptr633, i64 8
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i64
  %i.bz = xor i64 %i.by, 14648
  %i.ca = or i64 %i.bv, %i.bz
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit52

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit52: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i378, %bb.h
  %.0.i.i50 = phi i1 [ false, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i378 ], [ %i.cd, %bb.h ]
  %i.ce = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3952, ptr noundef nonnull @.str.13, i32 noundef 6149, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i50) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %3, i8 0, i64 22, i1 false)
  %i.cf = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  %i.ch = load i8, ptr %3, align 1, !tbaa !84     ; 4 uses
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.i, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit54

bb.i:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit52
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit54: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit52
  %.ptr635 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cj = zext i8 %i.ch to i64                    ; 2 uses
  %i.ck = add nsw i64 %i.cj, -1                   ; 2 uses
  %.sroa.speculated.i.i53 = call noundef i64 @llvm.umin.i64(i64 %i.ck, i64 3) ; 7 uses
  %i.cl = getelementptr i8, ptr %.ptr635, i64 %.sroa.speculated.i.i53 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 7 ; 2 uses
  %i.cn = sub nuw nsw i64 %i.cj, %.sroa.speculated.i.i53
  %.not.i392 = icmp samesign ult i64 %i.cn, 15
  br i1 %.not.i392, label %bb.j, label %.critedge.i393

.critedge.i393:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit54
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.j:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit54
  %.not = icmp eq i8 %i.ch, 1
  br i1 %.not, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i397, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i406

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i397:      ; preds = %bb.j
  %i.co = load i8, ptr %i.cl, align 1
  store i8 %i.co, ptr %i.cm, align 1
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i406:    ; preds = %bb.j
  %i.cp = sub nuw nsw i64 %i.ck, %.sroa.speculated.i.i53
  %i.cq = add nuw nsw i64 %i.cp, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cm, ptr noundef nonnull align 1 dereferenceable(1) %i.cl, i64 %i.cq, i1 false)
  %i.cr = sub nuw nsw i64 5, %.sroa.speculated.i.i53
  %i.cs = sub nsw i64 1, %.sroa.speculated.i.i53
  %i.ct = getelementptr i8, ptr %i.cg, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 5
  %i.cv = getelementptr i8, ptr %i.cu, i64 %.sroa.speculated.i.i53
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, ptr noundef nonnull align 1 dereferenceable(1) %i.cv, i64 %i.cr, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i

_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i397, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i406
  %i.cw = trunc nuw nsw i64 %.sroa.speculated.i.i53 to i8
  %reass.sub636 = sub nuw i8 %i.ch, %i.cw
  %i.cx = add i8 %reass.sub636, 5                 ; 2 uses
  store i8 %i.cx, ptr %3, align 1, !tbaa !84
  %or.cond.not.i55 = icmp eq i8 %i.cx, 12
  br i1 %or.cond.not.i55, label %bb.k, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit58

bb.k:                                             ; preds = %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i
  %i.cy = load i64, ptr %i.cg, align 1
  %i.cz = xor i64 %i.cy, 3833747681112633648
  %i.da = getelementptr i8, ptr %i.cg, i64 8
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = zext i32 %i.db to i64
  %i.dd = xor i64 %i.dc, 959985462
  %i.de = or i64 %i.cz, %i.dd
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit58

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit58: ; preds = %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i, %bb.k
  %.0.i.i56 = phi i1 [ false, %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i ], [ %i.dh, %bb.k ]
  %i.di = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3954, ptr noundef nonnull @.str.13, i32 noundef 6153, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i56) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %4, i8 0, i64 22, i1 false)
  %i.dj = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %.ptr638 = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %i.dk = load i8, ptr %4, align 1, !tbaa !84     ; 5 uses
  %i.dl = zext i8 %i.dk to i64                    ; 2 uses
  %.sroa.speculated.i.i59 = call noundef i64 @llvm.umin.i64(i64 %i.dl, i64 5) ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.ptr638, i64 %.sroa.speculated.i.i59 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.do = sub nuw nsw i64 %i.dl, %.sroa.speculated.i.i59 ; 2 uses
  %.not.i411 = icmp samesign ult i64 %i.do, 15
  br i1 %.not.i411, label %bb.l, label %.critedge.i412

.critedge.i412:                                   ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit58
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.l:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit58
  %i.dp = icmp ugt i8 %i.dk, 4
  br i1 %i.dp, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not637 = icmp eq i8 %i.dk, 0
  br i1 %.not637, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i416, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i427.thread

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i416:      ; preds = %bb.m
  %i.dq = load i8, ptr %i.dm, align 1
  store i8 %i.dq, ptr %i.dn, align 1
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429.thread

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i427.thread: ; preds = %bb.m
  %i.dr = add nuw nsw i64 %i.do, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dn, ptr noundef nonnull align 1 dereferenceable(1) %i.dm, i64 %i.dr, i1 false)
  %i.ds = sub nuw nsw i64 5, %.sroa.speculated.i.i59
  %i.dt = sub nsw i64 0, %.sroa.speculated.i.i59
  %i.du = getelementptr i8, ptr %.ptr638, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 5
  %i.dw = getelementptr i8, ptr %i.dv, i64 %.sroa.speculated.i.i59
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr align 1 %i.dw, i64 %i.ds, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429.thread

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429.thread: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i427.thread, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i416
  %i.dx = trunc nuw nsw i64 %.sroa.speculated.i.i59 to i8
  %reass.sub639 = sub nuw nsw i8 %i.dk, %i.dx
  %i.dy = add nuw nsw i8 %reass.sub639, 5
  store i8 %i.dy, ptr %4, align 1, !tbaa !84
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit63

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429: ; preds = %bb.l
  %or.cond.not.i60 = icmp eq i8 %i.dk, 10
  br i1 %or.cond.not.i60, label %bb.n, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit63

bb.n:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429
  %i.dz = load i64, ptr %.ptr638, align 1
  %i.ea = xor i64 %i.dz, 3978425819141910832
  %i.eb = getelementptr i8, ptr %.ptr638, i64 8
  %i.ec = load i16, ptr %i.eb, align 1
  %i.ed = zext i16 %i.ec to i64
  %i.ee = xor i64 %i.ed, 14648
  %i.ef = or i64 %i.ea, %i.ee
  %i.eg = icmp ne i64 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %i.ei = icmp eq i32 %i.eh, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit63

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit63: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429.thread, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429, %bb.n
  %.0.i.i61 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429 ], [ %i.ei, %bb.n ], [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit429.thread ]
  %i.ej = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3956, ptr noundef nonnull @.str.13, i32 noundef 6157, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i61) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %5, i8 0, i64 22, i1 false)
  %i.ek = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %5, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 7 uses
  %.ptr640 = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 4 uses
  %i.em = load i8, ptr %5, align 1, !tbaa !84     ; 3 uses
  %i.en = zext i8 %i.em to i64                    ; 2 uses
  %.sroa.speculated.i.i64 = call noundef i64 @llvm.umin.i64(i64 %i.en, i64 5) ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.speculated.i.i64 ; 2 uses
  %i.ep = sub nuw nsw i64 %i.en, %.sroa.speculated.i.i64 ; 3 uses
  %.not.i431 = icmp samesign ult i64 %i.ep, 15
  br i1 %.not.i431, label %bb.o, label %.critedge.i432

.critedge.i432:                                   ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit63
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.o:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit63
  %i.eq = icmp ugt i8 %i.em, 5
  br i1 %i.eq, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i446, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i436

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i436:      ; preds = %bb.o
  %i.er = add nuw nsw i64 %i.ep, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.ptr640, ptr noundef nonnull align 1 dereferenceable(1) %i.eo, i64 %i.er, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.el, ptr noundef nonnull align 1 dereferenceable(5) %.ptr640, i64 5, i1 false), !tbaa !26
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit449

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i446:    ; preds = %bb.o
  %i.es = add nsw i64 %.sroa.speculated.i.i64, -5 ; 2 uses
  %.sroa.speculated.i445 = call i64 @llvm.umin.i64(i64 %i.es, i64 5) ; 4 uses
  %i.et = add nuw nsw i64 %i.ep, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.ptr640, ptr noundef nonnull align 1 dereferenceable(1) %i.eo, i64 %i.et, i1 false)
  %45 = icmp eq i64 %i.es, 0
  br i1 %45, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i447, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i447.thread

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i447.thread: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i446
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.el, ptr nonnull align 1 %.ptr640, i64 %.sroa.speculated.i445, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit449

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i447:    ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i446
  %46 = sub nuw nsw i64 5, %.sroa.speculated.i445
  %i.eu = sub nuw nsw i64 5, %.sroa.speculated.i.i64
  %47 = getelementptr i8, ptr %i.el, i64 %i.eu
  %48 = getelementptr i8, ptr %47, i64 5
  %i.ev = getelementptr i8, ptr %48, i64 %.sroa.speculated.i445
  %i.ew = getelementptr i8, ptr %i.el, i64 %.sroa.speculated.i445
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ew, ptr align 1 %i.ev, i64 %46, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit449

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit449: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i447.thread, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i436, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i447
  %i.ex = trunc nuw nsw i64 %.sroa.speculated.i.i64 to i8
  %reass.sub641 = sub nuw i8 %i.em, %i.ex
  %i.ey = add i8 %reass.sub641, 5                 ; 2 uses
  store i8 %i.ey, ptr %5, align 1, !tbaa !84
  %or.cond.not.i65 = icmp eq i8 %i.ey, 10
  br i1 %or.cond.not.i65, label %bb.p, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit68

bb.p:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit449
  %i.ez = load i64, ptr %i.el, align 1
  %i.fa = xor i64 %i.ez, 3978425840700962357
  %i.fb = getelementptr i8, ptr %i.el, i64 8
  %i.fc = load i16, ptr %i.fb, align 1
  %i.fd = zext i16 %i.fc to i64
  %i.fe = xor i64 %i.fd, 14648
  %i.ff = or i64 %i.fa, %i.fe
  %i.fg = icmp ne i64 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
  %i.fi = icmp eq i32 %i.fh, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit68

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit68: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit449, %bb.p
  %.0.i.i66 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit449 ], [ %i.fi, %bb.p ]
  %i.fj = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3957, ptr noundef nonnull @.str.13, i32 noundef 6161, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i66) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %6, i8 0, i64 22, i1 false)
  %i.fk = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %6, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fn = load i8, ptr %6, align 1, !tbaa !84     ; 3 uses
  %i.fo = icmp ult i8 %i.fn, 5
  br i1 %i.fo, label %bb.q, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit70

bb.q:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit68
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit70: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit68
  %i.fp = zext i8 %i.fn to i64                    ; 2 uses
  %i.fq = add nsw i64 %i.fp, -5                   ; 2 uses
  %.sroa.speculated.i.i69 = call noundef i64 @llvm.umin.i64(i64 %i.fq, i64 2) ; 6 uses
  %i.fr = sub nuw nsw i64 %i.fp, %.sroa.speculated.i.i69
  %.not.i451 = icmp samesign ult i64 %i.fr, 15
  br i1 %.not.i451, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466, label %.critedge.i452

.critedge.i452:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit70
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466:    ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit70
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 6 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sroa.speculated.i.i69
  %.sroa.speculated.i465 = add nuw nsw i64 %.sroa.speculated.i.i69, 2 ; 3 uses
  %i.fu = sub nuw nsw i64 %i.fq, %.sroa.speculated.i.i69
  %i.fv = add nuw nsw i64 %i.fu, 1
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 11
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fw, ptr noundef nonnull align 1 dereferenceable(1) %i.ft, i64 %i.fv, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fs, ptr noundef nonnull align 1 dereferenceable(1) %i.fm, i64 %.sroa.speculated.i465, i1 false)
  %i.fx = xor i64 %.sroa.speculated.i.i69, 3      ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fl, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 5
  %i.ga = getelementptr i8, ptr %i.fz, i64 %.sroa.speculated.i465
  %i.gb = getelementptr i8, ptr %i.fs, i64 %.sroa.speculated.i465
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %i.ga, i64 %i.fx, i1 false)
  %i.gc = trunc nuw nsw i64 %.sroa.speculated.i.i69 to i8
  %reass.sub642 = sub nuw i8 %i.fn, %i.gc
  %i.gd = add i8 %reass.sub642, 5                 ; 2 uses
  store i8 %i.gd, ptr %6, align 1, !tbaa !84
  %or.cond.not.i71 = icmp eq i8 %i.gd, 13
  br i1 %or.cond.not.i71, label %bb.r, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466
  %i.ge = load i64, ptr %i.fl, align 1
  %i.gf = xor i64 %i.ge, 3833745482089378096
  %i.gg = getelementptr i8, ptr %i.fl, i64 5
  %i.gh = load i64, ptr %i.gg, align 1
  %i.gi = xor i64 %i.gh, 4123106169129874483
  %i.gj = or i64 %i.gf, %i.gi
  %i.gk = icmp ne i64 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %i.gm = icmp eq i32 %i.gl, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466, %bb.r
  %.0.i.i72 = phi i1 [ false, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466 ], [ %i.gm, %bb.r ]
  %i.gn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3959, ptr noundef nonnull @.str.13, i32 noundef 6165, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i72) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %7, i8 0, i64 22, i1 false)
  %i.go = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %7, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 3 uses
  %.ptr643 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.gq = load i8, ptr %7, align 1, !tbaa !84     ; 4 uses
  %i.gr = icmp ult i8 %i.gq, 5
  br i1 %i.gr, label %bb.s, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit76

bb.s:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit76: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74
  %i.gs = zext i8 %i.gq to i64                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 4 uses
  %i.gu = add nsw i64 %i.gs, -5                   ; 3 uses
  %.sroa.speculated.i.i75 = call noundef i64 @llvm.umin.i64(i64 %i.gu, i64 2) ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.sroa.speculated.i.i75 ; 2 uses
  %i.gw = sub nuw nsw i64 %i.gs, %.sroa.speculated.i.i75
  %.not.i471 = icmp samesign ult i64 %i.gw, 17
  br i1 %.not.i471, label %bb.t, label %.critedge.i472

.critedge.i472:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit76
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.t:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit76
  %i.gx = icmp ugt i8 %i.gq, 7
  br i1 %i.gx, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i486, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i476

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i476:      ; preds = %bb.t
  %i.gy = sub nuw nsw i64 %i.gu, %.sroa.speculated.i.i75
  %i.gz = add nuw nsw i64 %i.gy, 1
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 9
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ha, ptr noundef nonnull align 1 dereferenceable(1) %i.gv, i64 %i.gz, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gt, ptr noundef nonnull align 1 dereferenceable(3) %.ptr643, i64 3, i1 false), !tbaa !26
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i486:    ; preds = %bb.t
  %i.hb = add nsw i64 %.sroa.speculated.i.i75, -2 ; 2 uses
  %.sroa.speculated.i485 = call i64 @llvm.umin.i64(i64 %i.hb, i64 3) ; 3 uses
  %i.hc = sub nuw nsw i64 %i.gu, %.sroa.speculated.i.i75
  %i.hd = add nuw nsw i64 %i.hc, 1
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 9
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.he, ptr noundef nonnull align 1 dereferenceable(1) %i.gv, i64 %i.hd, i1 false)
  %cond = icmp eq i64 %i.hb, 0
  br i1 %cond, label %bb.u, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i487

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i487:    ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i486
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gt, ptr nonnull align 1 %.ptr643, i64 %.sroa.speculated.i485, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489

bb.u:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i486
  %i.hf = xor i64 %.sroa.speculated.i.i75, 7
  %i.hg = getelementptr i8, ptr %i.gp, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 3
  %i.hi = getelementptr i8, ptr %i.hh, i64 %.sroa.speculated.i485
  %i.hj = getelementptr i8, ptr %i.gt, i64 %.sroa.speculated.i485
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hj, ptr noundef nonnull align 1 dereferenceable(3) %i.hi, i64 3, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i487, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i476, %bb.u
  %i.hk = trunc nuw nsw i64 %.sroa.speculated.i.i75 to i8
  %i.hl = xor i8 %i.hk, 3
  %i.hm = add i8 %i.hl, %i.gq                     ; 2 uses
  store i8 %i.hm, ptr %7, align 1, !tbaa !84
  %or.cond.not.i77 = icmp eq i8 %i.hm, 11
  br i1 %or.cond.not.i77, label %bb.v, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80

bb.v:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489
  %i.hn = load i64, ptr %i.gp, align 1
  %i.ho = xor i64 %i.hn, 4123106156194443568
  %i.hp = getelementptr i8, ptr %i.gp, i64 3
  %i.hq = load i64, ptr %i.hp, align 1
  %i.hr = xor i64 %i.hq, 4123106177753494579
  %i.hs = or i64 %i.ho, %i.hr
  %i.ht = icmp ne i64 %i.hs, 0
  %i.hu = zext i1 %i.ht to i32
  %i.hv = icmp eq i32 %i.hu, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489, %bb.v
  %.0.i.i78 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489 ], [ %i.hv, %bb.v ]
  %i.hw = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3961, ptr noundef nonnull @.str.13, i32 noundef 6169, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i78) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %8, i8 0, i64 22, i1 false)
  %i.hx = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %8, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 3 uses
  %.ptr644 = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 3 uses
  %i.hz = load i8, ptr %8, align 1, !tbaa !84     ; 5 uses
  %i.ia = icmp ult i8 %i.hz, 3
  br i1 %i.ia, label %bb.w, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit82

bb.w:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit82: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80
  %i.ib = zext i8 %i.hz to i64                    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 5 uses
  %i.id = add nsw i64 %i.ib, -3                   ; 3 uses
  %.sroa.speculated.i.i81 = call noundef i64 @llvm.umin.i64(i64 %i.id, i64 5) ; 8 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sroa.speculated.i.i81 ; 3 uses
  %i.if = sub nuw nsw i64 %i.ib, %.sroa.speculated.i.i81
  %.not.i491 = icmp samesign ult i64 %i.if, 18
  br i1 %.not.i491, label %bb.x, label %.critedge.i492

.critedge.i492:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit82
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.x:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit82
  %i.ig = icmp ugt i8 %i.hz, 4
  br i1 %i.ig, label %bb.y, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i496

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i496:      ; preds = %bb.x
  %i.ih = sub nuw nsw i64 %i.id, %.sroa.speculated.i.i81
  %i.ii = add nuw nsw i64 %i.ih, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %8, i64 6
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ij, ptr noundef nonnull align 1 dereferenceable(1) %i.ie, i64 %i.ii, i1 false)
  %i.ik = load i16, ptr %.ptr644, align 1, !tbaa !26
  store i16 %i.ik, ptr %i.ic, align 1, !tbaa !26
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509

bb.y:                                             ; preds = %bb.x
  %.not71.i503.not = icmp eq i8 %i.hz, 5
  %i.il = sub nuw nsw i64 %i.id, %.sroa.speculated.i.i81
  %i.im = add nuw nsw i64 %i.il, 1                ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 6 ; 2 uses
  br i1 %.not71.i503.not, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i506, label %bb.aa

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i506:    ; preds = %bb.y
  %i.io = add nsw i64 %.sroa.speculated.i.i81, -1 ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.in, ptr noundef nonnull align 1 dereferenceable(1) %i.ie, i64 %i.im, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull align 1 %.ptr644, i64 %i.io, i1 false)
  %.not667 = icmp eq i64 %i.io, 1
  br i1 %.not667, label %bb.z, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509

bb.z:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i506
  %i.ip = sub nuw nsw i64 3, %.sroa.speculated.i.i81
  %i.iq = sub nuw nsw i64 4, %.sroa.speculated.i.i81
  %i.ir = getelementptr i8, ptr %i.hy, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 2
  %i.it = getelementptr i8, ptr %i.is, i64 %i.io
  %i.iu = getelementptr i8, ptr %i.ic, i64 %i.io
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.iu, ptr align 1 %i.it, i64 %i.ip, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509

bb.aa:                                            ; preds = %bb.y
  %i.iv = load i16, ptr %.ptr644, align 1
  store i16 %i.iv, ptr %i.ic, align 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.in, ptr noundef nonnull align 1 dereferenceable(1) %i.ie, i64 %i.im, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i496, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i506, %bb.z, %bb.aa
  %i.iw = trunc nuw nsw i64 %.sroa.speculated.i.i81 to i8
  %reass.sub645 = sub nuw i8 %i.hz, %i.iw
  %i.ix = add i8 %reass.sub645, 2                 ; 2 uses
  store i8 %i.ix, ptr %8, align 1, !tbaa !84
  %or.cond.not.i83 = icmp eq i8 %i.ix, 7
  br i1 %or.cond.not.i83, label %bb.ab, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86

bb.ab:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509
  %i.iy = load i32, ptr %i.hy, align 1
  %i.iz = xor i32 %i.iy, 875704624
  %i.ja = getelementptr i8, ptr %i.hy, i64 3
  %i.jb = load i32, ptr %i.ja, align 1
  %i.jc = xor i32 %i.jb, 959984948
  %i.jd = or i32 %i.iz, %i.jc
  %i.je = icmp ne i32 %i.jd, 0
  %i.jf = zext i1 %i.je to i32
  %i.jg = icmp eq i32 %i.jf, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509, %bb.ab
  %.0.i.i84 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509 ], [ %i.jg, %bb.ab ]
  %i.jh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3963, ptr noundef nonnull @.str.13, i32 noundef 6173, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i84) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %9, i8 0, i64 22, i1 false)
  %i.ji = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %9, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  %i.jl = load i8, ptr %9, align 1, !tbaa !84     ; 4 uses
  %i.jm = icmp ult i8 %i.jl, 3
  br i1 %i.jm, label %bb.ac, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit88

bb.ac:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit88: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86
  %i.jn = zext i8 %i.jl to i64                    ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.jp = add nsw i64 %i.jn, -3                   ; 4 uses
  %.sroa.speculated.i.i87 = call noundef i64 @llvm.umin.i64(i64 %i.jp, i64 5) ; 6 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.sroa.speculated.i.i87 ; 2 uses
  %i.jr = sub nuw nsw i64 %i.jn, %.sroa.speculated.i.i87
  %.not.i511 = icmp samesign ult i64 %i.jr, 17
  br i1 %.not.i511, label %bb.ad, label %.critedge.i512

.critedge.i512:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit88
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.ad:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit88
  %.not71.i523 = icmp ugt i8 %i.jl, 6
  br i1 %.not71.i523, label %bb.af, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i526

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i526:    ; preds = %bb.ad
  %.not646.not = icmp eq i64 %i.jp, 0             ; 2 uses
  %.sroa.speculated.i525 = select i1 %.not646.not, i64 2, i64 3
  %i.js = sub nuw nsw i64 %i.jp, %.sroa.speculated.i.i87
  %i.jt = add nuw nsw i64 %i.js, 1
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 7
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ju, ptr noundef nonnull align 1 dereferenceable(1) %i.jq, i64 %i.jt, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.jo, ptr noundef nonnull align 1 dereferenceable(2) %i.jk, i64 %.sroa.speculated.i525, i1 false)
  br i1 %.not646.not, label %bb.ae, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529

bb.ae:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i526
  %i.jv = sub nuw nsw i64 1, %.sroa.speculated.i.i87
  %i.jw = getelementptr i8, ptr %i.jj, i64 %i.jv
  %.sroa.gep684.a = getelementptr i8, ptr %i.jw, i64 5
  %.sroa.gep686 = getelementptr inbounds nuw i8, ptr %9, i64 6
  %i.jx = load i8, ptr %.sroa.gep684.a, align 1
  store i8 %i.jx, ptr %.sroa.gep686, align 1
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jo, ptr noundef nonnull align 1 dereferenceable(3) %i.jk, i64 3, i1 false)
  %i.jy = sub nuw nsw i64 %i.jp, %.sroa.speculated.i.i87
  %i.jz = add nuw nsw i64 %i.jy, 1
  %i.ka = getelementptr inbounds nuw i8, ptr %9, i64 7
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ka, ptr noundef nonnull align 1 dereferenceable(1) %i.jq, i64 %i.jz, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i526, %bb.ae, %bb.af
  %i.kb = trunc nuw nsw i64 %.sroa.speculated.i.i87 to i8
  %reass.sub647 = sub nuw i8 %i.jl, %i.kb
  %i.kc = add i8 %reass.sub647, 3                 ; 2 uses
  store i8 %i.kc, ptr %9, align 1, !tbaa !84
  %or.cond.not.i89 = icmp eq i8 %i.kc, 8
  %i.kd = load i64, ptr %i.jj, align 1
  %i.ke = icmp ne i64 %i.kd, 4123101749524443440
  %i.kf = zext i1 %i.ke to i32
  %i.kg = icmp eq i32 %i.kf, 0
  %.0.i.i90 = select i1 %or.cond.not.i89, i1 %i.kg, i1 false
  %i.kh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3965, ptr noundef nonnull @.str.13, i32 noundef 6177, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i90) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %10, i8 0, i64 22, i1 false)
  %i.ki = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %10, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %.ptr649 = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 4 uses
  %i.kj = load i8, ptr %10, align 1, !tbaa !84    ; 5 uses
  %i.kk = zext i8 %i.kj to i64                    ; 2 uses
  %.sroa.speculated.i.i93 = call noundef i64 @llvm.umin.i64(i64 %i.kk, i64 10) ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.ptr649, i64 %.sroa.speculated.i.i93 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %10, i64 11 ; 2 uses
  %i.kn = sub nuw nsw i64 %i.kk, %.sroa.speculated.i.i93 ; 2 uses
  %.not.i531 = icmp samesign ult i64 %i.kn, 10
  br i1 %.not.i531, label %bb.ag, label %.critedge.i532

.critedge.i532:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.ag:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529
  %i.ko = icmp ugt i8 %i.kj, 9
  br i1 %i.ko, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not648 = icmp eq i8 %i.kj, 0
  br i1 %.not648, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i536, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i547.thread

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i536:      ; preds = %bb.ah
  %i.kp = load i8, ptr %i.kl, align 1
  store i8 %i.kp, ptr %i.km, align 1
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i547.thread: ; preds = %bb.ah
  %i.kq = add nuw nsw i64 %i.kn, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.km, ptr noundef nonnull align 1 dereferenceable(1) %i.kl, i64 %i.kq, i1 false)
  %i.kr = sub nuw nsw i64 10, %.sroa.speculated.i.i93
  %i.ks = sub nsw i64 0, %.sroa.speculated.i.i93
  %i.kt = getelementptr i8, ptr %.ptr649, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 10
  %i.kv = getelementptr i8, ptr %i.ku, i64 %.sroa.speculated.i.i93
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kl, ptr align 1 %i.kv, i64 %i.kr, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542

_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i536, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i547.thread
  %i.kw = trunc nuw nsw i64 %.sroa.speculated.i.i93 to i8
  %reass.sub650 = sub nuw nsw i8 %i.kj, %i.kw
  %i.kx = add nuw nsw i8 %reass.sub650, 10        ; 2 uses
  store i8 %i.kx, ptr %10, align 1, !tbaa !84
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549: ; preds = %bb.ag, %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542
  %i.ky = phi i8 [ %i.kx, %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542 ], [ %i.kj, %bb.ag ]
  %or.cond.not.i94 = icmp eq i8 %i.ky, 10
  br i1 %or.cond.not.i94, label %bb.ai, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97

bb.ai:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549
  %i.kz = load i64, ptr %.ptr649, align 1
  %i.la = xor i64 %i.kz, 3978425819141910832
  %i.lb = getelementptr i8, ptr %.ptr649, i64 8
  %i.lc = load i16, ptr %i.lb, align 1
  %i.ld = zext i16 %i.lc to i64
  %i.le = xor i64 %i.ld, 14648
  %i.lf = or i64 %i.la, %i.le
  %i.lg = icmp ne i64 %i.lf, 0
  %i.lh = zext i1 %i.lg to i32
  %i.li = icmp eq i32 %i.lh, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549, %bb.ai
  %.0.i.i95 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549 ], [ %i.li, %bb.ai ]
  %i.lj = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3967, ptr noundef nonnull @.str.13, i32 noundef 6181, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i95) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %11, i8 0, i64 22, i1 false)
  %i.lk = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %11, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %.ptr652 = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 4 uses
  %i.ll = load i8, ptr %11, align 1, !tbaa !84    ; 5 uses
  %i.lm = zext i8 %i.ll to i64                    ; 2 uses
  %.sroa.speculated.i.i98 = call noundef i64 @llvm.umin.i64(i64 %i.lm, i64 10) ; 6 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.ptr652, i64 %.sroa.speculated.i.i98 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %11, i64 6 ; 2 uses
  %i.lp = sub nuw nsw i64 %i.lm, %.sroa.speculated.i.i98 ; 2 uses
  %.not.i551 = icmp samesign ult i64 %i.lp, 15
  br i1 %.not.i551, label %bb.aj, label %.critedge.i552

.critedge.i552:                                   ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.aj:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97
end_hunk_0
