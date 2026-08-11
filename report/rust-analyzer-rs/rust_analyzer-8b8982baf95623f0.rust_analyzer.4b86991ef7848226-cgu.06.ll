inline.NumInlined: 5464
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs_NtNtCs6u1mgJOKDyY_13rust_analyzer3cli4lsifNtB4_11LsifManager9add_token:bb.a
  %i.om = load i64, ptr %i.ol, align 8, !range !435, !alias.scope !10524, !noundef !4
  %i.on = icmp eq i64 %i.om, -1
  br i1 %i.on, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ol)
          to label %bb.ei unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.oo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.ol, align 8, !alias.scope !10527 ; 2 uses
  %i.op = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.op, label %.body172, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 216
  %.val3.i.i.i = load ptr, ptr %i.oq, align 8, !alias.scope !10534, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !10535
  br label %.body172

bb.ei:                                            ; preds = %bb.ef
  %.val.i.i.i = load i64, ptr %i.ol, align 8, !alias.scope !10527 ; 2 uses
  %i.or = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.or, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 216
  %.val1.i.i.i = load ptr, ptr %i.os, align 8, !alias.scope !10534, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !10538
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.ek:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationEECs6u1mgJOKDyY_13rust_analyzer.exit147
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker13MonikerResultECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(136) %2)
          to label %bb.ee unwind label %bb.em

bb.el:                                            ; preds = %bb.es, %bb.em, %.body152
  %.pn61 = phi { ptr, i32 } [ %i.ou, %bb.em ], [ %.pn59, %.body152 ], [ %.pn59, %bb.es ]
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 208
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ot) #44
          to label %.body172 unwind label %bb.m

bb.em:                                            ; preds = %bb.ek
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

.body172:                                         ; preds = %bb.eh, %bb.eg, %bb.el
  %.pn63 = phi { ptr, i32 } [ %.pn61, %bb.el ], [ %i.oo, %bb.eg ], [ %i.oo, %bb.eh ]
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 232
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ov) #44
          to label %common.resume unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.ej, %bb.ei, %bb.ee
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 4 uses
  %i.ox = load i64, ptr %i.ow, align 8, !range !435, !alias.scope !10541, !noundef !4
  %i.oy = icmp eq i64 %i.ox, -1
  br i1 %i.oy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit179, label %bb.en

bb.en:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ow)
          to label %bb.eq unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.oz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i174 = load i64, ptr %i.ow, align 8, !alias.scope !10544 ; 2 uses
  %i.pa = icmp eq i64 %.val2.i.i.i174, 0
  br i1 %i.pa, label %common.resume, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 240
  %.val3.i.i.i175 = load ptr, ptr %i.pb, align 8, !alias.scope !10551, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i175, i64 noundef %.val2.i.i.i174, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !10552
  br label %common.resume

bb.eq:                                            ; preds = %bb.en
  %.val.i.i.i177 = load i64, ptr %i.ow, align 8, !alias.scope !10544 ; 2 uses
  %i.pc = icmp eq i64 %.val.i.i.i177, 0
  br i1 %i.pc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit179, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 240
  %.val1.i.i.i178 = load ptr, ptr %i.pd, align 8, !alias.scope !10551, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i178, i64 noundef %.val.i.i.i177, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !10555
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit179

common.resume:                                    ; preds = %.body172, %bb.fc, %bb.eo, %bb.ep
  %common.resume.op = phi { ptr, i32 } [ %i.oz, %bb.eo ], [ %i.oz, %bb.ep ], [ %.pn63, %.body172 ], [ %.pn53.pn.pn.pn, %bb.fc ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit179: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.eq, %bb.er
  ret void

.body123.thread:                                  ; preds = %bb.cm, %bb.cl
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide12static_index13ReferenceDataEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ep) #44
          to label %.body152 unwind label %bb.m

bb.es:                                            ; preds = %.body152
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker13MonikerResultECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(136) %2) #44
          to label %bb.el unwind label %bb.m

bb.et:                                            ; preds = %.body
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.pf = load i64, ptr %i.pe, align 8, !range !435, !noundef !4
  %i.pg = icmp ne i64 %i.pf, -1
  %or.cond7 = and i1 %.sroa.038.0, %i.pg
  br i1 %or.cond7, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.ev, %bb.et
  br i1 %.sroa.033.0, label %bb.ex, label %bb.ew

bb.ev:                                            ; preds = %bb.et
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide5hover11HoverResultECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(48) %i.pe) #44
          to label %bb.eu unwind label %bb.m

bb.ew:                                            ; preds = %bb.ex, %bb.eu
  %i.ph = load i64, ptr %2, align 8, !range !390, !noundef !4
  switch i64 %i.ph, label %bb.fa [
    i64 2, label %bb.ey
    i64 0, label %bb.ez
  ]

bb.ex:                                            ; preds = %bb.eu
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 136
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide12static_index13ReferenceDataEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pi) #44
          to label %bb.ew unwind label %bb.m

bb.ey:                                            ; preds = %bb.ew, %bb.fb, %bb.fa, %bb.ez
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 208
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pj) #44
          to label %bb.fc unwind label %bb.m

bb.ez:                                            ; preds = %bb.ew
  br i1 %.sroa.037.0, label %bb.fb, label %bb.ey

bb.fa:                                            ; preds = %bb.ew
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker13MonikerResultECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(136) %2) #44
          to label %bb.ey unwind label %bb.m

bb.fb:                                            ; preds = %bb.ez
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker7MonikerECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(128) %i.pk) #44
          to label %bb.ey unwind label %bb.m

bb.fc:                                            ; preds = %bb.ey
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 232
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pl) #44
          to label %common.resume unwind label %bb.m
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E21reserve_one_uncheckedCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10558, !noalias !10561, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10558, !noalias !10561
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !288

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !288

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit
    i64 0, label %bb.e
  ], !prof !10563

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #48
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !10564, !noalias !10567, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !288

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl i64 %1, 3                            ; 6 uses
  %2 = icmp ult i64 %1, 2305843009213693952
  %i.k = icmp ult i64 %i.j, 9223372036854775801
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.m, !prof !10569

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit
  %3 = shl i64 %.sink.i, 3                        ; 3 uses
  %4 = icmp ult i64 %i.c, 2305843009213693952
  %i.l = icmp ult i64 %3, 9223372036854775801
  %or.cond65 = and i1 %4, %i.l
  br i1 %or.cond65, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit50, label %bb.m, !prof !10569

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #42 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit50: ; preds = %bb.g
  %i.o = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8, i64 noundef %i.j) #42 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit50, %bb.j
  %.sroa.031.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit50 ]
  store ptr %.sroa.031.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %5 = shl i64 %.sink.i, 3                        ; 3 uses
  %6 = icmp ult i64 %i.c, 2305843009213693952
  %i.s = icmp ult i64 %5, 9223372036854775801
  %or.cond.i = and i1 %6, %i.s
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.l, !prof !10569

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10570
  store i64 0, ptr %i.a, align 8, !noalias !10570
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !10570
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48, !noalias !10570
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8) #42
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit50, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit50 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECs6u1mgJOKDyY_13rust_analyzer.exit50 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E21reserve_one_uncheckedCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10573, !noalias !10576, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10573, !noalias !10576
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !288

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !288

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit
    i64 0, label %bb.e
  ], !prof !10563

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #48
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !10578, !noalias !10581, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !288

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl i64 %1, 5                            ; 6 uses
  %2 = icmp ult i64 %1, 576460752303423488
  %i.k = icmp ult i64 %i.j, 9223372036854775801
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.m, !prof !10569

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit
  %3 = shl i64 %.sink.i, 5                        ; 3 uses
  %4 = icmp ult i64 %i.c, 576460752303423488
  %i.l = icmp ult i64 %3, 9223372036854775801
  %or.cond60 = and i1 %4, %i.l
  br i1 %or.cond60, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit45, label %bb.m, !prof !10569

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #42 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit45: ; preds = %bb.g
  %i.o = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8, i64 noundef %i.j) #42 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %5 = shl i64 %.sink.i, 5                        ; 3 uses
  %6 = icmp ult i64 %i.c, 576460752303423488
  %i.s = icmp ult i64 %5, 9223372036854775801
  %or.cond.i = and i1 %6, %i.s
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.l, !prof !10569

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10583
  store i64 0, ptr %i.a, align 8, !noalias !10583
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !10583
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48, !noalias !10583
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8) #42
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit45 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportECs6u1mgJOKDyY_13rust_analyzer.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_E21reserve_one_uncheckedCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !10586, !noalias !10589, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !10586, !noalias !10589
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !288

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !288

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(160) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit
    i64 0, label %bb.e
  ], !prof !10563

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #48
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !4   ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10591, !noalias !10594, !nonnull !4 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !4 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !288

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 152                          ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 60680079189834051
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit, !prof !8848

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.j = mul i64 %.sink.i, 152                    ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 60680079189834051
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit45, !prof !8848

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #42 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #42 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 152                    ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 60680079189834051
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit, !prof !8848

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10596
  store i64 0, ptr %i.a, align 8, !noalias !10596
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !10596
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48, !noalias !10596
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #42
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5Rangej2_E21reserve_one_uncheckedCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10599, !noalias !10602, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10599, !noalias !10602
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !288

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !288

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5Rangej2_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit
    i64 0, label %bb.e
  ], !prof !10563

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #48
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5Rangej2_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !10604, !noalias !10607, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !288

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl i64 %1, 4                            ; 6 uses
  %2 = icmp ult i64 %1, 1152921504606846976
  %i.k = icmp ult i64 %i.j, 9223372036854775805
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.m, !prof !10569

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit
  %3 = shl i64 %.sink.i, 4                        ; 3 uses
  %4 = icmp ult i64 %i.c, 1152921504606846976
  %i.l = icmp ult i64 %3, 9223372036854775805
  %or.cond60 = and i1 %4, %i.l
  br i1 %or.cond60, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit45, label %bb.m, !prof !10569

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.m = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #42 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit45: ; preds = %bb.g
  %i.o = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 4, i64 noundef %i.j) #42 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %5 = shl i64 %.sink.i, 4                        ; 3 uses
  %6 = icmp ult i64 %i.c, 1152921504606846976
  %i.s = icmp ult i64 %5, 9223372036854775805
  %or.cond.i = and i1 %6, %i.s
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.l, !prof !10569

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10609
  store i64 0, ptr %i.a, align 8, !noalias !10609
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !10609
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48, !noalias !10609
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 4) #42
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit45 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecARNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_E21reserve_one_uncheckedCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10612, !noalias !10615, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10612, !noalias !10615
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !288

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !288

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecARNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit
    i64 0, label %bb.e
  ], !prof !10563

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #48
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecARNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanj1_E8try_growCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !10617, !noalias !10620, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !288

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl i64 %1, 3                            ; 6 uses
  %2 = icmp ult i64 %1, 2305843009213693952
  %i.k = icmp ult i64 %i.j, 9223372036854775801
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.m, !prof !10569

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit
  %3 = shl i64 %.sink.i, 3                        ; 3 uses
  %4 = icmp ult i64 %i.c, 2305843009213693952
  %i.l = icmp ult i64 %3, 9223372036854775801
  %or.cond65 = and i1 %4, %i.l
  br i1 %or.cond65, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit50, label %bb.m, !prof !10569

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #42 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit50: ; preds = %bb.g
  %i.o = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8, i64 noundef %i.j) #42 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit50, %bb.j
  %.sroa.031.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit50 ]
  store ptr %.sroa.031.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %5 = shl i64 %.sink.i, 3                        ; 3 uses
  %6 = icmp ult i64 %i.c, 2305843009213693952
  %i.s = icmp ult i64 %5, 9223372036854775801
  %or.cond.i = and i1 %6, %i.s
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.l, !prof !10569

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10622
  store i64 0, ptr %i.a, align 8, !noalias !10622
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !10622
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48, !noalias !10622
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8) #42
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit50, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit50 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayRNtNtCsixqsALXRULh_14cargo_metadata10diagnostic14DiagnosticSpanECs6u1mgJOKDyY_13rust_analyzer.exit50 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCs42rJDHPiiam_15crossbeam_epoch6atomicINtB5_6SharedINtNtCshVaWp8U3tmP_15crossbeam_deque5deque6BufferNtNtCsdtH0xi6p5qe_10rayon_core3job6JobRefEE5derefCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 1 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i64 6732230515997387111, ptr %i.b, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -2148975778017607884, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -3868444412471362514, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -8552852766154903181, ptr %.sroa.624.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.f = load i8, ptr %i.e, align 8, !range !6746, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 249
  %i.h = load i16, ptr %i.g, align 1
  %i.i = zext i16 %i.h to i32
  %i.j = shl nuw i32 %i.i, 16
  %.sroa.426.0.insert.ext = zext nneg i8 %i.f to i32
  %.sroa.426.0.insert.shift = shl nuw nsw i32 %.sroa.426.0.insert.ext, 8
  %.sroa.025.0.insert.ext = zext i1 %2 to i32
  %.sroa.426.0.insert.insert = or disjoint i32 %.sroa.426.0.insert.shift, %.sroa.025.0.insert.ext
  %.sroa.025.0.insert.insert = or disjoint i32 %.sroa.426.0.insert.insert, %i.j
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj4_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %.sroa.025.0.insert.insert)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !3554, !noundef !4 ; 2 uses
  %i.n = icmp samesign ugt i8 %i.m, 23
  %i.o = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.p = add nsw i64 %i.o, -23
  %i.q = select i1 %i.n, i64 %i.p, i64 0
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.02.0 = phi i64 [ %i.u, %bb.d ], [ %i.s, %bb.c ], [ %i.o, %bb.a ]
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sroa.02.0)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.v = load i64, ptr %i.k, align 8, !range !435, !noundef !4 ; 2 uses
  %i.w = icmp ne i64 %i.v, -1
  %i.x = zext i1 %i.w to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.x)
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.z)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !435, !noundef !4 ; 2 uses
  %i.ad = icmp ne i64 %i.ac, -1
  %i.ae = zext i1 %i.ad to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.ae)
  %.not44 = icmp eq i64 %i.ac, -1
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  call void @llvm.assume(i1 %i.ah)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.ag)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 251
  %i.aj = load i8, ptr %i.ai, align 1, !range !10625, !noundef !4 ; 3 uses
  %i.ak = icmp samesign ugt i8 %i.aj, 29
  %i.al = zext nneg i8 %i.aj to i64
  %i.am = add nsw i64 %i.al, -29
  %i.an = select i1 %i.ak, i64 %i.am, i64 0
  switch i64 %i.an, label %bb.j [
    i64 0, label %switch.lookup
    i64 1, label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.l:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.m:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.n:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.o:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

bb.p:                                             ; preds = %bb.i
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

switch.lookup:                                    ; preds = %bb.i
  %i.ao = zext nneg i8 %i.aj to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCs6u1mgJOKDyY_13rust_analyzer3lsp20completion_item_hash, i64 %i.ao
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit

_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit: ; preds = %switch.lookup, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sroa.02.0.i = phi ptr [ @157, %bb.i ], [ %switch.load, %switch.lookup ], [ @162, %bb.o ], [ @161, %bb.n ], [ @160, %bb.m ], [ @159, %bb.l ], [ @158, %bb.k ], [ @163, %bb.p ]
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 2)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i, i64 noundef 2)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !range !3554, !noundef !4 ; 2 uses
  %i.ar = icmp samesign ugt i8 %i.aq, 23
  %i.as = zext nneg i8 %i.aq to i64               ; 2 uses
  %i.at = add nsw i64 %i.as, -23
  %i.au = select i1 %i.ar, i64 %i.at, i64 0
  switch i64 %i.au, label %bb.b [
    i64 0, label %bb.s
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.q:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4
  br label %bb.s

bb.s:                                             ; preds = %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit, %bb.r, %bb.q
  %.sroa.09.0 = phi i64 [ %i.ay, %bb.r ], [ %i.aw, %bb.q ], [ %i.as, %_RNvMs0_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_18CompletionItemKind3tag.exit ]
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sroa.09.0)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtCs42xZ1oUXfIG_8smol_str7SmolStrECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !435, !noundef !4 ; 2 uses
  %i.bb = icmp ne i64 %i.ba, -1
  %i.bc = zext i1 %i.bb to i8
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj1_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i8 noundef %i.bc)
  %.not45 = icmp eq i64 %i.ba, -1
  br i1 %.not45, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bf)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateAhj8_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.be)
  call void @_RINvMCsdI2EeOV5l2N_8tenthashNtB3_8TentHash6updateRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
  br label %bb.u

end_hunk_0
