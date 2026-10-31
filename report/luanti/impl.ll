Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/impl?download=true
inline.NumInlined: 2716
inline.NumDeleted: 1032
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3con7Channel15UpdateBytesSentEjj:bb.a

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !194
  %i.e = add i32 %i.d, %1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !194
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !195
  %i.h = add i32 %i.g, %2
  store i32 %i.h, ptr %i.f, align 8, !tbaa !195
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3con7Channel19UpdateBytesReceivedEj(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !196
  %i.e = add i32 %i.d, %1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !196
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3con7Channel15UpdateBytesLostEj(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !197
  %i.e = add i32 %i.d, %1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !197
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3con7Channel23UpdatePacketLossCounterEj(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !198
  %i.e = add i32 %i.d, %1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !198
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3con7Channel26UpdatePacketTooLateCounterEv(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !199
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !199
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3con7Channel12UpdateTimersEf(ptr noundef nonnull align 8 dereferenceable(512) %0, float noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 5 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !401
  %i.c = fadd nsz float %1, %i.b
  store float %i.c, ptr %i.a, align 8, !tbaa !401
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 3 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !402
  %i.f = fadd nsz float %1, %i.e                  ; 3 uses
  store float %i.f, ptr %i.d, align 4, !tbaa !402
  %i.g = fcmp nsz ogt float %i.f, 1.000000e+00
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = fadd nsz float %i.f, -1.000000e+00
  store float %i.h, ptr %i.d, align 4, !tbaa !402
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !198
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !199
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !195
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.r = load i32, ptr %i.q, align 8, !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !193
  store i32 0, ptr %i.k, align 8, !tbaa !198
  store i32 0, ptr %i.m, align 4, !tbaa !199
  store i32 0, ptr %i.o, align 8, !tbaa !195
  %i.u = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #29 ; 0 uses
  %i.v = add i32 %i.n, %i.l
  %i.w = freeze i32 %i.v
  %i.x = add i32 %i.p, -1
  %or.cond.not = icmp ult i32 %i.x, %i.w
  br i1 %or.cond.not, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.y = zext i16 %i.t to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = icmp ugt i32 %i.r, %i.z
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.thread
  %i.ab = load i16, ptr %i.s, align 8, !tbaa !193
  %i.ac = tail call i16 @llvm.umin.i16(i16 %i.ab, i16 1948)
  %narrow = add nuw nsw i16 %i.ac, 100
  br label %.sink.split

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ad = load i16, ptr %i.s, align 8, !tbaa !193
  %i.ae = tail call i16 @llvm.umax.i16(i16 %i.ad, i16 132)
  %i.af = zext i16 %i.ae to i64
  %i.ag = add nsw i64 %i.af, -100
  %.0.i.i30 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 2048)
  %i.ah = trunc nuw nsw i64 %.0.i.i30 to i16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink = phi i16 [ %i.ah, %bb.e ], [ %narrow, %bb.d ]
  store i16 %.sink, ptr %i.s, align 8, !tbaa !193
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.thread, %bb.a
  %i.ai = load float, ptr %i.a, align 8, !tbaa !401
  %i.aj = fcmp nsz ogt float %i.ai, 1.000000e+01
  br i1 %i.aj, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.al = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #29 ; 2 uses
  %.not.i.i32 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i32, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit33, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.al) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit33:        ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !194
  %i.ao = uitofp nsz i32 %i.an to float
  %i.ap = load float, ptr %i.a, align 8, !tbaa !401 ; 2 uses
  %i.aq = fdiv nsz float %i.ao, %i.ap
  %i.ar = fmul nsz float %i.aq, f0x3A800000
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  store float %i.ar, ptr %i.as, align 8, !tbaa !200
  store i32 0, ptr %i.am, align 8, !tbaa !194
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.aw = load <2 x i32>, ptr %i.av, align 4, !tbaa !46
  %i.ax = uitofp nsz <2 x i32> %i.aw to <2 x float>
  %i.ay = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv nsz <2 x float> %i.ax, %i.az
  store i32 0, ptr %i.at, align 8, !tbaa !197
  %i.bb = fmul nsz <2 x float> %i.ba, splat (float f0x3A800000) ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 1
  store float %i.bc, ptr %i.au, align 8, !tbaa !201
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  %i.be = extractelement <2 x float> %i.bb, i64 0
  store float %i.be, ptr %i.bd, align 4, !tbaa !202
  store i32 0, ptr %i.av, align 4, !tbaa !196
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !401
  %i.bf = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #29 ; 0 uses
  %i.bg = load float, ptr %i.as, align 8, !tbaa !200 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !403
  %i.bj = fcmp nsz ogt float %i.bg, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit33
  store float %i.bg, ptr %i.bh, align 4, !tbaa !403
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit33
  %i.bk = load float, ptr %i.au, align 8, !tbaa !201 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !404
  %i.bn = fcmp nsz ogt float %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %i.bk, ptr %i.bl, align 4, !tbaa !404
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bo = load float, ptr %i.bd, align 4, !tbaa !202 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !405
  %i.br = fcmp nsz ogt float %i.bo, %i.bq
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.bo, ptr %i.bp, align 8, !tbaa !405
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !406
  %i.bu = add i32 %i.bt, 1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 10) ; 3 uses
  store i32 %spec.select, ptr %i.bs, align 4, !tbaa !406
  %i.bv = add nsw i32 %spec.select, -1
  %i.bw = uitofp nsz i32 %i.bv to float
  %i.bx = uitofp nsz nneg i32 %spec.select to float
  %i.by = fdiv nsz float %i.bw, %i.bx             ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.ca = load <2 x float>, ptr %i.bz, align 4
  %i.cb = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.bk, i64 1
  %i.cd = fpext nsz <2 x float> %i.cc to <2 x double>
  %i.ce = fpext nsz float %i.by to double
  %i.cf = fsub nsz double 1.000000e+00, %i.ce     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !203
  %i.ci = insertelement <2 x float> %i.ca, float %i.ch, i64 1
  %i.cj = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul nsz <2 x float> %i.ci, %i.ck
  %i.cm = fpext nsz <2 x float> %i.cl to <2 x double>
  %i.cn = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.co, <2 x double> %i.cm)
  %i.cq = fptrunc nsz <2 x double> %i.cp to <2 x float> ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 0
  store float %i.cr, ptr %i.bz, align 4, !tbaa !204
  %i.cs = extractelement <2 x float> %i.cq, i64 1
  store float %i.cs, ptr %i.cg, align 4, !tbaa !203
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !205
  %i.cv = fmul nsz float %i.by, %i.cu
  %i.cw = fpext nsz float %i.cv to double
  %i.cx = fpext nsz float %i.bo to double
  %i.cy = tail call nsz double @llvm.fmuladd.f64(double %i.cx, double %i.cf, double %i.cw)
  %i.cz = fptrunc nsz double %i.cy to float
  store float %i.cz, ptr %i.ct, align 8, !tbaa !205
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3con10PeerHelperD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !208    ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN3con4Peer11DecUseCountEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #32
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 132 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !213  ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 880, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN3con4Peer11DecUseCountEv) #32
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.h = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.h, ptr %i.d, align 4, !tbaa !213
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !214, !range !154, !noundef !85
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = icmp eq i32 %i.h, 0
  %or.cond.i = and i1 %i.l, %i.k
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 0 uses
  br i1 %or.cond.i, label %bb.h, label %_ZN3con4Peer11DecUseCountEv.exit

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(152) %i.a) #29, !inline_history !215
  br label %_ZN3con4Peer11DecUseCountEv.exit

_ZN3con4Peer11DecUseCountEv.exit:                 ; preds = %bb.h, %bb.g, %bb.a
  ret void

bb.i:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.f, %bb.f ]
  %i.r = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3con4Peer11DecUseCountEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !213  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 880, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN3con4Peer11DecUseCountEv) #32
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.g, ptr %i.c, align 4, !tbaa !213
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !214, !range !154, !noundef !85
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = icmp eq i32 %i.g, 0
  %or.cond = and i1 %i.k, %i.j
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %0, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(152) %0) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN3con10PeerHelperaSEPNS_4PeerE(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !208    ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN3con4Peer11DecUseCountEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 132 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !213  ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 880, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN3con4Peer11DecUseCountEv) #32
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 0 uses
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.h = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.h, ptr %i.d, align 4, !tbaa !213
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !214, !range !154, !noundef !85
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = icmp eq i32 %i.h, 0
  %or.cond.i = and i1 %i.l, %i.k
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29 ; 0 uses
  br i1 %or.cond.i, label %bb.h, label %_ZN3con4Peer11DecUseCountEv.exit

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(152) %i.a) #29, !inline_history !215
  br label %_ZN3con4Peer11DecUseCountEv.exit

end_hunk_0
