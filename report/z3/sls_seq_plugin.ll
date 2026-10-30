Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_seq_plugin?download=true
inline.NumInlined: 2834
inline.NumDeleted: 731
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN3sls10seq_plugin20init_string_instanceERK10ptr_vectorI4exprERNS0_15string_instanceE:bb.a
_ZN6vectorIbLb0EjE9push_backEOb.exit:             ; preds = %bb.r, %_ZN6vectorIbLb0EjE13expand_vectorEv.exit59
  %i.fp = phi i32 [ %.pre2.i38, %_ZN6vectorIbLb0EjE13expand_vectorEv.exit59 ], [ %i.eh, %bb.r ] ; 2 uses
  %i.fq = phi ptr [ %.pre.i36, %_ZN6vectorIbLb0EjE13expand_vectorEv.exit59 ], [ %i.ee, %bb.r ] ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -4
  %i.fs = zext i32 %i.fp to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fs
  store i8 0, ptr %i.ft, align 1, !tbaa !270
  %i.fu = add i32 %i.fp, 1
  store i32 %i.fu, ptr %i.fr, align 4, !tbaa !173
  %i.fv = load ptr, ptr %i.m, align 8, !tbaa !269 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN6vectorIbLb0EjE9push_backEOb.exit
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !173 ; 5 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !173
  %i.gb = icmp eq i32 %i.fy, %i.ga
  br i1 %i.gb, label %bb.ad, label %_ZN6vectorIbLb0EjE9push_backEOb.exit42

bb.ac:                                            ; preds = %_ZN6vectorIbLb0EjE9push_backEOb.exit
  %i.gc = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10) ; 3 uses
  store i32 2, ptr %i.gc, align 4, !tbaa !173
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 0, ptr %i.gd, align 4, !tbaa !173
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  store ptr %i.ge, ptr %i.m, align 8, !tbaa !269
  br label %_ZN6vectorIbLb0EjE13expand_vectorEv.exit72

bb.ad:                                            ; preds = %bb.ab
  %i.gf = mul i32 %i.fy, 3
  %i.gg = add i32 %i.gf, 1
  %i.gh = lshr i32 %i.gg, 1                       ; 3 uses
  %narrow.i60 = add nuw i32 %i.gh, 8              ; 2 uses
  %.not.i61 = icmp ugt i32 %i.gh, %i.fy
  %i.gi = add i32 %i.fy, 8
  %.not27.i62 = icmp ugt i32 %narrow.i60, %i.gi
  %or.cond.i63 = select i1 %.not.i61, i1 %.not27.i62, i1 false
  br i1 %or.cond.i63, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gj = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gj, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 3 uses
  store ptr %i.gl, ptr %i.gk, align 8, !tbaa !248
  %i.gm = load ptr, ptr %3, align 8, !tbaa !227   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65

bb.ag:                                            ; preds = %bb.af
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !247 ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 16
  call void @llvm.assume(i1 %i.gr)
  %i.gs = add nuw nsw i64 %i.gq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull align 8 dereferenceable(1) %i.gn, i64 %i.gs, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.af
  store ptr %i.gm, ptr %i.gk, align 8, !tbaa !227
  %i.gt = load i64, ptr %i.gn, align 8, !tbaa !228
  store i64 %i.gt, ptr %i.gl, align 8, !tbaa !228
  %.phi.trans.insert.i66 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i67 = load i64, ptr %.phi.trans.insert.i66, align 8, !tbaa !247
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i68

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i68: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65, %bb.ag
  %i.gu = phi i64 [ %i.gq, %bb.ag ], [ %.pre.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store i64 %i.gu, ptr %i.gw, align 8, !tbaa !247
  store ptr %i.gn, ptr %3, align 8, !tbaa !227
  store i64 0, ptr %i.gv, align 8, !tbaa !247
  store i8 0, ptr %i.gn, align 8, !tbaa !228
  invoke void @__cxa_throw(ptr nonnull %i.gj, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.ak unwind label %bb.ah

bb.ah:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i68
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = load ptr, ptr %3, align 8, !tbaa !227   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.gn
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i69: ; preds = %bb.ah
  %i.ha = load i64, ptr %i.gn, align 8, !tbaa !228
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i70: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

bb.ai:                                            ; preds = %bb.ae
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @__cxa_free_exception(ptr %i.gj) #22
  br label %common.resume

bb.aj:                                            ; preds = %bb.ad
  %i.hd = zext i32 %narrow.i60 to i64
  %i.he = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fz, i64 noundef %i.hd) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  store ptr %i.hf, ptr %i.m, align 8, !tbaa !269
  store i32 %i.gh, ptr %i.he, align 4, !tbaa !173
  br label %_ZN6vectorIbLb0EjE13expand_vectorEv.exit72

bb.ak:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i68
  unreachable

_ZN6vectorIbLb0EjE13expand_vectorEv.exit72:       ; preds = %bb.ac, %bb.aj
  %.pre.i39 = phi ptr [ %i.ge, %bb.ac ], [ %i.hf, %bb.aj ] ; 2 uses
  %.phi.trans.insert.i40 = getelementptr inbounds i8, ptr %.pre.i39, i64 -4
  %.pre2.i41 = load i32, ptr %.phi.trans.insert.i40, align 4, !tbaa !173
  br label %_ZN6vectorIbLb0EjE9push_backEOb.exit42

_ZN6vectorIbLb0EjE9push_backEOb.exit42:           ; preds = %bb.ab, %_ZN6vectorIbLb0EjE13expand_vectorEv.exit72
  %i.hg = phi i32 [ %.pre2.i41, %_ZN6vectorIbLb0EjE13expand_vectorEv.exit72 ], [ %i.fy, %bb.ab ] ; 2 uses
  %i.hh = phi ptr [ %.pre.i39, %_ZN6vectorIbLb0EjE13expand_vectorEv.exit72 ], [ %i.fv, %bb.ab ] ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -4
  %i.hj = zext i32 %i.hg to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj
  store i8 0, ptr %i.hk, align 1, !tbaa !270
  %i.hl = add i32 %i.hg, 1
  store i32 %i.hl, ptr %i.hi, align 4, !tbaa !173
  %i.hm = add nuw i32 %.080, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.hm, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !441

bb.al:                                            ; preds = %._crit_edge
  %i.hn = load ptr, ptr %i.n, align 8, !tbaa !269 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %_ZNK6vectorIbLb0EjE5emptyEv.exit43.thread, label %_ZNK6vectorIbLb0EjE5emptyEv.exit43

_ZNK6vectorIbLb0EjE5emptyEv.exit43:               ; preds = %bb.al
  %i.hp = getelementptr inbounds i8, ptr %i.hn, i64 -4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !173
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_ZNK6vectorIbLb0EjE5emptyEv.exit43.thread, label %bb.am

bb.am:                                            ; preds = %_ZNK6vectorIbLb0EjE5emptyEv.exit43
  %i.hs = load ptr, ptr %i.o, align 8, !tbaa !269 ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_ZNK6vectorIbLb0EjE4sizeEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !173
  br label %_ZNK6vectorIbLb0EjE4sizeEv.exit

_ZNK6vectorIbLb0EjE4sizeEv.exit:                  ; preds = %bb.am, %bb.an
  %.0.i44 = phi i32 [ %i.hv, %bb.an ], [ 0, %bb.am ]
  %i.hw = sub i32 %.0.i44, %i.s
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hx
  store i8 1, ptr %i.hy, align 1, !tbaa !270
  br label %_ZNK6vectorIbLb0EjE5emptyEv.exit43.thread

_ZNK6vectorIbLb0EjE5emptyEv.exit43.thread:        ; preds = %_ZNK6vectorIbLb0EjE5emptyEv.exit.thread, %bb.al, %_ZNK6vectorIbLb0EjE4sizeEv.exit, %_ZNK6vectorIbLb0EjE5emptyEv.exit43, %._crit_edge
  %i.hz = xor i1 %.0.i, true
  %i.ia = getelementptr inbounds nuw i8, ptr %.03283, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ia, %i.g
  br i1 %.not, label %._crit_edge85, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN3sls10seq_plugin26edit_distance_with_updatesERKNS0_15string_instanceES3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2072) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator.57", align 1 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator.57", align 1 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::allocator.57", align 1 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator.57", align 1 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::allocator.57", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::allocator.57", align 1 ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::allocator.57", align 1 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::allocator.57", align 1 ; 4 uses
  %19 = alloca %class.vector.60, align 8          ; 6 uses
  %20 = alloca %class.vector.60, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !218  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !218  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.e = add i32 %i.b, 1                          ; 7 uses
  store ptr null, ptr %19, align 8, !tbaa !251
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit.thread, label %.lr.ph.preheader.i.i158

_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit.thread:    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr null, ptr %20, align 8, !tbaa !251
  br label %_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit159

.lr.ph.preheader.i.i158:                          ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 3 uses
  %i.i = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %i.j = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.i) ; 3 uses
  store i32 %i.e, ptr %i.j, align 4, !tbaa !173
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.e, ptr %i.k, align 4, !tbaa !173
  %i.l = getelementptr i8, ptr %i.j, i64 8        ; 3 uses
  store ptr %i.l, ptr %19, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.h, i1 false), !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.m = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.i)
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %.lr.ph.preheader.i.i158
  store i32 %i.e, ptr %i.m, align 4, !tbaa !173
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.e, ptr %i.n, align 4, !tbaa !173
  %i.o = getelementptr i8, ptr %i.m, i64 8        ; 3 uses
  store ptr %i.o, ptr %20, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.h, i1 false), !tbaa !180
  br label %_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit159

_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit159:        ; preds = %.noexc, %_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit.thread
  %.pre.i.i = phi ptr [ %i.o, %.noexc ], [ null, %_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit.thread ] ; 16 uses
  %.pre.i.i190 = phi ptr [ %i.l, %.noexc ], [ null, %_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit.thread ] ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 22 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !171  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit159
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  store i32 0, ptr %i.r, align 4, !tbaa !173
  br label %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit

_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit: ; preds = %_ZN6vectorI7svectorIjjELb1EjEC2Ej.exit159, %bb.b
  %i.s = add i32 %i.d, 1                          ; 14 uses
  %.not.not.i = icmp eq i32 %i.s, 0               ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  br label %bb.d

.preheader375:                                    ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit179
  %wide.trip.count = zext i32 %i.e to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.u = icmp ult i32 %i.b, 3
  br i1 %i.u, label %.epil.preheader, label %.preheader375.new

.preheader375.new:                                ; preds = %.preheader375
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.ab

bb.c:                                             ; preds = %.lr.ph.preheader.i.i158
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.d:                                             ; preds = %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit179
  %.0144376 = phi i32 [ 0, %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit ], [ %i.dw, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit179 ] ; 2 uses
  %i.w = zext i32 %.0144376 to i64                ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i190, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !180  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.d
  br i1 %.not.not.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread, label %thread-pre-split.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !173 ; 2 uses
  %.not16.i = icmp ugt i32 %i.s, %i.ab
  br i1 %.not16.i, label %thread-pre-split.i.preheader, label %bb.e

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %.ph562 = phi ptr [ %i.y, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %.0.i17.i.ph = phi i32 [ %i.ab, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  store i32 %i.s, ptr %i.aa, align 4, !tbaa !173
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.backedge, %thread-pre-split.i.preheader
  %i.ac = phi ptr [ %.ph562, %thread-pre-split.i.preheader ], [ %.be, %thread-pre-split.i.backedge ] ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i:            ; preds = %thread-pre-split.i
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !173
  %i.ag = icmp ugt i32 %i.s, %i.af
  br i1 %i.ag, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %bb.o

bb.f:                                             ; preds = %thread-pre-split.i
  %i.ah = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc251 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc251:                                        ; preds = %bb.f
  store i32 2, ptr %i.ah, align 4, !tbaa !173
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 0, ptr %i.ai, align 4, !tbaa !173
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.x, align 8, !tbaa !180
  br label %thread-pre-split.i.backedge

thread-pre-split.i.backedge:                      ; preds = %.noexc251, %.noexc252
  %.be = phi ptr [ %i.bp, %.noexc252 ], [ %i.aj, %.noexc251 ]
  br label %thread-pre-split.i, !llvm.loop !8

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !173 ; 3 uses
  %i.am = mul i32 %i.al, 3
  %i.an = add i32 %i.am, 1
  %i.ao = lshr i32 %i.an, 1                       ; 3 uses
  %i.ap = shl i32 %i.ao, 2
  %i.aq = add i32 %i.ap, 8                        ; 2 uses
  %.not.i249 = icmp ugt i32 %i.ao, %i.al
  br i1 %.not.i249, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %i.ar = shl i32 %i.al, 2
  %i.as = add i32 %i.ar, 8
  %.not27.i = icmp ugt i32 %i.aq, %i.as
  br i1 %.not27.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %i.at = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.at, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 3 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !248
  %i.aw = load ptr, ptr %17, align 8, !tbaa !227  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !247 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !227
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !228
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !228
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.pre.i250 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !247
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %i.be = phi i64 [ %i.ba, %bb.j ], [ %.pre.i250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !247
  store ptr %i.ax, ptr %17, align 8, !tbaa !227
  store i64 0, ptr %i.bf, align 8, !tbaa !247
  store i8 0, ptr %i.ax, align 8, !tbaa !228
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %17, align 8, !tbaa !227  ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ax
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.k
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !228
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %.body

bb.l:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @__cxa_free_exception(ptr %i.at) #22
  br label %.body

bb.m:                                             ; preds = %bb.g
  %i.bn = zext i32 %i.aq to i64
  %i.bo = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bn)
          to label %.noexc252 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc252:                                        ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.x, align 8, !tbaa !180
  store i32 %i.ao, ptr %i.bo, align 4, !tbaa !173
  br label %thread-pre-split.i.backedge

bb.n:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.o:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i
  %i.bq = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 %i.s, ptr %i.bq, align 4, !tbaa !173
  %.not1319.i = icmp eq i32 %.0.i17.i.ph, %i.s
  br i1 %.not1319.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.br = zext i32 %.0.i17.i.ph to i64            ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.ac, i64 %i.br
  %i.bt = sub nsw i64 %i.t, %i.br
  %i.bu = shl nsw i64 %i.bt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bs, i8 0, i64 %i.bu, i1 false), !tbaa !173
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit:         ; preds = %.lr.ph.preheader.i, %bb.o, %bb.e
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.w ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !180 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i176, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i161

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread:  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.w ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !180 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit179, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i161

_ZNK6vectorIjLb0EjE4sizeEv.exit.i176:             ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  br i1 %.not.not.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit179, label %bb.q

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i161:      ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  %i.cb = phi ptr [ %i.bz, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread ], [ %i.bw, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit ] ; 2 uses
  %i.cc = phi ptr [ %i.by, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread ], [ %i.bv, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit ]
end_hunk_0
begin_hunk_1_@_ZN3sls10seq_plugin26edit_distance_with_updatesERKNS0_15string_instanceES3_:bb.a
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter571
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !445

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv386.unr = phi i64 [ %indvars.iv386.ph, %scalar.ph.preheader ], [ %indvars.iv.next387.prol, %scalar.ph.prol ]
  %i.ep = sub nsw i64 %indvars.iv386.ph, %wide.trip.count389
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %.preheader373, label %scalar.ph

bb.ab:                                            ; preds = %bb.ab, %.preheader375.new
  %indvars.iv = phi i64 [ 0, %.preheader375.new ], [ %indvars.iv.next.3, %bb.ab ] ; 7 uses
  %niter = phi i64 [ 0, %.preheader375.new ], [ %niter.next.3, %bb.ab ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i190, i64 %indvars.iv
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !180
  %i.et = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.et, ptr %i.es, align 4, !tbaa !173
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !180
  store i32 %i.et, ptr %i.ev, align 4, !tbaa !173
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i190, i64 %indvars.iv.next
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !180
  %i.ey = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !173
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !180
  store i32 %i.ey, ptr %i.fa, align 4, !tbaa !173
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i190, i64 %indvars.iv.next.1
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !180
  %i.fd = trunc nuw i64 %indvars.iv.next.1 to i32 ; 2 uses
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !173
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.1
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !180
  store i32 %i.fd, ptr %i.ff, align 4, !tbaa !173
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i190, i64 %indvars.iv.next.2
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !180
  %i.fi = trunc nuw i64 %indvars.iv.next.2 to i32 ; 2 uses
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !173
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.2
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !180
  store i32 %i.fi, ptr %i.fk, align 4, !tbaa !173
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader374.unr-lcssa, label %bb.ab, !llvm.loop !446

.preheader373:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.not153381 = icmp eq i32 %i.d, 0
  br i1 %.not153381, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader373
  %.not154379 = icmp eq i32 %i.b, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  br i1 %.not154379, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i, label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv386 = phi i64 [ %indvars.iv.next387.3, %scalar.ph ], [ %indvars.iv386.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv386
  %i.fq = trunc nuw i64 %indvars.iv386 to i32     ; 2 uses
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !173
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv386
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !173
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next387
  %i.ft = trunc nuw i64 %indvars.iv.next387 to i32 ; 2 uses
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !173
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next387
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !173
  %indvars.iv.next387.1 = add nuw nsw i64 %indvars.iv386, 2 ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next387.1
  %i.fw = trunc nuw i64 %indvars.iv.next387.1 to i32 ; 2 uses
  store i32 %i.fw, ptr %i.fv, align 4, !tbaa !173
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next387.1
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !173
  %indvars.iv.next387.2 = add nuw nsw i64 %indvars.iv386, 3 ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next387.2
  %i.fz = trunc nuw i64 %indvars.iv.next387.2 to i32 ; 2 uses
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !173
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next387.2
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !173
  %indvars.iv.next387.3 = add nuw nsw i64 %indvars.iv386, 4 ; 2 uses
  %exitcond390.3 = icmp eq i64 %indvars.iv.next387.3, %wide.trip.count389
  br i1 %exitcond390.3, label %.preheader373, label %scalar.ph, !llvm.loop !447

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.0141382 = phi i32 [ %i.hg, %._crit_edge ], [ 1, %.preheader.lr.ph ] ; 3 uses
  %i.gb = add i32 %.0141382, -1                   ; 6 uses
  %i.gc = zext i32 %i.gb to i64                   ; 19 uses
  %i.gd = zext i32 %.0141382 to i64               ; 12 uses
  br label %bb.ai

_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i: ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader373
  %i.ge = zext i32 %i.b to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !180
  %i.gh = zext i32 %i.d to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !173
  %i.gk = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !173 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi i32 [ %i.gr, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i ], [ %i.gl, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i ]
  %.047.i.i.i.i.i.i = phi ptr [ %i.gq, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i ], [ %.pre.i.i, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  %i.gm = load ptr, ptr %.047.i.i.i.i.i.i, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gn)
          to label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  tail call void @__clang_call_terminate(ptr %i.gp) #23
  unreachable

_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i, i64 8
  %i.gr = add i32 %.08.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i
  %i.gs = getelementptr inbounds i8, ptr %.pre.i.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gs)
          to label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i181 unwind label %bb.ae

bb.ae:                                            ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  tail call void @__clang_call_terminate(ptr %i.gu) #23
  unreachable

_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i181: ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.gv = getelementptr inbounds i8, ptr %.pre.i.i190, i64 -4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !173 ; 2 uses
  %.not6.i.i.i.i.i.i182 = icmp eq i32 %i.gw, 0
  br i1 %.not6.i.i.i.i.i.i182, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i191, label %.lr.ph.i.i.i.i.i.i183

.lr.ph.i.i.i.i.i.i183:                            ; preds = %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i181, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i187
  %.08.i.i.i.i.i.i184 = phi i32 [ %i.hc, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i187 ], [ %i.gw, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i181 ]
  %.047.i.i.i.i.i.i185 = phi ptr [ %i.hb, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i187 ], [ %.pre.i.i190, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i181 ] ; 2 uses
  %i.gx = load ptr, ptr %.047.i.i.i.i.i.i185, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i186 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i186, label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i187, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i183
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gy)
          to label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i187 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  tail call void @__clang_call_terminate(ptr %i.ha) #23
  unreachable

_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i187: ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i183
  %i.hb = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i185, i64 8
  %i.hc = add i32 %.08.i.i.i.i.i.i184, -1         ; 2 uses
  %.not.i.i.i.i.i.i188 = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i.i.i.i.i188, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i191, label %.lr.ph.i.i.i.i.i.i183, !llvm.loop !9

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i191: ; preds = %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i187, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i181
  %i.hd = getelementptr inbounds i8, ptr %.pre.i.i190, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hd)
          to label %_ZN6vectorI7svectorIjjELb1EjED2Ev.exit192 unwind label %bb.ah

bb.ah:                                            ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i191
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  tail call void @__clang_call_terminate(ptr %i.hf) #23
  unreachable

_ZN6vectorI7svectorIjjELb1EjED2Ev.exit192:        ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  ret i32 %i.gj

._crit_edge:                                      ; preds = %.thread556
  %i.hg = add i32 %.0141382, 1                    ; 2 uses
  %.not153 = icmp ugt i32 %i.hg, %i.d
  br i1 %.not153, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i, label %.preheader, !llvm.loop !448

bb.ai:                                            ; preds = %.preheader, %.thread556
  %.0380 = phi i32 [ 1, %.preheader ], [ %25, %.thread556 ] ; 4 uses
  %21 = add i32 %.0380, -1                        ; 6 uses
  %i.hh = load ptr, ptr %1, align 8, !tbaa !179
  %22 = zext i32 %21 to i64                       ; 13 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %22
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !173
  %i.hk = load ptr, ptr %2, align 8, !tbaa !179
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.gc
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !173
  %i.hn = icmp eq i32 %i.hj, %i.hm
  br i1 %i.hn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i190, i64 %22
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !180
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.gc
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !173
  %23 = zext i32 %.0380 to i64                    ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i190, i64 %23
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !180
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.gd
  store i32 %i.hr, ptr %i.hu, align 4, !tbaa !173
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %22
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !180
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.gc
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !173
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %23
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !180
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.gd
  store i32 %i.hy, ptr %i.ib, align 4, !tbaa !173
  br label %.thread556

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.dp, %bb.di, %bb.dd, %bb.cw, %bb.cq, %bb.cj, %bb.cd, %bb.bw, %bb.bq, %bb.bj, %bb.be, %bb.ax, %bb.m, %bb.f, %bb.q
  %lpad.loopexit.split-lp564 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %bb.ai
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %22
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !180 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.gd
  %24 = zext i32 %.0380 to i64                    ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %24 ; 6 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !180 ; 5 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.gc
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.gc
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !173
  %i.ik = load i32, ptr %i.ih, align 4, !tbaa !173
  %i.il = tail call i32 @llvm.umin.i32(i32 %i.ij, i32 %i.ik)
  %i.im = load i32, ptr %i.ie, align 4, !tbaa !173
  %i.in = tail call i32 @llvm.umin.i32(i32 %i.il, i32 %i.im)
  %i.io = add i32 %i.in, 1
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.gd ; 5 uses
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !173
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i190, i64 %22 ; 4 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !180 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.gd ; 4 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i190, i64 %24 ; 3 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !180 ; 5 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.gc ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.gc ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !173
  %i.iy = load i32, ptr %i.iv, align 4, !tbaa !173 ; 3 uses
  %i.iz = tail call i32 @llvm.umin.i32(i32 %i.ix, i32 %i.iy)
  %i.ja = load i32, ptr %i.is, align 4, !tbaa !173
  %i.jb = tail call i32 @llvm.umin.i32(i32 %i.iz, i32 %i.ja)
  %i.jc = add i32 %i.jb, 1
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.gd
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !173
  %i.je = load i32, ptr %i.is, align 4, !tbaa !173 ; 2 uses
  %i.jf = load i32, ptr %i.ip, align 4, !tbaa !173 ; 3 uses
  %i.jg = icmp ult i32 %i.je, %i.jf
  br i1 %i.jg, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.jh = load ptr, ptr %i.fl, align 8, !tbaa !269
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %22
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !270, !range !234, !noundef !65
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit.thread

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit: ; preds = %bb.al
  %i.jl = load ptr, ptr %i.fm, align 8, !tbaa !269
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %22
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !270, !range !234, !noundef !65
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit.thread, label %bb.an

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit.thread: ; preds = %bb.al, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit
  %i.jp = load ptr, ptr %i.p, align 8, !tbaa !171 ; 2 uses
  %.not.i196 = icmp eq ptr %i.jp, null
  br i1 %.not.i196, label %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit197, label %bb.am

bb.am:                                            ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit.thread
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -4
  store i32 0, ptr %i.jq, align 4, !tbaa !173
  %.pre = load i32, ptr %i.is, align 4, !tbaa !173
  br label %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit197

_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit197: ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit.thread, %bb.am
  %i.jr = phi i32 [ %i.je, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit.thread ], [ %.pre, %bb.am ] ; 2 uses
  store i32 %i.jr, ptr %i.ip, align 4, !tbaa !173
  %.pre393 = load i32, ptr %i.iv, align 4, !tbaa !173
  br label %bb.an

bb.an:                                            ; preds = %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit197, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit, %bb.ak
  %i.js = phi i32 [ %i.jr, %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit197 ], [ %i.jf, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit ], [ %i.jf, %bb.ak ] ; 3 uses
  %i.jt = phi i32 [ %.pre393, %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit197 ], [ %i.iy, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit ], [ %i.iy, %bb.ak ] ; 2 uses
  %i.ju = icmp ult i32 %i.jt, %i.js
  br i1 %i.ju, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jv = load ptr, ptr %i.fn, align 8, !tbaa !269
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.gc
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !270, !range !234, !noundef !65
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198.thread

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198: ; preds = %bb.ao
  %i.jz = load ptr, ptr %i.fo, align 8, !tbaa !269
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.gc
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !270, !range !234, !noundef !65
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198.thread, label %bb.aq

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198.thread: ; preds = %bb.ao, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198
  %i.kd = load ptr, ptr %i.p, align 8, !tbaa !171 ; 2 uses
  %.not.i199 = icmp eq ptr %i.kd, null
  br i1 %.not.i199, label %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit200, label %bb.ap

bb.ap:                                            ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198.thread
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 -4
  store i32 0, ptr %i.ke, align 4, !tbaa !173
  %.pre394 = load i32, ptr %i.iv, align 4, !tbaa !173
  br label %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit200

_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit200: ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198.thread, %bb.ap
  %i.kf = phi i32 [ %i.jt, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198.thread ], [ %.pre394, %bb.ap ] ; 2 uses
  store i32 %i.kf, ptr %i.ip, align 4, !tbaa !173
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit200, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198, %bb.an
  %i.kg = phi i32 [ %i.kf, %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit200 ], [ %i.js, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit198 ], [ %i.js, %bb.an ] ; 3 uses
  %i.kh = load i32, ptr %i.iw, align 4, !tbaa !173 ; 2 uses
  %i.ki = icmp ult i32 %i.kh, %i.kg
  br i1 %i.ki, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.kj = load ptr, ptr %i.fl, align 8, !tbaa !269
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %22
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !270, !range !234, !noundef !65
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201.thread

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201: ; preds = %bb.ar
  %i.kn = load ptr, ptr %i.fm, align 8, !tbaa !269
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %22
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !270, !range !234, !noundef !65
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201.thread, label %bb.as

bb.as:                                            ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201
  %i.kr = load ptr, ptr %i.fn, align 8, !tbaa !269
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.gc
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !270, !range !234, !noundef !65
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit202, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201.thread

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit202: ; preds = %bb.as
  %i.kv = load ptr, ptr %i.fo, align 8, !tbaa !269
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.gc
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !270, !range !234, !noundef !65
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201.thread, label %bb.au

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201.thread: ; preds = %bb.as, %bb.ar, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit202, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201
  %i.kz = load ptr, ptr %i.p, align 8, !tbaa !171 ; 2 uses
  %.not.i203 = icmp eq ptr %i.kz, null
  br i1 %.not.i203, label %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit204, label %bb.at

bb.at:                                            ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201.thread
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 -4
  store i32 0, ptr %i.la, align 4, !tbaa !173
  %.pre395 = load i32, ptr %i.iw, align 4, !tbaa !173
  br label %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit204

_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit204: ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201.thread, %bb.at
  %i.lb = phi i32 [ %i.kh, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit201.thread ], [ %.pre395, %bb.at ] ; 2 uses
  store i32 %i.lb, ptr %i.ip, align 4, !tbaa !173
  br label %bb.au

bb.au:                                            ; preds = %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit204, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit202, %bb.aq
  %i.lc = phi i32 [ %i.lb, %_ZN6vectorIN3sls10seq_plugin13string_updateELb0EjE5resetEv.exit204 ], [ %i.kg, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit202 ], [ %i.kg, %bb.aq ] ; 3 uses
  %i.ld = load i32, ptr %i.is, align 4, !tbaa !173
  %i.le = icmp eq i32 %i.ld, %i.lc
  br i1 %i.le, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.lf = load ptr, ptr %i.fl, align 8, !tbaa !269
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %22
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !270, !range !234, !noundef !65
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205.thread

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205: ; preds = %bb.av
  %i.lj = load ptr, ptr %i.fm, align 8, !tbaa !269
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %22
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !270, !range !234, !noundef !65
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205.thread, label %bb.bg

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205.thread: ; preds = %bb.av, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205
  %i.ln = load ptr, ptr %i.p, align 8, !tbaa !171 ; 4 uses
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205.thread
  %i.lp = getelementptr inbounds i8, ptr %i.ln, i64 -4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !173 ; 5 uses
  %i.lr = getelementptr inbounds i8, ptr %i.ln, i64 -8 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !173
  %i.lt = icmp eq i32 %i.lq, %i.ls
  br i1 %i.lt, label %bb.ay, label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit

bb.ax:                                            ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205.thread
  %i.lu = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40)
          to label %.noexc278 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc278:                                        ; preds = %bb.ax
  store i32 2, ptr %i.lu, align 4, !tbaa !173
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store i32 0, ptr %i.lv, align 4, !tbaa !173
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  store ptr %i.lw, ptr %i.p, align 8, !tbaa !171
  br label %.noexc207

bb.ay:                                            ; preds = %bb.aw
  %i.lx = mul i32 %i.lq, 3
  %i.ly = add i32 %i.lx, 1
  %i.lz = lshr i32 %i.ly, 1                       ; 3 uses
  %i.ma = shl i32 %i.lz, 4                        ; 2 uses
  %.not.i268 = icmp ugt i32 %i.lz, %i.lq
  %i.mb = shl i32 %i.lq, 4
  %.not27.i269 = icmp ugt i32 %i.ma, %i.mb
  %or.cond.i = and i1 %.not.i268, %.not27.i269
  br i1 %or.cond.i, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mc = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.mc, align 8, !tbaa !27
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 24 ; 3 uses
  store ptr %i.me, ptr %i.md, align 8, !tbaa !248
  %i.mf = load ptr, ptr %13, align 8, !tbaa !227  ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271

bb.bb:                                            ; preds = %bb.ba
  %i.mi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !247 ; 3 uses
  %i.mk = icmp ult i64 %i.mj, 16
  call void @llvm.assume(i1 %i.mk)
  %i.ml = add nuw nsw i64 %i.mj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.me, ptr noundef nonnull align 8 dereferenceable(1) %i.mg, i64 %i.ml, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271: ; preds = %bb.ba
  store ptr %i.mf, ptr %i.md, align 8, !tbaa !227
  %i.mm = load i64, ptr %i.mg, align 8, !tbaa !228
  store i64 %i.mm, ptr %i.me, align 8, !tbaa !228
  %.phi.trans.insert.i272 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre.i273 = load i64, ptr %.phi.trans.insert.i272, align 8, !tbaa !247
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i274

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i274: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271, %bb.bb
  %i.mn = phi i64 [ %i.mj, %bb.bb ], [ %.pre.i273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271 ]
  %i.mo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store i64 %i.mn, ptr %i.mp, align 8, !tbaa !247
  store ptr %i.mg, ptr %13, align 8, !tbaa !227
  store i64 0, ptr %i.mo, align 8, !tbaa !247
  store i8 0, ptr %i.mg, align 8, !tbaa !228
  invoke void @__cxa_throw(ptr nonnull %i.mc, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.bf unwind label %bb.bc

bb.bc:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i274
  %i.mq = landingpad { ptr, i32 }
          cleanup
  %i.mr = load ptr, ptr %13, align 8, !tbaa !227  ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.mg
  br i1 %i.ms, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i275: ; preds = %bb.bc
  %i.mt = load i64, ptr %i.mg, align 8, !tbaa !228
  %i.mu = add i64 %i.mt, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i276: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

bb.bd:                                            ; preds = %bb.az
  %i.mv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @__cxa_free_exception(ptr %i.mc) #22
  br label %.body

bb.be:                                            ; preds = %bb.ay
  %i.mw = or disjoint i32 %i.ma, 8
  %i.mx = zext i32 %i.mw to i64
  %i.my = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.lr, i64 noundef %i.mx)
          to label %.noexc281 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc281:                                        ; preds = %bb.be
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  store ptr %i.mz, ptr %i.p, align 8, !tbaa !171
  store i32 %i.lz, ptr %i.my, align 4, !tbaa !173
  br label %.noexc207

bb.bf:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i274
  unreachable

.noexc207:                                        ; preds = %.noexc281, %.noexc278
  %.pre.i.i206 = phi ptr [ %i.mz, %.noexc281 ], [ %i.lw, %.noexc278 ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i206, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !173
  %.pre397.pre = load ptr, ptr %i.it, align 8, !tbaa !180
  %.pre398.pre = load ptr, ptr %i.if, align 8, !tbaa !180
  br label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit

_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit: ; preds = %bb.aw, %.noexc207
  %.pre398 = phi ptr [ %.pre398.pre, %.noexc207 ], [ %i.ig, %bb.aw ] ; 2 uses
  %.pre397 = phi ptr [ %.pre397.pre, %.noexc207 ], [ %i.iu, %bb.aw ]
  %i.na = phi i32 [ %.pre2.i.i, %.noexc207 ], [ %i.lq, %bb.aw ] ; 2 uses
  %i.nb = phi ptr [ %.pre.i.i206, %.noexc207 ], [ %i.ln, %bb.aw ] ; 2 uses
  %i.nc = zext i32 %i.na to i64
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.nb, i64 %i.nc ; 4 uses
  store i32 0, ptr %i.nd, align 4, !tbaa !450
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !451
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store i32 %i.gb, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !173
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store i32 %21, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !173
  %i.ne = getelementptr inbounds i8, ptr %i.nb, i64 -4
  %i.nf = add i32 %i.na, 1
  store i32 %i.nf, ptr %i.ne, align 4, !tbaa !173
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre398, i64 %i.gd
  %.pre399 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !173
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205, %bb.au
  %i.ng = phi i32 [ %.pre399, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit ], [ %i.lc, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205 ], [ %i.lc, %bb.au ] ; 3 uses
  %i.nh = phi ptr [ %.pre398, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit ], [ %i.ig, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205 ], [ %i.ig, %bb.au ] ; 3 uses
  %i.ni = phi ptr [ %.pre397, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit ], [ %i.iu, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit205 ], [ %i.iu, %bb.au ]
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.gc
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !173
  %i.nl = icmp eq i32 %i.nk, %i.ng
  br i1 %i.nl, label %bb.bh, label %bb.bs

bb.bh:                                            ; preds = %bb.bg
  %i.nm = load ptr, ptr %i.fn, align 8, !tbaa !269
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.gc
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !270, !range !234, !noundef !65
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208.thread

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208: ; preds = %bb.bh
  %i.nq = load ptr, ptr %i.fo, align 8, !tbaa !269
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.gc
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !270, !range !234, !noundef !65
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208.thread, label %bb.bs

_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208.thread: ; preds = %bb.bh, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208
  %i.nu = load ptr, ptr %i.p, align 8, !tbaa !171 ; 4 uses
  %i.nv = icmp eq ptr %i.nu, null
  br i1 %i.nv, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208.thread
  %i.nw = getelementptr inbounds i8, ptr %i.nu, i64 -4
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !173 ; 5 uses
  %i.ny = getelementptr inbounds i8, ptr %i.nu, i64 -8 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !173
  %i.oa = icmp eq i32 %i.nx, %i.nz
  br i1 %i.oa, label %bb.bk, label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit216

bb.bj:                                            ; preds = %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208.thread
  %i.ob = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40)
          to label %.noexc293 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc293:                                        ; preds = %bb.bj
  store i32 2, ptr %i.ob, align 4, !tbaa !173
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  store i32 0, ptr %i.oc, align 4, !tbaa !173
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 8 ; 2 uses
  store ptr %i.od, ptr %i.p, align 8, !tbaa !171
  br label %.noexc215

bb.bk:                                            ; preds = %bb.bi
  %i.oe = mul i32 %i.nx, 3
  %i.of = add i32 %i.oe, 1
  %i.og = lshr i32 %i.of, 1                       ; 3 uses
  %i.oh = shl i32 %i.og, 4                        ; 2 uses
  %.not.i282 = icmp ugt i32 %i.og, %i.nx
  %i.oi = shl i32 %i.nx, 4
  %.not27.i283 = icmp ugt i32 %i.oh, %i.oi
  %or.cond.i284 = and i1 %.not.i282, %.not27.i283
  br i1 %or.cond.i284, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oj = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.oj, align 8, !tbaa !27
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 24 ; 3 uses
  store ptr %i.ol, ptr %i.ok, align 8, !tbaa !248
  %i.om = load ptr, ptr %11, align 8, !tbaa !227  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286

bb.bn:                                            ; preds = %bb.bm
  %i.op = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !247 ; 3 uses
  %i.or = icmp ult i64 %i.oq, 16
  call void @llvm.assume(i1 %i.or)
  %i.os = add nuw nsw i64 %i.oq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ol, ptr noundef nonnull align 8 dereferenceable(1) %i.on, i64 %i.os, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286: ; preds = %bb.bm
  store ptr %i.om, ptr %i.ok, align 8, !tbaa !227
  %i.ot = load i64, ptr %i.on, align 8, !tbaa !228
  store i64 %i.ot, ptr %i.ol, align 8, !tbaa !228
  %.phi.trans.insert.i287 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre.i288 = load i64, ptr %.phi.trans.insert.i287, align 8, !tbaa !247
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i289

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i289: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286, %bb.bn
  %i.ou = phi i64 [ %i.oq, %bb.bn ], [ %.pre.i288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i286 ]
  %i.ov = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store i64 %i.ou, ptr %i.ow, align 8, !tbaa !247
  store ptr %i.on, ptr %11, align 8, !tbaa !227
  store i64 0, ptr %i.ov, align 8, !tbaa !247
  store i8 0, ptr %i.on, align 8, !tbaa !228
  invoke void @__cxa_throw(ptr nonnull %i.oj, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.br unwind label %bb.bo

bb.bo:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i289
  %i.ox = landingpad { ptr, i32 }
          cleanup
  %i.oy = load ptr, ptr %11, align 8, !tbaa !227  ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.on
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i290: ; preds = %bb.bo
  %i.pa = load i64, ptr %i.on, align 8, !tbaa !228
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i291: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

bb.bp:                                            ; preds = %bb.bl
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @__cxa_free_exception(ptr %i.oj) #22
  br label %.body

bb.bq:                                            ; preds = %bb.bk
  %i.pd = or disjoint i32 %i.oh, 8
  %i.pe = zext i32 %i.pd to i64
  %i.pf = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ny, i64 noundef %i.pe)
          to label %.noexc296 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc296:                                        ; preds = %bb.bq
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 2 uses
  store ptr %i.pg, ptr %i.p, align 8, !tbaa !171
  store i32 %i.og, ptr %i.pf, align 4, !tbaa !173
  br label %.noexc215

bb.br:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i289
  unreachable

.noexc215:                                        ; preds = %.noexc296, %.noexc293
  %.pre.i.i212 = phi ptr [ %i.pg, %.noexc296 ], [ %i.od, %.noexc293 ] ; 2 uses
  %.phi.trans.insert.i.i213 = getelementptr inbounds i8, ptr %.pre.i.i212, i64 -4
  %.pre2.i.i214 = load i32, ptr %.phi.trans.insert.i.i213, align 4, !tbaa !173
  %.pre401.pre = load ptr, ptr %i.if, align 8, !tbaa !180
  br label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit216

_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit216: ; preds = %bb.bi, %.noexc215
  %.pre401 = phi ptr [ %.pre401.pre, %.noexc215 ], [ %i.nh, %bb.bi ] ; 2 uses
  %i.ph = phi i32 [ %.pre2.i.i214, %.noexc215 ], [ %i.nx, %bb.bi ] ; 2 uses
  %i.pi = phi ptr [ %.pre.i.i212, %.noexc215 ], [ %i.nu, %bb.bi ] ; 2 uses
  %i.pj = zext i32 %i.ph to i64
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.pi, i64 %i.pj ; 4 uses
  store i32 1, ptr %i.pk, align 4, !tbaa !450
  %.sroa.4.0..sroa_idx.i209 = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i209, align 4, !tbaa !451
  %.sroa.5.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store i32 %21, ptr %.sroa.5.0..sroa_idx.i210, align 4, !tbaa !173
  %.sroa.6.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  store i32 %i.gb, ptr %.sroa.6.0..sroa_idx.i211, align 4, !tbaa !173
  %i.pl = getelementptr inbounds i8, ptr %i.pi, i64 -4
  %i.pm = add i32 %i.ph, 1
  store i32 %i.pm, ptr %i.pl, align 4, !tbaa !173
  %.phi.trans.insert402 = getelementptr inbounds nuw [4 x i8], ptr %.pre401, i64 %i.gd
  %.pre403 = load i32, ptr %.phi.trans.insert402, align 4, !tbaa !173
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit216, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208, %bb.bg
  %i.pn = phi i32 [ %.pre403, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit216 ], [ %i.ng, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208 ], [ %i.ng, %bb.bg ] ; 3 uses
  %i.po = phi ptr [ %.pre401, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit216 ], [ %i.nh, %_ZNK3sls10seq_plugin15string_instance7can_addEj.exit208 ], [ %i.nh, %bb.bg ] ; 3 uses
  %i.pp = load ptr, ptr %i.iq, align 8, !tbaa !180
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.gd
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !173
  %i.ps = icmp eq i32 %i.pr, %i.pn
  br i1 %i.ps, label %bb.bt, label %bb.cf

bb.bt:                                            ; preds = %bb.bs
  %i.pt = load ptr, ptr %i.fl, align 8, !tbaa !269
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %22
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !270, !range !234, !noundef !65
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %bb.cf, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.px = load ptr, ptr %i.p, align 8, !tbaa !171 ; 4 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pz = getelementptr inbounds i8, ptr %i.px, i64 -4
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !173 ; 5 uses
  %i.qb = getelementptr inbounds i8, ptr %i.px, i64 -8 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !173
  %i.qd = icmp eq i32 %i.qa, %i.qc
  br i1 %i.qd, label %bb.bx, label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit224

bb.bw:                                            ; preds = %bb.bu
  %i.qe = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40)
          to label %.noexc309 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc309:                                        ; preds = %bb.bw
  store i32 2, ptr %i.qe, align 4, !tbaa !173
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  store i32 0, ptr %i.qf, align 4, !tbaa !173
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 2 uses
  store ptr %i.qg, ptr %i.p, align 8, !tbaa !171
  br label %.noexc223

bb.bx:                                            ; preds = %bb.bv
  %i.qh = mul i32 %i.qa, 3
  %i.qi = add i32 %i.qh, 1
  %i.qj = lshr i32 %i.qi, 1                       ; 3 uses
  %i.qk = shl i32 %i.qj, 4                        ; 2 uses
  %.not.i298 = icmp ugt i32 %i.qj, %i.qa
  %i.ql = shl i32 %i.qa, 4
  %.not27.i299 = icmp ugt i32 %i.qk, %i.ql
  %or.cond.i300 = and i1 %.not.i298, %.not27.i299
  br i1 %or.cond.i300, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qm = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.qm, align 8, !tbaa !27
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 24 ; 3 uses
  store ptr %i.qo, ptr %i.qn, align 8, !tbaa !248
  %i.qp = load ptr, ptr %9, align 8, !tbaa !227   ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i302

bb.ca:                                            ; preds = %bb.bz
  %i.qs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !247 ; 3 uses
  %i.qu = icmp ult i64 %i.qt, 16
  call void @llvm.assume(i1 %i.qu)
  %i.qv = add nuw nsw i64 %i.qt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qo, ptr noundef nonnull align 8 dereferenceable(1) %i.qq, i64 %i.qv, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i302: ; preds = %bb.bz
  store ptr %i.qp, ptr %i.qn, align 8, !tbaa !227
  %i.qw = load i64, ptr %i.qq, align 8, !tbaa !228
  store i64 %i.qw, ptr %i.qo, align 8, !tbaa !228
  %.phi.trans.insert.i303 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre.i304 = load i64, ptr %.phi.trans.insert.i303, align 8, !tbaa !247
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i305

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i305: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i302, %bb.ca
  %i.qx = phi i64 [ %i.qt, %bb.ca ], [ %.pre.i304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i302 ]
  %i.qy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store i64 %i.qx, ptr %i.qz, align 8, !tbaa !247
  store ptr %i.qq, ptr %9, align 8, !tbaa !227
  store i64 0, ptr %i.qy, align 8, !tbaa !247
  store i8 0, ptr %i.qq, align 8, !tbaa !228
  invoke void @__cxa_throw(ptr nonnull %i.qm, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.ce unwind label %bb.cb

bb.cb:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i305
  %i.ra = landingpad { ptr, i32 }
          cleanup
  %i.rb = load ptr, ptr %9, align 8, !tbaa !227   ; 2 uses
  %i.rc = icmp eq ptr %i.rb, %i.qq
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i306: ; preds = %bb.cb
  %i.rd = load i64, ptr %i.qq, align 8, !tbaa !228
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.re) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i307: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.body

bb.cc:                                            ; preds = %bb.by
  %i.rf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @__cxa_free_exception(ptr %i.qm) #22
  br label %.body

bb.cd:                                            ; preds = %bb.bx
  %i.rg = or disjoint i32 %i.qk, 8
  %i.rh = zext i32 %i.rg to i64
  %i.ri = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.qb, i64 noundef %i.rh)
          to label %.noexc312 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc312:                                        ; preds = %bb.cd
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  store ptr %i.rj, ptr %i.p, align 8, !tbaa !171
  store i32 %i.qj, ptr %i.ri, align 4, !tbaa !173
  br label %.noexc223

bb.ce:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i305
  unreachable

.noexc223:                                        ; preds = %.noexc312, %.noexc309
  %.pre.i.i220 = phi ptr [ %i.rj, %.noexc312 ], [ %i.qg, %.noexc309 ] ; 2 uses
  %.phi.trans.insert.i.i221 = getelementptr inbounds i8, ptr %.pre.i.i220, i64 -4
  %.pre2.i.i222 = load i32, ptr %.phi.trans.insert.i.i221, align 4, !tbaa !173
  %.pre405.pre = load ptr, ptr %i.if, align 8, !tbaa !180
  br label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit224

_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit224: ; preds = %bb.bv, %.noexc223
  %.pre405 = phi ptr [ %.pre405.pre, %.noexc223 ], [ %i.po, %bb.bv ] ; 2 uses
  %i.rk = phi i32 [ %.pre2.i.i222, %.noexc223 ], [ %i.qa, %bb.bv ] ; 2 uses
  %i.rl = phi ptr [ %.pre.i.i220, %.noexc223 ], [ %i.px, %bb.bv ] ; 2 uses
  %i.rm = zext i32 %i.rk to i64
  %i.rn = getelementptr inbounds nuw [16 x i8], ptr %i.rl, i64 %i.rm ; 4 uses
  store i32 0, ptr %i.rn, align 4, !tbaa !450
  %.sroa.4.0..sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i217, align 4, !tbaa !451
  %.sroa.5.0..sroa_idx.i218 = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i32 %21, ptr %.sroa.5.0..sroa_idx.i218, align 4, !tbaa !173
  %.sroa.6.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %i.rn, i64 12
  store i32 0, ptr %.sroa.6.0..sroa_idx.i219, align 4, !tbaa !173
  %i.ro = getelementptr inbounds i8, ptr %i.rl, i64 -4
  %i.rp = add i32 %i.rk, 1
  store i32 %i.rp, ptr %i.ro, align 4, !tbaa !173
  %.phi.trans.insert406 = getelementptr inbounds nuw [4 x i8], ptr %.pre405, i64 %i.gd
  %.pre407 = load i32, ptr %.phi.trans.insert406, align 4, !tbaa !173
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit224, %bb.bt, %bb.bs
  %i.rq = phi i32 [ %.pre407, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit224 ], [ %i.pn, %bb.bt ], [ %i.pn, %bb.bs ] ; 3 uses
  %i.rr = phi ptr [ %.pre405, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit224 ], [ %i.po, %bb.bt ], [ %i.po, %bb.bs ] ; 3 uses
  %i.rs = load ptr, ptr %i.it, align 8, !tbaa !180
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.gc
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !173
  %i.rv = icmp eq i32 %i.ru, %i.rq
  br i1 %i.rv, label %bb.cg, label %bb.cs

bb.cg:                                            ; preds = %bb.cf
  %i.rw = load ptr, ptr %i.fn, align 8, !tbaa !269
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.gc
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !270, !range !234, !noundef !65
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.cs, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.sa = load ptr, ptr %i.p, align 8, !tbaa !171 ; 4 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.sc = getelementptr inbounds i8, ptr %i.sa, i64 -4
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !173 ; 5 uses
  %i.se = getelementptr inbounds i8, ptr %i.sa, i64 -8 ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !173
  %i.sg = icmp eq i32 %i.sd, %i.sf
  br i1 %i.sg, label %bb.ck, label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit232

bb.cj:                                            ; preds = %bb.ch
  %i.sh = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40)
          to label %.noexc325 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc325:                                        ; preds = %bb.cj
  store i32 2, ptr %i.sh, align 4, !tbaa !173
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  store i32 0, ptr %i.si, align 4, !tbaa !173
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 8 ; 2 uses
  store ptr %i.sj, ptr %i.p, align 8, !tbaa !171
  br label %.noexc231

bb.ck:                                            ; preds = %bb.ci
  %i.sk = mul i32 %i.sd, 3
  %i.sl = add i32 %i.sk, 1
  %i.sm = lshr i32 %i.sl, 1                       ; 3 uses
  %i.sn = shl i32 %i.sm, 4                        ; 2 uses
  %.not.i314 = icmp ugt i32 %i.sm, %i.sd
  %i.so = shl i32 %i.sd, 4
  %.not27.i315 = icmp ugt i32 %i.sn, %i.so
  %or.cond.i316 = and i1 %.not.i314, %.not27.i315
  br i1 %or.cond.i316, label %bb.cq, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.sp = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.sp, align 8, !tbaa !27
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 24 ; 3 uses
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !248
  %i.ss = load ptr, ptr %7, align 8, !tbaa !227   ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.su = icmp eq ptr %i.ss, %i.st
  br i1 %i.su, label %bb.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318

bb.cn:                                            ; preds = %bb.cm
  %i.sv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !247 ; 3 uses
  %i.sx = icmp ult i64 %i.sw, 16
  call void @llvm.assume(i1 %i.sx)
  %i.sy = add nuw nsw i64 %i.sw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sr, ptr noundef nonnull align 8 dereferenceable(1) %i.st, i64 %i.sy, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318: ; preds = %bb.cm
  store ptr %i.ss, ptr %i.sq, align 8, !tbaa !227
  %i.sz = load i64, ptr %i.st, align 8, !tbaa !228
  store i64 %i.sz, ptr %i.sr, align 8, !tbaa !228
  %.phi.trans.insert.i319 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i320 = load i64, ptr %.phi.trans.insert.i319, align 8, !tbaa !247
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i321

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i321: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318, %bb.cn
  %i.ta = phi i64 [ %i.sw, %bb.cn ], [ %.pre.i320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318 ]
  %i.tb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  store i64 %i.ta, ptr %i.tc, align 8, !tbaa !247
  store ptr %i.st, ptr %7, align 8, !tbaa !227
  store i64 0, ptr %i.tb, align 8, !tbaa !247
  store i8 0, ptr %i.st, align 8, !tbaa !228
  invoke void @__cxa_throw(ptr nonnull %i.sp, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.cr unwind label %bb.co

bb.co:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i321
  %i.td = landingpad { ptr, i32 }
          cleanup
  %i.te = load ptr, ptr %7, align 8, !tbaa !227   ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.st
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i322: ; preds = %bb.co
  %i.tg = load i64, ptr %i.st, align 8, !tbaa !228
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i323: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

bb.cp:                                            ; preds = %bb.cl
  %i.ti = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @__cxa_free_exception(ptr %i.sp) #22
  br label %.body

bb.cq:                                            ; preds = %bb.ck
  %i.tj = or disjoint i32 %i.sn, 8
  %i.tk = zext i32 %i.tj to i64
  %i.tl = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.se, i64 noundef %i.tk)
          to label %.noexc328 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc328:                                        ; preds = %bb.cq
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  store ptr %i.tm, ptr %i.p, align 8, !tbaa !171
  store i32 %i.sm, ptr %i.tl, align 4, !tbaa !173
  br label %.noexc231

bb.cr:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i321
  unreachable

.noexc231:                                        ; preds = %.noexc328, %.noexc325
  %.pre.i.i228 = phi ptr [ %i.tm, %.noexc328 ], [ %i.sj, %.noexc325 ] ; 2 uses
  %.phi.trans.insert.i.i229 = getelementptr inbounds i8, ptr %.pre.i.i228, i64 -4
  %.pre2.i.i230 = load i32, ptr %.phi.trans.insert.i.i229, align 4, !tbaa !173
  %.pre409.pre = load ptr, ptr %i.if, align 8, !tbaa !180
  br label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit232

_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit232: ; preds = %bb.ci, %.noexc231
  %.pre409 = phi ptr [ %.pre409.pre, %.noexc231 ], [ %i.rr, %bb.ci ] ; 2 uses
  %i.tn = phi i32 [ %.pre2.i.i230, %.noexc231 ], [ %i.sd, %bb.ci ] ; 2 uses
  %i.to = phi ptr [ %.pre.i.i228, %.noexc231 ], [ %i.sa, %bb.ci ] ; 2 uses
  %i.tp = zext i32 %i.tn to i64
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr %i.to, i64 %i.tp ; 4 uses
  store i32 1, ptr %i.tq, align 4, !tbaa !450
  %.sroa.4.0..sroa_idx.i225 = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i225, align 4, !tbaa !451
  %.sroa.5.0..sroa_idx.i226 = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store i32 %i.gb, ptr %.sroa.5.0..sroa_idx.i226, align 4, !tbaa !173
  %.sroa.6.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.tq, i64 12
  store i32 0, ptr %.sroa.6.0..sroa_idx.i227, align 4, !tbaa !173
  %i.tr = getelementptr inbounds i8, ptr %i.to, i64 -4
  %i.ts = add i32 %i.tn, 1
  store i32 %i.ts, ptr %i.tr, align 4, !tbaa !173
  %.phi.trans.insert410 = getelementptr inbounds nuw [4 x i8], ptr %.pre409, i64 %i.gd
  %.pre411 = load i32, ptr %.phi.trans.insert410, align 4, !tbaa !173
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit232, %bb.cg, %bb.cf
  %i.tt = phi i32 [ %.pre411, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit232 ], [ %i.rq, %bb.cg ], [ %i.rq, %bb.cf ]
  %i.tu = phi ptr [ %.pre409, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit232 ], [ %i.rr, %bb.cg ], [ %i.rr, %bb.cf ]
  %i.tv = load ptr, ptr %i.iq, align 8, !tbaa !180 ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.gc
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !173
  %i.ty = icmp eq i32 %i.tx, %i.tt
  br i1 %i.ty, label %bb.ct, label %.thread556

bb.ct:                                            ; preds = %bb.cs
  %i.tz = load ptr, ptr %i.fl, align 8, !tbaa !269
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %22
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !270, !range !234, !noundef !65
  %i.uc = trunc nuw i8 %i.ub to i1
  br i1 %i.uc, label %.thread555, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ud = load ptr, ptr %i.p, align 8, !tbaa !171 ; 4 uses
  %i.ue = icmp eq ptr %i.ud, null
  br i1 %i.ue, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.uf = getelementptr inbounds i8, ptr %i.ud, i64 -4
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !173 ; 5 uses
  %i.uh = getelementptr inbounds i8, ptr %i.ud, i64 -8 ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !173
  %i.uj = icmp eq i32 %i.ug, %i.ui
  br i1 %i.uj, label %bb.cx, label %bb.df

bb.cw:                                            ; preds = %bb.cu
  %i.uk = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40)
          to label %.noexc341 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc341:                                        ; preds = %bb.cw
  store i32 2, ptr %i.uk, align 4, !tbaa !173
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  store i32 0, ptr %i.ul, align 4, !tbaa !173
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 8 ; 2 uses
  store ptr %i.um, ptr %i.p, align 8, !tbaa !171
  br label %.noexc239

bb.cx:                                            ; preds = %bb.cv
  %i.un = mul i32 %i.ug, 3
  %i.uo = add i32 %i.un, 1
  %i.up = lshr i32 %i.uo, 1                       ; 3 uses
  %i.uq = shl i32 %i.up, 4                        ; 2 uses
  %.not.i330 = icmp ugt i32 %i.up, %i.ug
  %i.ur = shl i32 %i.ug, 4
  %.not27.i331 = icmp ugt i32 %i.uq, %i.ur
  %or.cond.i332 = and i1 %.not.i330, %.not27.i331
  br i1 %or.cond.i332, label %bb.dd, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.us = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.us, align 8, !tbaa !27
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 24 ; 3 uses
  store ptr %i.uu, ptr %i.ut, align 8, !tbaa !248
  %i.uv = load ptr, ptr %5, align 8, !tbaa !227   ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %bb.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i334

bb.da:                                            ; preds = %bb.cz
  %i.uy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !247 ; 3 uses
  %i.va = icmp ult i64 %i.uz, 16
  call void @llvm.assume(i1 %i.va)
  %i.vb = add nuw nsw i64 %i.uz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uu, ptr noundef nonnull align 8 dereferenceable(1) %i.uw, i64 %i.vb, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i334: ; preds = %bb.cz
  store ptr %i.uv, ptr %i.ut, align 8, !tbaa !227
  %i.vc = load i64, ptr %i.uw, align 8, !tbaa !228
  store i64 %i.vc, ptr %i.uu, align 8, !tbaa !228
  %.phi.trans.insert.i335 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i336 = load i64, ptr %.phi.trans.insert.i335, align 8, !tbaa !247
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i337

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i337: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i334, %bb.da
  %i.vd = phi i64 [ %i.uz, %bb.da ], [ %.pre.i336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i334 ]
  %i.ve = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  store i64 %i.vd, ptr %i.vf, align 8, !tbaa !247
  store ptr %i.uw, ptr %5, align 8, !tbaa !227
  store i64 0, ptr %i.ve, align 8, !tbaa !247
  store i8 0, ptr %i.uw, align 8, !tbaa !228
  invoke void @__cxa_throw(ptr nonnull %i.us, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.de unwind label %bb.db

bb.db:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i337
  %i.vg = landingpad { ptr, i32 }
          cleanup
  %i.vh = load ptr, ptr %5, align 8, !tbaa !227   ; 2 uses
  %i.vi = icmp eq ptr %i.vh, %i.uw
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i338: ; preds = %bb.db
  %i.vj = load i64, ptr %i.uw, align 8, !tbaa !228
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i339: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

bb.dc:                                            ; preds = %bb.cy
  %i.vl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @__cxa_free_exception(ptr %i.us) #22
  br label %.body

bb.dd:                                            ; preds = %bb.cx
  %i.vm = or disjoint i32 %i.uq, 8
  %i.vn = zext i32 %i.vm to i64
  %i.vo = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.uh, i64 noundef %i.vn)
          to label %.noexc344 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc344:                                        ; preds = %bb.dd
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8 ; 2 uses
  store ptr %i.vp, ptr %i.p, align 8, !tbaa !171
  store i32 %i.up, ptr %i.vo, align 4, !tbaa !173
  br label %.noexc239

bb.de:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i337
  unreachable

.noexc239:                                        ; preds = %.noexc344, %.noexc341
  %.pre.i.i236 = phi ptr [ %i.vp, %.noexc344 ], [ %i.um, %.noexc341 ] ; 2 uses
  %.phi.trans.insert.i.i237 = getelementptr inbounds i8, ptr %.pre.i.i236, i64 -4
  %.pre2.i.i238 = load i32, ptr %.phi.trans.insert.i.i237, align 4, !tbaa !173
  %.pre414.pre = load ptr, ptr %i.iq, align 8, !tbaa !180
  %.pre418.pre = load ptr, ptr %i.if, align 8, !tbaa !180
  br label %bb.df

bb.df:                                            ; preds = %.noexc239, %bb.cv
  %.pre418.a = phi ptr [ %.pre418.pre, %.noexc239 ], [ %i.tu, %bb.cv ]
  %.pre414 = phi ptr [ %.pre414.pre, %.noexc239 ], [ %i.tv, %bb.cv ]
  %i.vq = phi i32 [ %.pre2.i.i238, %.noexc239 ], [ %i.ug, %bb.cv ] ; 2 uses
  %i.vr = phi ptr [ %.pre.i.i236, %.noexc239 ], [ %i.ud, %bb.cv ] ; 2 uses
  %i.vs = zext i32 %i.vq to i64
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr %i.vr, i64 %i.vs ; 4 uses
  store i32 0, ptr %i.vt, align 4, !tbaa !450
  %.sroa.4.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  store i32 2, ptr %.sroa.4.0..sroa_idx.i233, align 4, !tbaa !451
  %.sroa.5.0..sroa_idx.i234 = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  store i32 %i.gb, ptr %.sroa.5.0..sroa_idx.i234, align 4, !tbaa !173
  %.sroa.6.0..sroa_idx.i235 = getelementptr inbounds nuw i8, ptr %i.vt, i64 12
  store i32 %21, ptr %.sroa.6.0..sroa_idx.i235, align 4, !tbaa !173
  %i.vu = getelementptr inbounds i8, ptr %i.vr, i64 -4
  %i.vv = add i32 %i.vq, 1
  store i32 %i.vv, ptr %i.vu, align 4, !tbaa !173
  %.phi.trans.insert415 = getelementptr inbounds nuw [4 x i8], ptr %.pre414, i64 %i.gc
  %.pre416 = load i32, ptr %.phi.trans.insert415, align 4, !tbaa !173
  %.phi.trans.insert419 = getelementptr inbounds nuw [4 x i8], ptr %.pre418.a, i64 %i.gd
  %.pre420 = load i32, ptr %.phi.trans.insert419, align 4, !tbaa !173
  %i.vw = icmp eq i32 %.pre416, %.pre420
  br i1 %i.vw, label %.thread555, label %.thread556

.thread555:                                       ; preds = %bb.ct, %bb.df
  %i.vx = load ptr, ptr %i.fn, align 8, !tbaa !269
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.gc
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !270, !range !234, !noundef !65
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %.thread556, label %bb.dg

bb.dg:                                            ; preds = %.thread555
  %i.wb = load ptr, ptr %i.p, align 8, !tbaa !171 ; 4 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.wd = getelementptr inbounds i8, ptr %i.wb, i64 -4
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !173 ; 5 uses
  %i.wf = getelementptr inbounds i8, ptr %i.wb, i64 -8 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !173
  %i.wh = icmp eq i32 %i.we, %i.wg
  br i1 %i.wh, label %bb.dj, label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit248

bb.di:                                            ; preds = %bb.dg
  %i.wi = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40)
          to label %.noexc357 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc357:                                        ; preds = %bb.di
  store i32 2, ptr %i.wi, align 4, !tbaa !173
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  store i32 0, ptr %i.wj, align 4, !tbaa !173
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 8 ; 2 uses
  store ptr %i.wk, ptr %i.p, align 8, !tbaa !171
  br label %.noexc247

bb.dj:                                            ; preds = %bb.dh
  %i.wl = mul i32 %i.we, 3
  %i.wm = add i32 %i.wl, 1
  %i.wn = lshr i32 %i.wm, 1                       ; 3 uses
  %i.wo = shl i32 %i.wn, 4                        ; 2 uses
  %.not.i346 = icmp ugt i32 %i.wn, %i.we
  %i.wp = shl i32 %i.we, 4
  %.not27.i347 = icmp ugt i32 %i.wo, %i.wp
  %or.cond.i348 = and i1 %.not.i346, %.not27.i347
  br i1 %or.cond.i348, label %bb.dp, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.wq = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %bb.dk
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.wq, align 8, !tbaa !27
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 24 ; 3 uses
  store ptr %i.ws, ptr %i.wr, align 8, !tbaa !248
  %i.wt = load ptr, ptr %3, align 8, !tbaa !227   ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.wv = icmp eq ptr %i.wt, %i.wu
  br i1 %i.wv, label %bb.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350

bb.dm:                                            ; preds = %bb.dl
  %i.ww = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !247 ; 3 uses
  %i.wy = icmp ult i64 %i.wx, 16
  call void @llvm.assume(i1 %i.wy)
  %i.wz = add nuw nsw i64 %i.wx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ws, ptr noundef nonnull align 8 dereferenceable(1) %i.wu, i64 %i.wz, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350: ; preds = %bb.dl
  store ptr %i.wt, ptr %i.wr, align 8, !tbaa !227
  %i.xa = load i64, ptr %i.wu, align 8, !tbaa !228
  store i64 %i.xa, ptr %i.ws, align 8, !tbaa !228
  %.phi.trans.insert.i351 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i352 = load i64, ptr %.phi.trans.insert.i351, align 8, !tbaa !247
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i353

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i353: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350, %bb.dm
  %i.xb = phi i64 [ %i.wx, %bb.dm ], [ %.pre.i352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350 ]
  %i.xc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store i64 %i.xb, ptr %i.xd, align 8, !tbaa !247
  store ptr %i.wu, ptr %3, align 8, !tbaa !227
  store i64 0, ptr %i.xc, align 8, !tbaa !247
  store i8 0, ptr %i.wu, align 8, !tbaa !228
  invoke void @__cxa_throw(ptr nonnull %i.wq, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.dq unwind label %bb.dn

bb.dn:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i353
  %i.xe = landingpad { ptr, i32 }
          cleanup
  %i.xf = load ptr, ptr %3, align 8, !tbaa !227   ; 2 uses
  %i.xg = icmp eq ptr %i.xf, %i.wu
  br i1 %i.xg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i354: ; preds = %bb.dn
  %i.xh = load i64, ptr %i.wu, align 8, !tbaa !228
  %i.xi = add i64 %i.xh, 1
  call void @_ZdlPvm(ptr noundef %i.xf, i64 noundef %i.xi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i355: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i354
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

bb.do:                                            ; preds = %bb.dk
  %i.xj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @__cxa_free_exception(ptr %i.wq) #22
  br label %.body

bb.dp:                                            ; preds = %bb.dj
  %i.xk = or disjoint i32 %i.wo, 8
  %i.xl = zext i32 %i.xk to i64
  %i.xm = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.wf, i64 noundef %i.xl)
          to label %.noexc360 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc360:                                        ; preds = %bb.dp
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8 ; 2 uses
  store ptr %i.xn, ptr %i.p, align 8, !tbaa !171
  store i32 %i.wn, ptr %i.xm, align 4, !tbaa !173
  br label %.noexc247

bb.dq:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i353
  unreachable

.noexc247:                                        ; preds = %.noexc360, %.noexc357
  %.pre.i.i244 = phi ptr [ %i.xn, %.noexc360 ], [ %i.wk, %.noexc357 ] ; 2 uses
  %.phi.trans.insert.i.i245 = getelementptr inbounds i8, ptr %.pre.i.i244, i64 -4
  %.pre2.i.i246 = load i32, ptr %.phi.trans.insert.i.i245, align 4, !tbaa !173
  br label %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit248

_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit248: ; preds = %bb.dh, %.noexc247
  %i.xo = phi i32 [ %.pre2.i.i246, %.noexc247 ], [ %i.we, %bb.dh ] ; 2 uses
  %i.xp = phi ptr [ %.pre.i.i244, %.noexc247 ], [ %i.wb, %bb.dh ] ; 2 uses
  %i.xq = zext i32 %i.xo to i64
  %i.xr = getelementptr inbounds nuw [16 x i8], ptr %i.xp, i64 %i.xq ; 4 uses
  store i32 1, ptr %i.xr, align 4, !tbaa !450
  %.sroa.4.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  store i32 2, ptr %.sroa.4.0..sroa_idx.i241, align 4, !tbaa !451
  %.sroa.5.0..sroa_idx.i242 = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store i32 %21, ptr %.sroa.5.0..sroa_idx.i242, align 4, !tbaa !173
  %.sroa.6.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.xr, i64 12
  store i32 %i.gb, ptr %.sroa.6.0..sroa_idx.i243, align 4, !tbaa !173
  %i.xs = getelementptr inbounds i8, ptr %i.xp, i64 -4
  %i.xt = add i32 %i.xo, 1
  store i32 %i.xt, ptr %i.xs, align 4, !tbaa !173
  br label %.thread556

.thread556:                                       ; preds = %bb.cs, %_ZN3sls10seq_plugin17add_string_updateENS0_6side_tENS0_4op_tEjj.exit248, %bb.aj, %.thread555, %bb.df
  %25 = add i32 %.0380, 1                         ; 2 uses
  %.not154 = icmp ugt i32 %25, %i.b
  br i1 %.not154, label %._crit_edge, label %bb.ai, !llvm.loop !449

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i355, %bb.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i339, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i323, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i307, %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i291, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i276, %bb.bd, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i260, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.w ], [ %i.bm, %bb.l ], [ %i.xj, %bb.do ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.xe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i355 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i260 ], [ %i.vl, %bb.dc ], [ %i.mv, %bb.bd ], [ %i.pc, %bb.bp ], [ %i.rf, %bb.cc ], [ %i.ti, %bb.cp ], [ %i.vg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i339 ], [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i276 ], [ %i.ox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i291 ], [ %i.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i307 ], [ %i.td, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i323 ], [ %lpad.loopexit.split-lp564, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorI7svectorIjjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #22
  br label %bb.dr

bb.dr:                                            ; preds = %.body, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZN6vectorI7svectorIjjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3sls10seq_plugin16trunc_pad_to_fitEjjRK7zstring(ptr dead_on_unwind noalias writable sret(%class.zstring) align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2072) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(80) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.zstring, align 8             ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !218  ; 5 uses
  %i.c = icmp ugt i32 %i.b, %3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK7zstring7extractEjj(ptr dead_on_unwind writable sret(%class.zstring) align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 noundef 0, i32 noundef %3)
  br label %_ZN7zstringC2ERKS_.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp ult i32 %i.b, %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !179
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  store i32 0, ptr %i.e, align 8, !tbaa !218
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  store i32 16, ptr %i.f, align 4, !tbaa !219
  %.not.i.i16 = icmp eq i32 %i.b, 0               ; 2 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i16, label %_ZN7zstringC2ERKS_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext i32 %i.b to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i, %.lr.ph.preheader.i.i
  %.pre.i.i.i = phi ptr [ %i.d, %.lr.ph.preheader.i.i ], [ %.pre.i9.i.i, %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i ]
  %i.g = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.at, %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i ] ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !179
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i
  %i.j = load i32, ptr %i.f, align 4, !tbaa !219  ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.g, %i.j
  br i1 %.not.i.i.i, label %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.k = shl i32 %i.j, 1                          ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.m) ; 9 uses
  %i.o = load i32, ptr %i.e, align 8, !tbaa !218  ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !179 ; 10 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %.pre.i.i.i.i64 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.p = ptrtoaddr ptr %i.n to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.o to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  %i.q = sub i64 %.pre.i.i.i.i64, %i.p
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !173
  %wide.load65 = load <4 x i32>, ptr %i.t, align 4, !tbaa !173
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !173
  store <4 x i32> %wide.load65, ptr %i.u, align 4, !tbaa !173
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !452

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.prol
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !173
  store i32 %i.y, ptr %i.w, align 4, !tbaa !173
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !453

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, %i.d
  %i.ab = icmp eq ptr %.pre.i.i.i.i, null
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.ab
  br i1 %or.cond.i.i.i.i.i, label %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i.i)
  %.pre2.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !218
  br label %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !173
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !173
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !173
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !173
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.i.1
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !173
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !173
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.i.2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !173
  store i32 %i.an, ptr %i.al, align 4, !tbaa !173
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %scalar.ph, !llvm.loop !454

_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i:       ; preds = %bb.f, %._crit_edge.i.i.i.i
  %.pre2.i.i.i = phi i32 [ %i.o, %._crit_edge.i.i.i.i ], [ %.pre2.pre.i.i.i, %bb.f ]
  store ptr %i.n, ptr %0, align 8, !tbaa !179
  store i32 %i.k, ptr %i.f, align 4, !tbaa !219
  br label %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i

_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i:    ; preds = %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i, %.lr.ph.i.i
  %.pre.i9.i.i = phi ptr [ %i.n, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ao = phi i32 [ %.pre2.i.i.i, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i9.i.i, i64 %i.ap
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !173
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !173
  %i.as = load i32, ptr %i.e, align 8, !tbaa !218
  %i.at = add i32 %i.as, 1                        ; 2 uses
  store i32 %i.at, ptr %i.e, align 8, !tbaa !218
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN7zstringC2ERKS_.exit, label %.lr.ph.i.i, !llvm.loop !4

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i.i16, label %.lr.ph, label %.lr.ph.preheader.i.i17

.lr.ph.preheader.i.i17:                           ; preds = %bb.g
  %wide.trip.count.i.i18 = zext i32 %i.b to i64
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i36, %.lr.ph.preheader.i.i17
  %.pre.i.i.i20 = phi ptr [ %i.d, %.lr.ph.preheader.i.i17 ], [ %.pre.i9.i.i37, %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i36 ]
  %i.au = phi i32 [ 0, %.lr.ph.preheader.i.i17 ], [ %i.ch, %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i36 ] ; 2 uses
  %indvars.iv.i.i21 = phi i64 [ 0, %.lr.ph.preheader.i.i17 ], [ %indvars.iv.next.i.i38, %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i36 ] ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !179
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i.i21
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !219 ; 2 uses
  %.not.i.i.i22 = icmp ult i32 %i.au, %i.ax
  br i1 %.not.i.i.i22, label %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i36, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i19
  %i.ay = shl i32 %i.ax, 1                        ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ba) ; 9 uses
  %i.bc = load i32, ptr %i.e, align 8, !tbaa !218 ; 4 uses
end_hunk_1
