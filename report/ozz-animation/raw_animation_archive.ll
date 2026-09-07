Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_animation_archive?download=true
inline.NumInlined: 449
inline.NumDeleted: 297
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3ozz2io6ExternIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation10JointTrackEEEE4LoadERNS0_8IArchiveEPS9_mj:bb.a
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3ozz2io6ExternINS_9animation7offline12RawAnimation10JointTrackEE4LoadERNS0_8IArchiveEPS5_mj.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN3ozz2io6ExternINS_9animation7offline12RawAnimation10JointTrackEE4LoadERNS0_8IArchiveEPS5_mj.exit
  %.053 = phi i64 [ 0, %.lr.ph ], [ %i.ix, %_ZN3ozz2io6ExternINS_9animation7offline12RawAnimation10JointTrackEE4LoadERNS0_8IArchiveEPS5_mj.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.053 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !142  ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN3ozz2io6ExternINS_9animation7offline12RawAnimation10JointTrackEE4LoadERNS0_8IArchiveEPS5_mj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation8ScaleKeyEEEEEvRT_.exit.i
  %.010.i = phi i64 [ %i.iw, %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation8ScaleKeyEEEEEvRT_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %.010.i ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.c, i64 noundef 4), !inline_history !120 ; 0 uses
  %i.u = load i8, ptr %i.j, align 8, !tbaa !31, !range !19, !noundef !20
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load i32, ptr %i.c, align 4              ; 2 uses
  %.sroa.0.0.insert.insert.i.i23 = call i32 @llvm.bswap.i32(i32 %i.w)
  %i.x = select i1 %i.v, i32 %.sroa.0.0.insert.insert.i.i23, i32 %i.w ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.y = zext i32 %i.x to i64                     ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 6 uses
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !35  ; 6 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 4                 ; 6 uses
  %i.ag = icmp ult i64 %i.af, %i.y
  br i1 %i.ag, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = sub nuw nsw i64 %i.y, %i.af             ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.ac
  %i.am = ashr exact i64 %i.al, 4                 ; 2 uses
  %i.an = xor i64 %i.af, 576460752303423487
  %i.ao = icmp ule i64 %i.am, %i.an
  call void @llvm.assume(i1 %i.ao)
  %.not37.i44 = icmp ult i64 %i.am, %i.ah
  br i1 %.not37.i44, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit.i: ; preds = %bb.c
  %i.ap = shl nuw nsw i64 %i.ah, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %i.ap, i1 false)
  %scevgep.i.i45 = getelementptr i8, ptr %i.aa, i64 %i.ap
  store ptr %scevgep.i.i45, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i46 = call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ah)
  %i.aq = add nuw nsw i64 %.sroa.speculated.i.i46, %i.af ; 2 uses
  %i.ar = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.as = shl nuw nsw i64 %i.aq, 4
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.as, i64 noundef 4)
          to label %bb.f unwind label %bb.e       ; 4 uses

bb.e:                                             ; preds = %bb.d, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ae ; 2 uses
  %i.ba = shl nuw nsw i64 %i.ah, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 0, i64 %i.ba, i1 false)
  %.not13.i.i.i47 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not13.i.i.i47, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i, label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %bb.f, %.lr.ph.i.i.i48
  %.015.i.i.i49 = phi ptr [ %i.bc, %.lr.ph.i.i.i48 ], [ %i.aw, %bb.f ] ; 2 uses
  %.sroa.010.014.i.i.i50 = phi ptr [ %i.bb, %.lr.ph.i.i.i48 ], [ %i.ab, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i.i49, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i.i50, i64 16, i1 false), !tbaa.struct !143
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i50, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i.i.i49, i64 16
  %.not.i.i.i51 = icmp eq ptr %i.bb, %i.aa
  br i1 %.not.i.i.i51, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i, label %.lr.ph.i.i.i48, !llvm.loop !121

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i: ; preds = %.lr.ph.i.i.i48, %bb.f
  %.not.i44.i52 = icmp eq ptr %i.ab, null
  br i1 %.not.i44.i52, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i
  %i.bd = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull %i.ab)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #14
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.h, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i
  store ptr %i.aw, ptr %i.o, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ah
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.aq
  store ptr %i.bk, ptr %i.ai, align 8, !tbaa !45
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.bl = icmp ugt i64 %i.af, %i.y
  br i1 %i.bl, label %bb.k, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.y ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.aa, %i.bm
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.bm, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation14TranslationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit.i, %bb.l, %bb.k, %bb.j
  %.not.i24 = icmp eq i32 %i.x, 0
  br i1 %.not.i24, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation14TranslationKeyEEEEEvRT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i
  %i.bn = load ptr, ptr %i.o, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bo = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !122 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %.lr.ph.i.i.i.i25, %bb.m
  %.08.i.i.i.i26 = phi i64 [ %i.cd, %.lr.ph.i.i.i.i25 ], [ 0, %bb.m ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.08.i.i.i.i26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bu = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !123 ; 0 uses
  %i.bz = load i8, ptr %i.j, align 8, !tbaa !31, !range !19, !noundef !20
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = load i32, ptr %i.a, align 4             ; 2 uses
  %.1.insert.insert15.i.i.i.i.i27 = call i32 @llvm.bswap.i32(i32 %i.cb)
  %.v.i.i.i.i.i28 = select i1 %i.ca, i32 %.1.insert.insert15.i.i.i.i.i27, i32 %i.cb
  store i32 %.v.i.i.i.i.i28, ptr %i.bt, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  call void @_ZN3ozz2io6ExternINS_4math6Float3EE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.cc, i64 noundef 1, i32 noundef 0)
  %i.cd = add nuw nsw i64 %.08.i.i.i.i26, 1       ; 2 uses
  %exitcond.not.i.i.i.i29 = icmp eq i64 %i.cd, %i.y
  br i1 %exitcond.not.i.i.i.i29, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation14TranslationKeyEEEEEvRT_.exit.i, label %.lr.ph.i.i.i.i25, !llvm.loop !124

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation14TranslationKeyEEEEEvRT_.exit.i: ; preds = %.lr.ph.i.i.i.i25, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.cf = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef i64 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull %i.f, i64 noundef 4), !inline_history !125 ; 0 uses
  %i.ck = load i8, ptr %i.j, align 8, !tbaa !31, !range !19, !noundef !20
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i32, ptr %i.f, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i.i12 = call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.cn = select i1 %i.cl, i32 %.sroa.0.0.insert.insert.i.i12, i32 %i.cm ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %i.co = zext i32 %i.cn to i64                   ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !38 ; 6 uses
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !39 ; 6 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = sdiv exact i64 %i.cu, 20                ; 8 uses
  %i.cw = icmp ult i64 %i.cv, %i.co
  br i1 %i.cw, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation14TranslationKeyEEEEEvRT_.exit.i
  %i.cx = sub nuw nsw i64 %i.co, %i.cv            ; 9 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !46
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cs
  %i.dc = sdiv exact i64 %i.db, 20                ; 2 uses
  %i.dd = sub nuw nsw i64 461168601842738790, %i.cv
  %i.de = icmp ule i64 %i.dc, %i.dd
  call void @llvm.assume(i1 %i.de)
  %.not37.i35 = icmp ult i64 %i.dc, %i.cx
  br i1 %.not37.i35, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %i.cx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.015.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.prol ], [ %i.cq, %.lr.ph.i.i.preheader ] ; 3 uses
  %.01214.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.prol ], [ %i.cx, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %.015.i.i.prol, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i.prol, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.df, align 4, !tbaa !144
  %i.dg = add nsw i64 %.01214.i.i.prol, -1        ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.015.i.i.prol, i64 20 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !126

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.prol ]
  %.015.i.i.unr = phi ptr [ %i.cq, %.lr.ph.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.prol ]
  %.01214.i.i.unr = phi i64 [ %i.cx, %.lr.ph.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.prol ]
  %4 = sub nsw i64 %i.cv, %i.co
  %5 = icmp ugt i64 %4, -8
  br i1 %5, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  %.01214.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ %.01214.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.di = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.di, align 4, !tbaa !144
  %i.dj = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 20
  %i.dk = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dk, align 4, !tbaa !144
  %i.dl = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dm, align 4, !tbaa !144
  %i.dn = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 60
  %i.do = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.do, align 4, !tbaa !144
  %i.dp = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dq, align 4, !tbaa !144
  %i.dr = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 100
  %i.ds = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ds, align 4, !tbaa !144
  %i.dt = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 120
  %i.du = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.du, align 4, !tbaa !144
  %i.dv = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 140
  %i.dw = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dw, align 4, !tbaa !144
  %i.dx = add nsw i64 %.01214.i.i, -8             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 160 ; 2 uses
  %.not.i.i.7 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit.i, label %.lr.ph.i.i, !llvm.loop !127

_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dy, %.lr.ph.i.i ]
  store ptr %.lcssa, ptr %i.cp, align 8, !tbaa !38
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %.sroa.speculated.i.i36 = call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cx)
  %i.dz = add nuw nsw i64 %.sroa.speculated.i.i36, %i.cv ; 2 uses
  %i.ea = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.eb = mul nuw nsw i64 %i.dz, 20
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = invoke noundef ptr %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, i64 noundef %i.eb, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i unwind label %bb.p ; 4 uses

bb.p:                                             ; preds = %bb.o, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #14
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i: ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.cu ; 3 uses
  %xtraiter85 = and i64 %i.cx, 7                  ; 2 uses
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.lr.ph.i41.i.prol.loopexit, label %.lr.ph.i41.i.prol

.lr.ph.i41.i.prol:                                ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i, %.lr.ph.i41.i.prol
  %.015.i42.i.prol = phi ptr [ %i.el, %.lr.ph.i41.i.prol ], [ %i.ei, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 3 uses
  %.01214.i43.i.prol = phi i64 [ %i.ek, %.lr.ph.i41.i.prol ], [ %i.cx, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ]
  %prol.iter87 = phi i64 [ %prol.iter87.next, %.lr.ph.i41.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.015.i42.i.prol, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i42.i.prol, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ej, align 4, !tbaa !144
  %i.ek = add i64 %.01214.i43.i.prol, -1          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.015.i42.i.prol, i64 20 ; 2 uses
  %prol.iter87.next = add i64 %prol.iter87, 1     ; 2 uses
  %prol.iter87.cmp.not = icmp eq i64 %prol.iter87.next, %xtraiter85
  br i1 %prol.iter87.cmp.not, label %.lr.ph.i41.i.prol.loopexit, label %.lr.ph.i41.i.prol, !llvm.loop !128

.lr.ph.i41.i.prol.loopexit:                       ; preds = %.lr.ph.i41.i.prol, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i
  %.015.i42.i.unr = phi ptr [ %i.ei, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ], [ %i.el, %.lr.ph.i41.i.prol ]
  %.01214.i43.i.unr = phi i64 [ %i.cx, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ], [ %i.ek, %.lr.ph.i41.i.prol ]
  %6 = sub nsw i64 %i.cv, %i.co
  %7 = icmp ugt i64 %6, -8
  br i1 %7, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46.i, label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph.i41.i.prol.loopexit, %.lr.ph.i41.i
  %.015.i42.i = phi ptr [ %i.fc, %.lr.ph.i41.i ], [ %.015.i42.i.unr, %.lr.ph.i41.i.prol.loopexit ] ; 17 uses
  %.01214.i43.i = phi i64 [ %i.fb, %.lr.ph.i41.i ], [ %.01214.i43.i.unr, %.lr.ph.i41.i.prol.loopexit ]
  %i.em = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i42.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.em, align 4, !tbaa !144
  %i.en = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 20
  %i.eo = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.eo, align 4, !tbaa !144
  %i.ep = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.eq, align 4, !tbaa !144
  %i.er = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 60
  %i.es = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.es, align 4, !tbaa !144
  %i.et = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 80
  %i.eu = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.eu, align 4, !tbaa !144
  %i.ev = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 100
  %i.ew = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ew, align 4, !tbaa !144
  %i.ex = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 120
  %i.ey = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ey, align 4, !tbaa !144
  %i.ez = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 140
  %i.fa = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fa, align 4, !tbaa !144
  %i.fb = add i64 %.01214.i43.i, -8               ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.015.i42.i, i64 160
  %.not.i44.i37.7 = icmp eq i64 %i.fb, 0
  br i1 %.not.i44.i37.7, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46.i, label %.lr.ph.i41.i, !llvm.loop !127

_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46.i: ; preds = %.lr.ph.i41.i, %.lr.ph.i41.i.prol.loopexit
  %.not13.i.i.i38 = icmp eq ptr %i.cr, %i.cq
  br i1 %.not13.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i, label %.lr.ph.i.i.i39

.lr.ph.i.i.i39:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46.i, %.lr.ph.i.i.i39
  %.015.i.i.i40 = phi ptr [ %i.fe, %.lr.ph.i.i.i39 ], [ %i.ef, %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46.i ] ; 2 uses
  %.sroa.010.014.i.i.i41 = phi ptr [ %i.fd, %.lr.ph.i.i.i39 ], [ %i.cr, %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.015.i.i.i40, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.014.i.i.i41, i64 20, i1 false), !tbaa.struct !146
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i41, i64 20 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.015.i.i.i40, i64 20
  %.not.i.i.i42 = icmp eq ptr %i.fd, %i.cq
  br i1 %.not.i.i.i42, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i, label %.lr.ph.i.i.i39, !llvm.loop !129

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i: ; preds = %.lr.ph.i.i.i39, %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit46.i
  %.not.i47.i = icmp eq ptr %i.cr, null
  br i1 %.not.i47.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i
  %i.ff = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.r unwind label %bb.s       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull %i.cr)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #14
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.r, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation11RotationKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit.i
  store ptr %i.ef, ptr %i.ce, align 8, !tbaa !39
  %i.fl = getelementptr inbounds nuw [20 x i8], ptr %i.ei, i64 %i.cx
  store ptr %i.fl, ptr %i.cp, align 8, !tbaa !38
  %i.fm = getelementptr inbounds nuw [20 x i8], ptr %i.ef, i64 %i.dz
  store ptr %i.fm, ptr %i.cy, align 8, !tbaa !46
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i

bb.t:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation14TranslationKeyEEEEEvRT_.exit.i
  %i.fn = icmp ugt i64 %i.cv, %i.co
  br i1 %i.fn, label %bb.u, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i

bb.u:                                             ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw [20 x i8], ptr %i.cr, i64 %i.co ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.cq, %i.fo
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.fo, ptr %i.cp, align 8, !tbaa !38
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation11RotationKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit.i, %bb.v, %bb.u, %bb.t
  %.not.i13 = icmp eq i32 %i.cn, 0
  br i1 %.not.i13, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation11RotationKeyEEEEEvRT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i
  %i.fp = load ptr, ptr %i.ce, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.fq = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = call noundef i64 %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull %i.e, i64 noundef 4), !inline_history !130 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14, %bb.w
  %.08.i.i.i.i15 = phi i64 [ %i.gf, %.lr.ph.i.i.i.i14 ], [ 0, %bb.w ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [20 x i8], ptr %i.fp, i64 %.08.i.i.i.i15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.fw = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call noundef i64 %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull %i.d, i64 noundef 4), !inline_history !131 ; 0 uses
  %i.gb = load i8, ptr %i.j, align 8, !tbaa !31, !range !19, !noundef !20
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = load i32, ptr %i.d, align 4             ; 2 uses
  %.1.insert.insert15.i.i.i.i.i16 = call i32 @llvm.bswap.i32(i32 %i.gd)
  %.v.i.i.i.i.i17 = select i1 %i.gc, i32 %.1.insert.insert15.i.i.i.i.i16, i32 %i.gd
  store i32 %.v.i.i.i.i.i17, ptr %i.fv, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  call void @_ZN3ozz2io6ExternINS_4math10QuaternionEE4LoadERNS0_8IArchiveEPS3_mj(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ge, i64 noundef 1, i32 noundef 0)
  %i.gf = add nuw nsw i64 %.08.i.i.i.i15, 1       ; 2 uses
  %exitcond.not.i.i.i.i18 = icmp eq i64 %i.gf, %i.co
  br i1 %exitcond.not.i.i.i.i18, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation11RotationKeyEEEEEvRT_.exit.i, label %.lr.ph.i.i.i.i14, !llvm.loop !132

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation11RotationKeyEEEEEvRT_.exit.i: ; preds = %.lr.ph.i.i.i.i14, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.gh = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef i64 %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull %i.i, i64 noundef 4), !inline_history !133 ; 0 uses
  %i.gm = load i8, ptr %i.j, align 8, !tbaa !31, !range !19, !noundef !20
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = load i32, ptr %i.i, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i.i = call i32 @llvm.bswap.i32(i32 %i.go)
  %i.gp = select i1 %i.gn, i32 %.sroa.0.0.insert.insert.i.i, i32 %i.go ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  %i.gq = zext i32 %i.gp to i64                   ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 4 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !43 ; 6 uses
  %i.gt = load ptr, ptr %i.gg, align 8, !tbaa !44 ; 6 uses
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 2 uses
  %i.gx = ashr exact i64 %i.gw, 4                 ; 6 uses
  %i.gy = icmp ult i64 %i.gx, %i.gq
  br i1 %i.gy, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayINS_9animation7offline12RawAnimation11RotationKeyEEEEEvRT_.exit.i
  %i.gz = sub nuw nsw i64 %i.gq, %i.gx            ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !47
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = sub i64 %i.hc, %i.gu
  %i.he = ashr exact i64 %i.hd, 4                 ; 2 uses
  %i.hf = xor i64 %i.gx, 576460752303423487
  %i.hg = icmp ule i64 %i.he, %i.hf
  call void @llvm.assume(i1 %i.hg)
  %.not37.i = icmp ult i64 %i.he, %i.gz
  br i1 %.not37.i, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit.i: ; preds = %bb.x
  %i.hh = shl nuw nsw i64 %i.gz, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gs, i8 0, i64 %i.hh, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.gs, i64 %i.hh
  store ptr %scevgep.i.i, ptr %i.gr, align 8, !tbaa !43
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE6resizeEm.exit.i

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.x
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.gx, i64 %i.gz)
  %i.hi = add nuw nsw i64 %.sroa.speculated.i.i, %i.gx ; 2 uses
  %i.hj = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.y unwind label %bb.z       ; 2 uses

bb.y:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.hk = shl nuw nsw i64 %i.hi, 4
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !24
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = invoke noundef ptr %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, i64 noundef %i.hk, i64 noundef 4)
          to label %bb.aa unwind label %bb.z      ; 4 uses

bb.z:                                             ; preds = %bb.y, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit.i
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #14
  unreachable

bb.aa:                                            ; preds = %bb.y
end_hunk_0
