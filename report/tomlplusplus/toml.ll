Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v34impl7impl_ex6parser10parse_timeEb:bb.a

bb.bv:                                            ; preds = %bb.bt
  %.not34 = icmp eq i32 %i.dq, 46
  br i1 %.not34, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #50
  store i64 19, ptr %27, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr @.str.138, ptr %i.ds, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #50
  %i.dt = icmp ult i32 %i.dq, 32
  br i1 %i.dt, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.du = zext nneg i32 %i.dq to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.du ; 2 uses
  %.sroa.0.0.copyload.i96 = load i64, ptr %i.dv, align 16, !tbaa !124
  %.sroa.4.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.4.0.copyload.i98 = load ptr, ptr %.sroa.4.0..sroa_idx.i97, align 8, !tbaa !125
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit99

bb.by:                                            ; preds = %bb.bw
  %i.dw = icmp eq i32 %i.dq, 127
  br i1 %i.dw, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit99, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !247
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit99

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit99: ; preds = %bb.bx, %bb.by, %bb.bz
  %.sroa.4.0.i92 = phi ptr [ %.sroa.4.0.copyload.i98, %bb.bx ], [ %i.dx, %bb.bz ], [ @.str.29, %bb.by ]
  %.sroa.0.0.i93 = phi i64 [ %.sroa.0.0.copyload.i96, %bb.bx ], [ %i.dz, %bb.bz ], [ 6, %bb.by ]
  store i64 %.sroa.0.0.i93, ptr %28, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %.sroa.4.0.i92, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #50
  store i64 1, ptr %29, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr @.str.16, ptr %i.eb, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29) #54
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit99
  unreachable

bb.cb:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit99
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #50
  br label %bb.dc

bb.cc:                                            ; preds = %bb.bu, %bb.bv
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !240 ; 2 uses
  %.not35 = icmp eq ptr %i.ed, null
  br i1 %.not35, label %bb.ce, label %.preheader145, !prof !156

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #50
  store i64 23, ptr %30, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr @.str.13, ptr %i.ee, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %30) #54
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cc
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.ch:                                            ; preds = %bb.ce
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #50
  br label %bb.dc

thread-pre-split128:                              ; preds = %.noexc102
  br i1 %.not38134, label %.thread208, label %.preheader145

.preheader145:                                    ; preds = %bb.cd, %thread-pre-split128
  %.09.i162 = phi i64 [ %i.em, %thread-pre-split128 ], [ 0, %bb.cd ] ; 4 uses
  %i.eh = phi ptr [ %i.en, %thread-pre-split128 ], [ %i.ed, %bb.cd ] ; 5 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !242
  %i.ej = add i32 %i.ei, -48                      ; 2 uses
  %i.ek = icmp ult i32 %i.ej, 10
  br i1 %i.ek, label %bb.ci, label %_ZN4toml2v34impl7impl_ex6parser38consume_variable_length_digit_sequenceIjEEmPT_m.exit

bb.ci:                                            ; preds = %.preheader145
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.09.i162
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !155
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc102 unwind label %bb.cj

.noexc102:                                        ; preds = %bb.ci
  %i.em = add nuw nsw i64 %.09.i162, 1            ; 3 uses
  %exitcond.not.i101 = icmp eq i64 %i.em, 64
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !240 ; 4 uses
  %.not38134 = icmp eq ptr %i.en, null            ; 2 uses
  br i1 %exitcond.not.i101, label %.thread, label %thread-pre-split128, !llvm.loop !789

_ZN4toml2v34impl7impl_ex6parser38consume_variable_length_digit_sequenceIjEEmPT_m.exit: ; preds = %.preheader145
  %.not36 = icmp eq i64 %.09.i162, 0
  br i1 %.not36, label %bb.ck, label %bb.cu

bb.cj:                                            ; preds = %bb.ci
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.ck:                                            ; preds = %_ZN4toml2v34impl7impl_ex6parser38consume_variable_length_digit_sequenceIjEEmPT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #50
  store i64 33, ptr %31, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr @.str.139, ptr %i.ep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #50
  %i.eq = load i32, ptr %i.eh, align 8, !tbaa !335 ; 3 uses
  %i.er = icmp ult i32 %i.eq, 32
  br i1 %i.er, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.es = zext nneg i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.es ; 2 uses
  %.sroa.0.0.copyload.i107 = load i64, ptr %i.et, align 16, !tbaa !124
  %.sroa.4.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.4.0.copyload.i109 = load ptr, ptr %.sroa.4.0..sroa_idx.i108, align 8, !tbaa !125
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit110

bb.cm:                                            ; preds = %bb.ck
  %i.eu = icmp eq i32 %i.eq, 127
  br i1 %i.eu, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit110, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !247
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit110

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit110: ; preds = %bb.cl, %bb.cm, %bb.cn
  %.sroa.4.0.i103 = phi ptr [ %.sroa.4.0.copyload.i109, %bb.cl ], [ %i.ev, %bb.cn ], [ @.str.29, %bb.cm ]
  %.sroa.0.0.i104 = phi i64 [ %.sroa.0.0.copyload.i107, %bb.cl ], [ %i.ex, %bb.cn ], [ 6, %bb.cm ]
  store i64 %.sroa.0.0.i104, ptr %32, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.sroa.4.0.i103, ptr %i.ey, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #50
  store i64 1, ptr %33, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr @.str.16, ptr %i.ez, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %33) #54
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit110
  unreachable

bb.cp:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit110
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #50
  br label %bb.dc

.thread:                                          ; preds = %.noexc102
  br i1 %.not38134, label %.lr.ph.preheader, label %bb.cq

bb.cq:                                            ; preds = %.thread
  %i.fb = load i32, ptr %i.en, align 4, !tbaa !242
  %i.fc = add i32 %i.fb, -48
  %i.fd = icmp ult i32 %i.fc, 10
  br i1 %i.fd, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #50
  store i64 50, ptr %34, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr @.str.140, ptr %i.fe, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEmEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4toml2v34impl7impl_ex6parser10parse_timeEbE10max_digits) #54
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #50
  br label %bb.dc

bb.cu:                                            ; preds = %_ZN4toml2v34impl7impl_ex6parser38consume_variable_length_digit_sequenceIjEEmPT_m.exit, %bb.cq
  %.0.lcssa.i132135139 = phi i64 [ 64, %bb.cq ], [ %.09.i162, %_ZN4toml2v34impl7impl_ex6parser38consume_variable_length_digit_sequenceIjEEmPT_m.exit ] ; 2 uses
  %i.fg = phi ptr [ %i.en, %bb.cq ], [ %i.eh, %_ZN4toml2v34impl7impl_ex6parser38consume_variable_length_digit_sequenceIjEEmPT_m.exit ] ; 4 uses
  br i1 %1, label %.thread208, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !242
  %i.fi = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.fh) #56
  br i1 %i.fi, label %.thread208, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #50
  store i64 32, ptr %35, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr @.str.100, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #50
  %38 = load i32, ptr %i.fg, align 8, !tbaa !335  ; 3 uses
  %i.fk = icmp ult i32 %38, 32
  br i1 %i.fk, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.fl = zext nneg i32 %38 to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.fl ; 2 uses
  %.sroa.0.0.copyload.i115 = load i64, ptr %i.fm, align 16, !tbaa !124
  %.sroa.4.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.4.0.copyload.i117 = load ptr, ptr %.sroa.4.0..sroa_idx.i116, align 8, !tbaa !125
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit118

bb.cy:                                            ; preds = %bb.cw
  %i.fn = icmp eq i32 %38, 127
  br i1 %i.fn, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit118, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !247
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit118

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit118: ; preds = %bb.cx, %bb.cy, %bb.cz
  %.sroa.4.0.i111 = phi ptr [ %.sroa.4.0.copyload.i117, %bb.cx ], [ %i.fo, %bb.cz ], [ @.str.29, %bb.cy ]
  %.sroa.0.0.i112 = phi i64 [ %.sroa.0.0.copyload.i115, %bb.cx ], [ %i.fq, %bb.cz ], [ 6, %bb.cy ]
  store i64 %.sroa.0.0.i112, ptr %36, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %.sroa.4.0.i111, ptr %i.fr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #50
  store i64 1, ptr %37, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr @.str.16, ptr %i.fs, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37) #54
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit118
  unreachable

bb.db:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit118
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #50
  br label %bb.dc

.thread208:                                       ; preds = %thread-pre-split128, %bb.cu, %bb.cv
  %.0.lcssa.i132136 = phi i64 [ %.0.lcssa.i132135139, %bb.cv ], [ %.0.lcssa.i132135139, %bb.cu ], [ %i.em, %thread-pre-split128 ]
  %.0.lcssa.i132136.fr = freeze i64 %.0.lcssa.i132136 ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0.lcssa.i132136.fr, i64 9)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %.thread208
  %.0.lcssa.i132136144 = phi i64 [ 64, %.thread ], [ %.0.lcssa.i132136.fr, %.thread208 ] ; 5 uses
  %i.fu = phi i64 [ 9, %.thread ], [ %spec.select, %.thread208 ] ; 5 uses
  %i.fv = add nsw i64 %i.fu, -1
  %xtraiter = and i64 %i.fu, 3                    ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 3
  br i1 %i.fw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fu, 12
  br label %.lr.ph

.preheader.unr-lcssa:                             ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.unr-lcssa, %.lr.ph.preheader
  %.013166.epil.init = phi i64 [ %i.fu, %.lr.ph.preheader ], [ %i.ha, %.preheader.unr-lcssa ]
  %.014165.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.hf, %.preheader.unr-lcssa ]
  %.015164.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.he, %.preheader.unr-lcssa ]
  %lcmp.mod248 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod248)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.013166.epil = phi i64 [ %i.fx, %.lr.ph.epil ], [ %.013166.epil.init, %.lr.ph.epil.preheader ]
  %.014165.epil = phi i32 [ %i.gc, %.lr.ph.epil ], [ %.014165.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.015164.epil = phi i32 [ %i.gb, %.lr.ph.epil ], [ %.015164.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fx = add nsw i64 %.013166.epil, -1           ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !155
  %i.ga = mul i32 %i.fz, %.014165.epil
  %i.gb = add i32 %i.ga, %.015164.epil            ; 2 uses
  %i.gc = mul i32 %.014165.epil, 10
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !790

.preheader:                                       ; preds = %.lr.ph.epil, %.preheader.unr-lcssa
  %.lcssa234 = phi i32 [ %i.he, %.preheader.unr-lcssa ], [ %i.gb, %.lr.ph.epil ] ; 3 uses
  %i.gd = icmp ult i64 %.0.lcssa.i132136144, 9
  br i1 %i.gd, label %.lr.ph169.preheader, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread

.lr.ph169.preheader:                              ; preds = %.preheader
  %i.ge = sub nsw i64 1, %.0.lcssa.i132136144
  %xtraiter249 = and i64 %i.ge, 7                 ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.lr.ph169.prol.loopexit, label %.lr.ph169.prol

.lr.ph169.prol:                                   ; preds = %.lr.ph169.preheader, %.lr.ph169.prol
  %.0168.prol = phi i64 [ %i.gg, %.lr.ph169.prol ], [ %.0.lcssa.i132136144, %.lr.ph169.preheader ]
  %.1167.prol = phi i32 [ %i.gf, %.lr.ph169.prol ], [ %.lcssa234, %.lr.ph169.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph169.prol ], [ 0, %.lr.ph169.preheader ]
  %i.gf = mul i32 %.1167.prol, 10                 ; 3 uses
  %i.gg = add i64 %.0168.prol, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter249
  br i1 %prol.iter.cmp.not, label %.lr.ph169.prol.loopexit, label %.lr.ph169.prol, !llvm.loop !791

.lr.ph169.prol.loopexit:                          ; preds = %.lr.ph169.prol, %.lr.ph169.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph169.preheader ], [ %i.gf, %.lr.ph169.prol ]
  %.0168.unr = phi i64 [ %.0.lcssa.i132136144, %.lr.ph169.preheader ], [ %i.gg, %.lr.ph169.prol ]
  %.1167.unr = phi i32 [ %.lcssa234, %.lr.ph169.preheader ], [ %i.gf, %.lr.ph169.prol ]
  %i.gh = icmp ugt i64 %.0.lcssa.i132136144, 1
  br i1 %i.gh, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread, label %.lr.ph169

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.013166 = phi i64 [ %i.fu, %.lr.ph.preheader.new ], [ %i.ha, %.lr.ph ] ; 4 uses
  %.014165 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.hf, %.lr.ph ] ; 5 uses
  %.015164 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.he, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.gi = getelementptr [4 x i8], ptr %i.a, i64 %.013166
  %i.gj = getelementptr i8, ptr %i.gi, i64 -4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !155
  %i.gl = mul i32 %i.gk, %.014165
  %i.gm = add i32 %i.gl, %.015164
  %i.gn = mul i32 %.014165, 10
  %i.go = getelementptr [4 x i8], ptr %i.a, i64 %.013166
  %i.gp = getelementptr i8, ptr %i.go, i64 -8
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !155
  %i.gr = mul i32 %i.gq, %i.gn
  %i.gs = add i32 %i.gr, %i.gm
  %i.gt = mul i32 %.014165, 100
  %i.gu = getelementptr [4 x i8], ptr %i.a, i64 %.013166
  %i.gv = getelementptr i8, ptr %i.gu, i64 -12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !155
  %i.gx = mul i32 %i.gw, %i.gt
  %i.gy = add i32 %i.gx, %i.gs
  %i.gz = mul i32 %.014165, 1000
  %i.ha = add nsw i64 %.013166, -4                ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !155
  %i.hd = mul i32 %i.hc, %i.gz
  %i.he = add i32 %i.hd, %i.gy                    ; 3 uses
  %i.hf = mul i32 %.014165, 10000                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !792

.lr.ph169:                                        ; preds = %.lr.ph169.prol.loopexit, %.lr.ph169
  %.0168 = phi i64 [ %i.hh, %.lr.ph169 ], [ %.0168.unr, %.lr.ph169.prol.loopexit ]
  %.1167 = phi i32 [ %i.hg, %.lr.ph169 ], [ %.1167.unr, %.lr.ph169.prol.loopexit ]
  %i.hg = mul i32 %.1167, 100000000               ; 2 uses
  %i.hh = add i64 %.0168, 8                       ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.hh, 9
  br i1 %exitcond.not.7, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread, label %.lr.ph169, !llvm.loop !793

_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread: ; preds = %.lr.ph169.prol.loopexit, %.lr.ph169, %.preheader, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.br, %bb.bs
  %.sroa.5125.0 = phi i32 [ 0, %bb.br ], [ 0, %bb.bs ], [ 0, %bb.bu ], [ 0, %bb.bu ], [ 0, %bb.bu ], [ 0, %bb.bu ], [ %.lcssa234, %.preheader ], [ %.lcssa.unr, %.lr.ph169.prol.loopexit ], [ %i.hg, %.lr.ph169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.sroa.5125.0.insert.ext = zext i32 %.sroa.5125.0 to i64
  %.sroa.5125.0.insert.shift = shl nuw i64 %.sroa.5125.0.insert.ext, 32
  %i.hi = shl nuw nsw i32 %i.dl, 16
  %.sroa.3.0.insert.shift = zext nneg i32 %i.hi to i64
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.5125.0.insert.shift, %.sroa.3.0.insert.shift
  %i.hj = shl nuw nsw i32 %i.bu, 8
  %.sroa.2.0.insert.shift = zext nneg i32 %i.hj to i64
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  %.sroa.0124.0.insert.ext = zext nneg i32 %i.r to i64
  %.sroa.0124.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, %.sroa.0124.0.insert.ext
  ret i64 %.sroa.0124.0.insert.insert

bb.dc:                                            ; preds = %bb.cj, %bb.cp, %bb.ct, %bb.db, %bb.ch, %bb.cg, %bb.cb, %bb.bq
  %.pn41 = phi { ptr, i32 } [ %i.do, %bb.bq ], [ %i.ec, %bb.cb ], [ %i.eg, %bb.ch ], [ %i.ef, %bb.cg ], [ %i.ff, %bb.ct ], [ %i.ft, %bb.db ], [ %i.eo, %bb.cj ], [ %i.fa, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  br label %bb.dd

bb.dd:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.dc, %bb.bn, %bb.be, %bb.az, %bb.as, %bb.ao
  %.pn43 = phi { ptr, i32 } [ %i.bx, %bb.ao ], [ %i.ca, %bb.as ], [ %i.cm, %bb.az ], [ %i.cs, %bb.be ], [ %.pn41, %bb.dc ], [ %i.dj, %bb.bn ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %bb.de

bb.de:                                            ; preds = %.loopexit148, %.loopexit.split-lp149, %bb.dd, %bb.al, %bb.ac, %bb.x, %bb.q, %bb.m
  %.pn45 = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.aj, %bb.q ], [ %i.av, %bb.x ], [ %i.bb, %bb.ac ], [ %.pn43, %bb.dd ], [ %i.bs, %bb.al ], [ %lpad.loopexit150, %.loopexit148 ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  br label %bb.df

bb.df:                                            ; preds = %.loopexit153, %.loopexit.split-lp154, %bb.de, %bb.j
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.de ], [ %i.ae, %bb.j ], [ %lpad.loopexit155, %.loopexit153 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn45.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr i32 @_ZN4toml2v34impl7impl_ex6parser10parse_dateEb(ptr noundef nonnull align 8 dereferenceable(3496) %0, i1 noundef zeroext %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
end_hunk_0
