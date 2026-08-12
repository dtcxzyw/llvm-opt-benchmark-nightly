inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RNvMsa_NtCsjsNuU4yXw23_3fst3rawINtB5_15StreamWithStateRNtNtB7_15inner_automaton3StrE3newCsileJQcQObtj_7hir_def:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5261.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5261.i, i64 64, i1 false), !noalias !4143
  %.sroa.6262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sf, i64 80
  store i64 0, ptr %.sroa.6262.0..sroa_idx.i, align 8, !noalias !4143
  %.sroa.7263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sf, i64 88
  store i64 %i.mc, ptr %.sroa.7263.0..sroa_idx.i, align 8, !noalias !4143
  %i.sg = add i64 %i.sb, 1
  store i64 %i.sg, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !4219, !noalias !4222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5261.i)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %bb.bn, %bb.bl, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4145
  br label %bb.bp

bb.bn:                                            ; preds = %bb.an
  %i.sh = getelementptr i8, ptr %i.mf, i64 -16    ; 2 uses
  %i.si = load i64, ptr %i.sh, align 8, !noalias !4143, !noundef !8
  %i.sj = add i64 %i.si, -1
  store i64 %i.sj, ptr %i.sh, align 8, !noalias !4143
  %i.sk = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4140, !noalias !4143, !noundef !8 ; 2 uses
  %i.sl = icmp eq i64 %i.sk, 0
  br i1 %i.sl, label %bb.bm, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.sm = add i64 %i.sk, -1                       ; 2 uses
  store i64 %i.sm, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4140, !noalias !4143
  %i.sn = load i64, ptr %i.x, align 8, !range !312, !alias.scope !4140, !noalias !4143, !noundef !8
  %i.so = icmp ult i64 %i.sm, %i.sn
  call void @llvm.assume(i1 %i.so)
  br label %bb.bm

bb.bp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCsjsNuU4yXw23_3fst3raw11StreamStateINtNtB4_6option6OptionjEEEECsileJQcQObtj_7hir_def.exit.i, %bb.bm, %bb.af
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjsNuU4yXw23_3fst3raw5BoundECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RNvMsa_NtCsjsNuU4yXw23_3fst3rawINtB5_15StreamWithStateRNtNtB7_15inner_automaton3StrE8seek_minCsileJQcQObtj_7hir_def.exit unwind label %bb.cb

bb.bq:                                            ; preds = %bb.bs, %bb.e
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4143
  %i.sp = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 105) 96, i64 noundef 8) #48, !noalias !4143 ; 8 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.br, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i, !prof !9

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #42
          to label %.noexc213.i unwind label %bb.f, !noalias !4143

.noexc213.i:                                      ; preds = %bb.br
  unreachable

.thread.i:                                        ; preds = %.thread282.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4145
  %i.sr = load ptr, ptr %i.v, align 8, !alias.scope !4140, !noalias !4143, !nonnull !8, !align !335, !noundef !8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.st = load i64, ptr %i.ss, align 8, !noalias !4143, !noundef !8
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.sv = load i64, ptr %i.su, align 8, !noalias !4143, !noundef !8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.sx = load ptr, ptr %i.sw, align 8, !alias.scope !4140, !noalias !4143, !nonnull !8, !noundef !8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.sz = load i64, ptr %i.sy, align 8, !alias.scope !4140, !noalias !4143, !noundef !8
  invoke void @_RNvMs_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB4_4Node3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, i64 noundef %i.sv, i64 noundef %i.st, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sx, i64 noundef %i.sz)
          to label %bb.bs unwind label %bb.f, !noalias !4143

bb.bs:                                            ; preds = %.thread.i
  %i.ta = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.tb = load i8, ptr %i.ta, align 1, !range !293, !noalias !4145, !noundef !8 ; 2 uses
  %i.tc = trunc nuw i8 %i.tb to i1
  %i.td = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.te = load i64, ptr %i.td, align 8, !noalias !4145
  %.sroa.5.0.i = select i1 %i.tc, i64 %i.te, i64 undef
  %.sroa.01.0.i = zext nneg i8 %i.tb to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4145
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !alias.scope !4140, !noalias !4143
  %i.tf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.5.0.i, ptr %i.tf, align 8, !alias.scope !4140, !noalias !4143
  br label %bb.bq

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4145
  %i.tg = load ptr, ptr %i.v, align 8, !alias.scope !4140, !noalias !4143, !nonnull !8, !align !335, !noundef !8 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.ti = load i64, ptr %i.th, align 8, !noalias !4143, !noundef !8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !noalias !4143, !noundef !8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.tm = load ptr, ptr %i.tl, align 8, !alias.scope !4140, !noalias !4143, !nonnull !8, !noundef !8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.to = load i64, ptr %i.tn, align 8, !alias.scope !4140, !noalias !4143, !noundef !8
  invoke void @_RNvMs_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB4_4Node3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, i64 noundef %i.tk, i64 noundef %i.ti, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tm, i64 noundef %i.to)
          to label %bb.bu unwind label %bb.bt, !noalias !4143

bb.bt:                                            ; preds = %bb.bu, %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i
  %i.tp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sp, i64 noundef 96, i64 noundef 8) #48, !noalias !4143
  br label %.loopexit.split-lp.i

bb.bu:                                            ; preds = %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i
  %i.tq = invoke { i64, i64 } @_RNvXNtCsjsNuU4yXw23_3fst15inner_automatonRNtB2_3StrNtB2_9Automaton5startCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %bb.bv unwind label %bb.bt, !noalias !4143 ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.tr = extractvalue { i64, i64 } %i.tq, 0
  %i.ts = extractvalue { i64, i64 } %i.tq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.510.i, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !4145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4145
  store i64 %i.tr, ptr %i.sp, align 8, !noalias !4143
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store i64 %i.ts, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4143
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.510.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.510.i, i64 64, i1 false), !noalias !4143
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sp, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !4143
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510.i)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsjsNuU4yXw23_3fst3raw11StreamStateINtNtCshzWfHUSfYae_4core6option6OptionjEEENtNtNtB1o_3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.bx unwind label %bb.bw, !noalias !4143

bb.bw:                                            ; preds = %bb.bv
  %i.tt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCsjsNuU4yXw23_3fst3raw11StreamStateINtNtCshzWfHUSfYae_4core6option6OptionjEEENtNtNtB1v_3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i unwind label %bb.by, !noalias !4143

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCsjsNuU4yXw23_3fst3raw11StreamStateINtNtCshzWfHUSfYae_4core6option6OptionjEEENtNtNtB1v_3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCsjsNuU4yXw23_3fst3raw11StreamStateINtNtB4_6option6OptionjEEEECsileJQcQObtj_7hir_def.exit.i unwind label %bb.bz, !noalias !4143

bb.by:                                            ; preds = %bb.bw
  %i.tu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46, !noalias !4143
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bz, %bb.bw
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.tv, %bb.bz ], [ %i.tt, %bb.bw ]
  store i64 1, ptr %i.y, align 8, !alias.scope !4140, !noalias !4143
  store ptr %i.sp, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !4140, !noalias !4143
  store i64 1, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !4140, !noalias !4143
  br label %.loopexit.split-lp.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCsjsNuU4yXw23_3fst3raw11StreamStateINtNtB4_6option6OptionjEEEECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.bx
  store i64 1, ptr %i.y, align 8, !alias.scope !4140, !noalias !4143
  store ptr %i.sp, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !4140, !noalias !4143
  store i64 1, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !4140, !noalias !4143
  br label %bb.bp

bb.ca:                                            ; preds = %.loopexit.split-lp.i
  %i.tw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.cb:                                            ; preds = %bb.bp
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i, %bb.cb
  %eh.lpad-body = phi { ptr, i32 } [ %i.tx, %bb.cb ], [ %.pn44.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjsNuU4yXw23_3fst3raw15StreamWithStateRNtNtBG_15inner_automaton3StrEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(128) %i.l) #44
          to label %.critedge unwind label %bb.cc

_RNvMsa_NtCsjsNuU4yXw23_3fst3rawINtB5_15StreamWithStateRNtNtB7_15inner_automaton3StrE8seek_minCsileJQcQObtj_7hir_def.exit: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.cc:                                            ; preds = %bb.cf, %bb.ce, %.body
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.cd:                                            ; preds = %bb.c
  unreachable

bb.ce:                                            ; preds = %bb.a, %bb.c
  %i.tz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjsNuU4yXw23_3fst3raw5BoundECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(32) %4) #44
          to label %bb.cf unwind label %bb.cc

.critedge:                                        ; preds = %.body, %bb.cf
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.tz, %bb.cf ]
  resume { ptr, i32 } %.pn11

bb.cf:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjsNuU4yXw23_3fst3raw5BoundECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #44
          to label %.critedge unwind label %bb.cc
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_E21reserve_one_uncheckedB1g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4224, !noalias !4227, !noundef !8 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4224, !noalias !4227, !nonnull !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4224, !noalias !4227 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4229)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4229
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl i64 %i.m, 2                          ; 4 uses
  %1 = icmp ult i64 %.sroa.02.0, 4611686018427387903
  %i.q = icmp ult i64 %i.p, 9223372036854775805
  %or.cond.i = and i1 %1, %i.q
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit.i, label %bb.p, !prof !4232

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit.i
  %2 = shl i64 %.sink.i.i, 2                      ; 2 uses
  %3 = icmp ult i64 %i.c, 4611686018427387904
  %i.r = icmp ult i64 %2, 9223372036854775805
  %or.cond59.i = and i1 %3, %i.r
  br i1 %or.cond59.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i, label %bb.p, !prof !4232

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4229
  %i.s = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #48, !noalias !4229 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i: ; preds = %bb.i
  %i.u = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 4, i64 noundef %i.p) #48, !noalias !4229 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !4229
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !4229
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !4229
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !4229
  %4 = shl i64 %.sink.i.i, 2                      ; 3 uses
  %5 = icmp ult i64 %i.c, 4611686018427387904
  %i.y = icmp ult i64 %4, 9223372036854775805
  %or.cond.i.i = and i1 %5, %i.y
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB19_.exit.i, label %bb.n, !prof !4232

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4233
  store i64 0, ptr %i.a, align 8, !noalias !4233
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !4233
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4233
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB19_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 4) #48, !noalias !4229
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB19_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E13shrink_to_fitB2w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4236, !noalias !4239, !nonnull !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4236, !noalias !4239 ; 5 uses
  %i.h = icmp ult i64 %i.g, 5
  br i1 %i.h, label %bb.g, label %bb.c

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.d, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, %i.g
  br i1 %i.i, label %bb.d, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E8try_growB2w_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %i.g) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.f
  ], !prof !4

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #42
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.m = mul nuw nsw i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.e, i64 %i.m, i1 false)
  %i.n = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.o = mul i64 %i.n, 12                         ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.n, 768614336404564650
  br i1 %or.cond.not.i, label %bb.h, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit, !prof !834

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4241
  store i64 0, ptr %i.a, align 8, !noalias !4241
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !4241
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4241
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit: ; preds = %bb.g
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.o, i64 noundef 4) #48
  store i64 %i.g, ptr %i.b, align 8
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E21reserve_one_uncheckedB2w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4244, !noalias !4247, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4244, !noalias !4247
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E8try_growB2w_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E8try_growB2w_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 8 uses
  %i.d = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 4
  %i.f = load ptr, ptr %0, align 8, !alias.scope !4249, !noalias !4252, !nonnull !8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 5
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 12                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 768614336404564650
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit, !prof !834

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit
  %i.k = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45, !prof !834

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.l = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #48 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 4, i64 noundef %i.j) #48 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul nuw nsw i64 %.val, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit, !prof !834

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4254
  store i64 0, ptr %i.a, align 8, !noalias !4254
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !4254
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4254
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 4) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_E21reserve_one_uncheckedBK_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !4257, !noalias !4260, !noundef !8 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4257, !noalias !4260, !nonnull !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4257, !noalias !4260
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4262)
  %i.n = icmp ult i64 %i.b, 3                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !4262, !noundef !8 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4262
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %.sroa.02.0, 2
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.q = mul i64 %i.m, 12                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 768614336404564649
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit.i, !prof !834

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 768614336404564650
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i, !prof !834

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4262
  %i.r = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef 4) #48, !noalias !4262 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i: ; preds = %bb.i
  %i.t = mul nuw i64 %.sink.i.i, 12
  %i.u = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 4, i64 noundef %i.q) #48, !noalias !4262 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !4262
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !4262
  store i64 %i.m, ptr %0, align 8, !alias.scope !4262
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.w = mul nuw nsw i64 %i.o, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 %i.d, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = mul nuw nsw i64 %i.o, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !4262
  %i.y = mul i64 %.sink.i.i, 12                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 768614336404564650
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCsileJQcQObtj_7hir_def7MacroIdEBD_.exit.i, !prof !834

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4265
  store i64 0, ptr %i.a, align 8, !noalias !4265
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.z, align 8, !noalias !4265
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4265
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCsileJQcQObtj_7hir_def7MacroIdEBD_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #48, !noalias !4262
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.q) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCsileJQcQObtj_7hir_def7MacroIdEBD_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E13shrink_to_fitCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4268, !noalias !4271, !nonnull !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4268, !noalias !4271 ; 5 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.c

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.f, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, %i.g
  br i1 %i.i, label %bb.f, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.e, i64 %i.j, i1 false)
  %i.k = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %1 = shl i64 %i.k, 3                            ; 3 uses
  %2 = icmp ult i64 %i.k, 2305843009213693952
  %i.l = icmp ult i64 %1, 9223372036854775801
  %or.cond.i = and i1 %2, %i.l
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, label %bb.e, !prof !4232

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4273
  store i64 0, ptr %i.a, align 8, !noalias !4273
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %3, align 8, !noalias !4273
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4273
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit: ; preds = %bb.d
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 8) #48
  store i64 %i.g, ptr %i.b, align 8
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.f:                                             ; preds = %bb.c
  %i.m = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.g) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  switch i64 %i.n, label %bb.g [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.h
  ], !prof !4

bb.g:                                             ; preds = %bb.f
  %i.o = extractvalue { i64, i64 } %i.m, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.n, i64 noundef %i.o) #42
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4276, !noalias !4279, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4276, !noalias !4279
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !4281, !noalias !4284, !nonnull !8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
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
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, label %bb.m, !prof !4232

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit
  %3 = shl i64 %.sink.i, 3                        ; 3 uses
  %4 = icmp ult i64 %i.c, 2305843009213693952
  %i.l = icmp ult i64 %3, 9223372036854775801
  %or.cond65 = and i1 %4, %i.l
  br i1 %or.cond65, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50, label %bb.m, !prof !4232

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #48 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50: ; preds = %bb.g
  %i.o = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8, i64 noundef %i.j) #48 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50, %bb.j
  %.sroa.031.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50 ]
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
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, label %bb.l, !prof !4232

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4286
  store i64 0, ptr %i.a, align 8, !noalias !4286
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !4286
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4286
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdj1_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4289, !noalias !4292, !noundef !8 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4289, !noalias !4292, !nonnull !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4289, !noalias !4292 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4294)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4294
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48.i = icmp eq i64 %i.c, %i.m
  br i1 %.not48.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 2                          ; 4 uses
  %1 = icmp ult i64 %i.k, 4611686018427387903
  %i.p = icmp ult i64 %i.o, 9223372036854775805
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit.i, label %bb.p, !prof !4232

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit.i
  %2 = shl i64 %.sink.i.i, 2                      ; 2 uses
  %3 = icmp ult i64 %i.c, 4611686018427387904
  %i.q = icmp ult i64 %2, 9223372036854775805
  %or.cond65.i = and i1 %3, %i.q
  br i1 %or.cond65.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit50.i, label %bb.p, !prof !4232

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4294
  %i.r = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 4) #48, !noalias !4294 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit50.i: ; preds = %bb.i
  %i.t = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 4, i64 noundef %i.o) #48, !noalias !4294 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit50.i
  %.sroa.031.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit50.i ]
  store ptr %.sroa.031.0.i, ptr %0, align 8, !alias.scope !4294
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !4294
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !4294
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !4294
  %4 = shl i64 %.sink.i.i, 2                      ; 3 uses
  %5 = icmp ult i64 %i.c, 4611686018427387904
  %i.x = icmp ult i64 %4, 9223372036854775805
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit.i, label %bb.n, !prof !4232

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4297
  store i64 0, ptr %i.a, align 8, !noalias !4297
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !4297
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4297
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 4) #48, !noalias !4294
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit50.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.o) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdECsileJQcQObtj_7hir_def.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !4300, !noundef !8 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  br i1 %i.b, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit.thread

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noalias !4300, !noundef !8 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit.thread, !prof !4303

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit.thread: ; preds = %bb.a, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit
  %.sink10.i7 = phi i64 [ %i.d, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = icmp eq i64 %.sink10.i7, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i7, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit.thread
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.d
  ], !prof !4

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit.thread, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsileJQcQObtj_7hir_def.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !8   ; 6 uses
  %i.c = icmp ult i64 %i.b, 4                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4304, !noalias !4307, !nonnull !8 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !8 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = shl i64 %1, 3                            ; 6 uses
  %2 = icmp ult i64 %1, 2305843009213693952
  %i.j = icmp ult i64 %i.i, 9223372036854775801
  %or.cond = and i1 %2, %i.j
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit, label %bb.m, !prof !4232

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit
  %3 = shl i64 %.sink.i, 3                        ; 3 uses
  %4 = icmp ult i64 %i.b, 2305843009213693952
  %i.k = icmp ult i64 %3, 9223372036854775801
  %or.cond60 = and i1 %4, %i.k
  br i1 %or.cond60, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit45, label %bb.m, !prof !4232

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.l = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #48 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8, i64 noundef %i.i) #48 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.e, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %i.g, ptr %0, align 8
  %5 = shl i64 %.sink.i, 3                        ; 3 uses
  %6 = icmp ult i64 %i.b, 2305843009213693952
  %i.r = icmp ult i64 %5, 9223372036854775801
  %or.cond.i = and i1 %6, %i.r
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit, label %bb.l, !prof !4232

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4309
  store i64 0, ptr %i.a, align 8, !noalias !4309
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !4309
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4309
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit45 ], [ %3, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsileJQcQObtj_7hir_def.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_E13shrink_to_fitBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4312, !noalias !4315, !nonnull !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4312, !noalias !4315 ; 5 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.g, label %bb.c

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.d, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, %i.g
  br i1 %i.i, label %bb.d, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.g) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.f
  ], !prof !4

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #42
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.m = shl nuw nsw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.e, i64 %i.m, i1 false)
  %i.n = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %1 = shl i64 %i.n, 4                            ; 3 uses
  %2 = icmp ult i64 %i.n, 1152921504606846976
  %i.o = icmp ult i64 %1, 9223372036854775805
  %or.cond.i = and i1 %2, %i.o
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit, label %bb.h, !prof !4232

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4317
  store i64 0, ptr %i.a, align 8, !noalias !4317
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %3, align 8, !noalias !4317
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4317
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit: ; preds = %bb.g
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 4) #48
  store i64 %i.g, ptr %i.b, align 8
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4320, !noalias !4323, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4320, !noalias !4323
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !4325, !noalias !4328, !nonnull !8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl i64 %1, 4                            ; 6 uses
  %2 = icmp ult i64 %1, 1152921504606846976
  %i.k = icmp ult i64 %i.j, 9223372036854775805
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit, label %bb.m, !prof !4232

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit
  %3 = shl i64 %.sink.i, 4                        ; 3 uses
  %4 = icmp ult i64 %i.c, 1152921504606846976
  %i.l = icmp ult i64 %3, 9223372036854775805
  %or.cond59 = and i1 %4, %i.l
  br i1 %or.cond59, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44, label %bb.m, !prof !4232

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.m = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #48 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44: ; preds = %bb.g
  %i.o = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 4, i64 noundef %i.j) #48 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44 ]
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
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit, label %bb.l, !prof !4232

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4330
  store i64 0, ptr %i.a, align 8, !noalias !4330
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !4330
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4330
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 4) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E17try_reserve_exactBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !4333, !noalias !4336, !noundef !8 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %.sink9.idx.i = select i1 %i.b, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1)
  %i.c = load i64, ptr %.sink9.i, align 8, !noundef !8 ; 3 uses
  %i.d = sub i64 %.sink.i, %i.c
  %.not = icmp ult i64 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, %1                         ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.e) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.i, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.h, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !4338, !noalias !4341, !noundef !8 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4338, !noalias !4341
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !8   ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4343, !noalias !4346, !nonnull !8 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !8 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
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
  %i.i = mul i64 %1, 24                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit, !prof !834

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit
  %i.j = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45, !prof !834

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #48 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #48 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit, !prof !834

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4348
  store i64 0, ptr %i.a, align 8, !noalias !4348
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !4348
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4348
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !4351, !noalias !4354, !noundef !8 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4351, !noalias !4354, !nonnull !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4351, !noalias !4354
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !9
end_hunk_0
begin_hunk_1_@_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_E21reserve_one_uncheckedBM_:bb.a
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 20
  %i.t = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #48, !noalias !4378 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !4378
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !4378
  store i64 %i.m, ptr %0, align 8, !alias.scope !4378
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 4 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !4378
  %i.x = mul i64 %.sink.i.i, 20                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 461168601842738790
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBF_.exit.i, !prof !834

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4381
  store i64 0, ptr %i.a, align 8, !noalias !4381
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !4381
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4381
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 4) #48, !noalias !4378
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !4384, !noalias !4387, !noundef !8 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4384, !noalias !4387
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !8   ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4389, !noalias !4392, !nonnull !8 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !8 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
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
  %i.i = mul i64 %1, 24                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit, !prof !834

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit
  %i.j = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45, !prof !834

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #48 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #48 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit, !prof !834

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4394
  store i64 0, ptr %i.a, align 8, !noalias !4394
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !4394
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4394
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBO_10ModuleIdLtEj1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4397, !noalias !4400, !noundef !8 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4397, !noalias !4400, !nonnull !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4397, !noalias !4400 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4402)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4402
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 4                          ; 4 uses
  %1 = icmp ult i64 %i.k, 1152921504606846975
  %i.p = icmp ult i64 %i.o, 9223372036854775801
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit.i, label %bb.p, !prof !4232

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit.i
  %2 = shl i64 %.sink.i.i, 4                      ; 2 uses
  %3 = icmp ult i64 %i.c, 1152921504606846976
  %i.q = icmp ult i64 %2, 9223372036854775801
  %or.cond59.i = and i1 %3, %i.q
  br i1 %or.cond59.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i, label %bb.p, !prof !4232

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4402
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #48, !noalias !4402 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i: ; preds = %bb.i
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.o) #48, !noalias !4402 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !4402
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !4402
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !4402
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !4402
  %4 = shl i64 %.sink.i.i, 4                      ; 3 uses
  %5 = icmp ult i64 %i.c, 1152921504606846976
  %i.x = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBH_10ModuleIdLtEEBH_.exit.i, label %bb.n, !prof !4232

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4405
  store i64 0, ptr %i.a, align 8, !noalias !4405
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !4405
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4405
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBH_10ModuleIdLtEEBH_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #48, !noalias !4402
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBH_10ModuleIdLtEEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E17try_reserve_exactCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !4408, !noalias !4411, !noundef !8 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2)
  %.val = load i64, ptr %i.d, align 8
  %i.e = select i1 %i.c, i64 %.val, i64 %i.b      ; 3 uses
  %i.f = sub i64 %.sink.i, %i.e
  %.not = icmp ult i64 %i.f, %1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, %1                         ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 16 dereferenceable(48) %0, i64 noundef %i.g) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.k, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.j, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !4413, !noalias !4416, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4413, !noalias !4416
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 16 dereferenceable(48) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16, !noundef !8 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 16, !alias.scope !4418, !noalias !4421, !nonnull !8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
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
  %i.k = icmp ult i64 %i.j, 9223372036854775793
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit, label %bb.m, !prof !4232

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit
  %3 = shl i64 %.sink.i, 4                        ; 3 uses
  %4 = icmp ult i64 %i.c, 1152921504606846976
  %i.l = icmp ult i64 %3, 9223372036854775793
  %or.cond60 = and i1 %4, %i.l
  br i1 %or.cond60, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit45, label %bb.m, !prof !4232

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.m = tail call noundef align 16 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 16) #48 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit45: ; preds = %bb.g
  %i.o = tail call noundef align 16 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 16, i64 noundef %i.j) #48 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 16
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 16
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.m, ptr nonnull align 16 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 16
  %5 = shl i64 %.sink.i, 4                        ; 3 uses
  %6 = icmp ult i64 %i.c, 1152921504606846976
  %i.s = icmp ult i64 %5, 9223372036854775793
  %or.cond.i = and i1 %6, %i.s
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateoECsileJQcQObtj_7hir_def.exit, label %bb.l, !prof !4232

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4423
  store i64 0, ptr %i.a, align 8, !noalias !4423
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !4423
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4423
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateoECsileJQcQObtj_7hir_def.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 16) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateoECsileJQcQObtj_7hir_def.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateoECsileJQcQObtj_7hir_def.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit45 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateoECsileJQcQObtj_7hir_def.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 16, %bb.h ], [ -1, %bb.e ], [ 16, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECsileJQcQObtj_7hir_def.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0, i64 noundef %1, i128 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !4426, !noalias !4429, !noundef !8 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4426, !noalias !4429
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 4 uses
  %i.f = icmp ugt i64 %1, %.sink10.i
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %1, %.sink10.i
  br i1 %i.g, label %.lr.ph.preheader.i, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCsileJQcQObtj_7hir_def.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.sink9.i.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 %1, ptr %.sink9.i.i, align 8, !alias.scope !4431
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCsileJQcQObtj_7hir_def.exit

bb.c:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %.sink10.i               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4434)
  %.sink.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.i = sub i64 %.sink.i.i.i, %.sink10.i
  %.not.i.i = icmp ult i64 %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %1, 2
  %i.k = add i64 %1, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = lshr i64 -1, %i.l
  %.sroa.010.0.i.i = select i1 %i.j, i64 0, i64 %i.m ; 2 uses
  %i.n = icmp eq i64 %.sroa.010.0.i.i, -1
  br i1 %i.n, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit.thread.i, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit.i, !prof !9

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.d
  %i.o = add nuw i64 %.sroa.010.0.i.i, 1
  %i.p = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %0, i64 noundef %i.o) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 -1, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit_crit_edge.i
    i64 0, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit.thread.i
  ], !prof !2434

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit_crit_edge.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit.i
  %.pre.i = load i64, ptr %i.a, align 16, !alias.scope !4437, !noalias !4440 ; 2 uses
  %.pre57.i = tail call i64 @llvm.umax.i64(i64 %.pre.i, i64 2)
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit.i

bb.e:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit.i
  %i.r = extractvalue { i64, i64 } %i.p, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.q, i64 noundef %i.r) #42, !noalias !4434
  unreachable

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit.thread.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit.i, %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43, !noalias !4434
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit_crit_edge.i, %bb.c
  %.sink.i.pre-phi.i = phi i64 [ %.pre57.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit_crit_edge.i ], [ %.sink.i.i.i, %bb.c ] ; 3 uses
  %i.s = phi i64 [ %.pre.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCsileJQcQObtj_7hir_def.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit_crit_edge.i ], [ %i.b, %bb.c ]
  %i.t = icmp ugt i64 %i.s, 2                     ; 2 uses
  %i.u = load ptr, ptr %0, align 16, !alias.scope !4437, !noalias !4440, !nonnull !8
  %.sink10.i.i = select i1 %i.t, ptr %i.u, ptr %0
  %.sink9.i.i2 = select i1 %i.t, ptr %i.d, ptr %i.a ; 3 uses
  %i.v = load i64, ptr %.sink9.i.i2, align 8, !alias.scope !4434, !noundef !8 ; 3 uses
  %i.w = icmp ult i64 %i.v, %.sink.i.pre-phi.i
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit.i
  %.sroa.7.0.lcssa.i = phi i64 [ %i.v, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit.i ], [ %.sink.i.pre-phi.i, %bb.g ]
  %.sroa.6.0.lcssa.i = phi i64 [ %i.h, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit.i ], [ %i.al, %bb.g ] ; 2 uses
  store i64 %.sroa.7.0.lcssa.i, ptr %.sink9.i.i2, align 8, !alias.scope !4434
  %i.x = icmp eq i64 %.sroa.6.0.lcssa.i, 0
  br i1 %i.x, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCsileJQcQObtj_7hir_def.exit, label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit.i, %bb.g
  %.sroa.6.050.i = phi i64 [ %i.al, %bb.g ], [ %i.h, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit.i ] ; 2 uses
  %.sroa.7.049.i = phi i64 [ %i.an, %bb.g ], [ %i.v, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit.i ] ; 3 uses
  %i.y = icmp eq i64 %.sroa.6.050.i, 0
  br i1 %i.y, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i, label %bb.g

.lr.ph54.i:                                       ; preds = %._crit_edge.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i
  %.sroa.430.052.i = phi i64 [ %i.z, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i ], [ %.sroa.6.0.lcssa.i, %._crit_edge.i ]
  %i.z = add i64 %.sroa.430.052.i, -1             ; 2 uses
  %i.aa = load i64, ptr %i.a, align 16, !alias.scope !4442, !noalias !4447, !noundef !8 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 2                   ; 2 uses
  %i.ac = load ptr, ptr %0, align 16, !alias.scope !4442, !noalias !4447, !nonnull !8
  %.sink10.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %0
  %.sink9.i.i.i = select i1 %i.ab, ptr %i.d, ptr %i.a ; 2 uses
  %.sink.i.i12.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 2)
  %i.ad = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !4449, !noundef !8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %.sink.i.i12.i
  br i1 %i.ae, label %bb.f, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i, !prof !9

bb.f:                                             ; preds = %.lr.ph54.i
  tail call void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %0)
  %i.af = load ptr, ptr %0, align 16, !alias.scope !4449, !nonnull !8, !noundef !8
  %.pre.i.i = load i64, ptr %i.d, align 8, !alias.scope !4449
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.f, %.lr.ph54.i
  %i.ag = phi i64 [ %.pre.i.i, %bb.f ], [ %i.ad, %.lr.ph54.i ]
  %.sroa.01.0.i.i = phi ptr [ %i.d, %bb.f ], [ %.sink9.i.i.i, %.lr.ph54.i ] ; 2 uses
  %.sroa.0.0.i13.i = phi ptr [ %i.af, %bb.f ], [ %.sink10.i.i.i, %.lr.ph54.i ]
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i13.i, i64 %i.ag
  store i128 %2, ptr %i.ah, align 16
  %i.ai = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !4449, !noundef !8
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %.sroa.01.0.i.i, align 8, !alias.scope !4449
  %i.ak = icmp eq i64 %i.z, 0
  br i1 %i.ak, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCsileJQcQObtj_7hir_def.exit, label %.lr.ph54.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.al = add i64 %.sroa.6.050.i, -1              ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i, i64 %.sroa.7.049.i
  store i128 %2, ptr %i.am, align 16
  %i.an = add i64 %.sroa.7.049.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %.sink.i.pre-phi.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i: ; preds = %.lr.ph.i
  store i64 %.sroa.7.049.i, ptr %.sink9.i.i2, align 8, !alias.scope !4434
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCsileJQcQObtj_7hir_def.exit

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCsileJQcQObtj_7hir_def.exit: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCsileJQcQObtj_7hir_def.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i, %._crit_edge.i, %.lr.ph.preheader.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCs33K2ylI4knu_10hir_expand5attrs26is_item_tree_filtered_attr(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #13 {
bb.a:
  switch i64 %1, label %bb.o [
    i64 3, label %bb.b
    i64 6, label %bb.c
    i64 8, label %bb.d
    i64 14, label %bb.e
    i64 5, label %bb.f
    i64 4, label %bb.h
    i64 12, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = xor i16 %i.a, 28516
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 99
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 1
  %i.l = xor i32 %i.k, 1650553971
  %i.m = getelementptr i8, ptr %0, i64 4
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i32
  %i.p = xor i32 %i.o, 25964
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.o, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.u = load i64, ptr %0, align 1
  %i.v = icmp ne i64 %i.u, 7308324466020544117
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.o, label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.y = load i64, ptr %0, align 1
  %i.z = xor i64 %i.y, 7376742693532230004
  %i.aa = getelementptr i8, ptr %0, i64 6
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = xor i64 %i.ab, 7310034287886427743
  %i.ad = or i64 %i.z, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.ah = load i32, ptr %0, align 1
  %i.ai = xor i32 %i.ah, 1869376609
  %i.aj = getelementptr i8, ptr %0, i64 4
end_hunk_1
