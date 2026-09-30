Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v07?download=true
inline.NumInlined: 402
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ZSTDv07_decompressBegin_usingDict:bb.a
  br i1 %i.dz, label %bb.ae, label %.critedge97.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ds ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i32 35, ptr %i.i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.ai, %i.eb
  %i.ed = call i64 @FSEv07_readNCount(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ea, i64 noundef %i.ec) ; 2 uses
  %i.ee = icmp ult i64 %i.ed, -119
  br i1 %i.ee, label %bb.af, label %.critedge99.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ef = load i32, ptr %i.j, align 4, !tbaa !13  ; 2 uses
  %i.eg = icmp ugt i32 %i.ef, 9
  br i1 %i.eg, label %.critedge99.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = load i32, ptr %i.i, align 4, !tbaa !13
  %i.ei = call i64 @FSEv07_buildDTable(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %i.eh, i32 noundef %i.ef)
  %i.ej = icmp ult i64 %i.ei, -119
  br i1 %i.ej, label %bb.ah, label %.critedge99.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ed ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 2 uses
  %i.em = icmp ugt ptr %i.el, %i.ae
  br i1 %i.em, label %ZSTDv07_decompress_insertDictionary.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val103.i.i = load i32, ptr %i.ek, align 1     ; 3 uses
  store i32 %.val103.i.i, ptr %i.r, align 8, !tbaa !13
  %i.en = icmp ne i32 %.val103.i.i, 0
  %i.eo = zext i32 %.val103.i.i to i64
  %.not93.i.i = icmp ugt i64 %i.ad, %i.eo
  %or.cond.i.i = and i1 %i.en, %.not93.i.i
  br i1 %or.cond.i.i, label %bb.aj, label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %.val102.i.i = load i32, ptr %i.ep, align 1     ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 21564
  store i32 %.val102.i.i, ptr %i.eq, align 4, !tbaa !13
  %i.er = icmp ne i32 %.val102.i.i, 0
  %i.es = zext i32 %.val102.i.i to i64
  %.not94.i.i = icmp ugt i64 %i.ad, %i.es
  %or.cond100.i.i = and i1 %i.er, %.not94.i.i
  br i1 %or.cond100.i.i, label %bb.ak, label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.val.i.i = load i32, ptr %i.et, align 1        ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 21568
  store i32 %.val.i.i, ptr %i.eu, align 8, !tbaa !13
  %i.ev = icmp ne i32 %.val.i.i, 0
  %i.ew = zext i32 %.val.i.i to i64
  %.not95.i.i = icmp ugt i64 %i.ad, %i.ew
  %or.cond101.i.i = and i1 %i.ev, %.not95.i.i
  br i1 %or.cond101.i.i, label %ZSTDv07_loadEntropy.exit.i, label %ZSTDv07_decompress_insertDictionary.exit.thread

.critedge.i.i:                                    ; preds = %FSEv07_buildDTable.exit.thread.i.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %ZSTDv07_decompress_insertDictionary.exit.thread

.critedge97.i.i:                                  ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %ZSTDv07_decompress_insertDictionary.exit.thread

.critedge99.i.i:                                  ; preds = %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %ZSTDv07_decompress_insertDictionary.exit.thread

ZSTDv07_loadEntropy.exit.i:                       ; preds = %bb.ak
  store i32 1, ptr %i.o, align 4, !tbaa !50
  store i32 1, ptr %i.p, align 8, !tbaa !51
  %i.ex = ptrtoint ptr %i.el to i64
  %i.ey = ptrtoint ptr %i.ac to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = icmp ult i64 %i.ez, -119
  br i1 %i.fa, label %bb.al, label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.al:                                            ; preds = %ZSTDv07_loadEntropy.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ez ; 2 uses
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !60  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !61
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !62
  %i.fg = ptrtoint ptr %i.fc to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %.neg.i35.i = sub i64 %i.fh, %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.fb, i64 %.neg.i35.i
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !63
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !62
  store ptr %i.ae, ptr %i.m, align 8, !tbaa !60
  br label %ZSTDv07_decompress_insertDictionary.exit.thread

ZSTDv07_decompress_insertDictionary.exit.thread:  ; preds = %bb.al, %bb.e, %bb.c, %bb.ak, %.critedge.i.i, %.critedge97.i.i, %.critedge99.i.i, %bb.aj, %bb.ai, %bb.ah, %bb.f, %ZSTDv07_loadEntropy.exit.i, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -30, %bb.ak ], [ -30, %ZSTDv07_loadEntropy.exit.i ], [ -30, %bb.f ], [ -30, %bb.ah ], [ -30, %bb.ai ], [ -30, %bb.aj ], [ -30, %.critedge99.i.i ], [ -30, %.critedge97.i.i ], [ -30, %.critedge.i.i ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.al ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv07_decompressFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp ult i64 %4, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 4
  %.val = load i8, ptr %i.d, align 1, !tbaa !17
  %i.e = zext i8 %.val to i32                     ; 3 uses
  %i.f = and i32 %i.e, 3
  %i.g = lshr i32 %i.e, 6                         ; 2 uses
  %i.h = and i32 %i.e, 32                         ; 2 uses
  %.not.i = icmp ne i32 %i.h, 0
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv07_did_fieldSize, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59
  %i.l = zext nneg i32 %i.g to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv07_fcs_fieldSize, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59
  %.not10.i = icmp eq i32 %i.g, 0
  %narrow1.i = and i1 %.not.i, %.not10.i
  %i.o = zext i1 %narrow1.i to i64
  %.lobit.i = lshr exact i32 %i.h, 5
  %narrow.i = sub nuw nsw i32 6, %.lobit.i
  %i.p = zext nneg i32 %narrow.i to i64
  %i.q = add i64 %i.n, %i.k
  %i.r = add i64 %i.q, %i.p
  %i.s = add i64 %i.r, %i.o                       ; 6 uses
  %i.t = icmp ult i64 %i.s, -119
  br i1 %i.t, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.u = add nuw i64 %i.s, 3
  %i.v = icmp ult i64 %4, %i.u
  br i1 %i.v, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 21576
  %i.x = tail call i64 @ZSTDv07_getFrameParams(ptr noundef nonnull %i.w, ptr noundef nonnull readonly %3, i64 noundef %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 21588
  %i.z = load i32, ptr %i.y, align 4, !tbaa !64   ; 2 uses
  %.not.i82 = icmp eq i32 %i.z, 0
  br i1 %.not.i82, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 21712
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !52
  %.not10.i83 = icmp eq i32 %i.ab, %i.z
  br i1 %.not10.i83, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 21592 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !65
  %.not11.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i, label %ZSTDv07_decodeFrameHeader.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 21616
  %i.af = tail call i32 @ZSTD_XXH64_reset(ptr noundef nonnull captures(address) %i.ae, i64 noundef 0) #27 ; 0 uses
  br label %ZSTDv07_decodeFrameHeader.exit

ZSTDv07_decodeFrameHeader.exit:                   ; preds = %bb.f, %bb.g
  %.not77 = icmp eq i64 %i.x, 0
  br i1 %.not77, label %bb.h, label %.thread

bb.h:                                             ; preds = %ZSTDv07_decodeFrameHeader.exit
  %i.ag = ptrtoint ptr %i.a to i64
  %gepdiff = sub i64 %4, %i.s                     ; 2 uses
  %i.ah = icmp ult i64 %gepdiff, 3
  br i1 %i.ah, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 21616
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.u
  %.164147 = phi i64 [ %gepdiff, %.lr.ph ], [ %i.bj, %bb.u ] ; 2 uses
  %.065146 = phi ptr [ %1, %.lr.ph ], [ %i.bh, %bb.u ] ; 7 uses
  %.168145 = phi ptr [ %i.ai, %.lr.ph ], [ %i.bi, %bb.u ] ; 3 uses
  %i.al = load i8, ptr %.168145, align 1, !tbaa !17 ; 2 uses
  %i.am = lshr i8 %i.al, 6                        ; 2 uses
  %i.an = getelementptr i8, ptr %.168145, i64 1
  %5 = load i16, ptr %i.an, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.ao = zext i16 %6 to i32
  %i.ap = and i8 %i.al, 7
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 16
  %i.as = or disjoint i32 %i.ar, %i.ao            ; 3 uses
  switch i8 %i.am, label %bb.j [
    i8 3, label %.thread107
    i8 2, label %bb.k
  ]

.thread107:                                       ; preds = %bb.i
  %.not79 = icmp eq i64 %.164147, 3
  br i1 %.not79, label %bb.v, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.at = zext nneg i32 %i.as to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0.i84.ph = phi i64 [ %i.at, %bb.j ], [ 1, %bb.i ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.168145, i64 3 ; 4 uses
  %i.av = add i64 %.164147, -3                    ; 2 uses
  %i.aw = icmp ugt i64 %.0.i84.ph, %i.av
  br i1 %i.aw, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = ptrtoint ptr %.065146 to i64
  %i.ay = sub i64 %i.aj, %i.ax                    ; 3 uses
  switch i8 %i.am, label %default.unreachable171 [
    i8 0, label %bb.s
    i8 1, label %bb.m
    i8 2, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.az = icmp ugt i64 %.0.i84.ph, %i.ay
  br i1 %i.az, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i85 = icmp eq i64 %.0.i84.ph, 0
  br i1 %.not.i85, label %.thread115, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.065146, ptr nonnull readonly align 1 %i.au, i64 %.0.i84.ph, i1 false)
  br label %.thread115

bb.p:                                             ; preds = %bb.l
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !17
  %i.bb = zext nneg i32 %i.as to i64              ; 3 uses
  %i.bc = icmp ult i64 %i.ay, %i.bb
  br i1 %i.bc, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i87 = icmp eq i32 %i.as, 0
  br i1 %.not.i87, label %.thread115, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr align 1 %.065146, i8 %i.ba, i64 range(i64 0, 4294967296) %i.bb, i1 false)
  br label %.thread115

bb.s:                                             ; preds = %bb.l
  %i.bd = tail call fastcc i64 @ZSTDv07_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %.065146, i64 noundef %i.ay, ptr noundef nonnull %i.au, i64 noundef %.0.i84.ph) ; 3 uses
  %i.be = icmp ult i64 %i.bd, -119
  br i1 %i.be, label %.thread115, label %.thread

.thread115:                                       ; preds = %bb.n, %bb.o, %bb.r, %bb.q, %bb.s
  %.0.ph118 = phi i64 [ %i.bd, %bb.s ], [ 0, %bb.n ], [ %.0.i84.ph, %bb.o ], [ %i.bb, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.bf = load i32, ptr %i.ac, align 8, !tbaa !65
  %.not81 = icmp eq i32 %i.bf, 0
  br i1 %.not81, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread115
  %i.bg = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(address) %i.ak, ptr noundef captures(address) %.065146, i64 noundef %.0.ph118) #27 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.thread115, %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %.065146, i64 %.0.ph118
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0.i84.ph ; 2 uses
  %i.bj = sub nuw i64 %i.av, %.0.i84.ph
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.ag, %i.bk
  %i.bm = icmp ult i64 %i.bl, 3
  br i1 %i.bm, label %.thread, label %bb.i

bb.v:                                             ; preds = %.thread107
  %i.bn = ptrtoint ptr %.065146 to i64
  %i.bo = ptrtoint ptr %1 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  br label %.thread

default.unreachable171:                           ; preds = %bb.l
  unreachable

.thread:                                          ; preds = %bb.k, %bb.s, %bb.m, %bb.p, %bb.u, %bb.h, %.thread107, %bb.e, %ZSTDv07_decodeFrameHeader.exit, %bb.c, %bb.b, %bb.a, %bb.v
  %.3 = phi i64 [ -72, %bb.a ], [ -20, %bb.e ], [ %i.bp, %bb.v ], [ %i.s, %bb.b ], [ -20, %ZSTDv07_decodeFrameHeader.exit ], [ -72, %bb.c ], [ -72, %.thread107 ], [ -72, %bb.h ], [ -70, %bb.p ], [ %i.bd, %bb.s ], [ -70, %bb.m ], [ -72, %bb.k ], [ -72, %bb.u ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv07_decompressDCtx(ptr noundef initializes((5132, 5136), (21520, 21572), (21604, 21616), (21712, 21716)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21604
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.d, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21612
  store i32 0, ptr %i.e, align 4, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i32 0, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 21712
  store i32 0, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !13
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %ZSTDv07_decompress_usingDict.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %1, ptr %i.j, align 8, !tbaa !63
  store ptr %1, ptr %i.i, align 8, !tbaa !62
  store ptr %1, ptr %i.c, align 8, !tbaa !60
  br label %ZSTDv07_decompress_usingDict.exit

ZSTDv07_decompress_usingDict.exit:                ; preds = %bb.a, %bb.b
  %i.k = tail call fastcc i64 @ZSTDv07_decompressFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv07_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(152864) ptr @malloc(i64 noundef 152864) #28 ; 16 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %ZSTDv07_createDCtx.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 21728
  store ptr @ZSTDv07_defaultAllocFunction, ptr %i.b, align 8
  %defaultCustomMem.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21736 ; 2 uses
  store ptr @ZSTDv07_defaultFreeFunction, ptr %defaultCustomMem.sroa.6.0..sroa_idx.i, align 8
  %defaultCustomMem.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21744 ; 2 uses
  store ptr null, ptr %defaultCustomMem.sroa.7.0..sroa_idx.i, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 21552
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 21604
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 21520 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5132
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 21612
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 21608
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21712
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 21560
  store i64 5, ptr %i.c, align 8, !tbaa !48
  store i32 0, ptr %i.d, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.f, align 4, !tbaa !13
  store i32 0, ptr %i.g, align 4, !tbaa !50
  store i32 0, ptr %i.h, align 8, !tbaa !51
  store i32 0, ptr %i.i, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !13
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %ZSTDv07_freeDCtx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 21528
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 21536
  store ptr %0, ptr %i.l, align 8, !tbaa !63
  store ptr %0, ptr %i.k, align 8, !tbaa !62
  store ptr %0, ptr %i.e, align 8, !tbaa !60
  br label %ZSTDv07_freeDCtx.exit

ZSTDv07_freeDCtx.exit:                            ; preds = %bb.b, %bb.c
  %i.m = tail call fastcc i64 @ZSTDv07_decompressFrame(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  %i.n = load ptr, ptr %defaultCustomMem.sroa.6.0..sroa_idx.i, align 8, !tbaa !57
  %i.o = load ptr, ptr %defaultCustomMem.sroa.7.0..sroa_idx.i, align 8, !tbaa !58
  tail call void %i.n(ptr noundef %i.o, ptr noundef nonnull %i.a) #27, !inline_history !66
  br label %ZSTDv07_createDCtx.exit.thread

ZSTDv07_createDCtx.exit.thread:                   ; preds = %bb.a, %ZSTDv07_freeDCtx.exit
  %.0 = phi i64 [ %i.m, %ZSTDv07_freeDCtx.exit ], [ -64, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTDv07_findFrameSizeInfoLegacy(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %1, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -72, ptr %2, align 8, !tbaa !59
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val58 = load i8, ptr %i.b, align 1, !tbaa !17
  %i.c = zext i8 %.val58 to i32                   ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 6                         ; 2 uses
  %i.f = and i32 %i.c, 32                         ; 2 uses
  %.not.i = icmp ne i32 %i.f, 0
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv07_did_fieldSize, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv07_fcs_fieldSize, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59
  %.not10.i = icmp eq i32 %i.e, 0
  %narrow1.i = and i1 %.not.i, %.not10.i
  %i.m = zext i1 %narrow1.i to i64
  %.lobit.i = lshr exact i32 %i.f, 5
  %narrow.i = sub nuw nsw i32 6, %.lobit.i
  %i.n = zext nneg i32 %narrow.i to i64
  %i.o = add i64 %i.l, %i.i
  %i.p = add i64 %i.o, %i.n
  %i.q = add i64 %i.p, %i.m                       ; 5 uses
  %i.r = icmp ult i64 %i.q, -119
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.q, ptr %2, align 8, !tbaa !59
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.val = load i32, ptr %0, align 1
  %.not56 = icmp eq i32 %.val, -47205081
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 -10, ptr %2, align 8, !tbaa !59
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.s = add nuw i64 %i.q, 3
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 -72, ptr %2, align 8, !tbaa !59
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.u = sub nuw i64 %1, %i.q                     ; 2 uses
  %i.v = icmp ult i64 %i.u, 3
  br i1 %i.v, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.04587 = phi i64 [ %i.ak, %bb.l ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.14886 = phi i64 [ %i.aj, %bb.l ], [ %i.u, %.lr.ph.preheader ]
  %.15085 = phi ptr [ %i.ai, %bb.l ], [ %i.w, %.lr.ph.preheader ] ; 4 uses
  %i.x = load i8, ptr %.15085, align 1, !tbaa !17 ; 2 uses
  %i.y = lshr i8 %i.x, 6
  switch i8 %i.y, label %bb.j [
    i8 3, label %.thread
    i8 2, label %.thread65
  ]

._crit_edge:                                      ; preds = %bb.l, %bb.i
  store i64 -72, ptr %2, align 8, !tbaa !59
  br label %.critedge

bb.j:                                             ; preds = %.lr.ph
  %i.z = and i8 %i.x, 7
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 16
  %i.ac = getelementptr i8, ptr %.15085, i64 1
  %4 = load i16, ptr %i.ac, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.ad = zext i16 %5 to i64
  %i.ae = or disjoint i64 %i.ab, %i.ad
  br label %.thread65

.thread65:                                        ; preds = %bb.j, %.lr.ph
  %.0.i.ph67 = phi i64 [ %i.ae, %bb.j ], [ 1, %.lr.ph ] ; 3 uses
  %i.af = add i64 %.14886, -3                     ; 2 uses
  %i.ag = icmp ugt i64 %.0.i.ph67, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread65
  store i64 -72, ptr %2, align 8, !tbaa !59
  br label %.critedge

bb.l:                                             ; preds = %.thread65
  %i.ah = getelementptr inbounds nuw i8, ptr %.15085, i64 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0.i.ph67
  %i.aj = sub nuw i64 %i.af, %.0.i.ph67           ; 2 uses
  %i.ak = add i64 %.04587, 1
  %i.al = icmp ult i64 %i.aj, 3
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %.lr.ph
  %.251.ph = getelementptr inbounds nuw i8, ptr %.15085, i64 3
  %i.am = ptrtoint ptr %.251.ph to i64
  %i.an = ptrtoint ptr %0 to i64
  %i.ao = sub i64 %i.am, %i.an
  store i64 %i.ao, ptr %2, align 8, !tbaa !59
  %i.ap = shl i64 %.04587, 17
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %._crit_edge, %bb.d, %bb.f, %bb.h, %.thread, %bb.b
  %.sink = phi i64 [ -2, %bb.k ], [ -2, %._crit_edge ], [ -2, %bb.d ], [ -2, %bb.f ], [ -2, %bb.h ], [ %i.ap, %.thread ], [ -2, %bb.b ]
  store i64 %.sink, ptr %3, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTDv07_nextSrcSizeToDecompress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ZSTDv07_isSkipFrame(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21604
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = icmp eq i32 %i.b, 5
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv07_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552 ; 12 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %.not = icmp eq i64 %4, %i.b
  br i1 %.not, label %bb.b, label %ZSTDv07_decodeFrameHeader.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not86 = icmp eq i64 %2, 0
  br i1 %.not86, label %ZSTDv07_checkContinuity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.d
  br i1 %.not.i, label %ZSTDv07_checkContinuity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.d, ptr %i.e, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %.neg.i = sub i64 %i.i, %i.h
  %i.j = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.j, ptr %i.k, align 8, !tbaa !63
  store ptr %1, ptr %i.f, align 8, !tbaa !62
  store ptr %1, ptr %i.c, align 8, !tbaa !60
  br label %ZSTDv07_checkContinuity.exit

ZSTDv07_checkContinuity.exit:                     ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21604 ; 10 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !49
  switch i32 %i.m, label %ZSTDv07_decodeFrameHeader.exit.thread [
    i32 0, label %bb.e
    i32 1, label %ZSTDv07_checkContinuity.exit._crit_edge
    i32 2, label %bb.q
    i32 3, label %bb.u
    i32 4, label %bb.ab
    i32 5, label %bb.ac
  ]

ZSTDv07_checkContinuity.exit._crit_edge:          ; preds = %ZSTDv07_checkContinuity.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 21704
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !140
  br label %bb.l

bb.e:                                             ; preds = %ZSTDv07_checkContinuity.exit
  %.not92 = icmp eq i64 %4, 5
  br i1 %.not92, label %bb.f, label %ZSTDv07_decodeFrameHeader.exit.thread

bb.f:                                             ; preds = %bb.e
  %.val95 = load i32, ptr %3, align 1
  %i.n = and i32 %.val95, -16
  %i.o = icmp eq i32 %i.n, 407710288
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152840
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.p, ptr noundef nonnull align 1 dereferenceable(5) %3, i64 5, i1 false)
  store i64 3, ptr %i.a, align 8, !tbaa !48
  store i32 4, ptr %i.l, align 4, !tbaa !49
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %3, i64 4
  %.val96 = load i8, ptr %i.q, align 1, !tbaa !17
  %i.r = zext i8 %.val96 to i32                   ; 3 uses
  %i.s = and i32 %i.r, 3
  %i.t = lshr i32 %i.r, 6                         ; 2 uses
  %i.u = and i32 %i.r, 32                         ; 2 uses
  %.not.i97 = icmp ne i32 %i.u, 0
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv07_did_fieldSize, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  %i.y = zext nneg i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv07_fcs_fieldSize, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !59
  %.not10.i = icmp eq i32 %i.t, 0
  %narrow1.i = and i1 %.not.i97, %.not10.i
  %i.ab = zext i1 %narrow1.i to i64
  %.lobit.i = lshr exact i32 %i.u, 5
  %narrow.i = sub nuw nsw i32 6, %.lobit.i
  %i.ac = zext nneg i32 %narrow.i to i64
  %i.ad = add i64 %i.aa, %i.x
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = add i64 %i.ae, %i.ab                    ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 21704
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !140
  %i.ah = icmp ult i64 %i.af, -119
  br i1 %i.ah, label %bb.i, label %ZSTDv07_decodeFrameHeader.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152840
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ai, ptr noundef nonnull align 1 dereferenceable(5) %3, i64 5, i1 false)
  %i.aj = icmp ugt i64 %i.af, 5
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = add i64 %i.af, -5
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !48
  store i32 1, ptr %i.l, align 4, !tbaa !49
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.k:                                             ; preds = %bb.i
  store i64 0, ptr %i.a, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %ZSTDv07_checkContinuity.exit._crit_edge, %bb.k
  %i.al = phi i64 [ %i.af, %bb.k ], [ %.pre, %ZSTDv07_checkContinuity.exit._crit_edge ]
  %i.am = phi i64 [ 0, %bb.k ], [ %4, %ZSTDv07_checkContinuity.exit._crit_edge ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152840
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152845
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %3, i64 %i.am, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 21576
  %i.aq = tail call i64 @ZSTDv07_getFrameParams(ptr noundef nonnull %i.ap, ptr noundef nonnull readonly %i.an, i64 noundef %i.al) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 21588
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !64 ; 2 uses
  %.not.i98 = icmp eq i32 %i.as, 0
  br i1 %.not.i98, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 21712
  %i.au = load i32, ptr %i.at, align 8, !tbaa !52
  %.not10.i99 = icmp eq i32 %i.au, %i.as
  br i1 %.not10.i99, label %bb.n, label %ZSTDv07_decodeFrameHeader.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 21592
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !65
  %.not11.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i, label %ZSTDv07_decodeFrameHeader.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 21616
  %i.ay = tail call i32 @ZSTD_XXH64_reset(ptr noundef nonnull captures(address) %i.ax, i64 noundef 0) #27 ; 0 uses
  br label %ZSTDv07_decodeFrameHeader.exit

ZSTDv07_decodeFrameHeader.exit:                   ; preds = %bb.n, %bb.o
  %i.az = icmp ult i64 %i.aq, -119
  br i1 %i.az, label %bb.p, label %ZSTDv07_decodeFrameHeader.exit.thread

bb.p:                                             ; preds = %ZSTDv07_decodeFrameHeader.exit
  store i64 3, ptr %i.a, align 8, !tbaa !48
  store i32 2, ptr %i.l, align 4, !tbaa !49
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.q:                                             ; preds = %ZSTDv07_checkContinuity.exit
  %i.ba = load i8, ptr %3, align 1, !tbaa !17     ; 3 uses
  %i.bb = lshr i8 %i.ba, 6                        ; 2 uses
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = getelementptr i8, ptr %3, i64 1         ; 2 uses
  switch i8 %i.bb, label %ZSTDv07_getcBlockSize.exit [
    i8 3, label %ZSTDv07_getcBlockSize.exit.thread
    i8 2, label %ZSTDv07_getcBlockSize.exit.thread107
  ]

ZSTDv07_getcBlockSize.exit:                       ; preds = %bb.q
  %i.be = and i8 %i.ba, 7
  %5 = zext nneg i8 %i.be to i64
  %6 = shl nuw nsw i64 %5, 16
  %7 = load i16, ptr %i.bd, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %i.bf = zext i16 %8 to i64
  %9 = or disjoint i64 %6, %i.bf
  br label %ZSTDv07_getcBlockSize.exit.thread107

ZSTDv07_getcBlockSize.exit.thread:                ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 21592
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !65
  %.not90 = icmp eq i32 %i.bh, 0
  br i1 %.not90, label %bb.s, label %bb.r

bb.r:                                             ; preds = %ZSTDv07_getcBlockSize.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 21616
  %i.bj = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(address) %i.bi) #29
  %i.bk = lshr i64 %i.bj, 11
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 4194303
  %10 = load i16, ptr %i.bd, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = zext i16 %11 to i32
  %i.bn = and i8 %i.ba, 63
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 16
  %i.bq = or disjoint i32 %i.bp, %12
  %.not91 = icmp eq i32 %i.bq, %i.bm
  br i1 %.not91, label %bb.s, label %ZSTDv07_decodeFrameHeader.exit.thread

bb.s:                                             ; preds = %bb.r, %ZSTDv07_getcBlockSize.exit.thread
  store i64 0, ptr %i.a, align 8, !tbaa !48
  br label %bb.t

ZSTDv07_getcBlockSize.exit.thread107:             ; preds = %ZSTDv07_getcBlockSize.exit, %bb.q
  %.0.i100109 = phi i64 [ %9, %ZSTDv07_getcBlockSize.exit ], [ 1, %bb.q ]
  store i64 %.0.i100109, ptr %i.a, align 8, !tbaa !48
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store i32 %i.bc, ptr %i.br, align 8, !tbaa !141
  br label %bb.t

bb.t:                                             ; preds = %ZSTDv07_getcBlockSize.exit.thread107, %bb.s
  %storemerge = phi i32 [ 3, %ZSTDv07_getcBlockSize.exit.thread107 ], [ 0, %bb.s ]
  store i32 %storemerge, ptr %i.l, align 4, !tbaa !49
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.u:                                             ; preds = %ZSTDv07_checkContinuity.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 21600
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !141
  switch i32 %i.bt, label %ZSTDv07_decodeFrameHeader.exit.thread [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 3, label %ZSTDv07_copyRawBlock.exit.thread
  ]

bb.v:                                             ; preds = %bb.u
  %i.bu = tail call fastcc i64 @ZSTDv07_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTDv07_copyRawBlock.exit

bb.w:                                             ; preds = %bb.u
  %i.bv = icmp ugt i64 %4, %2
  br i1 %i.bv, label %ZSTDv07_copyRawBlock.exit.thread113, label %bb.x

ZSTDv07_copyRawBlock.exit.thread113:              ; preds = %bb.w
  store i32 2, ptr %i.l, align 4, !tbaa !49
  store i64 3, ptr %i.a, align 8, !tbaa !48
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.x:                                             ; preds = %bb.w
  %.not.i101 = icmp eq i64 %4, 0
  br i1 %.not.i101, label %ZSTDv07_copyRawBlock.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %ZSTDv07_copyRawBlock.exit

ZSTDv07_copyRawBlock.exit.thread:                 ; preds = %bb.u, %bb.x
  store i32 2, ptr %i.l, align 4, !tbaa !49
  store i64 3, ptr %i.a, align 8, !tbaa !48
  br label %bb.z

ZSTDv07_copyRawBlock.exit:                        ; preds = %bb.y, %bb.v
  %.0 = phi i64 [ %i.bu, %bb.v ], [ %4, %bb.y ]   ; 3 uses
  store i32 2, ptr %i.l, align 4, !tbaa !49
  store i64 3, ptr %i.a, align 8, !tbaa !48
  %i.bw = icmp ult i64 %.0, -119
  br i1 %i.bw, label %bb.z, label %ZSTDv07_decodeFrameHeader.exit.thread

bb.z:                                             ; preds = %ZSTDv07_copyRawBlock.exit.thread, %ZSTDv07_copyRawBlock.exit
  %.0112 = phi i64 [ 0, %ZSTDv07_copyRawBlock.exit.thread ], [ %.0, %ZSTDv07_copyRawBlock.exit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %.0112
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 21520
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 21592
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !65
  %.not88 = icmp eq i32 %i.ca, 0
  br i1 %.not88, label %ZSTDv07_decodeFrameHeader.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 21616
  %i.cc = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(address) %i.cb, ptr noundef captures(address) %1, i64 noundef %.0112) #27 ; 0 uses
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.ab:                                            ; preds = %ZSTDv07_checkContinuity.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152845
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %3, i64 %4, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 152844
  %.val = load i32, ptr %i.ce, align 4
  %i.cf = zext i32 %.val to i64
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !48
  store i32 5, ptr %i.l, align 4, !tbaa !49
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.ac:                                            ; preds = %ZSTDv07_checkContinuity.exit
  store i64 0, ptr %i.a, align 8, !tbaa !48
  store i32 0, ptr %i.l, align 4, !tbaa !49
  br label %ZSTDv07_decodeFrameHeader.exit.thread

ZSTDv07_decodeFrameHeader.exit.thread:            ; preds = %bb.m, %ZSTDv07_copyRawBlock.exit.thread113, %bb.t, %bb.r, %bb.h, %ZSTDv07_checkContinuity.exit, %bb.u, %ZSTDv07_copyRawBlock.exit, %bb.aa, %bb.z, %bb.p, %ZSTDv07_decodeFrameHeader.exit, %bb.e, %bb.a, %bb.ac, %bb.ab, %bb.j, %bb.g
  %.4 = phi i64 [ 0, %bb.ac ], [ %.0112, %bb.z ], [ -72, %bb.a ], [ 0, %bb.g ], [ -1, %ZSTDv07_checkContinuity.exit ], [ 0, %bb.j ], [ -72, %bb.e ], [ -70, %ZSTDv07_copyRawBlock.exit.thread113 ], [ %i.aq, %ZSTDv07_decodeFrameHeader.exit ], [ 0, %bb.ab ], [ 0, %bb.p ], [ %.0, %ZSTDv07_copyRawBlock.exit ], [ -1, %bb.u ], [ %.0112, %bb.aa ], [ %i.af, %bb.h ], [ -22, %bb.r ], [ 0, %bb.t ], [ -32, %bb.m ]
  ret i64 %.4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(address)) local_unnamed_addr #16

declare i32 @ZSTD_XXH64_update(ptr noundef captures(address), ptr noundef captures(address), i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @ZSTDv07_createDDict(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #28 ; 7 uses
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef %1) #28 ; 6 uses
  %i.c = tail call noalias noundef dereferenceable_or_null(152864) ptr @malloc(i64 noundef 152864) #28 ; 16 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %ZSTDv07_createDCtx_advanced.exit.thread.i, label %ZSTDv07_createDCtx_advanced.exit.i

ZSTDv07_createDCtx_advanced.exit.i:               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 21728
  store ptr @ZSTDv07_defaultAllocFunction, ptr %i.d, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 21736
  store ptr @ZSTDv07_defaultFreeFunction, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 21744
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 21552
  store i64 5, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 21604
  store i32 0, ptr %i.f, align 4, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 21520
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.h, align 4, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 21612
  store i32 0, ptr %i.i, align 4, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 21608
  store i32 0, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 21712
  store i32 0, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !13
  %i.m = icmp ne ptr %i.b, null
  %i.n = icmp ne ptr %i.a, null
  %or.cond7.i = and i1 %i.n, %i.m
  br i1 %or.cond7.i, label %bb.b, label %ZSTDv07_createDCtx_advanced.exit.thread.i

ZSTDv07_createDCtx_advanced.exit.thread.i:        ; preds = %ZSTDv07_createDCtx_advanced.exit.i, %bb.a
  tail call void @free(ptr noundef %i.b) #27
  tail call void @free(ptr noundef %i.a) #27
  tail call void @free(ptr noundef %i.c) #27
  br label %ZSTDv07_createDDict_advanced.exit

bb.b:                                             ; preds = %ZSTDv07_createDCtx_advanced.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.o = tail call i64 @ZSTDv07_decompressBegin_usingDict(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef %1)
  %i.p = icmp ult i64 %i.o, -119
  br i1 %i.p, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #27
  tail call void @free(ptr noundef nonnull %i.a) #27
  tail call void @free(ptr noundef nonnull %i.c) #27
  br label %ZSTDv07_createDDict_advanced.exit

.critedge.i:                                      ; preds = %bb.b
  store ptr %i.b, ptr %i.a, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.q, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.r, align 8, !tbaa !70
  br label %ZSTDv07_createDDict_advanced.exit

ZSTDv07_createDDict_advanced.exit:                ; preds = %ZSTDv07_createDCtx_advanced.exit.thread.i, %bb.c, %.critedge.i
  %.2.i = phi ptr [ null, %ZSTDv07_createDCtx_advanced.exit.thread.i ], [ %i.a, %.critedge.i ], [ null, %bb.c ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define noundef i64 @ZSTDv07_freeDDict(ptr noundef %0) local_unnamed_addr #1 {
ZSTDv07_freeDCtx.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 21736
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 21744
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 3 uses
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %i.b) #27, !inline_history !66
  %i.g = load ptr, ptr %0, align 8, !tbaa !69
  tail call void %i.d(ptr noundef %i.f, ptr noundef %i.g) #27
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %0) #27
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv07_decompress_usingDDict(ptr noundef initializes((0, 21766)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21766) %0, ptr noundef nonnull readonly align 8 dereferenceable(21766) %i.b, i64 21766, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %.not.i.i = icmp eq ptr %1, %i.d
  br i1 %.not.i.i, label %ZSTDv07_decompress_usingPreparedDCtx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.d, ptr %i.e, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %.neg.i.i = sub i64 %i.i, %i.h
  %i.j = getelementptr inbounds i8, ptr %1, i64 %.neg.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.j, ptr %i.k, align 8, !tbaa !63
  store ptr %1, ptr %i.f, align 8, !tbaa !62
  store ptr %1, ptr %i.c, align 8, !tbaa !60
  br label %ZSTDv07_decompress_usingPreparedDCtx.exit

ZSTDv07_decompress_usingPreparedDCtx.exit:        ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@ZSTDv07_buildSeqTable:bb.a
  br i1 %lcmp.mod.not, label %bb.aj, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.z
  %indvars.iv.i20.epil.init = phi i64 [ 0, %bb.z ], [ %indvars.iv.next.i28.1, %.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i21.epil.init = phi i16 [ 1, %bb.z ], [ %.sroa.4.2.i27.1, %.unr-lcssa ] ; 2 uses
  %.07178.i22.epil.init = phi i32 [ %i.cr, %bb.z ], [ %.172.i26.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod63 = trunc i32 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i20.epil.init
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !16 ; 3 uses
  %i.ds = icmp eq i16 %i.dr, -1
  br i1 %i.ds, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.epil.preheader
  %i.dt = sext i16 %i.dr to i32
  %.not76.i23.epil = icmp sgt i32 %i.ct, %i.dt
  %spec.select.i24.epil = select i1 %.not76.i23.epil, i16 %.sroa.4.079.i21.epil.init, i16 0
  br label %.epilog-lcssa

bb.ai:                                            ; preds = %.epil.preheader
  %i.du = trunc i64 %indvars.iv.i20.epil.init to i8
  %i.dv = add i32 %.07178.i22.epil.init, -1
  %i.dw = zext i32 %.07178.i22.epil.init to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 %i.du, ptr %i.dy, align 2, !tbaa !22
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %bb.ai, %bb.ah
  %.sink.i25.epil = phi i16 [ 1, %bb.ai ], [ %i.dr, %bb.ah ]
  %.172.i26.epil = phi i32 [ %i.dv, %bb.ai ], [ %.07178.i22.epil.init, %bb.ah ]
  %.sroa.4.2.i27.epil = phi i16 [ %.sroa.4.079.i21.epil.init, %bb.ai ], [ %spec.select.i24.epil, %bb.ah ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i20.epil.init
  store i16 %.sink.i25.epil, ptr %i.dz, align 2, !tbaa !16
  br label %bb.aj

bb.aj:                                            ; preds = %.unr-lcssa, %.epilog-lcssa
  %.172.i26.lcssa = phi i32 [ %.172.i26.1, %.unr-lcssa ], [ %.172.i26.epil, %.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i27.lcssa = phi i16 [ %.sroa.4.2.i27.1, %.unr-lcssa ], [ %.sroa.4.2.i27.epil, %.epilog-lcssa ]
  %i.ea = trunc nuw nsw i32 %i.cm to i16
  store i16 %i.ea, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.i27.lcssa, ptr %.sroa.4.0..sroa_idx.i30, align 2
  %i.eb = lshr i32 %i.cq, 1
  %i.ec = lshr i32 %i.cq, 3
  %i.ed = add nuw nsw i32 %i.ec, 3
  %i.ee = add nuw nsw i32 %i.ed, %i.eb            ; 3 uses
  br label %.preheader77.i31

.preheader77.i31:                                 ; preds = %._crit_edge.i34, %bb.aj
  %indvars.iv87.i32 = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next88.i36, %._crit_edge.i34 ] ; 3 uses
  %.06684.i33 = phi i32 [ 0, %bb.aj ], [ %.167.lcssa.i35, %._crit_edge.i34 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv87.i32
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !16 ; 5 uses
  %i.eh = icmp sgt i16 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.i46, label %._crit_edge.i34

.lr.ph.i46:                                       ; preds = %.preheader77.i31
  %i.ei = trunc i64 %indvars.iv87.i32 to i8       ; 3 uses
  %i.ej = icmp eq i16 %i.eg, 1
  br i1 %i.ej, label %.epil.preheader64, label %.lr.ph.i46.new

.lr.ph.i46.new:                                   ; preds = %.lr.ph.i46
  %i.ek = and i16 %i.eg, 32766
  %unroll_iter69 = zext nneg i16 %i.ek to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i46.new
  %.16781.i48 = phi i32 [ %.06684.i33, %.lr.ph.i46.new ], [ %.2.i51.1, %bb.ao ] ; 2 uses
  %niter70 = phi i32 [ 0, %.lr.ph.i46.new ], [ %niter70.next.1, %bb.ao ]
  %i.el = zext nneg i32 %.16781.i48 to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i8 %i.ei, ptr %i.en, align 2, !tbaa !22
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.167.pn.i49 = phi i32 [ %.16781.i48, %bb.ak ], [ %.2.i51, %bb.al ]
  %.pn.i50 = add nuw nsw i32 %i.ee, %.167.pn.i49
  %.2.i51 = and i32 %.pn.i50, %i.cr               ; 4 uses
  %i.eo = icmp ugt i32 %.2.i51, %.172.i26.lcssa
  br i1 %i.eo, label %bb.al, label %bb.am, !llvm.loop !1

bb.am:                                            ; preds = %bb.al
  %i.ep = zext nneg i32 %.2.i51 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i8 %i.ei, ptr %i.er, align 2, !tbaa !22
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.167.pn.i49.1 = phi i32 [ %.2.i51, %bb.am ], [ %.2.i51.1, %bb.an ]
  %.pn.i50.1 = add nuw nsw i32 %i.ee, %.167.pn.i49.1
  %.2.i51.1 = and i32 %.pn.i50.1, %i.cr           ; 5 uses
  %i.es = icmp ugt i32 %.2.i51.1, %.172.i26.lcssa
  br i1 %i.es, label %bb.an, label %bb.ao, !llvm.loop !1

bb.ao:                                            ; preds = %bb.an
  %niter70.next.1 = add i32 %niter70, 2           ; 2 uses
  %niter70.ncmp.1 = icmp eq i32 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %._crit_edge.i34.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !2

._crit_edge.i34.loopexit.unr-lcssa:               ; preds = %bb.ao
  %i.et = and i16 %i.eg, 1
  %lcmp.mod66.not = icmp eq i16 %i.et, 0
  br i1 %lcmp.mod66.not, label %._crit_edge.i34, label %.epil.preheader64

.epil.preheader64:                                ; preds = %._crit_edge.i34.loopexit.unr-lcssa, %.lr.ph.i46
  %.16781.i48.epil.init = phi i32 [ %.06684.i33, %.lr.ph.i46 ], [ %.2.i51.1, %._crit_edge.i34.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i16 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.eu = zext nneg i32 %.16781.i48.epil.init to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  store i8 %i.ei, ptr %i.ew, align 2, !tbaa !22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader64
  %.167.pn.i49.epil = phi i32 [ %.16781.i48.epil.init, %.epil.preheader64 ], [ %.2.i51.epil, %bb.ap ]
  %.pn.i50.epil = add nuw nsw i32 %i.ee, %.167.pn.i49.epil
  %.2.i51.epil = and i32 %.pn.i50.epil, %i.cr     ; 3 uses
  %i.ex = icmp ugt i32 %.2.i51.epil, %.172.i26.lcssa
  br i1 %i.ex, label %bb.ap, label %._crit_edge.i34, !llvm.loop !1

._crit_edge.i34:                                  ; preds = %._crit_edge.i34.loopexit.unr-lcssa, %bb.ap, %.preheader77.i31
  %.167.lcssa.i35 = phi i32 [ %.06684.i33, %.preheader77.i31 ], [ %.2.i51.1, %._crit_edge.i34.loopexit.unr-lcssa ], [ %.2.i51.epil, %bb.ap ] ; 2 uses
  %indvars.iv.next88.i36 = add nuw nsw i64 %indvars.iv87.i32, 1 ; 2 uses
  %exitcond91.not.i37 = icmp eq i64 %indvars.iv.next88.i36, %wide.trip.count.i19
  br i1 %exitcond91.not.i37, label %bb.aq, label %.preheader77.i31, !llvm.loop !3

bb.aq:                                            ; preds = %._crit_edge.i34
  %.not.i38 = icmp eq i32 %.167.lcssa.i35, 0
  br i1 %.not.i38, label %.preheader.preheader.i40, label %FSEv07_buildDTable.exit53

.preheader.preheader.i40:                         ; preds = %bb.aq
  %wide.trip.count95.i41 = zext nneg i32 %i.cq to i64
  br label %.preheader.i42

.preheader.i42:                                   ; preds = %.preheader.i42, %.preheader.preheader.i40
  %indvars.iv92.i43 = phi i64 [ 0, %.preheader.preheader.i40 ], [ %indvars.iv.next93.i44, %.preheader.i42 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv92.i43 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !22
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fb ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !16 ; 2 uses
  %i.fe = add i16 %i.fd, 1
  store i16 %i.fe, ptr %i.fc, align 2, !tbaa !16
  %i.ff = zext i16 %i.fd to i32                   ; 2 uses
  %i.fg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ff, i1 true)
  %i.fh = xor i32 %i.fg, 31
  %i.fi = sub nsw i32 %i.cm, %i.fh                ; 2 uses
  %i.fj = trunc nsw i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !23
  %i.fl = and i32 %i.fi, 255
  %i.fm = shl i32 %i.ff, %i.fl
  %i.fn = sub i32 %i.fm, %i.cq
  %i.fo = trunc i32 %i.fn to i16
  store i16 %i.fo, ptr %i.ey, align 2, !tbaa !24
  %indvars.iv.next93.i44 = add nuw nsw i64 %indvars.iv92.i43, 1 ; 2 uses
  %exitcond96.not.i45 = icmp eq i64 %indvars.iv.next93.i44, %wide.trip.count95.i41
  br i1 %exitcond96.not.i45, label %FSEv07_buildDTable.exit53, label %.preheader.i42, !llvm.loop !4

FSEv07_buildDTable.exit53:                        ; preds = %.preheader.i42, %bb.y, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.x, %bb.w, %FSEv07_buildDTable.exit53
  %.0 = phi i64 [ %i.ck, %FSEv07_buildDTable.exit53 ], [ -20, %bb.w ], [ -20, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.as

bb.as:                                            ; preds = %bb.v, %bb.c, %bb.b, %bb.ar, %FSEv07_buildDTable.exit, %bb.d
  %.1 = phi i64 [ %.0, %bb.ar ], [ -72, %bb.b ], [ 1, %bb.d ], [ %., %bb.v ], [ 0, %FSEv07_buildDTable.exit ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(address), i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = distinct !{!3, !14}
!4 = distinct !{!4, !14}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"short", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"", !15, i64 0, !9, i64 2, !9, i64 3}
!22 = !{!21, !9, i64 2}
!23 = !{!21, !9, i64 3}
!24 = !{!21, !15, i64 0}
!25 = !{!"", !15, i64 0, !15, i64 2}
!26 = !{!25, !15, i64 0}
!27 = !{!25, !15, i64 2}
!28 = !{!"long", !9, i64 0}
!29 = !{!"any pointer", !9, i64 0}
!30 = !{!"p1 omnipotent char", !29, i64 0}
!31 = !{!"", !28, i64 0, !10, i64 8, !30, i64 16, !30, i64 24}
!32 = !{!31, !30, i64 24}
!33 = !{!31, !30, i64 16}
!34 = !{!31, !28, i64 0}
!35 = !{!31, !10, i64 8}
!36 = !{!"", !9, i64 0, !9, i64 1}
!37 = !{!36, !9, i64 0}
!38 = !{!36, !9, i64 1}
!39 = !{!30, !30, i64 0}
!40 = !{!"", !10, i64 0, !10, i64 4}
!41 = !{!40, !10, i64 0}
!42 = !{!40, !10, i64 4}
!43 = !{!"long long", !9, i64 0}
!44 = !{!"", !43, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!45 = !{!"XXH64_state_s", !28, i64 0, !9, i64 8, !9, i64 40, !10, i64 72, !10, i64 76, !28, i64 80}
!46 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16}
!47 = !{!"ZSTDv07_DCtx_s", !9, i64 0, !9, i64 2052, !9, i64 3080, !9, i64 5132, !29, i64 21520, !29, i64 21528, !29, i64 21536, !29, i64 21544, !28, i64 21552, !9, i64 21560, !44, i64 21576, !10, i64 21600, !10, i64 21604, !10, i64 21608, !10, i64 21612, !45, i64 21616, !28, i64 21704, !10, i64 21712, !30, i64 21720, !46, i64 21728, !28, i64 21752, !9, i64 21760, !9, i64 152840}
!48 = !{!47, !28, i64 21552}
!49 = !{!47, !10, i64 21604}
!50 = !{!47, !10, i64 21612}
!51 = !{!47, !10, i64 21608}
!52 = !{!47, !10, i64 21712}
!53 = !{!46, !29, i64 0}
!54 = !{!29, !29, i64 0}
!55 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54}
!56 = !{!46, !29, i64 16}
!57 = !{!47, !29, i64 21736}
!58 = !{!47, !29, i64 21744}
!59 = !{!28, !28, i64 0}
!60 = !{!47, !29, i64 21520}
!61 = !{!47, !29, i64 21544}
!62 = !{!47, !29, i64 21528}
!63 = !{!47, !29, i64 21536}
!64 = !{!47, !10, i64 21588}
!65 = !{!47, !10, i64 21592}
!66 = !{ptr @ZSTDv07_freeDCtx}
!67 = !{!"p1 _ZTS14ZSTDv07_DCtx_s", !29, i64 0}
!68 = !{!"ZSTDv07_DDict_s", !29, i64 0, !28, i64 8, !67, i64 16}
!69 = !{!68, !29, i64 0}
!70 = !{!68, !67, i64 16}
!71 = !{!"ZBUFFv07_DCtx_s", !67, i64 0, !44, i64 8, !10, i64 32, !30, i64 40, !28, i64 48, !28, i64 56, !30, i64 64, !28, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !9, i64 104, !28, i64 128, !46, i64 136}
!72 = !{!71, !67, i64 0}
!73 = !{!71, !10, i64 32}
!74 = !{!71, !30, i64 40}
!75 = !{!71, !29, i64 144}
!76 = !{!71, !29, i64 152}
!77 = !{!71, !30, i64 64}
!78 = !{!71, !28, i64 56}
!79 = !{!71, !28, i64 128}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !14, !19, !20}
!88 = distinct !{!88, !14, !19}
!89 = distinct !{!89, !14}
!90 = !{!85}
!91 = !{!86}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14, !19, !20}
!96 = distinct !{!96, !14, !19, !20}
!97 = distinct !{!97, !14, !20, !19}
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !14}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !117}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14, !19, !20}
!106 = distinct !{!106, !117}
!107 = distinct !{!107, !14, !19}
!108 = distinct !{!108, !14}
!109 = distinct !{!109, !14, !19, !20}
!110 = distinct !{!110, !14, !20, !19}
!111 = distinct !{!111, !14, !19, !20}
!112 = distinct !{!112, !14, !19}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14, !19, !20}
!115 = distinct !{!115, !14, !20, !19}
!116 = distinct !{!116, !14}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = distinct !{!118, !14}
!119 = !{!44, !43, i64 0}
!120 = !{!44, !10, i64 8}
!121 = !{!44, !10, i64 12}
!122 = distinct !{!122, !"ZSTDv07_decodeSequence"}
!123 = distinct !{!123, !122, !"ZSTDv07_decodeSequence: argument 0"}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14, !19, !20}
!126 = distinct !{!126, !14, !19, !20}
!127 = distinct !{!127, !14, !19}
!128 = distinct !{!128, !14, !19, !20}
!129 = distinct !{!129, !14, !19, !20}
!130 = distinct !{!130, !14, !19}
!131 = distinct !{!131, !14}
!132 = !{!47, !30, i64 21720}
!133 = !{!47, !28, i64 21752}
!134 = !{!"", !28, i64 0, !29, i64 8}
!135 = !{!134, !28, i64 0}
!136 = !{!134, !29, i64 8}
!137 = !{!123}
!138 = !{!"branch_weights", i32 8, i32 24}
!139 = !{!43, !43, i64 0}
!140 = !{!47, !28, i64 21704}
!141 = !{!47, !10, i64 21600}
!142 = !{!68, !28, i64 8}
!143 = !{ptr @ZSTDv07_createDCtx_advanced}
!144 = !{ptr @ZBUFFv07_freeDCtx}
!145 = distinct !{!145, !14}
!146 = !{!71, !28, i64 88}
!147 = !{!71, !28, i64 80}
!148 = !{!71, !10, i64 16}
!149 = !{!71, !28, i64 96}
!150 = !{!71, !28, i64 48}
!151 = !{!71, !29, i64 136}
!152 = !{!71, !28, i64 72}
!153 = distinct !{!153, !14}
!154 = distinct !{!154, !14}
!155 = distinct !{!155, !14}
!156 = distinct !{!156, !14}
end_hunk_1
