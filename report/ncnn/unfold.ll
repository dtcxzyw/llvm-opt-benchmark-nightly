Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unfold?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn6Unfold7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ad = load i32, ptr %i.j, align 4, !tbaa !53
  %i.ae = load <2 x i32>, ptr %i.j, align 4, !tbaa !43
  %i.af = load <2 x i32>, ptr %i.z, align 8, !tbaa !43
  %i.ag = load <2 x i32>, ptr %i.aa, align 8, !tbaa !43 ; 3 uses
  %i.ah = add nsw <2 x i32> %i.ag, splat (i32 -1)
  %i.ai = mul nsw <2 x i32> %i.ah, %i.af
  %i.aj = xor <2 x i32> %i.ai, splat (i32 -1)
  %i.ak = add <2 x i32> %i.ae, %i.aj
  %i.al = load <2 x i32>, ptr %i.ab, align 8, !tbaa !43
  %i.am = sdiv <2 x i32> %i.ak, %i.al
  %i.an = add nsw <2 x i32> %i.am, splat (i32 1)  ; 2 uses
  %i.ao = extractelement <2 x i32> %i.an, i64 0   ; 3 uses
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !43
  %i.ap = extractelement <2 x i32> %i.an, i64 1   ; 2 uses
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !43
  %i.aq = mul nsw i32 %i.ap, %i.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.ar = extractelement <2 x i32> %i.ag, i64 0
  %i.as = extractelement <2 x i32> %i.ag, i64 1
  %i.at = mul nsw i32 %i.as, %i.ar                ; 2 uses
  store i32 %i.at, ptr %i.d, align 4, !tbaa !43
  %i.au = mul nsw i32 %i.at, %i.u
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !49
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.aq, i32 noundef %i.au, i64 noundef %i.y, ptr noundef %i.aw)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %2, align 8, !tbaa !50
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !51
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %i.ba, %i.bd
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.o

bb.g:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.bh = load i32, ptr %i.ac, align 4, !tbaa !33
  %i.bi = mul nsw i32 %i.bh, %i.ad
  %i.bj = load i32, ptr %i.ab, align 8, !tbaa !32
  %i.bk = mul nsw i32 %i.bj, %i.ao
  %i.bl = sub nsw i32 %i.bi, %i.bk
  store i32 %i.bl, ptr %i.e, align 4, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !62
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.bn)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn6Unfold7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %4, ptr nonnull %2, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.e, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit24.thread, %_ZNK4ncnn3Mat5emptyEv.exit24, %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %.2 = phi i32 [ %.1, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit24 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit24.thread ]
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !54  ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = atomicrmw add ptr %i.bo, i32 -1 acq_rel, align 4
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit25

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !55  ; 3 uses
  %.not3.i = icmp eq ptr %i.br, null
  %i.bs = load ptr, ptr %4, align 8, !tbaa !50    ; 3 uses
  br i1 %.not3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bs)
          to label %_ZN4ncnn3MatD2Ev.exit25 unwind label %bb.n, !inline_history !60

bb.l:                                             ; preds = %bb.j
  %.not.i31 = icmp eq ptr %i.bs, null
  br i1 %.not.i31, label %_ZN4ncnn3MatD2Ev.exit25, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.bs) #6
  br label %_ZN4ncnn3MatD2Ev.exit25

bb.n:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit25:                          ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.2

bb.o:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.f ], [ %i.s, %bb.c ]
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !54  ; 2 uses
  %.not.i26 = icmp eq ptr %i.by, null
  br i1 %.not.i26, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = atomicrmw add ptr %i.by, i32 -1 acq_rel, align 4
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !55  ; 3 uses
  %.not3.i27 = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %4, align 8, !tbaa !50    ; 3 uses
  br i1 %.not3.i27, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %i.cc)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.u, !inline_history !60

bb.s:                                             ; preds = %bb.q
  %.not.i30 = icmp eq ptr %i.cc, null
  br i1 %.not.i30, label %_ZN4ncnn3MatD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.cc) #6
  br label %_ZN4ncnn3MatD2Ev.exit

bb.u:                                             ; preds = %bb.r
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.p, %bb.o, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn6UnfoldC2Ev(ptr noundef nonnull align 8 dereferenceable(252) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn6UnfoldE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !63
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4ncnn6Unfold12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(252) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %5 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %6 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %7 = load <2 x i32>, ptr %i.a, align 4, !tbaa !43
  %8 = freeze <2 x i32> %7                        ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load <2 x i32>, ptr %9, align 8, !tbaa !43
  %i.c = load <2 x i32>, ptr %10, align 8, !tbaa !43
  %i.d = add nsw <2 x i32> %i.c, splat (i32 -1)
  %i.e = mul nsw <2 x i32> %i.d, %i.b             ; 2 uses
  %i.f = icmp eq ptr %2, %1
  br i1 %i.f, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = atomicrmw add ptr %i.k, i32 -1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %2, align 8, !tbaa !50     ; 3 uses
  br i1 %.not3.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p), !inline_history !64
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i18.i = icmp eq ptr %i.p, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.p) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.h, %bb.i, %bb.g, %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.y = load <2 x ptr>, ptr %1, align 8, !tbaa !65
  store <2 x ptr> %i.y, ptr %2, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !66
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load <4 x i32>, ptr %i.ag, align 8, !tbaa !43
  store <4 x i32> %i.ah, ptr %i.v, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !51
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41
  store i64 %i.al, ptr %i.x, align 8, !tbaa !41
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.a, %_ZN4ncnn3Mat7releaseEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.an = load i32, ptr %i.am, align 8, !tbaa !34 ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 236
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !35 ; 4 uses
  %i.ap = icmp sgt i32 %.pre, 0
  %or.cond67 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond67, label %_ZN4ncnn3MataSERKS0_.exit._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !36 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZN4ncnn3MataSERKS0_.exit._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.au = load i32, ptr %i.at, align 4, !tbaa !37 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %_ZN4ncnn3MataSERKS0_.exit._crit_edge, label %bb.l

_ZN4ncnn3MataSERKS0_.exit._crit_edge:             ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !46
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.be = load float, ptr %i.bd, align 8, !tbaa !38
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ba, i32 noundef %i.bc, i32 noundef %i.an, i32 noundef %.pre, i32 noundef 0, float noundef nofpclass(nan inf) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp eq i32 %i.an, -233
  %i.bg = icmp eq i32 %.pre, -233
  %or.cond52 = and i1 %i.bf, %i.bg
  %i.bh = icmp eq i32 %i.ar, -233
  %or.cond53 = and i1 %or.cond52, %i.bh
  %i.bi = icmp eq i32 %i.au, -233
  %or.cond54 = and i1 %or.cond53, %i.bi
  br i1 %or.cond54, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bj = add nsw <2 x i32> %8, splat (i32 -1)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bl = load <2 x i32>, ptr %i.bk, align 8, !tbaa !43
  %i.bm = srem <2 x i32> %i.bj, %i.bl
  %i.bn = sub <2 x i32> %i.e, %i.bm               ; 4 uses
  %11 = extractelement <2 x i32> %i.bn, i64 0
  %12 = icmp sgt i32 %11, 0
  %13 = extractelement <2 x i32> %i.bn, i64 1
  %14 = icmp sgt i32 %13, 0
  %or.cond = select i1 %12, i1 true, i1 %14
  br i1 %or.cond, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !46
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !49
  %i.br = sdiv <2 x i32> %i.bn, splat (i32 2)     ; 3 uses
  %i.bs = sub nsw <2 x i32> %i.bn, %i.br          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !38
  %i.bv = extractelement <2 x i32> %i.bs, i64 0
  %i.bw = extractelement <2 x i32> %i.bs, i64 1
  %i.bx = extractelement <2 x i32> %i.br, i64 0
  %i.by = extractelement <2 x i32> %i.br, i64 1
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.by, i32 noundef %i.bw, i32 noundef %i.bx, i32 noundef %i.bv, i32 noundef 0, float noundef nofpclass(nan inf) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.bz = icmp eq i32 %i.an, -234
  %i.ca = icmp eq i32 %.pre, -234
  %or.cond55 = and i1 %i.bz, %i.ca
  %i.cb = icmp eq i32 %i.ar, -234
  %or.cond56 = and i1 %or.cond55, %i.cb
  %i.cc = icmp eq i32 %i.au, -234
  %or.cond57 = and i1 %or.cond56, %i.cc
  br i1 %or.cond57, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ce = add <2 x i32> %8, splat (i32 -1)
  %i.cf = load <2 x i32>, ptr %i.cd, align 8, !tbaa !43
  %i.cg = srem <2 x i32> %i.ce, %i.cf
  %i.ch = sub <2 x i32> %i.e, %i.cg               ; 3 uses
  %i.ci = icmp sgt <2 x i32> %i.ch, zeroinitializer ; 2 uses
  %i.cj = extractelement <2 x i1> %i.ci, i64 0
  %i.ck = extractelement <2 x i1> %i.ci, i64 1
  %or.cond3 = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !46
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !48
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !49
  %i.co = sdiv <2 x i32> %i.ch, splat (i32 2)     ; 3 uses
  %i.cp = sub nsw <2 x i32> %i.ch, %i.co          ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !38
  %i.cs = extractelement <2 x i32> %i.cp, i64 0
  %i.ct = extractelement <2 x i32> %i.cp, i64 1
  %i.cu = extractelement <2 x i32> %i.co, i64 0
  %i.cv = extractelement <2 x i32> %i.co, i64 1
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ct, i32 noundef %i.cv, i32 noundef %i.cs, i32 noundef %i.cu, i32 noundef 0, float noundef nofpclass(nan inf) %i.cr, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.o, %_ZN4ncnn3MataSERKS0_.exit._crit_edge
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn6Unfold7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !43
  %i.h = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !43
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %.not78 = icmp sgt i32 %i.k, %i.j
  br i1 %.not78, label %._crit_edge.split82, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53, !noalias !74
  %i.n = load ptr, ptr %3, align 8, !tbaa !50, !noalias !74
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !74
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !52, !noalias !74 ; 2 uses
  %factor.op.mul = mul i64 %i.p, %i.r
  %i.s = sext i32 %i.m to i64
  %i.t = load i32, ptr %5, align 4, !tbaa !43
  %i.u = load ptr, ptr %4, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !52
  %factor.op.mul80 = mul i64 %i.z, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.ae = mul i64 %i.r, %i.s
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 224
  br i1 %i.ac, label %.noexc.lr.ph.split, label %._crit_edge.split82

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.noexc.lr.ph.split.split, label %._crit_edge.split82

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !31
  %i.al = load i32, ptr %i.af, align 8, !tbaa !30
  %i.am = load i32, ptr %7, align 4, !tbaa !43    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.noexc.lr.ph.split.split.split.us, label %._crit_edge.split82

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.ao = load i32, ptr %8, align 4, !tbaa !43    ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  %i.aq = load i32, ptr %9, align 4, !tbaa !43
  %i.ar = sext i32 %i.aq to i64
  br i1 %i.ap, label %.noexc.lr.ph.split.split.split.us.split.us, label %._crit_edge.split82

.noexc.lr.ph.split.split.split.us.split.us:       ; preds = %.noexc.lr.ph.split.split.split.us
  %i.as = load i32, ptr %i.ag, align 8, !tbaa !32
  %i.at = sext i32 %i.as to i64                   ; 10 uses
  %i.au = sext i32 %i.al to i64
  %i.av = sext i32 %i.ak to i64
  %i.aw = sext i32 %i.k to i64
  %i.ax = sext i32 %i.t to i64
  %i.ay = add nsw i32 %i.j, 1
  %factor.op.mul114 = mul i64 %factor.op.mul80, %i.ax
  %wide.trip.count99 = zext nneg i32 %i.ab to i64
  %factor.op.mul113 = mul i64 %i.ae, %i.av
  %wide.trip.count = zext nneg i32 %i.ai to i64
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.az = icmp ult i32 %i.ao, 8
  %unroll_iter = and i32 %i.ao, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod120 = icmp ne i32 %xtraiter, 0
  br label %.noexc.us.us

.noexc.us.us:                                     ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split77.us.split.us.us.us, %.noexc.lr.ph.split.split.split.us.split.us
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split77.us.split.us.us.us ], [ %i.aw, %.noexc.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv101
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us.us
  %.reass115 = mul i64 %indvars.iv101, %factor.op.mul114
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 %.reass115
  br label %.preheader51.us.us.us.us

.preheader51.us.us.us.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc.us.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %._crit_edge.split.us.split.us.us.us.us.us ], [ 0, %.noexc.us.us ] ; 2 uses
  %.03970.us.us.us.us = phi ptr [ %.lcssa, %._crit_edge.split.us.split.us.us.us.us.us ], [ %i.bb, %.noexc.us.us ]
  %.reass = mul i64 %indvars.iv96, %factor.op.mul113
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.reass
  br label %.preheader.lr.ph.us.us.us.us.us.us

.preheader.lr.ph.us.us.us.us.us.us:               ; preds = %._crit_edge59.split.us.us.us.us.us.us.us, %.preheader51.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge59.split.us.us.us.us.us.us.us ], [ 0, %.preheader51.us.us.us.us ] ; 2 uses
  %.14061.us.us.us.us.us.us = phi ptr [ %.lcssa, %._crit_edge59.split.us.us.us.us.us.us.us ], [ %.03970.us.us.us.us, %.preheader51.us.us.us.us ]
  %i.bd = mul nsw i64 %indvars.iv, %i.au
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  br label %.preheader.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us.us
  %.03558.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us.us.us.us.us ], [ %i.cj, %._crit_edge.us.us.us.us.us.us.us ]
  %.03657.us.us.us.us.us.us.us = phi ptr [ %i.be, %.preheader.lr.ph.us.us.us.us.us.us ], [ %i.ci, %._crit_edge.us.us.us.us.us.us.us ] ; 2 uses
  %.256.us.us.us.us.us.us.us = phi ptr [ %.14061.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us.us ], [ %.lcssa, %._crit_edge.us.us.us.us.us.us.us ] ; 2 uses
  br i1 %i.az, label %.epil.preheader, label %.preheader.us.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.us.new:              ; preds = %.preheader.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.new
  %.153.us.us.us.us.us.us.us = phi ptr [ %i.cb, %.preheader.us.us.us.us.us.us.us.new ], [ %.03657.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ] ; 2 uses
  %.352.us.us.us.us.us.us.us = phi ptr [ %i.cc, %.preheader.us.us.us.us.us.us.us.new ], [ %.256.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.preheader.us.us.us.us.us.us.us.new ], [ 0, %.preheader.us.us.us.us.us.us.us ]
  %i.bf = load float, ptr %.153.us.us.us.us.us.us.us, align 4, !tbaa !75
  store float %i.bf, ptr %.352.us.us.us.us.us.us.us, align 4, !tbaa !75
  %i.bg = getelementptr inbounds [4 x i8], ptr %.153.us.us.us.us.us.us.us, i64 %i.at ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 4
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !75
  store float %i.bi, ptr %i.bh, align 4, !tbaa !75
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.at ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 8
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !75
  store float %i.bl, ptr %i.bk, align 4, !tbaa !75
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.at ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 12
  %i.bo = load float, ptr %i.bm, align 4, !tbaa !75
  store float %i.bo, ptr %i.bn, align 4, !tbaa !75
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.at ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 16
  %i.br = load float, ptr %i.bp, align 4, !tbaa !75
  store float %i.br, ptr %i.bq, align 4, !tbaa !75
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.at ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 20
  %i.bu = load float, ptr %i.bs, align 4, !tbaa !75
  store float %i.bu, ptr %i.bt, align 4, !tbaa !75
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.at ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 24
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !75
  store float %i.bx, ptr %i.bw, align 4, !tbaa !75
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.at ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 28
  %i.ca = load float, ptr %i.by, align 4, !tbaa !75
  store float %i.ca, ptr %i.bz, align 4, !tbaa !75
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.at ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.352.us.us.us.us.us.us.us, i64 32 ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
end_hunk_0
