Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/scpr?download=true
inline.NumInlined: 91
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 78
begin_hunk_0_@decode_value3:bb.a
bytestream2_get_le32.exit.i:                      ; preds = %bb.i, %bb.h
  %.0.i.i = phi i32 [ 0, %bb.h ], [ %i.dw, %bb.i ]
  store i32 %.0.i.i, ptr %i.b, align 8, !tbaa !52
  store i32 0, ptr %i.dk, align 8, !tbaa !53
  br label %sync_code3.exit

sync_code3.exit:                                  ; preds = %decode3.exit, %bytestream2_get_le32.exit.i
  store i32 %.1101, ptr %7, align 4, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %.loopexit77, %sync_code3.exit
  %.065 = phi i32 [ 0, %sync_code3.exit ], [ -1094995529, %.loopexit77 ]
  ret i32 %.065
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_unit3(ptr nofree noundef %0, ptr noundef %1, i32 noundef range(i32 0, 4096) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.PixelModel3, align 4        ; 11 uses
  %i.a = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %5 = alloca %struct.PixelModel3, align 4        ; 11 uses
  %6 = alloca %struct.PixelModel3, align 4        ; 17 uses
  %7 = alloca %struct.PixelModel3, align 4        ; 15 uses
  %8 = alloca %struct.PixelModel3, align 4        ; 73 uses
  %9 = alloca %struct.PixelModel3, align 4        ; 7 uses
  %10 = alloca %struct.PixelModel3, align 4       ; 11 uses
  %i.b = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %11 = alloca %struct.PixelModel3, align 4       ; 7 uses
  %i.c = alloca i16, align 2                      ; 7 uses
  %i.d = alloca i16, align 2                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 39 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i16 0, ptr %i.c, align 2, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i16 0, ptr %i.d, align 2, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.h = load i8, ptr %1, align 4, !tbaa !56
  switch i8 %i.h, label %sync_code3.exit [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.as
    i8 3, label %bb.by
    i8 4, label %bb.ck
    i8 5, label %bb.cu
    i8 6, label %bb.do
    i8 7, label %bb.eo
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_byte.exit83

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.p, ptr %i.f, align 8, !tbaa !50
  %i.q = load i8, ptr %i.k, align 1, !tbaa !49
  %i.r = zext i8 %i.q to i32
  br label %bytestream2_get_byte.exit83

bytestream2_get_byte.exit83:                      ; preds = %bb.c, %bb.d
  %.0.i82 = phi i32 [ 0, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  store i32 %.0.i82, ptr %3, align 4, !tbaa !42
  store i8 1, ptr %1, align 4, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 1, ptr %i.s, align 4, !tbaa !66
  %i.t = trunc nuw i32 %.0.i82 to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.t, ptr %i.u, align 4, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !53
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !53
  %i.y = icmp eq i32 %i.x, 131072
  br i1 %i.y, label %bb.e, label %sync_code3.exit

bb.e:                                             ; preds = %bytestream2_get_byte.exit83
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !47  ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp slt i64 %i.ad, 4
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.z, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_le32.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.af, ptr %i.f, align 8, !tbaa !50
  %i.ag = load i32, ptr %i.aa, align 1, !tbaa !49
  br label %bytestream2_get_le32.exit.i

bytestream2_get_le32.exit.i:                      ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ 0, %bb.f ], [ %i.ag, %bb.g ]
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !52
  store i32 0, ptr %i.v, align 8, !tbaa !53
  br label %sync_code3.exit

bb.h:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !47  ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp slt i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_byte.exit81

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !50
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !49
  %i.aq = zext i8 %i.ap to i32
  br label %bytestream2_get_byte.exit81

bytestream2_get_byte.exit81:                      ; preds = %bb.i, %bb.j
  %.0.i80 = phi i32 [ 0, %bb.i ], [ %i.aq, %bb.j ] ; 8 uses
  store i32 %.0.i80, ptr %3, align 4, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !66 ; 7 uses
  %.not27.not.i = icmp eq i16 %i.as, 0
  br i1 %.not27.not.i, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bytestream2_get_byte.exit81
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %wide.trip.count.i = zext i16 %i.as to i64      ; 6 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.l, !llvm.loop !147

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !49
  %i.aw = zext i8 %i.av to i32
  %i.ax = icmp eq i32 %.0.i80, %i.aw
  br i1 %i.ax, label %._crit_edge.i191, label %bb.k

._crit_edge.i191:                                 ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %4, i8 0, i64 1836, i1 false)
  store i8 4, ptr %4, align 4, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i16 %i.as, ptr %i.ay, align 4, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull align 4 %i.at, i64 %wide.trip.count.i, i1 false), !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %i.az, ptr %i.a, align 16, !tbaa !198
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %wide.trip.count.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %.thread.i193, %._crit_edge.i191
  %.0127194.i = phi i32 [ 1, %._crit_edge.i191 ], [ %.1128171.i, %.thread.i193 ] ; 2 uses
  %i.bd = add nsw i32 %.0127194.i, -1             ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !198 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !198 ; 2 uses
  %i.bj = icmp ult ptr %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph189.preheader.i, label %.thread.i193

.lr.ph189.preheader.i:                            ; preds = %bb.m
  %i.bk = sext i32 %.0127194.i to i64
  %i.bl = add nsw i64 %i.bk, -1
  br label %.lr.ph189.i

.lr.ph189.i:                                      ; preds = %bb.ae, %.lr.ph189.preheader.i
  %indvars.iv.i197 = phi i64 [ %i.bl, %.lr.ph189.preheader.i ], [ %indvars.iv.next.i202, %bb.ae ] ; 6 uses
  %.0129186.i = phi ptr [ %i.bg, %.lr.ph189.preheader.i ], [ %.1130.i, %bb.ae ] ; 14 uses
  %.0133185.i = phi ptr [ %i.bi, %.lr.ph189.preheader.i ], [ %.1134.i, %bb.ae ] ; 14 uses
  %i.bm = getelementptr inbounds i8, ptr %.0133185.i, i64 -1 ; 6 uses
  %i.bn = icmp ult ptr %.0129186.i, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.af

bb.n:                                             ; preds = %.lr.ph189.i
  %i.bo = getelementptr inbounds i8, ptr %.0133185.i, i64 -2 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0129186.i, i64 1
  %i.bq = ptrtoint ptr %.0133185.i to i64         ; 2 uses
  %i.br = ptrtoint ptr %.0129186.i to i64         ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr i64 %i.bs, 1
  %i.bu = getelementptr inbounds i8, ptr %.0129186.i, i64 %i.bt ; 8 uses
  %.0129.val161.i = load i8, ptr %.0129186.i, align 1, !tbaa !49 ; 5 uses
  %.0133.val162.i = load i8, ptr %.0133185.i, align 1, !tbaa !49 ; 4 uses
  %i.bv = icmp ugt i8 %.0129.val161.i, %.0133.val162.i
  %.val160.i = load i8, ptr %i.bu, align 1, !tbaa !49 ; 5 uses
  br i1 %i.bv, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp ugt i8 %.0133.val162.i, %.val160.i
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 %.0129.val161.i, ptr %i.bu, align 1, !tbaa !49
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.o
  store i8 %.0129.val161.i, ptr %.0133185.i, align 1, !tbaa !49
  br label %.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.bx = icmp ugt i8 %.0129.val161.i, %.val160.i
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 %.0129.val161.i, ptr %i.bu, align 1, !tbaa !49
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.q, %bb.p
  %.val160.sink.i = phi i8 [ %.val160.i, %bb.s ], [ %.val160.i, %bb.p ], [ %.0133.val162.i, %bb.q ]
  store i8 %.val160.sink.i, ptr %.0129186.i, align 1, !tbaa !49
  %.val155.i.pre = load i8, ptr %i.bu, align 1, !tbaa !49
  %.0133.val156.i.pre = load i8, ptr %.0133185.i, align 1, !tbaa !49
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %bb.r
  %.0133.val156.i = phi i8 [ %.0133.val162.i, %bb.r ], [ %.0133.val156.i.pre, %.sink.split.i ] ; 3 uses
  %.val155.i = phi i8 [ %.val160.i, %bb.r ], [ %.val155.i.pre, %.sink.split.i ] ; 3 uses
  %.0136.i = phi i32 [ 1, %bb.r ], [ 0, %.sink.split.i ]
  %i.by = icmp ugt i8 %.val155.i, %.0133.val156.i
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 %.val155.i, ptr %.0133185.i, align 1, !tbaa !49
  store i8 %.0133.val156.i, ptr %i.bu, align 1, !tbaa !49
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bz = phi i8 [ %.0133.val156.i, %bb.u ], [ %.val155.i, %bb.t ]
  %.1137.i = phi i32 [ 0, %bb.u ], [ %.0136.i, %bb.t ]
  %i.ca = icmp eq ptr %.0129186.i, %i.bo
  br i1 %i.ca, label %.thread.loopexit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = load i8, ptr %i.bm, align 1, !tbaa !49
  store i8 %i.cb, ptr %i.bu, align 1, !tbaa !49
  store i8 %i.bz, ptr %i.bm, align 1, !tbaa !49
  br label %.preheader.i198

.preheader.i198:                                  ; preds = %bb.w, %.critedge152.i
  %.0138181.i = phi ptr [ %.2140.i, %.critedge152.i ], [ %i.bo, %bb.w ] ; 4 uses
  %.0141180.i = phi ptr [ %.2143.i, %.critedge152.i ], [ %i.bp, %bb.w ]
  %.val154.i = load i8, ptr %i.bm, align 1, !tbaa !49 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.preheader.i198
  %.1142175.i = phi ptr [ %.0141180.i, %.preheader.i198 ], [ %i.cd, %bb.y ] ; 3 uses
  %.1142.val.i = load i8, ptr %.1142175.i, align 1, !tbaa !49
  %i.cc = icmp ult i8 %.1142.val.i, %.val154.i
  br i1 %i.cc, label %bb.y, label %.critedge.i199

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %.1142175.i, i64 1 ; 3 uses
  %.not150.i = icmp ugt ptr %i.cd, %.0138181.i
  br i1 %.not150.i, label %.critedge.i199, label %bb.x, !llvm.loop !148

.critedge.i199:                                   ; preds = %bb.y, %bb.x
  %.1142.lcssa.i = phi ptr [ %i.cd, %bb.y ], [ %.1142175.i, %bb.x ] ; 7 uses
  %.not151176.i = icmp ugt ptr %.1142.lcssa.i, %.0138181.i
  br i1 %.not151176.i, label %.critedge152.i, label %.lr.ph178.i

.lr.ph178.i:                                      ; preds = %.critedge.i199, %bb.z
  %.1139177.i = phi ptr [ %i.cf, %bb.z ], [ %.0138181.i, %.critedge.i199 ] ; 4 uses
  %.1139.val.i = load i8, ptr %.1139177.i, align 1, !tbaa !49 ; 2 uses
  %i.ce = icmp ugt i8 %.1139.val.i, %.val154.i
  br i1 %i.ce, label %bb.z, label %.critedge2.i

bb.z:                                             ; preds = %.lr.ph178.i
  %i.cf = getelementptr inbounds i8, ptr %.1139177.i, i64 -1 ; 3 uses
  %.not151.i = icmp ugt ptr %.1142.lcssa.i, %i.cf
  br i1 %.not151.i, label %.critedge152.i, label %.lr.ph178.i, !llvm.loop !149

.critedge2.i:                                     ; preds = %.lr.ph178.i
  %i.cg = load i8, ptr %.1142.lcssa.i, align 1, !tbaa !49
  store i8 %i.cg, ptr %.1139177.i, align 1, !tbaa !49
  store i8 %.1139.val.i, ptr %.1142.lcssa.i, align 1, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %.1142.lcssa.i, i64 1
  %i.ci = getelementptr inbounds i8, ptr %.1139177.i, i64 -1
  br label %.critedge152.i

.critedge152.i:                                   ; preds = %bb.z, %.critedge2.i, %.critedge.i199
  %.2143.i = phi ptr [ %i.ch, %.critedge2.i ], [ %.1142.lcssa.i, %.critedge.i199 ], [ %.1142.lcssa.i, %bb.z ] ; 9 uses
  %.2140.i = phi ptr [ %i.ci, %.critedge2.i ], [ %.0138181.i, %.critedge.i199 ], [ %i.cf, %bb.z ] ; 4 uses
  %.not148.i = icmp ugt ptr %.2143.i, %.2140.i
  br i1 %.not148.i, label %._crit_edge182.i, label %.preheader.i198, !llvm.loop !150

._crit_edge182.i:                                 ; preds = %.critedge152.i
  %.pre.i200 = load i8, ptr %i.bm, align 1, !tbaa !49
  %i.cj = load i8, ptr %.2143.i, align 1, !tbaa !49
  store i8 %.pre.i200, ptr %.2143.i, align 1, !tbaa !49
  store i8 %i.cj, ptr %i.bm, align 1, !tbaa !49
  %.not149.i = icmp eq i32 %.1137.i, 0
  br i1 %.not149.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge182.i
  %i.ck = getelementptr inbounds i8, ptr %.2143.i, i64 -1
  %i.cl = icmp eq ptr %i.bu, %i.ck
  %i.cm = icmp eq ptr %i.bu, %.2143.i
  %or.cond.i201 = or i1 %i.cm, %i.cl
  br i1 %or.cond.i201, label %.preheader168.i.preheader, label %bb.ab

.preheader168.i.preheader:                        ; preds = %bb.aa
  %i.cn = icmp ult ptr %.0129186.i, %.0133185.i
  br i1 %i.cn, label %.lr.ph422, label %.critedge4.i

.preheader168.i:                                  ; preds = %.lr.ph422
  %i.co = icmp ult ptr %i.cp, %.0133185.i
  br i1 %i.co, label %.lr.ph422, label %.critedge4.i, !llvm.loop !151

.lr.ph422:                                        ; preds = %.preheader168.i.preheader, %.preheader168.i
  %.0144.i421 = phi ptr [ %i.cp, %.preheader168.i ], [ %.0129186.i, %.preheader168.i.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0144.i421, i64 1 ; 4 uses
  %.0144.val.i = load i8, ptr %.0144.i421, align 1, !tbaa !49
  %.val.i = load i8, ptr %i.cp, align 1, !tbaa !49
  %.not167.i = icmp ugt i8 %.0144.val.i, %.val.i
  br i1 %.not167.i, label %..critedge4.i_crit_edge, label %.preheader168.i, !llvm.loop !151

..critedge4.i_crit_edge:                          ; preds = %.lr.ph422
  br label %.critedge4.i, !llvm.loop !151

.critedge4.i:                                     ; preds = %.preheader168.i, %..critedge4.i_crit_edge, %.preheader168.i.preheader
  %.0144.i.lcssa = phi ptr [ %.0144.i421, %..critedge4.i_crit_edge ], [ %.0129186.i, %.preheader168.i.preheader ], [ %i.cp, %.preheader168.i ]
  %i.cq = icmp eq ptr %.0144.i.lcssa, %.0133185.i
  br i1 %i.cq, label %.thread.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge4.i, %bb.aa, %._crit_edge182.i
  %i.cr = ptrtoint ptr %.2143.i to i64            ; 2 uses
  %i.cs = sub i64 %i.bq, %i.cr
  %i.ct = sub i64 %i.cr, %i.br
  %i.cu = icmp slt i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.i197 ; 2 uses
  store ptr %.0129186.i, ptr %i.cv, align 16, !tbaa !198
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %.2140.i, ptr %i.cw, align 8, !tbaa !198
  %i.cx = getelementptr inbounds nuw i8, ptr %.2143.i, i64 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %.2143.i, i64 1
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.i197 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 16, !tbaa !198
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %.0133185.i, ptr %i.da, align 8, !tbaa !198
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1134.i = phi ptr [ %.0133185.i, %bb.ac ], [ %.2140.i, %bb.ad ] ; 2 uses
  %.1130.i = phi ptr [ %i.cx, %bb.ac ], [ %.0129186.i, %bb.ad ] ; 2 uses
  %indvars.iv.next.i202 = add nsw i64 %indvars.iv.i197, 1 ; 2 uses
  %i.db = icmp ult ptr %.1130.i, %.1134.i
  br i1 %i.db, label %.lr.ph189.i, label %.thread.loopexit.i

bb.af:                                            ; preds = %.lr.ph189.i
  %i.dc = trunc nsw i64 %indvars.iv.i197 to i32   ; 2 uses
  %.0129.val.i = load i8, ptr %.0129186.i, align 1, !tbaa !49 ; 2 uses
  %.0133.val.i = load i8, ptr %.0133185.i, align 1, !tbaa !49 ; 2 uses
  %i.dd = icmp ugt i8 %.0129.val.i, %.0133.val.i
  br i1 %i.dd, label %bb.ag, label %.thread.i193

bb.ag:                                            ; preds = %bb.af
  store i8 %.0129.val.i, ptr %.0133185.i, align 1, !tbaa !49
  store i8 %.0133.val.i, ptr %.0129186.i, align 1, !tbaa !49
  br label %.thread.i193

.thread.loopexit.i:                               ; preds = %bb.ae, %.critedge4.i, %bb.v
  %.1128171.ph.in.i = phi i64 [ %indvars.iv.i197, %.critedge4.i ], [ %indvars.iv.i197, %bb.v ], [ %indvars.iv.next.i202, %bb.ae ]
  %.1128171.ph.i = trunc i64 %.1128171.ph.in.i to i32
  br label %.thread.i193

.thread.i193:                                     ; preds = %.thread.loopexit.i, %bb.ag, %bb.af, %bb.m
  %.1128171.i = phi i32 [ %i.dc, %bb.ag ], [ %i.dc, %bb.af ], [ %i.bd, %bb.m ], [ %.1128171.ph.i, %.thread.loopexit.i ] ; 2 uses
  %.not.i194 = icmp eq i32 %.1128171.i, 0
  br i1 %.not.i194, label %bb.ah, label %bb.m, !llvm.loop !152

bb.ah:                                            ; preds = %.thread.i193
  %i.de = icmp ult i16 %i.as, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.df = load i16, ptr %i.ay, align 4, !tbaa !66 ; 3 uses
  %.not200.i = icmp eq i16 %i.df, 0
  br i1 %.not200.i, label %update_model1_to_4.exit, label %.lr.ph197.i

.lr.ph197.i:                                      ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 268 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 4 uses
  %wide.trip.count.i195 = zext i16 %i.df to i64   ; 7 uses
  %min.iters.check535 = icmp ult i16 %i.df, 32
  br i1 %min.iters.check535, label %scalar.ph534.preheader, label %vector.memcheck520

vector.memcheck520:                               ; preds = %.lr.ph197.i
  %i.di = shl nuw nsw i64 %wide.trip.count.i195, 1
  %i.dj = getelementptr i8, ptr %4, i64 %i.di
  %scevgep522 = getelementptr i8, ptr %i.dj, i64 268
  %i.dk = getelementptr i8, ptr %4, i64 %wide.trip.count.i195
  %scevgep523 = getelementptr i8, ptr %i.dk, i64 12
  %bound0530 = icmp ult ptr %i.dg, %scevgep523
  %bound1531 = icmp ult ptr %i.az, %scevgep522
  %found.conflict532 = and i1 %bound0530, %bound1531
  br i1 %found.conflict532, label %scalar.ph534.preheader, label %vector.ph536

vector.ph536:                                     ; preds = %vector.memcheck520
  %n.vec537 = and i64 %wide.trip.count.i195, 65528 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0.i80, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body538

vector.body538:                                   ; preds = %bb.aj, %vector.ph536
  %index539 = phi i64 [ 0, %vector.ph536 ], [ %index.next555, %bb.aj ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.az, i64 %index539
  %wide.load540 = load <8 x i8>, ptr %i.dl, align 4, !tbaa !49, !alias.scope !199
  %i.dm = zext <8 x i8> %wide.load540 to <8 x i32>
  %i.dn = icmp eq <8 x i32> %broadcast.splat, %i.dm ; 10 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %index539
  %i.dp = shufflevector <8 x i1> %i.dn, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <8 x i1> %i.dn, <8 x i1> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %rdx.op = or <4 x i1> %i.dp, %i.dq
  %i.dr = bitcast <4 x i1> %rdx.op to i4
  %.not = icmp eq i4 %i.dr, 0
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %vector.body538
  %i.ds = extractelement <8 x i1> %i.dn, i64 7
  %i.dt = trunc i64 %index539 to i8
  %i.du = extractelement <8 x i1> %i.dn, i64 6
  %i.dv = extractelement <8 x i1> %i.dn, i64 5
  %i.dw = extractelement <8 x i1> %i.dn, i64 4
  %i.dx = extractelement <8 x i1> %i.dn, i64 3
  %i.dy = extractelement <8 x i1> %i.dn, i64 2
  %i.dz = extractelement <8 x i1> %i.dn, i64 1
  %i.ea = zext i1 %i.dz to i8
  %spec.select575.v.a = select i1 %i.dy, i8 2, i8 %i.ea
  %spec.select576.v.a = select i1 %i.dx, i8 3, i8 %spec.select575.v.a
  %spec.select577.v = select i1 %i.dw, i8 4, i8 %spec.select576.v.a
  %spec.select578.v = select i1 %i.dv, i8 5, i8 %spec.select577.v
  %spec.select579.v = select i1 %i.du, i8 6, i8 %spec.select578.v
  %spec.select580.v = select i1 %i.ds, i8 7, i8 %spec.select579.v
  %spec.select580 = or disjoint i8 %spec.select580.v, %i.dt
  store i8 %spec.select580, ptr %i.dh, align 2, !tbaa !67, !alias.scope !200, !noalias !201
  br label %bb.aj

bb.aj:                                            ; preds = %vector.body538, %bb.ai
  %predphi = select <8 x i1> %i.dn, <8 x i16> splat (i16 100), <8 x i16> splat (i16 50)
  store <8 x i16> %predphi, ptr %i.do, align 4, !tbaa !58, !alias.scope !202, !noalias !199
  %index.next555 = add nuw i64 %index539, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next555, %n.vec537
  br i1 %i.eb, label %middle.block556, label %vector.body538, !llvm.loop !157

middle.block556:                                  ; preds = %bb.aj
  %cmp.n557 = icmp eq i64 %n.vec537, %wide.trip.count.i195
  br i1 %cmp.n557, label %update_model1_to_4.exit, label %scalar.ph534.preheader

scalar.ph534.preheader:                           ; preds = %vector.memcheck520, %.lr.ph197.i, %middle.block556
  %indvars.iv208.i.ph = phi i64 [ 0, %vector.memcheck520 ], [ 0, %.lr.ph197.i ], [ %n.vec537, %middle.block556 ] ; 6 uses
  %xtraiter646 = and i64 %wide.trip.count.i195, 1
  %lcmp.mod647.not = icmp eq i64 %xtraiter646, 0
  br i1 %lcmp.mod647.not, label %scalar.ph534.prol.loopexit, label %scalar.ph534.prol

scalar.ph534.prol:                                ; preds = %scalar.ph534.preheader
  %i.ec = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv208.i.ph
  %i.ed = load i8, ptr %i.ec, align 4, !tbaa !49
  %i.ee = zext i8 %i.ed to i32
  %i.ef = icmp eq i32 %.0.i80, %i.ee
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv208.i.ph
  br i1 %i.ef, label %bb.ak, label %scalar.ph534.prol.loopexit.unr-lcssa

bb.ak:                                            ; preds = %scalar.ph534.prol
  %i.eh = trunc i64 %indvars.iv208.i.ph to i8
  store i8 %i.eh, ptr %i.dh, align 2, !tbaa !67
  br label %scalar.ph534.prol.loopexit.unr-lcssa

scalar.ph534.prol.loopexit.unr-lcssa:             ; preds = %bb.ak, %scalar.ph534.prol
  %.sink.prol = phi i16 [ 100, %bb.ak ], [ 50, %scalar.ph534.prol ]
  store i16 %.sink.prol, ptr %i.eg, align 4, !tbaa !58
  %indvars.iv.next209.i.prol = or disjoint i64 %indvars.iv208.i.ph, 1
  br label %scalar.ph534.prol.loopexit

scalar.ph534.prol.loopexit:                       ; preds = %scalar.ph534.prol.loopexit.unr-lcssa, %scalar.ph534.preheader
  %indvars.iv208.i.unr = phi i64 [ %indvars.iv208.i.ph, %scalar.ph534.preheader ], [ %indvars.iv.next209.i.prol, %scalar.ph534.prol.loopexit.unr-lcssa ]
  %i.ei = add nsw i64 %wide.trip.count.i195, -1
  %i.ej = icmp eq i64 %indvars.iv208.i.ph, %i.ei
  br i1 %i.ej, label %update_model1_to_4.exit, label %scalar.ph534

scalar.ph534:                                     ; preds = %scalar.ph534.prol.loopexit, %bb.an
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i.1, %bb.an ], [ %indvars.iv208.i.unr, %scalar.ph534.prol.loopexit ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv208.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !49
  %i.em = zext i8 %i.el to i32
  %i.en = icmp eq i32 %.0.i80, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv208.i
  br i1 %i.en, label %bb.al, label %scalar.ph534.1

bb.al:                                            ; preds = %scalar.ph534
  %i.ep = trunc i64 %indvars.iv208.i to i8
  store i8 %i.ep, ptr %i.dh, align 2, !tbaa !67
  br label %scalar.ph534.1

scalar.ph534.1:                                   ; preds = %scalar.ph534, %bb.al
  %.sink = phi i16 [ 100, %bb.al ], [ 50, %scalar.ph534 ]
  store i16 %.sink, ptr %i.eo, align 2, !tbaa !58
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next209.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !49
  %i.es = zext i8 %i.er to i32
  %i.et = icmp eq i32 %.0.i80, %i.es
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv.next209.i
  br i1 %i.et, label %bb.am, label %bb.an

bb.am:                                            ; preds = %scalar.ph534.1
  %i.ev = trunc i64 %indvars.iv.next209.i to i8
  store i8 %i.ev, ptr %i.dh, align 2, !tbaa !67
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %scalar.ph534.1
  %.sink.1 = phi i16 [ 100, %bb.am ], [ 50, %scalar.ph534.1 ]
  store i16 %.sink.1, ptr %i.eu, align 2, !tbaa !58
  %indvars.iv.next209.i.1 = add nuw nsw i64 %indvars.iv208.i, 2 ; 2 uses
  %exitcond.not.i196.1 = icmp eq i64 %indvars.iv.next209.i.1, %wide.trip.count.i195
  br i1 %exitcond.not.i196.1, label %update_model1_to_4.exit, label %scalar.ph534, !llvm.loop !158

update_model1_to_4.exit:                          ; preds = %scalar.ph534.prol.loopexit, %bb.an, %middle.block556, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %4, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.de, label %decode_static1.exit, label %bb.ao

bb.ao:                                            ; preds = %update_model1_to_4.exit
  %i.ew = load i16, ptr %i.ar, align 4, !tbaa !66 ; 4 uses
  %i.ex = zext i16 %i.ew to i32
  %i.ey = sub nsw i32 256, %i.ex                  ; 3 uses
  %.not.i.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i.i, label %update_model1_to_5.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 2 uses
  %wide.trip.count.i.i = zext i16 %i.ew to i64    ; 3 uses
  %min.iters.check560 = icmp ult i16 %i.ew, 8
  br i1 %min.iters.check560, label %scalar.ph559.preheader, label %vector.ph561

vector.ph561:                                     ; preds = %.lr.ph.i.i
  %n.vec562 = and i64 %wide.trip.count.i.i, 65528 ; 3 uses
  %i.fa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ey, i64 0
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph561
  %index564 = phi i64 [ 0, %vector.ph561 ], [ %index.next569, %vector.body563 ] ; 2 uses
  %vec.phi565 = phi <4 x i32> [ %i.fa, %vector.ph561 ], [ %i.ff, %vector.body563 ]
  %vec.phi566 = phi <4 x i32> [ zeroinitializer, %vector.ph561 ], [ %i.fg, %vector.body563 ]
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %index564 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
end_hunk_0
begin_hunk_1_@decode_unit3:bb.a
  br i1 %cmp.n572, label %update_model1_to_5.exit.i, label %scalar.ph559.preheader

scalar.ph559.preheader:                           ; preds = %.lr.ph.i.i, %middle.block570
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec562, %middle.block570 ]
  %.015.i.i.ph = phi i32 [ %i.ey, %.lr.ph.i.i ], [ %i.fi, %middle.block570 ]
  br label %scalar.ph559

scalar.ph559:                                     ; preds = %scalar.ph559.preheader, %scalar.ph559
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph559 ], [ %indvars.iv.i.i.ph, %scalar.ph559.preheader ] ; 2 uses
  %.015.i.i = phi i32 [ %i.fm, %scalar.ph559 ], [ %.015.i.i.ph, %scalar.ph559.preheader ]
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv.i.i
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !58
  %i.fl = zext i16 %i.fk to i32
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fm = add i32 %.015.i.i, %i.fl                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_model1_to_5.exit.i, label %scalar.ph559, !llvm.loop !160

update_model1_to_5.exit.i:                        ; preds = %scalar.ph559, %middle.block570, %bb.ao
  %.0.lcssa.i.i = phi i32 [ %i.ey, %bb.ao ], [ %i.fi, %middle.block570 ], [ %i.fm, %scalar.ph559 ]
  store i8 5, ptr %1, align 4, !tbaa !56
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0.lcssa.i.i, ptr %i.fn, align 4, !tbaa !203
  br label %decode_static1.exit

.critedge.i:                                      ; preds = %bb.k
  %i.fo = icmp ugt i16 %i.as, 13
  br i1 %i.fo, label %update_model1_to_2.exit.i, label %.critedge.thread.i

update_model1_to_2.exit.i:                        ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %11, i8 0, i64 1836, i1 false)
  store i8 2, ptr %11, align 4, !tbaa !56
  %i.fp = add nuw i16 %i.as, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i16 %i.fp, ptr %i.fq, align 4, !tbaa !66
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fr, ptr nonnull align 4 %i.at, i64 %wide.trip.count.i, i1 false), !tbaa !49
  %i.fs = trunc nuw i32 %.0.i80 to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %wide.trip.count.i
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %11, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %decode_static1.exit

.critedge.thread.i:                               ; preds = %bytestream2_get_byte.exit81, %.critedge.i
  %.pre-phi = phi i64 [ %wide.trip.count.i, %.critedge.i ], [ 0, %bytestream2_get_byte.exit81 ]
  %i.fu = trunc nuw i32 %.0.i80 to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.pre-phi
  store i8 %i.fu, ptr %i.fw, align 1, !tbaa !49
  %i.fx = add nuw nsw i16 %i.as, 1
  store i16 %i.fx, ptr %i.ar, align 4, !tbaa !66
  br label %decode_static1.exit

decode_static1.exit:                              ; preds = %update_model1_to_4.exit, %update_model1_to_5.exit.i, %update_model1_to_2.exit.i, %.critedge.thread.i
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !53
  %i.ga = add i32 %i.fz, 1                        ; 2 uses
  store i32 %i.ga, ptr %i.fy, align 8, !tbaa !53
  %i.gb = icmp eq i32 %i.ga, 131072
  br i1 %i.gb, label %bb.ap, label %sync_code3.exit

bb.ap:                                            ; preds = %decode_static1.exit
  %i.gc = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %i.gd = load ptr, ptr %i.f, align 8, !tbaa !47  ; 3 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = icmp slt i64 %i.gg, 4
  br i1 %i.gh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.gc, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_le32.exit.i84

bb.ar:                                            ; preds = %bb.ap
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store ptr %i.gi, ptr %i.f, align 8, !tbaa !50
  %i.gj = load i32, ptr %i.gd, align 1, !tbaa !49
  br label %bytestream2_get_le32.exit.i84

bytestream2_get_le32.exit.i84:                    ; preds = %bb.ar, %bb.aq
  %.0.i.i85 = phi i32 [ 0, %bb.aq ], [ %i.gj, %bb.ar ]
  store i32 %.0.i.i85, ptr %i.g, align 8, !tbaa !52
  store i32 0, ptr %i.fy, align 8, !tbaa !53
  br label %sync_code3.exit

bb.as:                                            ; preds = %bb.a
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !48 ; 2 uses
  %i.gm = load ptr, ptr %i.f, align 8, !tbaa !47  ; 3 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = icmp slt i64 %i.gp, 1
  br i1 %i.gq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr %i.gl, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_byte.exit79

bb.au:                                            ; preds = %bb.as
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  store ptr %i.gr, ptr %i.f, align 8, !tbaa !50
  %i.gs = load i8, ptr %i.gm, align 1, !tbaa !49
  %i.gt = zext i8 %i.gs to i32
  br label %bytestream2_get_byte.exit79

bytestream2_get_byte.exit79:                      ; preds = %bb.at, %bb.au
  %.0.i78 = phi i32 [ 0, %bb.at ], [ %i.gt, %bb.au ] ; 5 uses
  store i32 %.0.i78, ptr %3, align 4, !tbaa !42
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gv = load i16, ptr %i.gu, align 4, !tbaa !66 ; 9 uses
  %i.gw = zext i16 %i.gv to i32                   ; 2 uses
  %.not36.not.i = icmp eq i16 %i.gv, 0
  br i1 %.not36.not.i, label %.critedge.thread.i93, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bytestream2_get_byte.exit79
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %wide.trip.count.i88 = zext i16 %i.gv to i64    ; 6 uses
  br label %bb.aw

bb.av:                                            ; preds = %bb.aw
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, %wide.trip.count.i88
  br i1 %exitcond.not.i91, label %.critedge.i92, label %bb.aw, !llvm.loop !161

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i87
  %indvars.iv.i89 = phi i64 [ 0, %.lr.ph.i87 ], [ %indvars.iv.next.i90, %bb.av ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.i89
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !49
  %i.ha = zext i8 %i.gz to i32
  %i.hb = icmp eq i32 %.0.i78, %i.ha
  br i1 %i.hb, label %bb.ax, label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.hc = icmp ult i16 %i.gv, 33
  %..i = select i1 %i.hc, i32 32, i32 64          ; 2 uses
  %i.hd = trunc nuw i32 %.0.i78 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %10, i8 0, i64 1836, i1 false)
  store i8 6, ptr %10, align 4, !tbaa !56
  %i.he = trunc nuw nsw i32 %..i to i8
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 2 uses
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !68
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 5 uses
  %i.hh = zext nneg i32 %..i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.hg, i8 1, i64 %i.hh, i1 false)
  %i.hi = icmp ult i16 %i.gv, 28
  br i1 %i.hi, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ax
  %i.hj = mul nuw nsw i32 %i.gw, 63
  %i.hk = add nuw nsw i32 %i.hj, 320
  br label %.lr.ph.i.i98

.lr.ph.i.i98:                                     ; preds = %.lr.ph.i.i98, %.lr.ph.preheader.i.i
  %.0221.i.i = phi i32 [ %i.hl, %.lr.ph.i.i98 ], [ %i.hk, %.lr.ph.preheader.i.i ]
  %.0166220.i.i = phi i32 [ %i.hm, %.lr.ph.i.i98 ], [ 0, %.lr.ph.preheader.i.i ]
  %i.hl = shl i32 %.0221.i.i, 1                   ; 2 uses
  %i.hm = add nuw nsw i32 %.0166220.i.i, 1        ; 2 uses
  %i.hn = icmp slt i32 %i.hl, 2049
  br i1 %i.hn, label %.lr.ph.i.i98, label %._crit_edge.i.i, !llvm.loop !162

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i98, %bb.ax
  %.0166.lcssa.i.i = phi i32 [ 0, %bb.ax ], [ %i.hm, %.lr.ph.i.i98 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr %i.gx, ptr %i.b, align 16, !tbaa !198
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gx, i64 %wide.trip.count.i88
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !198
  br label %bb.ay

bb.ay:                                            ; preds = %.thread.i.i, %._crit_edge.i.i
  %.0172242.i.i = phi i32 [ 1, %._crit_edge.i.i ], [ %.1173217.i.i, %.thread.i.i ] ; 2 uses
  %i.hr = add nsw i32 %.0172242.i.i, -1           ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.hs ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 16, !tbaa !198 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !198 ; 2 uses
  %i.hx = icmp ult ptr %i.hu, %i.hw
  br i1 %i.hx, label %.lr.ph237.preheader.i.i, label %.thread.i.i

.lr.ph237.preheader.i.i:                          ; preds = %bb.ay
  %i.hy = sext i32 %.0172242.i.i to i64
  %i.hz = add nsw i64 %i.hy, -1
  br label %.lr.ph237.i.i

.lr.ph237.i.i:                                    ; preds = %bb.bq, %.lr.ph237.preheader.i.i
  %indvars.iv.i.i96 = phi i64 [ %i.hz, %.lr.ph237.preheader.i.i ], [ %indvars.iv.next.i.i97, %bb.bq ] ; 6 uses
  %.0175234.i.i = phi ptr [ %i.hu, %.lr.ph237.preheader.i.i ], [ %.1176.i.i, %bb.bq ] ; 14 uses
  %.0178233.i.i = phi ptr [ %i.hw, %.lr.ph237.preheader.i.i ], [ %.1179.i.i, %bb.bq ] ; 14 uses
  %i.ia = getelementptr inbounds i8, ptr %.0178233.i.i, i64 -1 ; 6 uses
  %i.ib = icmp ult ptr %.0175234.i.i, %i.ia
  br i1 %i.ib, label %bb.az, label %bb.br

bb.az:                                            ; preds = %.lr.ph237.i.i
  %i.ic = getelementptr inbounds i8, ptr %.0178233.i.i, i64 -2 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0175234.i.i, i64 1
  %i.ie = ptrtoint ptr %.0178233.i.i to i64       ; 2 uses
  %i.if = ptrtoint ptr %.0175234.i.i to i64       ; 2 uses
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr i64 %i.ig, 1
  %i.ii = getelementptr inbounds i8, ptr %.0175234.i.i, i64 %i.ih ; 8 uses
  %.0175.val207.i.i = load i8, ptr %.0175234.i.i, align 1, !tbaa !49 ; 5 uses
  %.0178.val208.i.i = load i8, ptr %.0178233.i.i, align 1, !tbaa !49 ; 4 uses
  %i.ij = icmp ugt i8 %.0175.val207.i.i, %.0178.val208.i.i
  %.val206.i.i = load i8, ptr %i.ii, align 1, !tbaa !49 ; 5 uses
  br i1 %i.ij, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.ik = icmp ugt i8 %.0178.val208.i.i, %.val206.i.i
  br i1 %i.ik, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i8 %.0175.val207.i.i, ptr %i.ii, align 1, !tbaa !49
  br label %.sink.split.i.i

bb.bc:                                            ; preds = %bb.ba
  store i8 %.0175.val207.i.i, ptr %.0178233.i.i, align 1, !tbaa !49
  br label %.sink.split.i.i

bb.bd:                                            ; preds = %bb.az
  %i.il = icmp ugt i8 %.0175.val207.i.i, %.val206.i.i
  br i1 %i.il, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i8 %.0175.val207.i.i, ptr %i.ii, align 1, !tbaa !49
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.be, %bb.bc, %bb.bb
  %.val206.sink.i.i = phi i8 [ %.val206.i.i, %bb.be ], [ %.val206.i.i, %bb.bb ], [ %.0178.val208.i.i, %bb.bc ]
  store i8 %.val206.sink.i.i, ptr %.0175234.i.i, align 1, !tbaa !49
  %.val201.i.pre.i = load i8, ptr %i.ii, align 1, !tbaa !49
  %.0178.val202.i.pre.i = load i8, ptr %.0178233.i.i, align 1, !tbaa !49
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split.i.i, %bb.bd
  %.0178.val202.i.i = phi i8 [ %.0178.val208.i.i, %bb.bd ], [ %.0178.val202.i.pre.i, %.sink.split.i.i ] ; 3 uses
  %.val201.i.i = phi i8 [ %.val206.i.i, %bb.bd ], [ %.val201.i.pre.i, %.sink.split.i.i ] ; 3 uses
  %.0181.i.i = phi i32 [ 1, %bb.bd ], [ 0, %.sink.split.i.i ]
  %i.im = icmp ugt i8 %.val201.i.i, %.0178.val202.i.i
  br i1 %i.im, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i8 %.val201.i.i, ptr %.0178233.i.i, align 1, !tbaa !49
  store i8 %.0178.val202.i.i, ptr %i.ii, align 1, !tbaa !49
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.in = phi i8 [ %.0178.val202.i.i, %bb.bg ], [ %.val201.i.i, %bb.bf ]
  %.1182.i.i = phi i32 [ 0, %bb.bg ], [ %.0181.i.i, %bb.bf ]
  %i.io = icmp eq ptr %.0175234.i.i, %i.ic
  br i1 %i.io, label %.thread.loopexit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ip = load i8, ptr %i.ia, align 1, !tbaa !49
  store i8 %i.ip, ptr %i.ii, align 1, !tbaa !49
  store i8 %i.in, ptr %i.ia, align 1, !tbaa !49
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge198.i.i, %bb.bi
  %.0184229.i.i = phi ptr [ %.2186.i.i, %.critedge198.i.i ], [ %i.id, %bb.bi ]
  %.0187228.i.i = phi ptr [ %.2189.i.i, %.critedge198.i.i ], [ %i.ic, %bb.bi ] ; 4 uses
  %.val200.i.i = load i8, ptr %i.ia, align 1, !tbaa !49 ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %.preheader.i.i
  %.1185222.i.i = phi ptr [ %.0184229.i.i, %.preheader.i.i ], [ %i.ir, %bb.bk ] ; 3 uses
  %.1185.val.i.i = load i8, ptr %.1185222.i.i, align 1, !tbaa !49
  %i.iq = icmp ult i8 %.1185.val.i.i, %.val200.i.i
  br i1 %i.iq, label %bb.bk, label %.critedge.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ir = getelementptr inbounds nuw i8, ptr %.1185222.i.i, i64 1 ; 3 uses
  %.not196.i.i = icmp ugt ptr %i.ir, %.0187228.i.i
  br i1 %.not196.i.i, label %.critedge.i.i, label %bb.bj, !llvm.loop !163

.critedge.i.i:                                    ; preds = %bb.bk, %bb.bj
  %.1185.lcssa.i.i = phi ptr [ %i.ir, %bb.bk ], [ %.1185222.i.i, %bb.bj ] ; 7 uses
  %.not197223.i.i = icmp ugt ptr %.1185.lcssa.i.i, %.0187228.i.i
  br i1 %.not197223.i.i, label %.critedge198.i.i, label %.lr.ph225.i.i

.lr.ph225.i.i:                                    ; preds = %.critedge.i.i, %bb.bl
  %.1188224.i.i = phi ptr [ %i.it, %bb.bl ], [ %.0187228.i.i, %.critedge.i.i ] ; 4 uses
  %.1188.val.i.i = load i8, ptr %.1188224.i.i, align 1, !tbaa !49 ; 2 uses
  %i.is = icmp ugt i8 %.1188.val.i.i, %.val200.i.i
  br i1 %i.is, label %bb.bl, label %.critedge2.i.i

bb.bl:                                            ; preds = %.lr.ph225.i.i
  %i.it = getelementptr inbounds i8, ptr %.1188224.i.i, i64 -1 ; 3 uses
  %.not197.i.i = icmp ugt ptr %.1185.lcssa.i.i, %i.it
  br i1 %.not197.i.i, label %.critedge198.i.i, label %.lr.ph225.i.i, !llvm.loop !164

.critedge2.i.i:                                   ; preds = %.lr.ph225.i.i
  %i.iu = load i8, ptr %.1185.lcssa.i.i, align 1, !tbaa !49
  store i8 %i.iu, ptr %.1188224.i.i, align 1, !tbaa !49
  store i8 %.1188.val.i.i, ptr %.1185.lcssa.i.i, align 1, !tbaa !49
  %i.iv = getelementptr inbounds nuw i8, ptr %.1185.lcssa.i.i, i64 1
  %i.iw = getelementptr inbounds i8, ptr %.1188224.i.i, i64 -1
  br label %.critedge198.i.i

.critedge198.i.i:                                 ; preds = %bb.bl, %.critedge2.i.i, %.critedge.i.i
  %.2189.i.i = phi ptr [ %i.iw, %.critedge2.i.i ], [ %.0187228.i.i, %.critedge.i.i ], [ %i.it, %bb.bl ] ; 4 uses
  %.2186.i.i = phi ptr [ %i.iv, %.critedge2.i.i ], [ %.1185.lcssa.i.i, %.critedge.i.i ], [ %.1185.lcssa.i.i, %bb.bl ] ; 9 uses
  %.not194.i.i = icmp ugt ptr %.2186.i.i, %.2189.i.i
  br i1 %.not194.i.i, label %._crit_edge230.i.i, label %.preheader.i.i, !llvm.loop !165

._crit_edge230.i.i:                               ; preds = %.critedge198.i.i
  %.pre.i.i = load i8, ptr %i.ia, align 1, !tbaa !49
  %i.ix = load i8, ptr %.2186.i.i, align 1, !tbaa !49
  store i8 %.pre.i.i, ptr %.2186.i.i, align 1, !tbaa !49
  store i8 %i.ix, ptr %i.ia, align 1, !tbaa !49
  %.not195.i.i = icmp eq i32 %.1182.i.i, 0
  br i1 %.not195.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge230.i.i
  %i.iy = getelementptr inbounds i8, ptr %.2186.i.i, i64 -1
  %i.iz = icmp eq ptr %i.ii, %i.iy
  %i.ja = icmp eq ptr %i.ii, %.2186.i.i
  %or.cond.i.i = or i1 %i.ja, %i.iz
  br i1 %or.cond.i.i, label %.preheader214.i.i.preheader, label %bb.bn

.preheader214.i.i.preheader:                      ; preds = %bb.bm
  %i.jb = icmp ult ptr %.0175234.i.i, %.0178233.i.i
  br i1 %i.jb, label %.lr.ph418, label %.critedge4.i.i

.preheader214.i.i:                                ; preds = %.lr.ph418
  %i.jc = icmp ult ptr %i.jd, %.0178233.i.i
  br i1 %i.jc, label %.lr.ph418, label %.critedge4.i.i, !llvm.loop !166

.lr.ph418:                                        ; preds = %.preheader214.i.i.preheader, %.preheader214.i.i
  %.0183.i.i417 = phi ptr [ %i.jd, %.preheader214.i.i ], [ %.0175234.i.i, %.preheader214.i.i.preheader ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.0183.i.i417, i64 1 ; 4 uses
  %.0183.val.i.i = load i8, ptr %.0183.i.i417, align 1, !tbaa !49
  %.val.i.i = load i8, ptr %i.jd, align 1, !tbaa !49
  %.not213.i.i = icmp ugt i8 %.0183.val.i.i, %.val.i.i
  br i1 %.not213.i.i, label %..critedge4.i.i_crit_edge, label %.preheader214.i.i, !llvm.loop !166

..critedge4.i.i_crit_edge:                        ; preds = %.lr.ph418
  br label %.critedge4.i.i, !llvm.loop !166

.critedge4.i.i:                                   ; preds = %.preheader214.i.i, %..critedge4.i.i_crit_edge, %.preheader214.i.i.preheader
  %.0183.i.i.lcssa = phi ptr [ %.0183.i.i417, %..critedge4.i.i_crit_edge ], [ %.0175234.i.i, %.preheader214.i.i.preheader ], [ %i.jd, %.preheader214.i.i ]
  %i.je = icmp eq ptr %.0183.i.i.lcssa, %.0178233.i.i
  br i1 %i.je, label %.thread.loopexit.i.i, label %bb.bn

bb.bn:                                            ; preds = %.critedge4.i.i, %bb.bm, %._crit_edge230.i.i
  %i.jf = ptrtoint ptr %.2186.i.i to i64          ; 2 uses
  %i.jg = sub i64 %i.ie, %i.jf
  %i.jh = sub i64 %i.jf, %i.if
  %i.ji = icmp slt i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jj = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv.i.i96 ; 2 uses
  store ptr %.0175234.i.i, ptr %i.jj, align 16, !tbaa !198
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %.2189.i.i, ptr %i.jk, align 8, !tbaa !198
  %i.jl = getelementptr inbounds nuw i8, ptr %.2186.i.i, i64 1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.jm = getelementptr inbounds nuw i8, ptr %.2186.i.i, i64 1
  %i.jn = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv.i.i96 ; 2 uses
  store ptr %i.jm, ptr %i.jn, align 16, !tbaa !198
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %.0178233.i.i, ptr %i.jo, align 8, !tbaa !198
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.1179.i.i = phi ptr [ %.0178233.i.i, %bb.bo ], [ %.2189.i.i, %bb.bp ] ; 2 uses
  %.1176.i.i = phi ptr [ %i.jl, %bb.bo ], [ %.0175234.i.i, %bb.bp ] ; 2 uses
  %indvars.iv.next.i.i97 = add nsw i64 %indvars.iv.i.i96, 1 ; 2 uses
  %i.jp = icmp ult ptr %.1176.i.i, %.1179.i.i
  br i1 %i.jp, label %.lr.ph237.i.i, label %.thread.loopexit.i.i

bb.br:                                            ; preds = %.lr.ph237.i.i
  %i.jq = trunc nsw i64 %indvars.iv.i.i96 to i32  ; 2 uses
  %.0175.val.i.i = load i8, ptr %.0175234.i.i, align 1, !tbaa !49 ; 2 uses
  %.0178.val.i.i = load i8, ptr %.0178233.i.i, align 1, !tbaa !49 ; 2 uses
  %i.jr = icmp ugt i8 %.0175.val.i.i, %.0178.val.i.i
  br i1 %i.jr, label %bb.bs, label %.thread.i.i

bb.bs:                                            ; preds = %bb.br
  store i8 %.0175.val.i.i, ptr %.0178233.i.i, align 1, !tbaa !49
  store i8 %.0178.val.i.i, ptr %.0175234.i.i, align 1, !tbaa !49
  br label %.thread.i.i

.thread.loopexit.i.i:                             ; preds = %bb.bq, %.critedge4.i.i, %bb.bh
  %.1173217.ph.in.i.i = phi i64 [ %indvars.iv.i.i96, %.critedge4.i.i ], [ %indvars.iv.i.i96, %bb.bh ], [ %indvars.iv.next.i.i97, %bb.bq ]
  %.1173217.ph.i.i = trunc i64 %.1173217.ph.in.i.i to i32
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.loopexit.i.i, %bb.bs, %bb.br, %bb.ay
  %.1173217.i.i = phi i32 [ %i.jq, %bb.bs ], [ %i.jq, %bb.br ], [ %i.hr, %bb.ay ], [ %.1173217.ph.i.i, %.thread.loopexit.i.i ] ; 2 uses
  %.not.i.i94 = icmp eq i32 %.1173217.i.i, 0
  br i1 %.not.i.i94, label %.lr.ph248.i.i, label %bb.ay, !llvm.loop !167

.lr.ph248.i.i:                                    ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.js = getelementptr inbounds nuw i8, ptr %10, i64 268 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %10, i64 1292 ; 7 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph248.i.i
  %indvars.iv260.i.i = phi i64 [ 0, %.lr.ph248.i.i ], [ %indvars.iv.next261.i.i, %bb.bt ] ; 6 uses
  %.1246.i.i = phi i32 [ 0, %.lr.ph248.i.i ], [ %.0167..1.i.i, %bb.bt ]
  %.0168244.i.i = phi i32 [ 0, %.lr.ph248.i.i ], [ %i.km, %bb.bt ]
  %.0169243.i.i = phi i32 [ 0, %.lr.ph248.i.i ], [ %i.kn, %bb.bt ]
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv260.i.i
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !49  ; 3 uses
  %i.jw = zext i8 %i.jv to i32                    ; 2 uses
  %i.jx = sub nsw i32 %i.jw, %.0169243.i.i
  %i.jy = add nsw i32 %i.jx, %.0168244.i.i        ; 2 uses
  %i.jz = icmp eq i8 %i.jv, %i.hd                 ; 2 uses
  %..i.i = select i1 %i.jz, i32 128, i32 64       ; 2 uses
  %i.ka = trunc nuw nsw i64 %indvars.iv260.i.i to i32
  %.0167..1.i.i = select i1 %i.jz, i32 %i.ka, i32 %.1246.i.i ; 4 uses
  %i.kb = shl i32 %..i.i, %.0166.lcssa.i.i        ; 3 uses
  %i.kc = trunc i32 %i.kb to i16
  %.idx.i.i = shl nuw nsw i64 %indvars.iv260.i.i, 2
  %i.kd = getelementptr inbounds nuw i8, ptr %i.js, i64 %.idx.i.i ; 2 uses
  store i16 %i.kc, ptr %i.kd, align 4, !tbaa !58
  %i.ke = shl i32 %i.jy, %.0166.lcssa.i.i
  %i.kf = trunc i32 %i.ke to i16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  store i16 %i.kf, ptr %i.kg, align 2, !tbaa !58
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv260.i.i
  store i8 %i.jv, ptr %i.kh, align 1, !tbaa !49
  %i.ki = lshr exact i32 %i.kb, 1
  %i.kj = sub i32 %i.kb, %i.ki
  %i.kk = trunc i32 %i.kj to i16
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %indvars.iv260.i.i
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !58
  %i.km = add nsw i32 %i.jy, %..i.i
  %i.kn = add nuw nsw i32 %i.jw, 1
  %indvars.iv.next261.i.i = add nuw nsw i64 %indvars.iv260.i.i, 1 ; 2 uses
  %exitcond.not.i.i95 = icmp eq i64 %indvars.iv.next261.i.i, %wide.trip.count.i88
  br i1 %exitcond.not.i.i95, label %._crit_edge249.i.i, label %bb.bt, !llvm.loop !168

._crit_edge249.i.i:                               ; preds = %bb.bt
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 %i.gv, ptr %i.ko, align 4, !tbaa !66
  %i.kp = trunc i32 %.0166.lcssa.i.i to i8        ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 3
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !69
  %i.kr = load i8, ptr %i.hf, align 1, !tbaa !68  ; 3 uses
  %i.ks = sub nsw i32 256, %i.gw
  %.not.i.i.i = icmp eq i8 %i.kp, 0
  %i.kt = and i32 %.0166.lcssa.i.i, 255
  %i.ku = add nsw i32 %i.kt, -1
  %i.kv = select i1 %.not.i.i.i, i32 0, i32 %i.ku
  %i.kw = shl i32 %i.ks, %i.kv                    ; 3 uses
  %.not17.i.i.i = icmp eq i8 %i.kr, 0
  br i1 %.not17.i.i.i, label %calc_sum.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge249.i.i
  %wide.trip.count.i.i.i = zext i8 %i.kr to i64   ; 5 uses
  %min.iters.check505 = icmp ult i8 %i.kr, 8
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %.lr.ph.i.i.i
  %n.vec507 = and i64 %wide.trip.count.i.i.i, 248 ; 3 uses
  %i.kx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kw, i64 0
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph506
  %index509 = phi i64 [ 0, %vector.ph506 ], [ %index.next514, %vector.body508 ] ; 2 uses
  %vec.phi510 = phi <4 x i32> [ %i.kx, %vector.ph506 ], [ %i.lc, %vector.body508 ]
  %vec.phi511 = phi <4 x i32> [ zeroinitializer, %vector.ph506 ], [ %i.ld, %vector.body508 ]
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %index509 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %wide.load512 = load <4 x i16>, ptr %i.ky, align 4, !tbaa !58
  %wide.load513 = load <4 x i16>, ptr %i.kz, align 4, !tbaa !58
  %i.la = zext <4 x i16> %wide.load512 to <4 x i32>
  %i.lb = zext <4 x i16> %wide.load513 to <4 x i32>
  %i.lc = add <4 x i32> %vec.phi510, %i.la        ; 2 uses
  %i.ld = add <4 x i32> %vec.phi511, %i.lb        ; 2 uses
  %index.next514 = add nuw i64 %index509, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next514, %n.vec507
  br i1 %i.le, label %middle.block515, label %vector.body508, !llvm.loop !169

middle.block515:                                  ; preds = %vector.body508
  %bin.rdx516 = add <4 x i32> %i.ld, %i.lc
  %i.lf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx516) ; 2 uses
  %cmp.n517 = icmp eq i64 %n.vec507, %wide.trip.count.i.i.i
  br i1 %cmp.n517, label %calc_sum.exit.i.i, label %scalar.ph504.preheader

scalar.ph504.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block515
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec507, %middle.block515 ]
  %.01215.i.i.i.ph = phi i32 [ %i.kw, %.lr.ph.i.i.i ], [ %i.lf, %middle.block515 ]
  br label %scalar.ph504

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %scalar.ph504
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph504 ], [ %indvars.iv.i.i.i.ph, %scalar.ph504.preheader ] ; 2 uses
  %.01215.i.i.i = phi i32 [ %i.lj, %scalar.ph504 ], [ %.01215.i.i.i.ph, %scalar.ph504.preheader ]
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %indvars.iv.i.i.i
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !58
  %i.li = zext i16 %i.lh to i32
  %i.lj = add i32 %.01215.i.i.i, %i.li            ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %calc_sum.exit.i.i, label %scalar.ph504, !llvm.loop !170

calc_sum.exit.i.i:                                ; preds = %scalar.ph504, %middle.block515, %._crit_edge249.i.i
  %.pre-phi.i.i = phi i64 [ 0, %._crit_edge249.i.i ], [ %wide.trip.count.i.i.i, %middle.block515 ], [ %wide.trip.count.i.i.i, %scalar.ph504 ]
  %.012.lcssa.i.i.i = phi i32 [ %i.kw, %._crit_edge249.i.i ], [ %i.lf, %middle.block515 ], [ %i.lj, %scalar.ph504 ]
  %i.lk = trunc i32 %.012.lcssa.i.i.i to i16
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %.pre-phi.i.i
  store i16 %i.lk, ptr %i.ll, align 2, !tbaa !58
  %.not193.i.i = icmp eq i32 %.0167..1.i.i, 0
  br i1 %.not193.i.i, label %update_model2_to_6.exit.i, label %bb.bu

bb.bu:                                            ; preds = %calc_sum.exit.i.i
  %i.lm = shl nuw nsw i32 %.0167..1.i.i, 1
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %i.ln ; 2 uses
  %i.lp = load <2 x i16>, ptr %i.lo, align 4, !tbaa !58
  %i.lq = load <2 x i16>, ptr %i.js, align 4, !tbaa !58
  store <2 x i16> %i.lp, ptr %i.js, align 4, !tbaa !58
  store <2 x i16> %i.lq, ptr %i.lo, align 4, !tbaa !58
  %i.lr = zext nneg i32 %.0167..1.i.i to i64      ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %i.lr ; 2 uses
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !58
  %i.lu = load i16, ptr %i.jt, align 4, !tbaa !58
  store i16 %i.lu, ptr %i.ls, align 2, !tbaa !58
  store i16 %i.lt, ptr %i.jt, align 4, !tbaa !58
  %i.lv = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.lr ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !49
  %i.lx = load i8, ptr %i.hg, align 4, !tbaa !49
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !49
  store i8 %i.lw, ptr %i.hg, align 4, !tbaa !49
  br label %update_model2_to_6.exit.i

update_model2_to_6.exit.i:                        ; preds = %bb.bu, %calc_sum.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %10, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %decode_static2.exit

.critedge.i92:                                    ; preds = %bb.av
  %i.ly = icmp ugt i16 %i.gv, 63
  br i1 %i.ly, label %update_model2_to_3.exit.i, label %.critedge.thread.i93

update_model2_to_3.exit.i:                        ; preds = %.critedge.i92
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %9, i8 0, i64 1836, i1 false)
  store i8 3, ptr %9, align 4, !tbaa !56
  %i.lz = add nuw i16 %i.gv, 1
  %i.ma = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 %i.lz, ptr %i.ma, align 4, !tbaa !66
  %i.mb = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mb, ptr nonnull align 4 %i.gx, i64 %wide.trip.count.i88, i1 false), !tbaa !49
  %i.mc = trunc nuw i32 %.0.i78 to i8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %wide.trip.count.i88
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %9, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %decode_static2.exit

.critedge.thread.i93:                             ; preds = %bytestream2_get_byte.exit79, %.critedge.i92
  %.pre-phi280 = phi i64 [ %wide.trip.count.i88, %.critedge.i92 ], [ 0, %bytestream2_get_byte.exit79 ]
  %i.me = trunc nuw i32 %.0.i78 to i8
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.pre-phi280
  store i8 %i.me, ptr %i.mg, align 1, !tbaa !49
  %i.mh = add nuw nsw i16 %i.gv, 1
  store i16 %i.mh, ptr %i.gu, align 4, !tbaa !66
  br label %decode_static2.exit

decode_static2.exit:                              ; preds = %update_model2_to_6.exit.i, %update_model2_to_3.exit.i, %.critedge.thread.i93
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
end_hunk_1
