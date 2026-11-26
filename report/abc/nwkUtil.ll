Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/nwkUtil?download=true
inline.NumInlined: 137
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Nwk_ManDumpBlif:bb.a

Nwk_ObjIsPi.exit184.thread:                       ; preds = %bb.p, %Nwk_ObjIsPi.exit184, %bb.o
  %i.go = getelementptr i8, ptr %i.fz, i64 72
  %.val161 = load ptr, ptr %i.go, align 8, !tbaa !41
  %.val161.val = load ptr, ptr %.val161, align 8, !tbaa !39
  %i.gp = getelementptr inbounds nuw i8, ptr %.val161.val, i64 36
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !37
  %i.gr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.15, i32 noundef %.09.i, i32 noundef %i.gq) #18 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %Nwk_ObjIsPi.exit184.thread, %Nwk_ObjIsPi.exit184.thread194
  br i1 %.not127, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gs = getelementptr i8, ptr %i.fz, i64 32
  %.val158 = load i32, ptr %i.gs, align 8
  %i.gt = lshr i32 %.val158, 7
  %.val142 = load ptr, ptr %i.fv, align 8, !tbaa !23
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val142, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !24
  %i.gx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.20, ptr noundef %i.gw) #18 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fz, i64 36
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !37
  %i.ha = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.18, i32 noundef %.09.i, i32 noundef %i.gz) #18 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = lshr i32 %i.hc, 3
  %.lobit = and i32 %i.hd, 1
  %i.he = xor i32 %.lobit, 1
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.21, i32 noundef %i.he) #18 ; 0 uses
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 4
  %.val = load i32, ptr %i.hh, align 4, !tbaa !22
  %i.hi = sext i32 %.val to i64
  %i.hj = icmp slt i64 %indvars.iv.next237, %i.hi
  br i1 %i.hj, label %bb.o, label %.critedge8, !llvm.loop !69

.critedge8:                                       ; preds = %bb.u, %Vec_PtrFree.exit
  %fwrite124 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 6, i64 1, ptr %i.af) ; 0 uses
  %i.hk = tail call i32 @fclose(ptr noundef %i.af) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.critedge8, %Nwk_ManPoNum.exit.thread
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @Aig_MmFlexStart(...) local_unnamed_addr #5

declare ptr @Nwk_ManDfs(ptr noundef) local_unnamed_addr #5

declare ptr @Hop_ManConvertAigToTruth(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Kit_PlaFromTruth(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @Aig_MmFlexStop(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Nwk_ManPrintFanioNew(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %.val121 = load i32, ptr %i.d, align 4, !tbaa !22 ; 2 uses
  %i.e = icmp sgt i32 %.val121, 0                 ; 2 uses
  br i1 %i.e, label %.lr.ph, label %Abc_Base10Log.exit152

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val123 = load ptr, ptr %i.f, align 8, !tbaa !23
  %wide.trip.count = zext nneg i32 %.val121 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.g = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.r, %bb.e ] ; 3 uses
  %i.h = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.s, %bb.e ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val123, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 32
  %.val125 = load i32, ptr %i.l, align 8
  %i.m = and i32 %.val125, 7
  %.not174 = icmp eq i32 %i.m, 3
  br i1 %.not174, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.j, i64 60
  %i.o = load <2 x i32>, ptr %i.n, align 4, !tbaa !49 ; 2 uses
  %i.p = add nsw <2 x i32> %i.o, %i.g
  %i.q = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.h, <2 x i32> %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.r = phi <2 x i32> [ %i.g, %bb.b ], [ %i.p, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.s = phi <2 x i32> [ %i.h, %bb.b ], [ %i.q, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !73

.critedge:                                        ; preds = %bb.e
  %i.t = sitofp <2 x i32> %i.r to <2 x double>    ; 2 uses
  %i.u = extractelement <2 x i32> %i.s, i64 0     ; 5 uses
  %i.v = icmp ult i32 %i.u, 2
  br i1 %i.v, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.w = add nsw i32 %i.u, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.y, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %i.x = udiv i32 %.0812.i, 10
  %i.y = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !1

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %.critedge
  %.09.i = phi i32 [ %i.u, %.critedge ], [ %i.y, %.lr.ph.i ]
  %i.z = mul i32 %.09.i, 10
  %i.aa = add i32 %i.z, 10                        ; 2 uses
  %i.ab = extractelement <2 x i32> %i.s, i64 1    ; 5 uses
  %i.ac = icmp ult i32 %i.ab, 2
  br i1 %i.ac, label %Abc_Base10Log.exit152, label %.lr.ph.preheader.i146

.lr.ph.preheader.i146:                            ; preds = %Abc_Base10Log.exit
  %i.ad = add nsw i32 %i.ab, -1
  br label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.lr.ph.i147, %.lr.ph.preheader.i146
  %.013.i148 = phi i32 [ %i.af, %.lr.ph.i147 ], [ 0, %.lr.ph.preheader.i146 ]
  %.0812.i149 = phi i32 [ %i.ae, %.lr.ph.i147 ], [ %i.ad, %.lr.ph.preheader.i146 ] ; 2 uses
  %i.ae = udiv i32 %.0812.i149, 10
  %i.af = add nuw nsw i32 %.013.i148, 1           ; 2 uses
  %.not.i150 = icmp ult i32 %.0812.i149, 10
  br i1 %.not.i150, label %Abc_Base10Log.exit152, label %.lr.ph.i147, !llvm.loop !1

Abc_Base10Log.exit152:                            ; preds = %.lr.ph.i147, %bb.a, %Abc_Base10Log.exit
  %i.ag = phi i32 [ %i.aa, %Abc_Base10Log.exit ], [ 10, %bb.a ], [ %i.aa, %.lr.ph.i147 ]
  %.0109.lcssa249261 = phi i32 [ %i.u, %Abc_Base10Log.exit ], [ 0, %bb.a ], [ %i.u, %.lr.ph.i147 ]
  %.0107.lcssa250260 = phi i32 [ %i.ab, %Abc_Base10Log.exit ], [ 0, %bb.a ], [ %i.ab, %.lr.ph.i147 ]
  %.09.i151 = phi i32 [ %i.ab, %Abc_Base10Log.exit ], [ 0, %bb.a ], [ %i.af, %.lr.ph.i147 ]
  %i.ah = phi <2 x double> [ %i.t, %Abc_Base10Log.exit ], [ zeroinitializer, %bb.a ], [ %i.t, %.lr.ph.i147 ]
  %i.ai = mul i32 %.09.i151, 10
  %i.aj = add i32 %i.ai, 10
  %i.ak = tail call noundef i32 @llvm.smax.i32(i32 %i.ag, i32 %i.aj) ; 8 uses
  %i.al = add i32 %i.ak, -1
  %or.cond.i.i = icmp ult i32 %i.al, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.ak ; 3 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i159, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %Abc_Base10Log.exit152
  %i.am = sext i32 %spec.store.select.i.i to i64
  %i.an = shl nsw i64 %i.am, 2                    ; 2 uses
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #19 ; 4 uses
  %.not.i153 = icmp eq ptr %i.ao, null
  br i1 %.not.i153, label %Vec_IntAlloc.exit.i157, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.ap = sext i32 %i.ak to i64
  %i.aq = shl nsw i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ao, i8 0, i64 %i.aq, i1 false)
  br label %Vec_IntAlloc.exit.i157

Vec_IntAlloc.exit.thread.i159:                    ; preds = %Abc_Base10Log.exit152
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %i.ar, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !47
  store i32 %i.ak, ptr %i.as, align 4, !tbaa !45
  br label %Vec_IntStart.exit160

Vec_IntAlloc.exit.i157:                           ; preds = %Vec_IntAlloc.exit.i, %bb.f
  %i.au = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %spec.store.select.i.i, ptr %i.au, align 8, !tbaa !46
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.an) #19 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !47
  store i32 %i.ak, ptr %i.av, align 4, !tbaa !45
  %.not.i158 = icmp eq ptr %i.aw, null
  br i1 %.not.i158, label %Vec_IntStart.exit160, label %bb.g

bb.g:                                             ; preds = %Vec_IntAlloc.exit.i157
  %i.ay = sext i32 %i.ak to i64
  %i.az = shl nsw i64 %i.ay, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aw, i8 0, i64 %i.az, i1 false)
  br label %Vec_IntStart.exit160

Vec_IntStart.exit160:                             ; preds = %Vec_IntAlloc.exit.thread.i159, %Vec_IntAlloc.exit.i157, %bb.g
  %.val136 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i159 ], [ null, %Vec_IntAlloc.exit.i157 ], [ %i.aw, %bb.g ] ; 7 uses
  %i.ba = phi ptr [ null, %Vec_IntAlloc.exit.thread.i159 ], [ %i.ao, %Vec_IntAlloc.exit.i157 ], [ %i.ao, %bb.g ] ; 10 uses
  %i.bb = phi ptr [ %i.ar, %Vec_IntAlloc.exit.thread.i159 ], [ %i.au, %Vec_IntAlloc.exit.i157 ], [ %i.au, %bb.g ] ; 3 uses
  br i1 %i.e, label %.lr.ph191, label %.critedge2

.lr.ph191:                                        ; preds = %Vec_IntStart.exit160
  %i.bc = getelementptr i8, ptr %i.c, i64 8
  %.val122 = load ptr, ptr %i.bc, align 8, !tbaa !23
  %.val = load i32, ptr %i.d, align 4, !tbaa !22
  %1 = sext i32 %.val to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph191, %bb.al
  %indvars.iv197 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next198, %bb.al ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val122, i64 %indvars.iv197
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !24 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.al, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr i8, ptr %i.be, i64 32
  %.val124 = load i32, ptr %i.bg, align 8
  %i.bh = and i32 %.val124, 7
  %.not = icmp eq i32 %i.bh, 3
  br i1 %.not, label %bb.j, label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr i8, ptr %i.be, i64 60
  %.val126 = load i32, ptr %i.bi, align 4, !tbaa !31 ; 14 uses
  %i.bj = getelementptr i8, ptr %i.be, i64 64
  %.val128 = load i32, ptr %i.bj, align 8, !tbaa !42 ; 14 uses
  %i.bk = icmp slt i32 %.val126, 10
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = sext i32 %.val126 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !49
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !49
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp samesign ult i32 %.val126, 100
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc168 = trunc nuw nsw i32 %.val126 to i8
  %i.bq = udiv i8 %.lhs.trunc168, 10
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !49
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !49
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bw = icmp samesign ult i32 %.val126, 1000
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.lhs.trunc170 = trunc nuw nsw i32 %.val126 to i16
  %i.bx = udiv i16 %.lhs.trunc170, 100
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !49
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !49
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  %i.cd = icmp samesign ult i32 %.val126, 10000
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.lhs.trunc172 = trunc nuw nsw i32 %.val126 to i16
  %i.ce = udiv i16 %.lhs.trunc172, 1000
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 120 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !49
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !49
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.ck = icmp samesign ult i32 %.val126, 100000
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = udiv i32 %.val126, 10000
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 160 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !49
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !49
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cr = icmp samesign ult i32 %.val126, 1000000
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = udiv i32 %.val126, 100000
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 200 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !49
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !49
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.cy = icmp samesign ult i32 %.val126, 10000000
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = udiv i32 %.val126, 1000000
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 240 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !49
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !49
  br label %bb.x

bb.x:                                             ; preds = %bb.m, %bb.q, %bb.u, %bb.w, %bb.v, %bb.s, %bb.o, %bb.k
  %i.df = icmp slt i32 %.val128, 10
  br i1 %i.df, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dg = sext i32 %.val128 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %.val136, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !49
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !49
  br label %bb.al

bb.z:                                             ; preds = %bb.x
  %i.dk = icmp samesign ult i32 %.val128, 100
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.lhs.trunc = trunc nuw nsw i32 %.val128 to i8
  %i.dl = udiv i8 %.lhs.trunc, 10
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !49
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !49
  br label %bb.al

bb.ab:                                            ; preds = %bb.z
  %i.dr = icmp samesign ult i32 %.val128, 1000
  br i1 %i.dr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.lhs.trunc164 = trunc nuw nsw i32 %.val128 to i16
  %i.ds = udiv i16 %.lhs.trunc164, 100
  %i.dt = zext nneg i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 80 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !49
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !49
  br label %bb.al

bb.ad:                                            ; preds = %bb.ab
  %i.dy = icmp samesign ult i32 %.val128, 10000
  br i1 %i.dy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.lhs.trunc166 = trunc nuw nsw i32 %.val128 to i16
  %i.dz = udiv i16 %.lhs.trunc166, 1000
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 120 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !49
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !49
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.ef = icmp samesign ult i32 %.val128, 100000
  br i1 %i.ef, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eg = udiv i32 %.val128, 10000
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 160 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !49
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !49
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.em = icmp samesign ult i32 %.val128, 1000000
  br i1 %i.em, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.en = udiv i32 %.val128, 100000
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 200 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !49
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !49
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.et = icmp samesign ult i32 %.val128, 10000000
  br i1 %i.et, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eu = udiv i32 %.val128, 1000000
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 240 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !49
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !49
  br label %bb.al

bb.al:                                            ; preds = %bb.i, %bb.h, %bb.aa, %bb.ae, %bb.ai, %bb.ak, %bb.aj, %bb.ag, %bb.ac, %bb.y
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.fa = icmp slt i64 %indvars.iv.next198, %1
  br i1 %i.fa, label %bb.h, label %.critedge2, !llvm.loop !74

.critedge2:                                       ; preds = %bb.al, %Vec_IntStart.exit160
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts119 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.fb = icmp sgt i32 %i.ak, 0
  br i1 %i.fb, label %.lr.ph194, label %._crit_edge

.lr.ph194:                                        ; preds = %.critedge2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %wide.trip.count203 = zext nneg i32 %i.ak to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph194, %bb.ay
  %indvars.iv200 = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next201, %bb.ay ] ; 6 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv200 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !49
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !47
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv200
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !49
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fk = icmp samesign ult i64 %indvars.iv200, 10
  %i.fl = trunc nuw nsw i64 %indvars.iv200 to i32 ; 3 uses
  br i1 %i.fk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.fl) ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fn = udiv i32 %i.fl, 10
  %i.fo = uitofp nneg i32 %i.fn to double
  %i.fp = call double @pow(double noundef 1.000000e+01, double noundef %i.fo) #18
  %i.fq = fptosi double %i.fp to i32              ; 2 uses
  %i.fr = urem i32 %i.fl, 10                      ; 2 uses
  %i.fs = mul nsw i32 %i.fr, %i.fq
  %i.ft = add nuw nsw i32 %i.fr, 1
  %i.fu = mul nsw i32 %i.ft, %i.fq
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.fs, i32 noundef %i.fv) #18 ; 0 uses
  %i.fx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fy = load i32, ptr %i.fd, align 4, !tbaa !49 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ga = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28) ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.fy) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) ; 0 uses
  %i.gd = load ptr, ptr %i.fc, align 8, !tbaa !47
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv200
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !49 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28) ; 0 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.gi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.gf) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.an, %bb.ax
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.thread, label %bb.am, !llvm.loop !75

._crit_edge:                                      ; preds = %.critedge2
  %.not.i161 = icmp eq ptr %i.ba, null
  br i1 %.not.i161, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ay, %._crit_edge
  call void @free(ptr noundef nonnull %i.ba) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !47 ; 2 uses
  %.not.i162 = icmp eq ptr %i.gk, null
  br i1 %.not.i162, label %Vec_IntFree.exit163, label %bb.az

bb.az:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.gk) #18
  br label %Vec_IntFree.exit163

Vec_IntFree.exit163:                              ; preds = %Vec_IntFree.exit, %bb.az
  call void @free(ptr noundef nonnull %i.bb) #18
  %i.gl = getelementptr i8, ptr %0, i64 52
  %.val145 = load i32, ptr %i.gl, align 4, !tbaa !49
  %i.gm = sitofp i32 %.val145 to double
  %i.gn = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fdiv <2 x double> %i.ah, %i.go          ; 2 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 0
  %i.gr = extractelement <2 x double> %i.gp, i64 1
  %i.gs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %.0109.lcssa249261, double noundef %i.gq, i32 noundef %.0107.lcssa250260, double noundef %i.gr) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Nwk_ManCleanMarks(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val9 = load i32, ptr %i.c, align 4, !tbaa !22
  %i.d = icmp sgt i32 %.val9, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.m, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val8 = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val8, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, -49
  store i32 %i.l, ptr %i.j, align 8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val = load i32, ptr %i.n, align 4, !tbaa !22
  %i.o = sext i32 %.val to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %.critedge, !llvm.loop !76

.critedge:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Nwk_ManMinimumBaseNode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %0, i64 60         ; 6 uses
  %.val45 = load i32, ptr %i.i, align 4, !tbaa !31
  %i.j = tail call ptr @Hop_ManConvertAigToTruth(ptr noundef %i.c, ptr noundef %i.h, i32 noundef %.val45, ptr noundef %1, i32 noundef 0) #18 ; 2 uses
  %.val44 = load i32, ptr %i.i, align 4, !tbaa !31
  %i.k = tail call i32 @Kit_TruthSupportSize(ptr noundef %i.j, i32 noundef %.val44) #18 ; 2 uses
  %.val43 = load i32, ptr %i.i, align 4, !tbaa !31 ; 2 uses
  %i.l = icmp eq i32 %i.k, %.val43
  br i1 %i.l, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @Kit_TruthSupport(ptr noundef %i.j, i32 noundef %.val43) #18 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val46 = load i32, ptr %i.n, align 8, !tbaa !42
  %i.o = tail call ptr @Nwk_ManCreateNode(ptr noundef nonnull %i.a, i32 noundef %i.k, i32 noundef %.val46) #18 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.i, align 4, !tbaa !31   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %i.s = phi i32 [ %i.z, %bb.e ], [ %i.q, %bb.b ] ; 2 uses
end_hunk_0
