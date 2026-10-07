Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_avx512?download=true
inline.NumInlined: 433
inline.NumDeleted: 260
loop-unroll.NumRuntimeUnrolled: 342
loop-unroll.NumUnrolled: 342
begin_hunk_0_@_ZNK4ncnn19BinaryOp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
_ZN4ncnnL19get_reverse_op_typeEi.exit:            ; preds = %bb.lj, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ %i.aeq, %bb.lj ]
  call fastcc void @_ZN4ncnnL19binary_op_broadcastERKNS_3MatES2_RS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.adk, i32 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.lk:                                            ; preds = %bb.li
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aeu = load i32, ptr %i.aet, align 8, !tbaa !53
  call fastcc void @_ZN4ncnnL19binary_op_broadcastERKNS_3MatES2_RS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.adk, i32 noundef %i.aeu, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %_ZN4ncnnL19get_reverse_op_typeEi.exit, %bb.lk, %bb.lg, %_ZNK4ncnn3Mat5emptyEv.exit
  %.0203 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.lk ], [ 0, %_ZN4ncnnL19get_reverse_op_typeEi.exit ], [ -100, %bb.lg ]
  %i.aev = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %.not.i391 = icmp eq ptr %i.aev, null
  br i1 %.not.i391, label %_ZN4ncnn3MatD2Ev.exit270, label %bb.ll

bb.ll:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.aew = atomicrmw add ptr %i.aev, i32 -1 acq_rel, align 4
  %i.aex = icmp eq i32 %i.aew, 1
  br i1 %i.aex, label %bb.lm, label %_ZN4ncnn3MatD2Ev.exit270

bb.lm:                                            ; preds = %bb.ll
  %i.aey = load ptr, ptr %i.bj, align 16, !tbaa !28 ; 3 uses
  %.not3.i392 = icmp eq ptr %i.aey, null
  %i.aez = load ptr, ptr %5, align 16, !tbaa !35  ; 3 uses
  br i1 %.not3.i392, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.afa = load ptr, ptr %i.aey, align 8, !tbaa !37
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 24
  %i.afc = load ptr, ptr %i.afb, align 8
  invoke void %i.afc(ptr noundef nonnull align 8 dereferenceable(8) %i.aey, ptr noundef %i.aez)
          to label %_ZN4ncnn3MatD2Ev.exit270 unwind label %bb.lq, !inline_history !0

bb.lo:                                            ; preds = %bb.lm
  %.not.i484 = icmp eq ptr %i.aez, null
  br i1 %.not.i484, label %_ZN4ncnn3MatD2Ev.exit270, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  call void @free(ptr noundef nonnull %i.aez) #10
  br label %_ZN4ncnn3MatD2Ev.exit270

bb.lq:                                            ; preds = %bb.ln
  %i.afd = landingpad { ptr, i32 }
          catch ptr null
  %i.afe = extractvalue { ptr, i32 } %i.afd, 0
  call void @__clang_call_terminate(ptr %i.afe) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit270:                         ; preds = %bb.ll, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.ln, %bb.lo, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.aff = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %.not.i395 = icmp eq ptr %i.aff, null
  br i1 %.not.i395, label %_ZN4ncnn3MatD2Ev.exit269, label %bb.lr

bb.lr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit270
  %i.afg = atomicrmw add ptr %i.aff, i32 -1 acq_rel, align 4
  %i.afh = icmp eq i32 %i.afg, 1
  br i1 %i.afh, label %bb.ls, label %_ZN4ncnn3MatD2Ev.exit269

bb.ls:                                            ; preds = %bb.lr
  %i.afi = load ptr, ptr %i.aj, align 16, !tbaa !28 ; 3 uses
  %.not3.i396 = icmp eq ptr %i.afi, null
  %i.afj = load ptr, ptr %4, align 16, !tbaa !35  ; 3 uses
  br i1 %.not3.i396, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.afk = load ptr, ptr %i.afi, align 8, !tbaa !37
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 24
  %i.afm = load ptr, ptr %i.afl, align 8
  invoke void %i.afm(ptr noundef nonnull align 8 dereferenceable(8) %i.afi, ptr noundef %i.afj)
          to label %_ZN4ncnn3MatD2Ev.exit269 unwind label %bb.lw, !inline_history !0

bb.lu:                                            ; preds = %bb.ls
  %.not.i482 = icmp eq ptr %i.afj, null
  br i1 %.not.i482, label %_ZN4ncnn3MatD2Ev.exit269, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  call void @free(ptr noundef nonnull %i.afj) #10
  br label %_ZN4ncnn3MatD2Ev.exit269

bb.lw:                                            ; preds = %bb.lt
  %i.afn = landingpad { ptr, i32 }
          catch ptr null
  %i.afo = extractvalue { ptr, i32 } %i.afn, 0
  call void @__clang_call_terminate(ptr %i.afo) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit269:                         ; preds = %bb.lr, %_ZN4ncnn3MatD2Ev.exit270, %bb.lt, %bb.lu, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.mk

bb.lx:                                            ; preds = %bb.lc, %_ZN4ncnn3MatD2Ev.exit271, %_ZN4ncnn3MatD2Ev.exit273, %_ZN4ncnn3MatD2Ev.exit275, %_ZN4ncnn3MatD2Ev.exit277, %_ZN4ncnn3MatD2Ev.exit279, %_ZN4ncnn3MatD2Ev.exit281, %_ZN4ncnn3MatD2Ev.exit283, %_ZN4ncnn3MatD2Ev.exit285, %_ZN4ncnn3MatD2Ev.exit287, %_ZN4ncnn3MatD2Ev.exit289, %_ZN4ncnn3MatD2Ev.exit291, %_ZN4ncnn3MatD2Ev.exit293
  %.pn230.pn = phi { ptr, i32 } [ %.pn, %_ZN4ncnn3MatD2Ev.exit293 ], [ %.pn228, %_ZN4ncnn3MatD2Ev.exit271 ], [ %.pn226, %_ZN4ncnn3MatD2Ev.exit273 ], [ %.pn224, %_ZN4ncnn3MatD2Ev.exit275 ], [ %.pn222, %_ZN4ncnn3MatD2Ev.exit277 ], [ %.pn220, %_ZN4ncnn3MatD2Ev.exit279 ], [ %.pn218, %_ZN4ncnn3MatD2Ev.exit281 ], [ %.pn216, %_ZN4ncnn3MatD2Ev.exit283 ], [ %.pn214, %_ZN4ncnn3MatD2Ev.exit285 ], [ %.pn212, %_ZN4ncnn3MatD2Ev.exit287 ], [ %.pn210, %_ZN4ncnn3MatD2Ev.exit289 ], [ %.pn208, %_ZN4ncnn3MatD2Ev.exit291 ], [ %i.adn, %bb.lc ]
  %i.afp = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %.not.i399 = icmp eq ptr %i.afp, null
  br i1 %.not.i399, label %_ZN4ncnn3MatD2Ev.exit268, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.afq = atomicrmw add ptr %i.afp, i32 -1 acq_rel, align 4
  %i.afr = icmp eq i32 %i.afq, 1
  br i1 %i.afr, label %bb.lz, label %_ZN4ncnn3MatD2Ev.exit268

bb.lz:                                            ; preds = %bb.ly
  %i.afs = load ptr, ptr %i.bj, align 16, !tbaa !28 ; 3 uses
  %.not3.i400 = icmp eq ptr %i.afs, null
  %i.aft = load ptr, ptr %5, align 16, !tbaa !35  ; 3 uses
  br i1 %.not3.i400, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.afu = load ptr, ptr %i.afs, align 8, !tbaa !37
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 24
  %i.afw = load ptr, ptr %i.afv, align 8
  invoke void %i.afw(ptr noundef nonnull align 8 dereferenceable(8) %i.afs, ptr noundef %i.aft)
          to label %_ZN4ncnn3MatD2Ev.exit268 unwind label %bb.md, !inline_history !0

bb.mb:                                            ; preds = %bb.lz
  %.not.i480 = icmp eq ptr %i.aft, null
  br i1 %.not.i480, label %_ZN4ncnn3MatD2Ev.exit268, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  call void @free(ptr noundef nonnull %i.aft) #10
  br label %_ZN4ncnn3MatD2Ev.exit268

bb.md:                                            ; preds = %bb.ma
  %i.afx = landingpad { ptr, i32 }
          catch ptr null
  %i.afy = extractvalue { ptr, i32 } %i.afx, 0
  call void @__clang_call_terminate(ptr %i.afy) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit268:                         ; preds = %bb.ly, %bb.lx, %bb.ma, %bb.mb, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.afz = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %.not.i403 = icmp eq ptr %i.afz, null
  br i1 %.not.i403, label %_ZN4ncnn3MatD2Ev.exit, label %bb.me

bb.me:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit268
  %i.aga = atomicrmw add ptr %i.afz, i32 -1 acq_rel, align 4
  %i.agb = icmp eq i32 %i.aga, 1
  br i1 %i.agb, label %bb.mf, label %_ZN4ncnn3MatD2Ev.exit

bb.mf:                                            ; preds = %bb.me
  %i.agc = load ptr, ptr %i.aj, align 16, !tbaa !28 ; 3 uses
  %.not3.i404 = icmp eq ptr %i.agc, null
  %i.agd = load ptr, ptr %4, align 16, !tbaa !35  ; 3 uses
  br i1 %.not3.i404, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.age = load ptr, ptr %i.agc, align 8, !tbaa !37
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 24
  %i.agg = load ptr, ptr %i.agf, align 8
  invoke void %i.agg(ptr noundef nonnull align 8 dereferenceable(8) %i.agc, ptr noundef %i.agd)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.mj, !inline_history !0

bb.mh:                                            ; preds = %bb.mf
  %.not.i478 = icmp eq ptr %i.agd, null
  br i1 %.not.i478, label %_ZN4ncnn3MatD2Ev.exit, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  call void @free(ptr noundef nonnull %i.agd) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.mj:                                            ; preds = %bb.mg
  %i.agh = landingpad { ptr, i32 }
          catch ptr null
  %i.agi = extractvalue { ptr, i32 } %i.agh, 0
  call void @__clang_call_terminate(ptr %i.agi) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.me, %_ZN4ncnn3MatD2Ev.exit268, %bb.mg, %bb.mh, %bb.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %.pn230.pn

bb.mk:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit269, %bb.d
  %.1204 = phi i32 [ %i.u, %bb.d ], [ %.0203, %_ZN4ncnn3MatD2Ev.exit269 ]
  ret i32 %.1204
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn19BinaryOp_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !22, !range !23, !noundef !24
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 5 uses
  br i1 %i.k, label %3, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

3:                                                ; preds = %bb.a
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %.tr.i = trunc i64 %i.p to i32
  %i.q = shl i32 %.tr.i, 3
  %i.r = sdiv i32 %i.q, %i.n
  %i.s = icmp eq i32 %i.r, 16
  br i1 %i.s, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = load i32, ptr %i.t, align 8, !tbaa !54
  %i.v = lshr i32 %i.u, 16
  %i.w = trunc nuw i32 %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 %i.w, ptr %i.e, align 2, !tbaa !56
  store i32 %i.y, ptr %i.f, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !29
  store i32 %i.aa, ptr %i.g, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !57
  %i.ah = mul i32 %i.ac, %i.n
  %i.ai = mul i32 %i.ah, %i.ae
  %i.aj = mul i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.h, align 4, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !58
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.al)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL30binary_op_scalar_inplace_bf16sERNS_3MatEtiRKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.e, ptr nonnull %i.h, ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %3, %_ZNK4ncnn3Mat8elembitsEv.exit
  %4 = phi i32 [ %i.n, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %3 ], [ %i.n, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.an = load float, ptr %i.am, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %i.an, ptr %i.a, align 4, !tbaa !59
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !29
  store i32 %i.ar, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !33
  %i.aw = mul nsw i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !57
  %i.az = mul nsw i32 %i.aw, %i.ay
  %i.ba = mul nsw i32 %i.az, %4
  store i32 %i.ba, ptr %i.d, align 4, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.bc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL24binary_op_scalar_inplaceERNS_3MatEfiRKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn19BinaryOp_x86_avx512C2Ev(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn8BinaryOpC2Ev(ptr noundef nonnull align 8 dereferenceable(220) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn19BinaryOp_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !71
  ret void
}

declare void @_ZN4ncnn8BinaryOpC2Ev(ptr noundef nonnull align 8 dereferenceable(220)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn19BinaryOp_x86_avx51213forward_bf16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(220) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 30 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 30 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %8 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %10 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %11 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %12 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %13 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %14 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %15 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %16 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %17 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 26 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 6 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !25
  %i.f = load i32, ptr %i.d, align 4, !tbaa !25
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.f) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.a, align 8, !tbaa !27
  store <2 x ptr> %i.k, ptr %4, align 16, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  store i64 %i.n, ptr %i.l, align 16, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 10 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  store i32 %i.q, ptr %i.o, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 15 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  store ptr %i.t, ptr %i.r, align 16, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.aa = load <4 x i32>, ptr %i.c, align 8, !tbaa !25
  store <4 x i32> %i.aa, ptr %i.u, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !29
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !30
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !30
  %.not.i281 = icmp eq ptr %i.j, null
  br i1 %.not.i281, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = atomicrmw add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.b, align 8, !tbaa !27
  store <2 x ptr> %i.al, ptr %5, align 16, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19
  store i64 %i.ao, ptr %i.am, align 16, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 7 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !18
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 15 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !28
  store ptr %i.au, ptr %i.as, align 16, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 116 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.bb = load <4 x i32>, ptr %i.d, align 8, !tbaa !25
  store <4 x i32> %i.bb, ptr %i.av, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !29
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 4 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !30
  store i64 %i.bh, ptr %i.bf, align 16, !tbaa !30
  %.not.i282 = icmp eq ptr %i.ak, null
  br i1 %.not.i282, label %_ZN4ncnn3Mat6addrefEv.exit283, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bi = atomicrmw add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit283

_ZN4ncnn3Mat6addrefEv.exit283:                    ; preds = %bb.c, %_ZN4ncnn3Mat6addrefEv.exit
  %i.bj = load i32, ptr %i.c, align 8, !tbaa !31  ; 5 uses
  %i.bk = icmp slt i32 %i.bj, %i.g
  br i1 %i.bk, label %bb.d, label %.critedge226

bb.d:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit283
  switch i32 %i.g, label %.critedge226 [
    i32 2, label %bb.e
    i32 3, label %bb.ae
    i32 4, label %bb.ce
  ]

bb.e:                                             ; preds = %bb.d
  %i.bl = load i32, ptr %i.w, align 4, !tbaa !32  ; 2 uses
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !18
  %i.bn = mul nsw i32 %i.bm, %i.bl                ; 2 uses
  %i.bo = load i32, ptr %i.az, align 8, !tbaa !33
  %i.bp = load i32, ptr %i.aq, align 8, !tbaa !18
  %i.bq = mul nsw i32 %i.bp, %i.bo
  %i.br = icmp eq i32 %i.bn, %i.bq
  br i1 %i.br, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i32 noundef 1, i32 noundef %i.bl, ptr noundef %i.bt)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %.not.i252 = icmp eq ptr %i.bv, null
  br i1 %.not.i252, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = atomicrmw add ptr %i.bv, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %.not.i393 = icmp eq ptr %i.bx, null
  br i1 %.not.i393, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = atomicrmw add ptr %i.bx, i32 -1 acq_rel, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %i.r, align 16, !tbaa !28 ; 3 uses
  %.not3.i394 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %4, align 16, !tbaa !35   ; 3 uses
  br i1 %.not3.i394, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
end_hunk_0
