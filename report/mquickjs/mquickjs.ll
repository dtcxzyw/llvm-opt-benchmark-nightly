Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@re_emit_range_base:bb.a
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !121
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !128  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  store i32 48, ptr %i.u, align 1, !tbaa !91
  %i.v = add i32 %i.s, 4
  store i32 %i.v, ptr %i.r, align 8, !tbaa !128
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.w = load i64, ptr %i.m, align 8, !tbaa !121
  %i.x = add i64 %i.w, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !128 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  store i32 58, ptr %i.ac, align 1, !tbaa !91
  %i.ad = add i32 %i.aa, 4
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !128
  br label %re_emit_range_base1.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @char_range_s, i64 %indvars.iv.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !75
  %i.ai = zext i16 %i.ah to i32
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.aj = load i64, ptr %i.ae, align 8, !tbaa !121
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.af, align 8, !tbaa !128 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  store i32 %i.ai, ptr %i.ap, align 1, !tbaa !91
  %i.aq = add i32 %i.an, 4
  store i32 %i.aq, ptr %i.af, align 8, !tbaa !128
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 20
  br i1 %exitcond.not.i, label %re_emit_range_base1.exit, label %bb.f, !llvm.loop !411

bb.g:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i9 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i10, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @char_range_w, i64 %indvars.iv.i9
  %i.au = load i16, ptr %i.at, align 2, !tbaa !75
  %i.av = zext i16 %i.au to i32
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.aw = load i64, ptr %i.ar, align 8, !tbaa !121
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.as, align 8, !tbaa !128 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  store i32 %i.av, ptr %i.bc, align 1, !tbaa !91
  %i.bd = add i32 %i.ba, 4
  store i32 %i.bd, ptr %i.as, align 8, !tbaa !128
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1 ; 2 uses
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.next.i10, 8
  br i1 %exitcond.not.i11, label %re_emit_range_base1.exit, label %bb.h, !llvm.loop !411

bb.i:                                             ; preds = %bb.c
  tail call void @abort() #27
  unreachable

re_emit_range_base1.exit:                         ; preds = %bb.h, %bb.f, %bb.d
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %re_emit_range_base1.exit
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !121
  %i.bg = add i64 %i.bf, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !128 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl
  store i32 1114112, ptr %i.bm, align 1, !tbaa !91
  %i.bn = add i32 %i.bk, 4
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %re_emit_range_base1.exit
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @re_range_optimize(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %i.d = lshr i32 %i.c, 3                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !121
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = zext nneg i32 %i.d to i64                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = sext i32 %1 to i64                       ; 6 uses
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 15 uses
  %i.m = icmp ugt i32 %i.c, 15
  br i1 %i.m, label %bb.b, label %rqsort_idx.exit

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i64 %i.i, 1
  %.pre.i = add nsw i64 %i.i, -1                  ; 5 uses
  br label %.lr.ph74.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not6781.i = icmp eq i64 %.pre.i, 0
  br i1 %.not6781.i, label %rqsort_idx.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %.preheader.i
  %.val9.i6877 = load i64, ptr %i.l, align 1, !tbaa !414
  %i.o = shl nsw i64 %.pre.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o ; 2 uses
  %.val.i6978 = load i64, ptr %i.p, align 1, !tbaa !414
  store i64 %.val.i6978, ptr %i.l, align 1, !tbaa !414
  store i64 %.val9.i6877, ptr %i.p, align 1, !tbaa !414
  %.not82 = icmp eq i64 %.pre.i, 1
  br i1 %.not82, label %rqsort_idx.exit, label %.lr.ph77.i

.lr.ph74.i:                                       ; preds = %bb.b, %._crit_edge.i
  %.06272.i = phi i64 [ %i.q, %._crit_edge.i ], [ %i.n, %bb.b ]
  %i.q = add nsw i64 %.06272.i, -1                ; 4 uses
  %i.r = shl nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.t = icmp samesign ult i64 %i.s, %i.i
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph74.i, %bb.e
  %i.u = phi i64 [ %i.al, %bb.e ], [ %i.s, %.lr.ph74.i ] ; 4 uses
  %i.v = phi i64 [ %i.ak, %bb.e ], [ %i.r, %.lr.ph74.i ]
  %.069.i = phi i64 [ %.060.i, %bb.e ], [ %i.q, %.lr.ph74.i ]
  %i.w = icmp ult i64 %i.u, %.pre.i
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add nuw i64 %i.v, 2                      ; 2 uses
  %i.y = shl nuw nsw i64 %i.u, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %.val4.i74 = load i32, ptr %i.z, align 1, !tbaa !91
  %i.aa = shl i64 %i.x, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa
  %.val.i75 = load i32, ptr %i.ab, align 1, !tbaa !91
  %i.ac = sub i32 %.val4.i74, %.val.i75
  %i.ad = icmp slt i32 %i.ac, 1
  %spec.select.i = select i1 %i.ad, i64 %i.x, i64 %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.060.i = phi i64 [ %i.u, %.lr.ph.i ], [ %spec.select.i, %bb.c ] ; 3 uses
  %i.ae = shl i64 %.069.i, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae ; 3 uses
  %.val4.i72 = load i32, ptr %i.af, align 1, !tbaa !91
  %i.ag = shl i64 %.060.i, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ag ; 3 uses
  %.val.i73 = load i32, ptr %i.ah, align 1, !tbaa !91
  %i.ai = sub i32 %.val4.i72, %.val.i73
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val9.i70 = load i64, ptr %i.af, align 1, !tbaa !414
  %.val.i71 = load i64, ptr %i.ah, align 1, !tbaa !414
  store i64 %.val.i71, ptr %i.af, align 1, !tbaa !414
  store i64 %.val9.i70, ptr %i.ah, align 1, !tbaa !414
  %i.ak = shl i64 %.060.i, 1                      ; 2 uses
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %bb.e, %bb.d, %.lr.ph74.i
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph74.i, !llvm.loop !17

.lr.ph77.i:                                       ; preds = %.lr.ph84.i.preheader, %._crit_edge78.i
  %.163.in82.i80 = phi i64 [ %.16383.i79, %._crit_edge78.i ], [ %i.i, %.lr.ph84.i.preheader ]
  %.16383.i79 = phi i64 [ %.163.i, %._crit_edge78.i ], [ %.pre.i, %.lr.ph84.i.preheader ] ; 3 uses
  %i.an = add i64 %.163.in82.i80, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph77.i
  %i.ao = phi i64 [ 1, %.lr.ph77.i ], [ %i.bf, %bb.i ] ; 4 uses
  %i.ap = phi i64 [ 0, %.lr.ph77.i ], [ %i.be, %bb.i ]
  %.175.i = phi i64 [ 0, %.lr.ph77.i ], [ %.161.i, %bb.i ]
  %i.aq = icmp ult i64 %i.ao, %i.an
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = add i64 %i.ap, 2                        ; 2 uses
  %i.as = shl i64 %i.ao, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.as
  %.val4.i66 = load i32, ptr %i.at, align 1, !tbaa !91
  %i.au = shl i64 %i.ar, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %.val.i67 = load i32, ptr %i.av, align 1, !tbaa !91
  %i.aw = sub i32 %.val4.i66, %.val.i67
  %i.ax = icmp slt i32 %i.aw, 1
  %spec.select68.i = select i1 %i.ax, i64 %i.ar, i64 %i.ao
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.161.i = phi i64 [ %i.ao, %bb.f ], [ %spec.select68.i, %bb.g ] ; 3 uses
  %i.ay = shl i64 %.175.i, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay ; 3 uses
  %.val4.i = load i32, ptr %i.az, align 1, !tbaa !91
  %i.ba = shl i64 %.161.i, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ba ; 3 uses
  %.val.i65 = load i32, ptr %i.bb, align 1, !tbaa !91
  %i.bc = sub i32 %.val4.i, %.val.i65
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %._crit_edge78.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val9.i = load i64, ptr %i.az, align 1, !tbaa !414
  %.val.i = load i64, ptr %i.bb, align 1, !tbaa !414
  store i64 %.val.i, ptr %i.az, align 1, !tbaa !414
  store i64 %.val9.i, ptr %i.bb, align 1, !tbaa !414
  %i.be = shl i64 %.161.i, 1                      ; 2 uses
  %i.bf = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %.16383.i79
  br i1 %i.bg, label %bb.f, label %._crit_edge78.i, !llvm.loop !18

._crit_edge78.i:                                  ; preds = %bb.i, %bb.h
  %.163.i = add i64 %.16383.i79, -1               ; 3 uses
  %.val9.i68 = load i64, ptr %i.l, align 1, !tbaa !414
  %i.bh = shl i64 %.163.i, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bh ; 2 uses
  %.val.i69 = load i64, ptr %i.bi, align 1, !tbaa !414
  store i64 %.val.i69, ptr %i.l, align 1, !tbaa !414
  store i64 %.val9.i68, ptr %i.bi, align 1, !tbaa !414
  %i.bj = icmp ugt i64 %.163.i, 1
  br i1 %i.bj, label %.lr.ph77.i, label %rqsort_idx.exit

rqsort_idx.exit:                                  ; preds = %._crit_edge78.i, %.lr.ph84.i.preheader, %bb.a, %.preheader.i
  %i.bk = tail call fastcc i32 @range_compress(ptr noundef nonnull %i.l, i32 noundef %i.d) #28 ; 3 uses
  %.neg = sub i32 %i.bk, %i.d
  %.neg60 = shl i32 %.neg, 3
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !128
  %i.bm = add i32 %.neg60, %i.bl
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !128
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rqsort_idx.exit
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !121
  %i.bo = add i64 %i.bn, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.k ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !128
  %i.bu = sub i32 %i.bt, %1
  %i.bv = zext i32 %i.bu to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull align 1 %i.br, i64 %i.bv, i1 false)
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !128
  %i.bx = add i32 %i.bw, 4
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !128
  %i.by = load i64, ptr %i.e, align 8, !tbaa !121
  %i.bz = add i64 %i.by, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.k
  store i32 0, ptr %i.cc, align 1, !tbaa !91
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !121
  %i.ce = add i64 %i.cd, -1
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  store i32 1114112, ptr %i.cj, align 1, !tbaa !91
  %i.ck = add i32 %i.ch, 4
  store i32 %i.ck, ptr %i.a, align 8, !tbaa !128
  %i.cl = add nsw i32 %i.bk, 1                    ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %i.k
  %i.cn = tail call fastcc i32 @range_compress(ptr noundef nonnull %i.cm, i32 noundef %i.cl) #28 ; 2 uses
  %.neg61 = sub i32 %i.cn, %i.cl
  %.neg62 = shl i32 %.neg61, 3
  %i.co = load i32, ptr %i.a, align 8, !tbaa !128
  %i.cp = add i32 %.neg62, %i.co
  store i32 %i.cp, ptr %i.a, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %rqsort_idx.exit
  %.058 = phi i32 [ %i.cn, %bb.j ], [ %i.bk, %rqsort_idx.exit ] ; 6 uses
  %.057 = phi ptr [ %i.cf, %bb.j ], [ %i.h, %rqsort_idx.exit ] ; 2 uses
  %i.cq = icmp sgt i32 %.058, 65534
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.210) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cr = add i32 %.058, -1
  %or.cond = icmp ult i32 %i.cr, 15
  br i1 %or.cond, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.k ; 2 uses
  %i.cu = shl nuw nsw i32 %.058, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.ct, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4
  %.val64 = load i32, ptr %i.cx, align 1, !tbaa !91 ; 2 uses
  %i.cy = icmp slt i32 %.val64, 254
  br i1 %i.cy, label %.lr.ph.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = icmp eq i32 %.val64, 1114112
  br i1 %i.cz, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr i8, ptr %i.cw, i64 -8
  %.val63 = load i32, ptr %i.da, align 1, !tbaa !91
  %i.db = icmp ult i32 %.val63, 254
  br i1 %i.db, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.n, %bb.p
  %i.dc = add nsw i32 %1, -3
  store i32 %i.dc, ptr %i.a, align 8, !tbaa !128
  tail call fastcc void @re_emit_op_u8(ptr noundef nonnull %0, i32 noundef 32, i32 noundef %.058) #28
  %i.dd = shl nuw nsw i32 %.058, 1
  %wide.trip.count = zext nneg i32 %i.dd to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.de = shl nuw nsw i64 %indvars.iv, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.de
  %.val = load i32, ptr %i.df, align 1, !tbaa !91 ; 2 uses
  %i.dg = icmp eq i32 %.val, 1114112
  %i.dh = trunc i32 %.val to i8
  %i.di = select i1 %i.dg, i8 -1, i8 %i.dh
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 1) #28
  %i.dj = load i64, ptr %i.e, align 8, !tbaa !121
  %i.dk = add i64 %i.dj, -1
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.a, align 8, !tbaa !128
  %i.dp = zext i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dp
  store i8 %i.di, ptr %i.dq, align 1, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !412

.thread:                                          ; preds = %bb.o, %bb.p, %bb.m
  %i.dr = getelementptr i8, ptr %.057, i64 %i.k
  %i.ds = getelementptr i8, ptr %i.dr, i64 6
  %i.dt = trunc i32 %.058 to i16
  store i16 %i.dt, ptr %i.ds, align 1, !tbaa !89
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.thread
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_interval_intersect(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 1073741825) %2, i32 noundef range(i32 0, 124) %3, i32 noundef range(i32 65, -2147483648) %4, i32 noundef range(i32 -32, 33) %5) unnamed_addr #4 {
bb.a:
  %..i = tail call noundef i32 @llvm.umax.i32(i32 %1, i32 %3) ; 3 uses
  %..i18 = tail call range(i32 1, 1073741825) i32 @llvm.umin.i32(i32 range(i32 1, 1073741825) %2, i32 range(i32 65, -2147483648) %4) ; 3 uses
  %i.a = icmp ult i32 %..i, %..i18
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !121
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i32 %..i, ptr %i.j, align 1, !tbaa !91
  %i.k = add i32 %i.h, 4
  store i32 %i.k, ptr %i.g, align 8, !tbaa !128
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.l = load i64, ptr %i.b, align 8, !tbaa !121
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store i32 %..i18, ptr %i.r, align 1, !tbaa !91
  %i.s = add i32 %i.p, 4
  store i32 %i.s, ptr %i.g, align 8, !tbaa !128
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i32 %5, %..i
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.u = load i64, ptr %i.b, align 8, !tbaa !121
  %i.v = add i64 %i.u, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  store i32 %i.t, ptr %i.aa, align 1, !tbaa !91
  %i.ab = add i32 %i.y, 4
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !128
  %i.ac = add nsw i32 %..i18, %5
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !121
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !128 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  store i32 %i.ac, ptr %i.aj, align 1, !tbaa !91
  %i.ak = add i32 %i.ah, 4
  store i32 %i.ak, ptr %i.g, align 8, !tbaa !128
  br label %bb.d

end_hunk_0
