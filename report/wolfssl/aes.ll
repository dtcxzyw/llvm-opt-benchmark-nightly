Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/aes?download=true
inline.NumInlined: 97
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 73
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@wc_AesSetKey:bb.a
  %i.aid = zext nneg i32 %i.aic to i64
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Td, i64 1024), i64 %i.aid
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !15
  %i.aig = xor i32 %i.aif, %i.ahw
  %i.aih = lshr i32 %i.aho, 8
  %i.aii = and i32 %i.aih, 255
  %i.aij = zext nneg i32 %i.aii to i64
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Te, i64 1024), i64 %i.aij
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !15
  %i.aim = and i32 %i.ail, 255
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Td, i64 2048), i64 %i.ain
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !15
  %i.aiq = xor i32 %i.aig, %i.aip
  %i.air = and i32 %i.aho, 255
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Te, i64 1024), i64 %i.ais
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !15
  %i.aiv = and i32 %i.aiu, 255
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Td, i64 3072), i64 %i.aiw
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !15
  %i.aiz = xor i32 %i.aiq, %i.aiy
  store i32 %i.aiz, ptr %i.ahn, align 4, !tbaa !15
  %i.aja = getelementptr inbounds nuw i8, ptr %.3137188.i.i, i64 28 ; 2 uses
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !15 ; 4 uses
  %i.ajc = lshr i32 %i.ajb, 24
  %i.ajd = zext nneg i32 %i.ajc to i64
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Te, i64 1024), i64 %i.ajd
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !15
  %i.ajg = and i32 %i.ajf, 255
  %i.ajh = zext nneg i32 %i.ajg to i64
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr @Td, i64 %i.ajh
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !15
  %i.ajk = lshr i32 %i.ajb, 16
  %i.ajl = and i32 %i.ajk, 255
  %i.ajm = zext nneg i32 %i.ajl to i64
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Te, i64 1024), i64 %i.ajm
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !15
  %i.ajp = and i32 %i.ajo, 255
  %i.ajq = zext nneg i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Td, i64 1024), i64 %i.ajq
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !15
  %i.ajt = xor i32 %i.ajs, %i.ajj
  %i.aju = lshr i32 %i.ajb, 8
  %i.ajv = and i32 %i.aju, 255
  %i.ajw = zext nneg i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Te, i64 1024), i64 %i.ajw
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !15
  %i.ajz = and i32 %i.ajy, 255
  %i.aka = zext nneg i32 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Td, i64 2048), i64 %i.aka
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !15
  %i.akd = xor i32 %i.ajt, %i.akc
  %i.ake = and i32 %i.ajb, 255
  %i.akf = zext nneg i32 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Te, i64 1024), i64 %i.akf
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !15
  %i.aki = and i32 %i.akh, 255
  %i.akj = zext nneg i32 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @Td, i64 3072), i64 %i.akj
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !15
  %i.akm = xor i32 %i.akd, %i.akl
  store i32 %i.akm, ptr %i.aja, align 4, !tbaa !15
  %i.akn = add nuw i32 %.4189.i.i, 1              ; 2 uses
  %i.ako = load i32, ptr %i.f, align 16, !tbaa !14
  %i.akp = icmp ult i32 %i.akn, %i.ako
  br i1 %i.akp, label %.lr.ph190.i.i, label %wc_AesSetKeyLocal.exit, !llvm.loop !30

wc_AesSetKeyLocal.exit:                           ; preds = %.lr.ph190.i.i, %ForceZero.exit158.i.i, %ForceZero.exit.i.i, %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -173, %bb.b ], [ 0, %ForceZero.exit.i.i ], [ 0, %ForceZero.exit158.i.i ], [ 0, %.lr.ph190.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_AesSetIV(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 -226, 1) i32 @wc_AesCbcEncrypt(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %3, 4                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %.not41 = icmp eq i32 %i.f, 0
  br i1 %.not41, label %xorbuf.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 9 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = and i64 %i.h, 7
  %.not58.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.in = phi i32 [ %i.f, %.lr.ph ], [ %i.k, %bb.f ]
  %.02243 = phi ptr [ %2, %.lr.ph ], [ %i.de, %bb.f ] ; 8 uses
  %.02342 = phi ptr [ %1, %.lr.ph ], [ %i.dd, %bb.f ] ; 2 uses
  %i.k = add nsw i32 %.in, -1                     ; 2 uses
  %i.l = ptrtoint ptr %.02243 to i64              ; 2 uses
  %i.m = or i64 %i.l, %i.h
  %i.n = and i64 %i.m, 7
  %or.cond.i = icmp eq i64 %i.n, 0
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %bb.e

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.o = load i64, ptr %.02243, align 8, !tbaa !20
  %i.p = load i64, ptr %i.g, align 8, !tbaa !20
  %i.q = xor i64 %i.p, %i.o
  store i64 %i.q, ptr %i.g, align 8, !tbaa !20
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %.02243, i64 8
  %i.r = load i64, ptr %.ptr.1, align 8, !tbaa !20
  %i.s = load i64, ptr %i.j, align 8, !tbaa !20
  %i.t = xor i64 %i.s, %i.r
  store i64 %i.t, ptr %i.j, align 8, !tbaa !20
  br label %xorbuf.exit

bb.e:                                             ; preds = %bb.d
  %i.u = xor i64 %i.l, %i.h
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.preheader.i, label %iter.check

.preheader.i:                                     ; preds = %bb.e
  br i1 %.not58.i, label %._crit_edge.i.thread, label %.lr.ph.i

._crit_edge.i.thread:                             ; preds = %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %.02243, i64 16
  br label %.lr.ph.i32.i.preheader

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.048.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.02243, %.preheader.i ] ; 2 uses
  %.02247.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.g, %.preheader.i ] ; 3 uses
  %.02546.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 16, %.preheader.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.048.i, i64 1 ; 4 uses
  %i.z = load i8, ptr %.048.i, align 1, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %.02247.i, i64 1 ; 4 uses
  %i.ab = load i8, ptr %.02247.i, align 1, !tbaa !21
  %i.ac = xor i8 %i.ab, %i.z
  store i8 %i.ac, ptr %.02247.i, align 1, !tbaa !21
  %i.ad = add nsw i32 %.02546.i, -1               ; 6 uses
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = and i64 %i.ae, 7
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = icmp ne i32 %i.ad, 0
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aj = and i32 %i.ad, -8
  %.idx.i30.i = zext i32 %i.aj to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i30.i
  %.not.i31.i = icmp ult i32 %i.ad, 8
  br i1 %.not.i31.i, label %XorWords.exit.i, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.al = phi ptr [ %i.x, %._crit_edge.i.thread ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  %.0.lcssa.i68 = phi ptr [ %.02243, %._crit_edge.i.thread ], [ %i.y, %._crit_edge.i ] ; 7 uses
  %.022.lcssa.i67 = phi ptr [ %i.g, %._crit_edge.i.thread ], [ %i.aa, %._crit_edge.i ] ; 6 uses
  %.025.lcssa.i65 = phi i32 [ 16, %._crit_edge.i.thread ], [ %i.ad, %._crit_edge.i ] ; 2 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %.0.lcssa.i6895 = ptrtoaddr ptr %.0.lcssa.i68 to i64 ; 2 uses
  %i.an = add nuw i64 %.0.lcssa.i6895, 8
  %i.ao = call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ap = xor i64 %.0.lcssa.i6895, -1
  %i.aq = add i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check102 = icmp ult i64 %i.aq, 56
  br i1 %min.iters.check102, label %.lr.ph.i32.i.preheader118, label %vector.memcheck93

vector.memcheck93:                                ; preds = %.lr.ph.i32.i.preheader
  %i.at = and i64 %i.aq, -8
  %4 = add i64 %i.at, 8                           ; 2 uses
  %scevgep97 = getelementptr i8, ptr %.022.lcssa.i67, i64 %4
  %scevgep98 = getelementptr i8, ptr %.0.lcssa.i68, i64 %4
  %bound099 = icmp ult ptr %.022.lcssa.i67, %scevgep98
  %bound1100 = icmp ult ptr %.0.lcssa.i68, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i32.i.preheader118, label %vector.ph103

vector.ph103:                                     ; preds = %vector.memcheck93
  %n.vec104 = and i64 %i.as, 4611686018427387900  ; 3 uses
  %i.au = shl i64 %n.vec104, 3                    ; 2 uses
  %i.av = getelementptr i8, ptr %.022.lcssa.i67, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %.0.lcssa.i68, i64 %i.au ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next113, %vector.body105 ] ; 2 uses
  %i.ax = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %.022.lcssa.i67, i64 %i.ax ; 3 uses
  %next.gep108 = getelementptr i8, ptr %.0.lcssa.i68, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep108, align 8, !tbaa !20, !alias.scope !44
  %wide.load110 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !20, !alias.scope !44
  %i.az = getelementptr i8, ptr %next.gep107, i64 16 ; 2 uses
  %wide.load111 = load <2 x i64>, ptr %next.gep107, align 8, !tbaa !20, !alias.scope !45, !noalias !44
  %wide.load112 = load <2 x i64>, ptr %i.az, align 8, !tbaa !20, !alias.scope !45, !noalias !44
  %i.ba = xor <2 x i64> %wide.load111, %wide.load109
  %i.bb = xor <2 x i64> %wide.load112, %wide.load110
  store <2 x i64> %i.ba, ptr %next.gep107, align 8, !tbaa !20, !alias.scope !45, !noalias !44
  store <2 x i64> %i.bb, ptr %i.az, align 8, !tbaa !20, !alias.scope !45, !noalias !44
  %index.next113 = add nuw i64 %index106, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next113, %n.vec104
  br i1 %i.bc, label %middle.block114, label %vector.body105, !llvm.loop !35

middle.block114:                                  ; preds = %vector.body105
  %cmp.n115 = icmp eq i64 %i.as, %n.vec104
  br i1 %cmp.n115, label %XorWords.exit.i, label %.lr.ph.i32.i.preheader118

.lr.ph.i32.i.preheader118:                        ; preds = %vector.memcheck93, %.lr.ph.i32.i.preheader, %middle.block114
  %.sroa.039.2.i.ph = phi ptr [ %.022.lcssa.i67, %vector.memcheck93 ], [ %.022.lcssa.i67, %.lr.ph.i32.i.preheader ], [ %i.av, %middle.block114 ]
  %.ph = phi ptr [ %.0.lcssa.i68, %vector.memcheck93 ], [ %.0.lcssa.i68, %.lr.ph.i32.i.preheader ], [ %i.aw, %middle.block114 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader118, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.bg, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader118 ] ; 3 uses
  %i.bd = phi ptr [ %i.be, %.lr.ph.i32.i ], [ %.ph, %.lr.ph.i32.i.preheader118 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8 ; 2 uses
  %i.bh = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.bi = xor i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.bj = icmp ult ptr %i.be, %i.al
  br i1 %i.bj, label %.lr.ph.i32.i, label %XorWords.exit.i, !llvm.loop !36

XorWords.exit.i:                                  ; preds = %.lr.ph.i32.i, %middle.block114, %._crit_edge.i
  %.025.lcssa.i66 = phi i32 [ %i.ad, %._crit_edge.i ], [ %.025.lcssa.i65, %middle.block114 ], [ %.025.lcssa.i65, %.lr.ph.i32.i ]
  %.123.i = phi ptr [ %i.aa, %._crit_edge.i ], [ %i.av, %middle.block114 ], [ %i.bg, %.lr.ph.i32.i ]
  %.1.i = phi ptr [ %i.y, %._crit_edge.i ], [ %i.aw, %middle.block114 ], [ %i.be, %.lr.ph.i32.i ]
  %i.bk = and i32 %.025.lcssa.i66, 7              ; 2 uses
  %.not51.i = icmp eq i32 %i.bk, 0
  br i1 %.not51.i, label %xorbuf.exit, label %iter.check

iter.check:                                       ; preds = %XorWords.exit.i, %bb.e
  %.172.i = phi ptr [ %.1.i, %XorWords.exit.i ], [ %.02243, %bb.e ] ; 8 uses
  %.12371.i = phi ptr [ %.123.i, %XorWords.exit.i ], [ %i.g, %bb.e ] ; 9 uses
  %.12670.i = phi i32 [ %i.bk, %XorWords.exit.i ], [ 16, %bb.e ] ; 8 uses
  %i.bl = zext nneg i32 %.12670.i to i64          ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.12670.i, 4
  br i1 %min.iters.check, label %.lr.ph56.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bm = zext nneg i32 %.12670.i to i64          ; 2 uses
  %scevgep78 = getelementptr i8, ptr %.12371.i, i64 %i.bm
  %scevgep79 = getelementptr i8, ptr %.172.i, i64 %i.bm
  %bound0 = icmp ult ptr %.12371.i, %scevgep79
  %bound1 = icmp ult ptr %.172.i, %scevgep78
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check80 = icmp samesign ult i32 %.12670.i, 16
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %i.bl, 4
  %n.vec = and i64 %i.bl, 16                      ; 5 uses
  %i.bo = getelementptr i8, ptr %.172.i, i64 %n.vec
  %i.bp = getelementptr i8, ptr %.12371.i, i64 %n.vec
  %i.bq = trunc nuw nsw i64 %n.vec to i32
  %i.br = sub nsw i32 %.12670.i, %i.bq
  %wide.load = load <16 x i8>, ptr %.172.i, align 1, !tbaa !21, !alias.scope !46
  %wide.load82 = load <16 x i8>, ptr %.12371.i, align 1, !tbaa !21, !alias.scope !47, !noalias !46
  %i.bs = xor <16 x i8> %wide.load82, %wide.load
  store <16 x i8> %i.bs, ptr %.12371.i, align 1, !tbaa !21, !alias.scope !47, !noalias !46
  %cmp.n = icmp eq i64 %n.vec, %i.bl
  br i1 %cmp.n, label %xorbuf.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph56.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %i.bl, 20                    ; 5 uses
  %i.bt = getelementptr i8, ptr %.172.i, i64 %n.vec83
  %i.bu = getelementptr i8, ptr %.12371.i, i64 %n.vec83
  %i.bv = trunc nuw nsw i64 %n.vec83 to i32
  %i.bw = sub nsw i32 %.12670.i, %i.bv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 3 uses
  %next.gep85 = getelementptr i8, ptr %.172.i, i64 %index84
  %next.gep86 = getelementptr i8, ptr %.12371.i, i64 %index84 ; 2 uses
  %wide.load87 = load <4 x i8>, ptr %next.gep85, align 1, !tbaa !21, !alias.scope !46
  %wide.load88 = load <4 x i8>, ptr %next.gep86, align 1, !tbaa !21, !alias.scope !47, !noalias !46
  %i.bx = xor <4 x i8> %wide.load88, %wide.load87
  store <4 x i8> %i.bx, ptr %next.gep86, align 1, !tbaa !21, !alias.scope !47, !noalias !46
  %index.next89 = add nuw i64 %index84, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %n.vec83, %i.bl
  br i1 %cmp.n90, label %xorbuf.exit, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.i.ph = phi ptr [ %.172.i, %iter.check ], [ %.172.i, %vector.memcheck ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 2 uses
  %.22453.i.ph = phi ptr [ %.12371.i, %iter.check ], [ %.12371.i, %vector.memcheck ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ] ; 2 uses
  %.22752.i.ph = phi i32 [ %.12670.i, %iter.check ], [ %.12670.i, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ] ; 4 uses
  %i.bz = add nsw i32 %.22752.i.ph, -1
  %xtraiter = and i32 %.22752.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.ca, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.cc, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.cf, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.cb = load i8, ptr %.254.i.prol, align 1, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.cd = load i8, ptr %.22453.i.prol, align 1, !tbaa !21
  %i.ce = xor i8 %i.cd, %i.cb
  store i8 %i.ce, ptr %.22453.i.prol, align 1, !tbaa !21
  %i.cf = add nsw i32 %.22752.i.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !41

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.ca, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.cc, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.cf, %.lr.ph56.i.prol ]
  %i.cg = icmp ult i32 %i.bz, 3
  br i1 %i.cg, label %xorbuf.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.254.i = phi ptr [ %i.cw, %.lr.ph56.i ], [ %.254.i.unr, %.lr.ph56.i.prol.loopexit ] ; 5 uses
  %.22453.i = phi ptr [ %i.cy, %.lr.ph56.i ], [ %.22453.i.unr, %.lr.ph56.i.prol.loopexit ] ; 6 uses
  %.22752.i = phi i32 [ %i.db, %.lr.ph56.i ], [ %.22752.i.unr, %.lr.ph56.i.prol.loopexit ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.254.i, i64 1
  %i.ci = load i8, ptr %.254.i, align 1, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %.22453.i, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.22453.i, align 1, !tbaa !21
  %i.cl = xor i8 %i.ck, %i.ci
  store i8 %i.cl, ptr %.22453.i, align 1, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %.254.i, i64 2
  %i.cn = load i8, ptr %i.ch, align 1, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %.22453.i, i64 2 ; 2 uses
  %i.cp = load i8, ptr %i.cj, align 1, !tbaa !21
  %i.cq = xor i8 %i.cp, %i.cn
  store i8 %i.cq, ptr %i.cj, align 1, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %.254.i, i64 3
  %i.cs = load i8, ptr %i.cm, align 1, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %.22453.i, i64 3 ; 2 uses
  %i.cu = load i8, ptr %i.co, align 1, !tbaa !21
  %i.cv = xor i8 %i.cu, %i.cs
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.254.i, i64 4
  %i.cx = load i8, ptr %i.cr, align 1, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.22453.i, i64 4
  %i.cz = load i8, ptr %i.ct, align 1, !tbaa !21
  %i.da = xor i8 %i.cz, %i.cx
  store i8 %i.da, ptr %i.ct, align 1, !tbaa !21
  %i.db = add nsw i32 %.22752.i, -4               ; 2 uses
  %.not.i.3 = icmp eq i32 %i.db, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph56.i, !llvm.loop !42

xorbuf.exit:                                      ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %vector.ph, %vec.epilog.middle.block, %.lr.ph.i.i.preheader, %XorWords.exit.i
  %i.dc = call fastcc i32 @AesEncrypt_preFetchOpt(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.g, ptr noundef %i.a) ; 2 uses
  %.not30 = icmp eq i32 %i.dc, 0
  br i1 %.not30, label %bb.f, label %xorbuf.exit._crit_edge

bb.f:                                             ; preds = %xorbuf.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.02342, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.02342, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.02243, i64 16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %xorbuf.exit._crit_edge, label %bb.d, !llvm.loop !43

xorbuf.exit._crit_edge:                           ; preds = %bb.f, %xorbuf.exit, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.dc, %xorbuf.exit ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %xorbuf.exit._crit_edge
  %.021 = phi i32 [ %.1, %xorbuf.exit._crit_edge ], [ -173, %bb.a ], [ 0, %bb.b ]
  ret i32 %.021
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc range(i32 -226, 1) i32 @AesEncrypt_preFetchOpt(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull captures(address) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 132 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load i32, ptr %i.b, align 16, !tbaa !14  ; 3 uses
  %i.d = lshr i32 %i.c, 1                         ; 3 uses
  %i.e = icmp ugt i32 %i.c, 15
  %i.f = icmp eq i32 %i.d, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload270.i = load i32, ptr %1, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload237.i = load i32, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload204.i = load i32, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0.copyload.i = load i32, ptr %i.i, align 1
  %i.j = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload270.i)
  %i.k = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload237.i)
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload204.i)
  %i.m = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.n = load i32, ptr %0, align 16, !tbaa !15
  %i.o = xor i32 %i.n, %i.j                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = xor i32 %i.q, %i.k                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !15
  %i.u = xor i32 %i.t, %i.l                       ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  %i.x = xor i32 %i.w, %i.m                       ; 4 uses
  %i.y = load i32, ptr %3, align 4, !tbaa !15
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.aa = and i32 %.0..0..0..0..0..0..0..0..i.i, -966564955
  store volatile i32 %i.aa, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..1.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.ab = and i32 %.0..0..0..0..0..0..0..0..1.i.i, -1882535355
  store volatile i32 %i.ab, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..2.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.ac = and i32 %.0..0..0..0..0..0..0..0..2.i.i, 1974974402
  store volatile i32 %i.ac, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..3.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.ad = and i32 %.0..0..0..0..0..0..0..0..3.i.i, 134480908
  store volatile i32 %i.ad, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..4.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.ae = and i32 %.0..0..0..0..0..0..0..0..4.i.i, 302582043
  store volatile i32 %i.ae, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..5.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.af = and i32 %.0..0..0..0..0..0..0..0..5.i.i, -1504488459
  store volatile i32 %i.af, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..6.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
end_hunk_0
begin_hunk_1_@wc_AesCbcDecrypt:bb.a
  %i.ayy = and i32 %.0..0..0..0..0..0..0..0..0..0..i328.i.i, 82
  store volatile i32 %i.ayy, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..0..0..1.i329.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.ayz = and i32 %.0..0..0..0..0..0..0..0..0..0..1.i329.i.i, 114
  store volatile i32 %i.ayz, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..0..0..2.i330.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.aza = and i32 %.0..0..0..0..0..0..0..0..0..0..2.i330.i.i, 58
  store volatile i32 %i.aza, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..0..0..3.i331.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.azb = and i32 %.0..0..0..0..0..0..0..0..0..0..3.i331.i.i, 31
  store volatile i32 %i.azb, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..0..0.3.i.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.azc = or i32 %.0..0..0..0..0..0..0..0..0..0.3.i.i.i, %.0323.i.i
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1.i.i = phi i32 [ %i.azc, %bb.l ], [ %.0323.i.i, %bb.k ] ; 4 uses
  %i.azd = shl nuw nsw i32 %i.bs, 3
  %i.aze = zext nneg i32 %i.azd to i64
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aze
  %i.azg = lshr i32 %.1.i.i, 24
  %i.azh = zext nneg i32 %i.azg to i64
  %i.azi = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.azh
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !21
  %i.azk = lshr i32 %.0.i.i, 16
  %i.azl = and i32 %i.azk, 255
  %i.azm = zext nneg i32 %i.azl to i64
  %i.azn = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.azm
  %i.azo = load i8, ptr %i.azn, align 1, !tbaa !21
  %i.azp = lshr i32 %.0321.i.i, 8
  %i.azq = and i32 %i.azp, 255
  %i.azr = zext nneg i32 %i.azq to i64
  %i.azs = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.azr
  %i.azt = load i8, ptr %i.azs, align 1, !tbaa !21
  %i.azu = and i32 %.0322.i.i, 255
  %i.azv = zext nneg i32 %i.azu to i64
  %i.azw = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.azv
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !21
  %i.azy = lshr i32 %.0322.i.i, 24
  %i.azz = zext nneg i32 %i.azy to i64
  %i.baa = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.azz
  %i.bab = load i8, ptr %i.baa, align 1, !tbaa !21
  %i.bac = lshr i32 %.1.i.i, 16
  %i.bad = and i32 %i.bac, 255
  %i.bae = zext nneg i32 %i.bad to i64
  %i.baf = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.bae
  %i.bag = load i8, ptr %i.baf, align 1, !tbaa !21
  %i.bah = lshr i32 %.0.i.i, 8
  %i.bai = and i32 %i.bah, 255
  %i.baj = zext nneg i32 %i.bai to i64
  %i.bak = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.baj
  %i.bal = load i8, ptr %i.bak, align 1, !tbaa !21
  %i.bam = and i32 %.0321.i.i, 255
  %i.ban = zext nneg i32 %i.bam to i64
  %i.bao = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.ban
  %i.bap = load i8, ptr %i.bao, align 1, !tbaa !21
  %i.baq = lshr i32 %.0321.i.i, 24
  %i.bar = zext nneg i32 %i.baq to i64
  %i.bas = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.bar
  %i.bat = load i8, ptr %i.bas, align 1, !tbaa !21
  %i.bau = lshr i32 %.0322.i.i, 16
  %i.bav = and i32 %i.bau, 255
  %i.baw = zext nneg i32 %i.bav to i64
  %i.bax = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.baw
  %i.bay = load i8, ptr %i.bax, align 1, !tbaa !21
  %i.baz = lshr i32 %.1.i.i, 8
  %i.bba = and i32 %i.baz, 255
  %i.bbb = zext nneg i32 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.bbb
  %i.bbd = load i8, ptr %i.bbc, align 1, !tbaa !21
  %i.bbe = and i32 %.0.i.i, 255
  %i.bbf = zext nneg i32 %i.bbe to i64
  %i.bbg = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.bbf
  %i.bbh = load i8, ptr %i.bbg, align 1, !tbaa !21
  %i.bbi = lshr i32 %.0.i.i, 24
  %i.bbj = zext nneg i32 %i.bbi to i64
  %i.bbk = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.bbj
  %i.bbl = load i8, ptr %i.bbk, align 1, !tbaa !21
  %i.bbm = lshr i32 %.0321.i.i, 16
  %i.bbn = and i32 %i.bbm, 255
  %i.bbo = zext nneg i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.bbo
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !21
  %i.bbr = lshr i32 %.0322.i.i, 8
  %i.bbs = and i32 %i.bbr, 255
  %i.bbt = zext nneg i32 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.bbt
  %i.bbv = load i8, ptr %i.bbu, align 1, !tbaa !21
  %i.bbw = and i32 %.1.i.i, 255
  %i.bbx = zext nneg i32 %i.bbw to i64
  %i.bby = getelementptr inbounds nuw i8, ptr @Td4, i64 %i.bbx
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !21
  %i.bca = zext i8 %i.azj to i32
  %i.bcb = shl nuw i32 %i.bca, 24
  %i.bcc = zext i8 %i.azo to i32
  %i.bcd = shl nuw nsw i32 %i.bcc, 16
  %i.bce = or disjoint i32 %i.bcd, %i.bcb
  %i.bcf = zext i8 %i.azt to i32
  %i.bcg = shl nuw nsw i32 %i.bcf, 8
  %i.bch = or disjoint i32 %i.bce, %i.bcg
  %i.bci = zext i8 %i.azx to i32
  %i.bcj = or disjoint i32 %i.bch, %i.bci
  %i.bck = zext i8 %i.bab to i32
  %i.bcl = shl nuw i32 %i.bck, 24
  %i.bcm = zext i8 %i.bag to i32
  %i.bcn = shl nuw nsw i32 %i.bcm, 16
  %i.bco = or disjoint i32 %i.bcn, %i.bcl
  %i.bcp = zext i8 %i.bal to i32
  %i.bcq = shl nuw nsw i32 %i.bcp, 8
  %i.bcr = or disjoint i32 %i.bco, %i.bcq
  %i.bcs = zext i8 %i.bap to i32
  %i.bct = or disjoint i32 %i.bcr, %i.bcs
  %i.bcu = zext i8 %i.bat to i32
  %i.bcv = shl nuw i32 %i.bcu, 24
  %i.bcw = zext i8 %i.bay to i32
  %i.bcx = shl nuw nsw i32 %i.bcw, 16
  %i.bcy = or disjoint i32 %i.bcx, %i.bcv
  %i.bcz = zext i8 %i.bbd to i32
  %i.bda = shl nuw nsw i32 %i.bcz, 8
  %i.bdb = or disjoint i32 %i.bcy, %i.bda
  %i.bdc = zext i8 %i.bbh to i32
  %i.bdd = or disjoint i32 %i.bdb, %i.bdc
  %i.bde = zext i8 %i.bbl to i32
  %i.bdf = shl nuw i32 %i.bde, 24
  %i.bdg = zext i8 %i.bbq to i32
  %i.bdh = shl nuw nsw i32 %i.bdg, 16
  %i.bdi = or disjoint i32 %i.bdh, %i.bdf
  %i.bdj = zext i8 %i.bbv to i32
  %i.bdk = shl nuw nsw i32 %i.bdj, 8
  %i.bdl = or disjoint i32 %i.bdi, %i.bdk
  %i.bdm = zext i8 %i.bbz to i32
  %i.bdn = or disjoint i32 %i.bdl, %i.bdm
  %i.bdo = load <4 x i32>, ptr %i.azf, align 4, !tbaa !15
  %i.bdp = insertelement <4 x i32> poison, i32 %i.bcj, i64 0
  %i.bdq = insertelement <4 x i32> %i.bdp, i32 %i.bct, i64 1
  %i.bdr = insertelement <4 x i32> %i.bdq, i32 %i.bdd, i64 2
  %i.bds = insertelement <4 x i32> %i.bdr, i32 %i.bdn, i64 3
  %i.bdt = xor <4 x i32> %i.bds, %i.bdo
  %i.bdu = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.bdt)
  store <4 x i32> %i.bdu, ptr %.03058, align 1
  %i.bdv = ptrtoint ptr %.03058 to i64            ; 3 uses
  %i.bdw = or i64 %i.bdv, %i.bn
  %i.bdx = and i64 %i.bdw, 7
  %or.cond.i39 = icmp eq i64 %i.bdx, 0
  br i1 %or.cond.i39, label %.lr.ph.i.i.preheader, label %bb.n

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %i.bdy = getelementptr inbounds nuw i8, ptr %.03058, i64 8 ; 2 uses
  %i.bdz = load i64, ptr %.ptr51, align 16, !tbaa !20
  %i.bea = load i64, ptr %.03058, align 8, !tbaa !20
  %i.beb = xor i64 %i.bea, %i.bdz
  store i64 %i.beb, ptr %.03058, align 8, !tbaa !20
  %i.bec = load i64, ptr %.ptr.1, align 8, !tbaa !20
  %i.bed = load i64, ptr %i.bdy, align 8, !tbaa !20
  %i.bee = xor i64 %i.bed, %i.bec
  store i64 %i.bee, ptr %i.bdy, align 8, !tbaa !20
  br label %xorbuf.exit

bb.n:                                             ; preds = %bb.m
  %i.bef = xor i64 %i.bdv, %i.bn
  %i.beg = and i64 %i.bef, 7
  %i.beh = icmp eq i64 %i.beg, 0
  br i1 %i.beh, label %.preheader.i, label %iter.check

.preheader.i:                                     ; preds = %bb.n
  %i.bei = and i64 %i.bdv, 7
  %.not58.i = icmp eq i64 %i.bei, 0
  br i1 %.not58.i, label %.lr.ph.i32.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.048.i = phi ptr [ %i.bej, %.lr.ph.i ], [ %.ptr51, %.preheader.i ] ; 2 uses
  %.02247.i = phi ptr [ %i.bel, %.lr.ph.i ], [ %.03058, %.preheader.i ] ; 3 uses
  %.02546.i = phi i32 [ %i.beo, %.lr.ph.i ], [ 16, %.preheader.i ]
  %i.bej = getelementptr inbounds nuw i8, ptr %.048.i, i64 1 ; 4 uses
  %i.bek = load i8, ptr %.048.i, align 1, !tbaa !21
  %i.bel = getelementptr inbounds nuw i8, ptr %.02247.i, i64 1 ; 4 uses
  %i.bem = load i8, ptr %.02247.i, align 1, !tbaa !21
  %i.ben = xor i8 %i.bem, %i.bek
  store i8 %i.ben, ptr %.02247.i, align 1, !tbaa !21
  %i.beo = add nsw i32 %.02546.i, -1              ; 6 uses
  %i.bep = ptrtoint ptr %i.bel to i64
  %i.beq = and i64 %i.bep, 7
  %i.ber = icmp ne i64 %i.beq, 0
  %i.bes = icmp ne i32 %i.beo, 0
  %i.bet = select i1 %i.ber, i1 %i.bes, i1 false
  br i1 %i.bet, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.beu = and i32 %i.beo, -8
  %.idx.i30.i = zext i32 %i.beu to i64
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bej, i64 %.idx.i30.i
  %.not.i31.i = icmp ult i32 %i.beo, 8
  br i1 %.not.i31.i, label %XorWords.exit.i, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %.preheader.i, %._crit_edge.i
  %i.bew = phi ptr [ %i.bev, %._crit_edge.i ], [ %i.bo, %.preheader.i ] ; 2 uses
  %.0.lcssa.i83 = phi ptr [ %i.bej, %._crit_edge.i ], [ %.ptr51, %.preheader.i ] ; 7 uses
  %.022.lcssa.i82 = phi ptr [ %i.bel, %._crit_edge.i ], [ %.03058, %.preheader.i ] ; 6 uses
  %.025.lcssa.i80 = phi i32 [ %i.beo, %._crit_edge.i ], [ 16, %.preheader.i ] ; 2 uses
  %i.bex = ptrtoaddr ptr %i.bew to i64
  %.0.lcssa.i83110 = ptrtoaddr ptr %.0.lcssa.i83 to i64 ; 2 uses
  %i.bey = add nuw i64 %.0.lcssa.i83110, 8
  %i.bez = tail call i64 @llvm.umax.i64(i64 %i.bex, i64 %i.bey)
  %i.bfa = xor i64 %.0.lcssa.i83110, -1
  %i.bfb = add i64 %i.bez, %i.bfa                 ; 3 uses
  %i.bfc = lshr i64 %i.bfb, 3
  %i.bfd = add nuw nsw i64 %i.bfc, 1              ; 2 uses
  %min.iters.check117 = icmp ult i64 %i.bfb, 56
  br i1 %min.iters.check117, label %.lr.ph.i32.i.preheader133, label %vector.memcheck108

vector.memcheck108:                               ; preds = %.lr.ph.i32.i.preheader
  %i.bfe = and i64 %i.bfb, -8
  %4 = add i64 %i.bfe, 8                          ; 2 uses
  %scevgep112 = getelementptr i8, ptr %.022.lcssa.i82, i64 %4
  %scevgep113 = getelementptr i8, ptr %.0.lcssa.i83, i64 %4
  %bound0114 = icmp ult ptr %.022.lcssa.i82, %scevgep113
  %bound1115 = icmp ult ptr %.0.lcssa.i83, %scevgep112
  %found.conflict116 = and i1 %bound0114, %bound1115
  br i1 %found.conflict116, label %.lr.ph.i32.i.preheader133, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck108
  %n.vec119 = and i64 %i.bfd, 4611686018427387900 ; 3 uses
  %i.bff = shl i64 %n.vec119, 3                   ; 2 uses
  %i.bfg = getelementptr i8, ptr %.022.lcssa.i82, i64 %i.bff ; 2 uses
  %i.bfh = getelementptr i8, ptr %.0.lcssa.i83, i64 %i.bff ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next128, %vector.body120 ] ; 2 uses
  %i.bfi = shl i64 %index121, 3                   ; 2 uses
  %next.gep122 = getelementptr i8, ptr %.022.lcssa.i82, i64 %i.bfi ; 3 uses
  %next.gep123 = getelementptr i8, ptr %.0.lcssa.i83, i64 %i.bfi ; 2 uses
  %i.bfj = getelementptr i8, ptr %next.gep123, i64 16
  %wide.load124 = load <2 x i64>, ptr %next.gep123, align 8, !tbaa !20, !alias.scope !60
  %wide.load125 = load <2 x i64>, ptr %i.bfj, align 8, !tbaa !20, !alias.scope !60
  %i.bfk = getelementptr i8, ptr %next.gep122, i64 16 ; 2 uses
  %wide.load126 = load <2 x i64>, ptr %next.gep122, align 8, !tbaa !20, !alias.scope !61, !noalias !60
  %wide.load127 = load <2 x i64>, ptr %i.bfk, align 8, !tbaa !20, !alias.scope !61, !noalias !60
  %i.bfl = xor <2 x i64> %wide.load126, %wide.load124
  %i.bfm = xor <2 x i64> %wide.load127, %wide.load125
  store <2 x i64> %i.bfl, ptr %next.gep122, align 8, !tbaa !20, !alias.scope !61, !noalias !60
  store <2 x i64> %i.bfm, ptr %i.bfk, align 8, !tbaa !20, !alias.scope !61, !noalias !60
  %index.next128 = add nuw i64 %index121, 4       ; 2 uses
  %i.bfn = icmp eq i64 %index.next128, %n.vec119
  br i1 %i.bfn, label %middle.block129, label %vector.body120, !llvm.loop !51

middle.block129:                                  ; preds = %vector.body120
  %cmp.n130 = icmp eq i64 %i.bfd, %n.vec119
  br i1 %cmp.n130, label %XorWords.exit.i, label %.lr.ph.i32.i.preheader133

.lr.ph.i32.i.preheader133:                        ; preds = %vector.memcheck108, %.lr.ph.i32.i.preheader, %middle.block129
  %.sroa.039.2.i.ph = phi ptr [ %.022.lcssa.i82, %vector.memcheck108 ], [ %.022.lcssa.i82, %.lr.ph.i32.i.preheader ], [ %i.bfg, %middle.block129 ]
  %.ph = phi ptr [ %.0.lcssa.i83, %vector.memcheck108 ], [ %.0.lcssa.i83, %.lr.ph.i32.i.preheader ], [ %i.bfh, %middle.block129 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader133, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.bfr, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader133 ] ; 3 uses
  %i.bfo = phi ptr [ %i.bfp, %.lr.ph.i32.i ], [ %.ph, %.lr.ph.i32.i.preheader133 ] ; 2 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8 ; 3 uses
  %i.bfq = load i64, ptr %i.bfo, align 8, !tbaa !20
  %i.bfr = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8 ; 2 uses
  %i.bfs = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.bft = xor i64 %i.bfs, %i.bfq
  store i64 %i.bft, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.bfu = icmp ult ptr %i.bfp, %i.bew
  br i1 %i.bfu, label %.lr.ph.i32.i, label %XorWords.exit.i, !llvm.loop !52

XorWords.exit.i:                                  ; preds = %.lr.ph.i32.i, %middle.block129, %._crit_edge.i
  %.025.lcssa.i81 = phi i32 [ %i.beo, %._crit_edge.i ], [ %.025.lcssa.i80, %middle.block129 ], [ %.025.lcssa.i80, %.lr.ph.i32.i ]
  %.123.i = phi ptr [ %i.bel, %._crit_edge.i ], [ %i.bfg, %middle.block129 ], [ %i.bfr, %.lr.ph.i32.i ]
  %.1.i = phi ptr [ %i.bej, %._crit_edge.i ], [ %i.bfh, %middle.block129 ], [ %i.bfp, %.lr.ph.i32.i ]
  %i.bfv = and i32 %.025.lcssa.i81, 7             ; 2 uses
  %.not51.i = icmp eq i32 %i.bfv, 0
  br i1 %.not51.i, label %xorbuf.exit, label %iter.check

iter.check:                                       ; preds = %XorWords.exit.i, %bb.n
  %.172.i = phi ptr [ %.1.i, %XorWords.exit.i ], [ %.ptr51, %bb.n ] ; 8 uses
  %.12371.i = phi ptr [ %.123.i, %XorWords.exit.i ], [ %.03058, %bb.n ] ; 9 uses
  %.12670.i = phi i32 [ %i.bfv, %XorWords.exit.i ], [ 16, %bb.n ] ; 8 uses
  %i.bfw = zext nneg i32 %.12670.i to i64         ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.12670.i, 4
  br i1 %min.iters.check, label %.lr.ph56.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bfx = zext nneg i32 %.12670.i to i64         ; 2 uses
  %scevgep93 = getelementptr i8, ptr %.12371.i, i64 %i.bfx
  %scevgep94 = getelementptr i8, ptr %.172.i, i64 %i.bfx
  %bound0 = icmp ult ptr %.12371.i, %scevgep94
  %bound1 = icmp ult ptr %.172.i, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check95 = icmp samesign ult i32 %.12670.i, 16
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bfy = and i64 %i.bfw, 4
  %n.vec = and i64 %i.bfw, 16                     ; 5 uses
  %i.bfz = getelementptr i8, ptr %.172.i, i64 %n.vec
  %i.bga = getelementptr i8, ptr %.12371.i, i64 %n.vec
  %i.bgb = trunc nuw nsw i64 %n.vec to i32
  %i.bgc = sub nsw i32 %.12670.i, %i.bgb
  %wide.load = load <16 x i8>, ptr %.172.i, align 1, !tbaa !21, !alias.scope !62
  %wide.load97 = load <16 x i8>, ptr %.12371.i, align 1, !tbaa !21, !alias.scope !63, !noalias !62
  %i.bgd = xor <16 x i8> %wide.load97, %wide.load
  store <16 x i8> %i.bgd, ptr %.12371.i, align 1, !tbaa !21, !alias.scope !63, !noalias !62
  %cmp.n = icmp eq i64 %n.vec, %i.bfw
  br i1 %cmp.n, label %xorbuf.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bfy, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph56.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %i.bfw, 20                   ; 5 uses
  %i.bge = getelementptr i8, ptr %.172.i, i64 %n.vec98
  %i.bgf = getelementptr i8, ptr %.12371.i, i64 %n.vec98
  %i.bgg = trunc nuw nsw i64 %n.vec98 to i32
  %i.bgh = sub nsw i32 %.12670.i, %i.bgg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 3 uses
  %next.gep100 = getelementptr i8, ptr %.172.i, i64 %index99
  %next.gep101 = getelementptr i8, ptr %.12371.i, i64 %index99 ; 2 uses
  %wide.load102 = load <4 x i8>, ptr %next.gep100, align 1, !tbaa !21, !alias.scope !62
  %wide.load103 = load <4 x i8>, ptr %next.gep101, align 1, !tbaa !21, !alias.scope !63, !noalias !62
  %i.bgi = xor <4 x i8> %wide.load103, %wide.load102
  store <4 x i8> %i.bgi, ptr %next.gep101, align 1, !tbaa !21, !alias.scope !63, !noalias !62
  %index.next104 = add nuw i64 %index99, 4        ; 2 uses
  %i.bgj = icmp eq i64 %index.next104, %n.vec98
  br i1 %i.bgj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %n.vec98, %i.bfw
  br i1 %cmp.n105, label %xorbuf.exit, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.i.ph = phi ptr [ %.172.i, %iter.check ], [ %.172.i, %vector.memcheck ], [ %i.bfz, %vec.epilog.iter.check ], [ %i.bge, %vec.epilog.middle.block ] ; 2 uses
  %.22453.i.ph = phi ptr [ %.12371.i, %iter.check ], [ %.12371.i, %vector.memcheck ], [ %i.bga, %vec.epilog.iter.check ], [ %i.bgf, %vec.epilog.middle.block ] ; 2 uses
  %.22752.i.ph = phi i32 [ %.12670.i, %iter.check ], [ %.12670.i, %vector.memcheck ], [ %i.bgc, %vec.epilog.iter.check ], [ %i.bgh, %vec.epilog.middle.block ] ; 4 uses
  %i.bgk = add nsw i32 %.22752.i.ph, -1
  %xtraiter = and i32 %.22752.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.bgl, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.bgn, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.bgq, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.bgl = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.bgm = load i8, ptr %.254.i.prol, align 1, !tbaa !21
  %i.bgn = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.bgo = load i8, ptr %.22453.i.prol, align 1, !tbaa !21
  %i.bgp = xor i8 %i.bgo, %i.bgm
  store i8 %i.bgp, ptr %.22453.i.prol, align 1, !tbaa !21
  %i.bgq = add nsw i32 %.22752.i.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !57

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.bgl, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.bgn, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.bgq, %.lr.ph56.i.prol ]
  %i.bgr = icmp ult i32 %i.bgk, 3
  br i1 %i.bgr, label %xorbuf.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.254.i = phi ptr [ %i.bhh, %.lr.ph56.i ], [ %.254.i.unr, %.lr.ph56.i.prol.loopexit ] ; 5 uses
  %.22453.i = phi ptr [ %i.bhj, %.lr.ph56.i ], [ %.22453.i.unr, %.lr.ph56.i.prol.loopexit ] ; 6 uses
  %.22752.i = phi i32 [ %i.bhm, %.lr.ph56.i ], [ %.22752.i.unr, %.lr.ph56.i.prol.loopexit ]
  %i.bgs = getelementptr inbounds nuw i8, ptr %.254.i, i64 1
  %i.bgt = load i8, ptr %.254.i, align 1, !tbaa !21
  %i.bgu = getelementptr inbounds nuw i8, ptr %.22453.i, i64 1 ; 2 uses
  %i.bgv = load i8, ptr %.22453.i, align 1, !tbaa !21
  %i.bgw = xor i8 %i.bgv, %i.bgt
  store i8 %i.bgw, ptr %.22453.i, align 1, !tbaa !21
  %i.bgx = getelementptr inbounds nuw i8, ptr %.254.i, i64 2
  %i.bgy = load i8, ptr %i.bgs, align 1, !tbaa !21
  %i.bgz = getelementptr inbounds nuw i8, ptr %.22453.i, i64 2 ; 2 uses
  %i.bha = load i8, ptr %i.bgu, align 1, !tbaa !21
  %i.bhb = xor i8 %i.bha, %i.bgy
  store i8 %i.bhb, ptr %i.bgu, align 1, !tbaa !21
  %i.bhc = getelementptr inbounds nuw i8, ptr %.254.i, i64 3
  %i.bhd = load i8, ptr %i.bgx, align 1, !tbaa !21
  %i.bhe = getelementptr inbounds nuw i8, ptr %.22453.i, i64 3 ; 2 uses
  %i.bhf = load i8, ptr %i.bgz, align 1, !tbaa !21
  %i.bhg = xor i8 %i.bhf, %i.bhd
  store i8 %i.bhg, ptr %i.bgz, align 1, !tbaa !21
  %i.bhh = getelementptr inbounds nuw i8, ptr %.254.i, i64 4
  %i.bhi = load i8, ptr %i.bhc, align 1, !tbaa !21
  %i.bhj = getelementptr inbounds nuw i8, ptr %.22453.i, i64 4
  %i.bhk = load i8, ptr %i.bhe, align 1, !tbaa !21
  %i.bhl = xor i8 %i.bhk, %i.bhi
  store i8 %i.bhl, ptr %i.bhe, align 1, !tbaa !21
  %i.bhm = add nsw i32 %.22752.i, -4              ; 2 uses
  %.not.i.3 = icmp eq i32 %i.bhm, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph56.i, !llvm.loop !58

xorbuf.exit:                                      ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %vector.ph, %vec.epilog.middle.block, %.lr.ph.i.i.preheader, %XorWords.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr51, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.bhn = getelementptr inbounds nuw i8, ptr %.03058, i64 16
  %i.bho = getelementptr inbounds nuw i8, ptr %.02961, i64 16
  %.not37 = icmp eq i32 %i.bq, 0
  br i1 %.not37, label %AesDecrypt_preFetchOpt.exit, label %bb.e, !llvm.loop !59

AesDecrypt_preFetchOpt.exit:                      ; preds = %xorbuf.exit, %bb.e, %bb.c, %bb.b, %bb.a
  %.128 = phi i32 [ -173, %bb.c ], [ -173, %bb.a ], [ 0, %bb.b ], [ -226, %bb.e ], [ 0, %xorbuf.exit ]
  ret i32 %.128
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @GenerateM0(ptr noundef initializes((16, 32)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %0, i64 16, i1 false)
  %.ptr460 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 20 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, ptr noundef nonnull align 16 dereferenceable(16) %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 95 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !21    ; 2 uses
  %i.h = and i8 %i.g, 1
  %i.i = icmp eq i8 %i.h, 0
  %i.j = select i1 %i.i, i8 0, i8 -31
  store volatile i8 %i.j, ptr %i.c, align 1, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i8, ptr %.ptr460, align 16, !tbaa !21
  %i.n = load <8 x i8>, ptr %.ptr460, align 16, !tbaa !21
  %i.o = lshr i8 %i.m, 1
  %i.p = load i8, ptr %i.l, align 8, !tbaa !21
  %i.q = load <8 x i8>, ptr %i.k, align 1, !tbaa !21
  %i.r = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.n, <8 x i8> %i.q, <8 x i8> splat (i8 7))
  store <8 x i8> %i.r, ptr %i.k, align 1, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !21    ; 2 uses
  %i.u = tail call i8 @llvm.fshl.i8(i8 %i.p, i8 %i.t, i8 7)
  store i8 %i.u, ptr %i.s, align 1, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.w = load i8, ptr %i.v, align 2, !tbaa !21    ; 2 uses
  %i.x = tail call i8 @llvm.fshl.i8(i8 %i.t, i8 %i.w, i8 7)
  store i8 %i.x, ptr %i.v, align 2, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 91 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21    ; 2 uses
  %i.aa = tail call i8 @llvm.fshl.i8(i8 %i.w, i8 %i.z, i8 7)
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !21  ; 2 uses
  %i.ad = tail call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.ac, i8 7)
  store i8 %i.ad, ptr %i.ab, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 93 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21  ; 2 uses
  %i.ag = tail call i8 @llvm.fshl.i8(i8 %i.ac, i8 %i.af, i8 7)
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 94 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !21  ; 2 uses
  %i.aj = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.ai, i8 7)
  store i8 %i.aj, ptr %i.ah, align 2, !tbaa !21
  %i.ak = tail call i8 @llvm.fshl.i8(i8 %i.ai, i8 %i.g, i8 7)
  store i8 %i.ak, ptr %i.f, align 1, !tbaa !21
  %.0..0..0..0..0..0..i = load volatile i8, ptr %i.c, align 1, !tbaa !21
  %i.al = xor i8 %.0..0..0..0..0..0..i, %i.o
  store i8 %i.al, ptr %.ptr460, align 16, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.ptr438.ptr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 29 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr438.ptr, ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21  ; 2 uses
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  %i.aq = select i1 %i.ap, i8 0, i8 -31
  store volatile i8 %i.aq, ptr %i.b, align 1, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i8, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.au = load <8 x i8>, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.av = lshr i8 %i.at, 1
  %i.aw = load i8, ptr %i.as, align 8, !tbaa !21
  %i.ax = load <8 x i8>, ptr %i.ar, align 1, !tbaa !21
end_hunk_1
