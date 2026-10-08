Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/gmock-all?download=true
inline.NumInlined: 2053
inline.NumDeleted: 922
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7testing8internal18InitGoogleMockImplIcEEvPiPPT_:bb.a

bb.b:                                             ; preds = %.lr.ph71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.03170 = phi i32 [ 1, %.lr.ph71 ], [ %.132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.g = sext i32 %.03170 to i64                  ; 4 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !418
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !418
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65, !noalias !418 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = load ptr, ptr %2, align 8, !tbaa !101, !noalias !418
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br i1 %i.j, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #34, !noalias !418
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.n = phi ptr [ %i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.103, %bb.b ]
  %i.o = phi i64 [ %i.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %bb.b ]
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.n, i64 noundef %i.o)
          to label %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i unwind label %bb.d, !noalias !418 ; 0 uses

_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !101, !noalias !418 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(128) %i.q) #34, !inline_history !414
  br label %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.d:                                             ; preds = %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !101, !noalias !418 ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.d
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #34, !inline_history !414
  br label %_ZN7testing7MessageD2Ev.exit5.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZN7testing7MessageD2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZN7testing7MessageD2Ev.exit5.i ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  resume { ptr, i32 } %common.resume.op

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !418
  br label %common.resume

_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !418
  %i.z = load ptr, ptr %3, align 8, !tbaa !28     ; 3 uses
  %i.aa = invoke fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef readonly %i.z, ptr noundef nonnull @.str.131, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %.not57 = icmp eq ptr %i.aa, null
  br i1 %.not57, label %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.ab, label %bb.f [
    i8 48, label %.thread
    i8 102, label %.thread
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ne i8 %i.ab, 70
  %i.ad = zext i1 %i.ac to i8
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.e
  %.051.ph = phi i8 [ %i.ad, %bb.f ], [ 0, %bb.e ], [ 0, %bb.e ]
  store i8 %.051.ph, ptr @_ZN7testing30FLAGS_gmock_catch_leaked_mocksE, align 1, !tbaa !190
  br label %.preheader

bb.g:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %i.d, ptr %4, align 8, !tbaa !31
  %i.af = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !28 ; 2 uses
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 8), align 8, !tbaa !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !66
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc38 unwind label %bb.m   ; 2 uses

.noexc38:                                         ; preds = %.noexc.i
  store ptr %i.ai, ptr %4, align 8, !tbaa !28
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc38, %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit
  %i.ak = phi ptr [ %i.ai, %.noexc38 ], [ %i.d, %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit ] ; 2 uses
  switch i64 %i.ag, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.al = load i8, ptr %i.af, align 1, !tbaa !30
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  store i64 %i.am, ptr %i.e, align 8, !tbaa !29
  %i.an = load ptr, ptr %4, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ap = invoke fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef %i.z, ptr noundef nonnull @.str.132, i1 noundef zeroext false)
          to label %.noexc39 unwind label %bb.n   ; 3 uses

.noexc39:                                         ; preds = %bb.j
  %.not58.not = icmp eq ptr %i.ap, null           ; 2 uses
  br i1 %.not58.not, label %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc39
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !29
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #34
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.aq, ptr noundef nonnull %i.ap, i64 noundef %i.ar)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit unwind label %bb.n

bb.m:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.d
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !30
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit: ; preds = %bb.l, %.noexc39
  %i.az = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.d
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !30
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.au, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43: ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.not58.not, label %bb.o, label %.preheader

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.bd = load i32, ptr @_ZN7testing33FLAGS_gmock_default_mock_behaviorE, align 4, !tbaa !156
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !156
  %i.be = invoke fastcc noundef zeroext i1 @_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pi(ptr noundef %i.z, ptr noundef %i.b)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %i.be, label %bb.q, label %5

bb.q:                                             ; preds = %bb.p
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !156
  store i32 %i.bf, ptr @_ZN7testing33FLAGS_gmock_default_mock_behaviorE, align 4, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %.preheader

bb.r:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.t

5:                                                ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %6 = add nsw i32 %.03170, 1
  br label %bb.s

.preheader:                                       ; preds = %bb.q, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43
  %i.bh = load i32, ptr %0, align 4, !tbaa !156   ; 4 uses
  %.not3767 = icmp eq i32 %.03170, %i.bh
  br i1 %.not3767, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bi = xor i32 %.03170, -1
  %i.bj = add i32 %i.bh, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 3
  br i1 %min.iters.check, label %.lr.ph.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bl, 8589934588              ; 3 uses
  %i.bm = add nsw i64 %n.vec, %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = add i64 %index, %i.g                    ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %1, i64 %i.bn ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 24
  %wide.load = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !65
  %wide.load87 = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !65
  %i.br = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bn ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <2 x ptr> %wide.load, ptr %i.br, align 8, !tbaa !65
  store <2 x ptr> %wide.load87, ptr %i.bs, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader88

.lr.ph.preheader88:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %i.bu = add nsw i32 %i.bh, -1
  store i32 %i.bu, ptr %0, align 4, !tbaa !156
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader88, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader88 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !65
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !65
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.bh, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !416

bb.s:                                             ; preds = %5, %._crit_edge
  %.132 = phi i32 [ %.03170, %._crit_edge ], [ %6, %5 ] ; 2 uses
  %i.by = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.f
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.s
  %i.ca = load i64, ptr %i.f, align 8, !tbaa !30
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.cc = load i32, ptr %0, align 4, !tbaa !156
  %.not = icmp eq i32 %.132, %i.cc
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !417

bb.t:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn35 = phi { ptr, i32 } [ %i.bg, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %bb.g ]
  %i.cd = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.f
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.t
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !30
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %common.resume

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing14InitGoogleMockEPiPPw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleMockImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18InitGoogleMockImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  tail call void @_ZN7testing14InitGoogleTestEPiPPw(ptr noundef %0, ptr noundef %1)
  %i.c = load i32, ptr %0, align 4, !tbaa !156
  %or.cond = icmp slt i32 %i.c, 2
  br i1 %or.cond, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.03170 = phi i32 [ 1, %.lr.ph71 ], [ %.132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.g = sext i32 %.03170 to i64                  ; 4 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !425
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !425
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !427, !noalias !425
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsEPw(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.i)
          to label %bb.c unwind label %bb.e, !noalias !425

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %2, align 8, !tbaa !101, !noalias !425 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #34, !inline_history !421
  br label %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !101, !noalias !425 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i2.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i: ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(128) %i.p) #34, !inline_history !421
  br label %_ZN7testing7MessageD2Ev.exit4.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZN7testing7MessageD2Ev.exit4.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %_ZN7testing7MessageD2Ev.exit4.i ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  resume { ptr, i32 } %common.resume.op

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !425
  br label %common.resume

_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !425
  %i.t = load ptr, ptr %3, align 8, !tbaa !28     ; 3 uses
  %i.u = invoke fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef readonly %i.t, ptr noundef nonnull @.str.131, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %.not57 = icmp eq ptr %i.u, null
  br i1 %.not57, label %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.v, label %bb.g [
    i8 48, label %.thread
    i8 102, label %.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ne i8 %i.v, 70
  %i.x = zext i1 %i.w to i8
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.f
  %.051.ph = phi i8 [ %i.x, %bb.g ], [ 0, %bb.f ], [ 0, %bb.f ]
  store i8 %.051.ph, ptr @_ZN7testing30FLAGS_gmock_catch_leaked_mocksE, align 1, !tbaa !190
  br label %.preheader

bb.h:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %i.d, ptr %4, align 8, !tbaa !31
  %i.z = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !28 ; 2 uses
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 8), align 8, !tbaa !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !66
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc38 unwind label %bb.n   ; 2 uses

.noexc38:                                         ; preds = %.noexc.i
  store ptr %i.ac, ptr %4, align 8, !tbaa !28
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc38, %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit
  %i.ae = phi ptr [ %i.ac, %.noexc38 ], [ %i.d, %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit ] ; 2 uses
  switch i64 %i.aa, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %i.z, align 1, !tbaa !30
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !30
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.z, i64 %i.aa, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !29
  %i.ah = load ptr, ptr %4, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.aj = invoke fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef %i.t, ptr noundef nonnull @.str.132, i1 noundef zeroext false)
          to label %.noexc39 unwind label %bb.o   ; 3 uses

.noexc39:                                         ; preds = %bb.k
  %.not58.not = icmp eq ptr %i.aj, null           ; 2 uses
  br i1 %.not58.not, label %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc39
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !29
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #34
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ak, ptr noundef nonnull %i.aj, i64 noundef %i.al)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit unwind label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !30
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit: ; preds = %bb.m, %.noexc39
  %i.at = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit
  %i.av = load i64, ptr %i.d, align 8, !tbaa !30
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.an, %bb.n ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ao, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43: ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.not58.not, label %bb.p, label %.preheader

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.ax = load i32, ptr @_ZN7testing33FLAGS_gmock_default_mock_behaviorE, align 4, !tbaa !156
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !156
  %i.ay = invoke fastcc noundef zeroext i1 @_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pi(ptr noundef %i.t, ptr noundef %i.b)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.ay, label %bb.r, label %5

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr %i.b, align 4, !tbaa !156
  store i32 %i.az, ptr @_ZN7testing33FLAGS_gmock_default_mock_behaviorE, align 4, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %.preheader

bb.s:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.u

5:                                                ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %6 = add nsw i32 %.03170, 1
  br label %bb.t

.preheader:                                       ; preds = %bb.r, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43
  %i.bb = load i32, ptr %0, align 4, !tbaa !156   ; 4 uses
  %.not3767 = icmp eq i32 %.03170, %i.bb
  br i1 %.not3767, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bc = xor i32 %.03170, -1
  %i.bd = add i32 %i.bb, %i.bc                    ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bd, 3
  br i1 %min.iters.check, label %.lr.ph.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bf, 8589934588              ; 3 uses
  %i.bg = add nsw i64 %n.vec, %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = add i64 %index, %i.g                    ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %1, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 24
  %wide.load = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !427
  %wide.load86 = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !427
  %i.bl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bh ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x ptr> %wide.load, ptr %i.bl, align 8, !tbaa !427
  store <2 x ptr> %wide.load86, ptr %i.bm, align 8, !tbaa !427
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader87

.lr.ph.preheader87:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %i.bo = add nsw i32 %i.bb, -1
  store i32 %i.bo, ptr %0, align 4, !tbaa !156
  br label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader87, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader87 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !427
  %i.br = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !427
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.bb, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !423

bb.t:                                             ; preds = %5, %._crit_edge
  %.132 = phi i32 [ %.03170, %._crit_edge ], [ %6, %5 ] ; 2 uses
  %i.bs = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.f
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.t
  %i.bu = load i64, ptr %i.f, align 8, !tbaa !30
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bw = load i32, ptr %0, align 4, !tbaa !156
  %.not = icmp eq i32 %.132, %i.bw
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !424

bb.u:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn35 = phi { ptr, i32 } [ %i.ba, %bb.s ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %bb.h ]
  %i.bx = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.f
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.u
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !30
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %common.resume

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing14InitGoogleMockEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i32 1, ptr %i.a, align 4, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr @.str.80, ptr %i.b, align 8, !tbaa !65
  call void @_ZN7testing8internal18InitGoogleMockImplIcEEvPiPPT_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing20CardinalityInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing12_GLOBAL__N_122BetweenCardinalityImplD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl22ConservativeLowerBoundEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl22ConservativeUpperBoundEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl22IsSatisfiedByCallCountEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %.not = icmp sle i32 %i.b, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sle i32 %1, %i.d
  %i.f = select i1 %.not, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl22IsSaturatedByCallCountEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  %i.c = icmp sge i32 %1, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl10DescribeToEPSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44   ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  switch i32 %i.e, label %bb.e [
    i32 0, label %bb.c
    i32 2147483647, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 12) ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.91, i64 noundef 26) ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.92, i64 noundef 15) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.i = load i32, ptr %i.d, align 4, !tbaa !44
  call fastcc void @_ZN7testing12_GLOBAL__N_111FormatTimesB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %2, i32 noundef %i.i)
  %i.j = load ptr, ptr %2, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.n = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.y = icmp eq i32 %i.b, %i.e
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !43
  call fastcc void @_ZN7testing12_GLOBAL__N_111FormatTimesB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %3, i32 noundef %i.aa)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit16 unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit16: ; preds = %bb.h
  %i.af = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit16
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !30
  %i.aj = add i64 %i.ai, 1
end_hunk_0
