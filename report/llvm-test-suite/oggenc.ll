Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 195
begin_hunk_0_@wav_read:bb.a
  %.not = icmp eq i64 %i.o, 0
  %.pre = load i16, ptr %0, align 8               ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre176 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.pre177 = sext i16 %.pre to i32
  %.pre178 = mul nsw i32 %.pre177, %i.d
  %.pre180 = sext i32 %.pre178 to i64             ; 3 uses
  br i1 %.not, label %._crit_edge175, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sdiv i64 %i.m, %.pre180
  %i.q = add nsw i64 %i.p, %.pre176
  %i.r = icmp sgt i64 %i.q, %i.o
  br i1 %i.r, label %bb.c, label %._crit_edge175

bb.c:                                             ; preds = %bb.b
  %i.s = sub nsw i64 %i.o, %.pre176
  %i.t = mul nsw i64 %i.s, %.pre180
  br label %._crit_edge175

._crit_edge175:                                   ; preds = %bb.a, %bb.c, %bb.b
  %.0105 = phi i64 [ %i.m, %bb.b ], [ %i.t, %bb.c ], [ %i.m, %bb.a ]
  %i.u = sdiv i64 %.0105, %.pre180                ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = add nsw i64 %.pre176, %i.u
  store i64 %i.w, ptr %i.v, align 8
  %i.x = load i16, ptr %i.a, align 2              ; 2 uses
  switch i16 %i.x, label %bb.g [
    i16 8, label %.preheader123
    i16 16, label %bb.d
    i16 24, label %bb.e
  ]

.preheader123:                                    ; preds = %._crit_edge175
  %i.y = icmp sgt i64 %i.u, 0
  br i1 %i.y, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader123, %._crit_edge145
  %i.z = phi i16 [ %i.ar, %._crit_edge145 ], [ %.pre, %.preheader123 ] ; 3 uses
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %._crit_edge145 ], [ 0, %.preheader123 ] ; 3 uses
  %i.aa = icmp sgt i16 %i.z, 0
  br i1 %i.aa, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %.preheader, %.lr.ph144
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %.lr.ph144 ], [ 0, %.preheader ] ; 3 uses
  %.in189 = phi i16 [ %i.ao, %.lr.ph144 ], [ %i.z, %.preheader ]
  %i.ab = sext i16 %.in189 to i64
  %i.ac = mul i64 %indvars.iv171, %i.ab
  %i.ad = add i64 %i.ac, %indvars.iv168
  %sext196 = shl i64 %i.ad, 32
  %i.ae = ashr exact i64 %sext196, 32
  %i.af = getelementptr inbounds i8, ptr %i.j, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -128
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fmul nnan float %i.aj, 7.812500e-03
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv168
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv171
  store float %i.ak, ptr %i.an, align 4
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.ao = load i16, ptr %0, align 8               ; 3 uses
  %i.ap = sext i16 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next169, %i.ap
  br i1 %i.aq, label %.lr.ph144, label %._crit_edge145, !llvm.loop !64

._crit_edge145:                                   ; preds = %.lr.ph144, %.preheader
  %i.ar = phi i16 [ %i.z, %.preheader ], [ %i.ao, %.lr.ph144 ]
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next172, %i.u
  br i1 %exitcond174.not, label %.loopexit, label %.preheader, !llvm.loop !65

bb.d:                                             ; preds = %._crit_edge175
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i16, ptr %i.as, align 8
  %.not118 = icmp eq i16 %i.at, 0
  %i.au = icmp sgt i64 %i.u, 0                    ; 2 uses
  br i1 %.not118, label %.preheader125, label %.preheader128

.preheader128:                                    ; preds = %bb.d
  br i1 %i.au, label %.preheader127, label %.loopexit

.preheader125:                                    ; preds = %bb.d
  br i1 %i.au, label %.preheader124, label %.loopexit

.preheader124:                                    ; preds = %.preheader125, %._crit_edge141
  %i.av = phi i16 [ %i.bs, %._crit_edge141 ], [ %.pre, %.preheader125 ] ; 3 uses
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %._crit_edge141 ], [ 0, %.preheader125 ] ; 3 uses
  %i.aw = icmp sgt i16 %i.av, 0
  br i1 %i.aw, label %.lr.ph140.preheader, label %._crit_edge141

.lr.ph140.preheader:                              ; preds = %.preheader124
  %i.ax = trunc nuw nsw i64 %indvars.iv164 to i32
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.lr.ph140
  %indvars.iv161 = phi i64 [ 0, %.lr.ph140.preheader ], [ %indvars.iv.next162, %.lr.ph140 ] ; 3 uses
  %.in188 = phi i16 [ %i.av, %.lr.ph140.preheader ], [ %i.bp, %.lr.ph140 ]
  %i.ay = sext i16 %.in188 to i32
  %i.az = mul i32 %i.ay, %i.ax
  %i.ba = trunc nuw nsw i64 %indvars.iv161 to i32
  %reass.add121 = add i32 %i.az, %i.ba
  %reass.mul122 = shl i32 %reass.add121, 1
  %i.bb = sext i32 %reass.mul122 to i64
  %i.bc = getelementptr i8, ptr %i.j, i64 %i.bb   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i8 %i.be to i32
  %i.bg = shl nsw i32 %i.bf, 8
  %i.bh = load i8, ptr %i.bc, align 2
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = fmul nnan float %i.bk, f0x38000000
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv161
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv164
  store float %i.bl, ptr %i.bo, align 4
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.bp = load i16, ptr %0, align 8               ; 3 uses
  %i.bq = sext i16 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next162, %i.bq
  br i1 %i.br, label %.lr.ph140, label %._crit_edge141, !llvm.loop !66

._crit_edge141:                                   ; preds = %.lr.ph140, %.preheader124
  %i.bs = phi i16 [ %i.av, %.preheader124 ], [ %i.bp, %.lr.ph140 ]
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next165, %i.u
  br i1 %exitcond167.not, label %.loopexit, label %.preheader124, !llvm.loop !67

.preheader127:                                    ; preds = %.preheader128, %._crit_edge137
  %i.bt = phi i16 [ %i.cq, %._crit_edge137 ], [ %.pre, %.preheader128 ] ; 3 uses
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %._crit_edge137 ], [ 0, %.preheader128 ] ; 3 uses
  %i.bu = icmp sgt i16 %i.bt, 0
  br i1 %i.bu, label %.lr.ph136.preheader, label %._crit_edge137

.lr.ph136.preheader:                              ; preds = %.preheader127
  %i.bv = trunc nuw nsw i64 %indvars.iv157 to i32
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %.lr.ph136
  %indvars.iv154 = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next155, %.lr.ph136 ] ; 3 uses
  %.in187 = phi i16 [ %i.bt, %.lr.ph136.preheader ], [ %i.cn, %.lr.ph136 ]
  %i.bw = sext i16 %.in187 to i32
  %i.bx = mul i32 %i.bw, %i.bv
  %i.by = trunc nuw nsw i64 %indvars.iv154 to i32
  %reass.add119 = add i32 %i.bx, %i.by
  %reass.mul120 = shl i32 %reass.add119, 1
  %i.bz = sext i32 %reass.mul120 to i64
  %i.ca = getelementptr inbounds i8, ptr %i.j, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 2
  %i.cc = sext i8 %i.cb to i32
  %i.cd = shl nsw i32 %i.cc, 8
  %i.ce = getelementptr i8, ptr %i.ca, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cd, %i.cg
  %i.ci = sitofp i32 %i.ch to float
  %i.cj = fmul nnan float %i.ci, f0x38000000
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv154
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv157
  store float %i.cj, ptr %i.cm, align 4
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.cn = load i16, ptr %0, align 8               ; 3 uses
  %i.co = sext i16 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next155, %i.co
  br i1 %i.cp, label %.lr.ph136, label %._crit_edge137, !llvm.loop !68

._crit_edge137:                                   ; preds = %.lr.ph136, %.preheader127
  %i.cq = phi i16 [ %i.bt, %.preheader127 ], [ %i.cn, %.lr.ph136 ]
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next158, %i.u
  br i1 %exitcond160.not, label %.loopexit, label %.preheader127, !llvm.loop !69

bb.e:                                             ; preds = %._crit_edge175
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load i16, ptr %i.cr, align 8
  %.not117 = icmp eq i16 %i.cs, 0
  br i1 %.not117, label %.preheader131, label %bb.f

.preheader131:                                    ; preds = %bb.e
  %i.ct = icmp sgt i64 %i.u, 0
  br i1 %i.ct, label %.preheader130, label %.loopexit

.preheader130:                                    ; preds = %.preheader131, %._crit_edge
  %i.cu = phi i16 [ %i.do, %._crit_edge ], [ %.pre, %.preheader131 ] ; 3 uses
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %._crit_edge ], [ 0, %.preheader131 ] ; 3 uses
  %i.cv = icmp sgt i16 %i.cu, 0
  br i1 %i.cv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader130, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader130 ] ; 3 uses
  %.in = phi i16 [ %i.dl, %.lr.ph ], [ %i.cu, %.preheader130 ]
  %i.cw = sext i16 %.in to i64
  %i.cx = mul i64 %indvars.iv151, %i.cw
  %reass.add = add i64 %i.cx, %indvars.iv
  %sext = mul i64 %reass.add, 12884901888
  %i.cy = ashr exact i64 %sext, 32
  %i.cz = getelementptr i8, ptr %i.j, i64 %i.cy   ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 2
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = sext i8 %i.db to i32
  %i.dd = shl nsw i32 %i.dc, 16
  %3 = load i16, ptr %i.cz, align 1
  %i.de = zext i16 %3 to i32
  %i.df = or disjoint i32 %i.dd, %i.de
  %i.dg = sitofp i32 %i.df to float
  %i.dh = fmul nnan float %i.dg, f0x34000000
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv151
  store float %i.dh, ptr %i.dk, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dl = load i16, ptr %0, align 8               ; 3 uses
  %i.dm = sext i16 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %.preheader130
  %i.do = phi i16 [ %i.cu, %.preheader130 ], [ %i.dl, %.lr.ph ]
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next152, %i.u
  br i1 %exitcond.not, label %.loopexit, label %.preheader130, !llvm.loop !71

bb.f:                                             ; preds = %bb.e
  %i.dp = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.80, i64 65, i64 1, ptr %i.dp) #64 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge175
  %i.dq = sext i16 %i.x to i32
  %i.dr = load ptr, ptr @stderr, align 8
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.81, i32 noundef %i.dq) #65 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge137, %._crit_edge141, %._crit_edge145, %.preheader131, %.preheader128, %.preheader125, %.preheader123, %bb.g, %bb.f
  %.0106 = phi i64 [ 0, %bb.g ], [ 0, %bb.f ], [ %i.u, %.preheader125 ], [ %i.u, %.preheader123 ], [ %i.u, %.preheader128 ], [ %i.u, %.preheader131 ], [ %i.u, %._crit_edge137 ], [ %i.u, %._crit_edge145 ], [ %i.u, %._crit_edge141 ], [ %i.u, %._crit_edge ]
  ret i64 %.0106
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @find_wav_chunk(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #13 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [8 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  %i.c = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %i.d = icmp ult i64 %i.c, 8
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %seek_forward.exit.thread, %bb.a
  %i.f = load ptr, ptr @stderr, align 8
  %fwrite = call i64 @fwrite(ptr nonnull @.str.76, i64 46, i64 1, ptr %i.f) #64 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %seek_forward.exit.thread
  %i.g = load i32, ptr %i.b, align 1
  %i.h = load i32, ptr %1, align 1
  %i.i = icmp ne i32 %i.g, %i.h
  %i.j = zext i1 %i.i to i32
  %.not = icmp eq i32 %i.j, 0
  %i.k = load i32, ptr %i.e, align 1              ; 4 uses
  store i32 %i.k, ptr %2, align 4
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.k to i64
  %i.m = call i32 @fseek(ptr noundef %0, i64 noundef %i.l, i32 noundef 1)
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %seek_forward.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph.i, label %seek_forward.exit.thread10

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = sub nsw i32 %.01115.i, %i.t              ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %seek_forward.exit.thread10, !llvm.loop !3

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.01115.i = phi i32 [ %i.o, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.q = call i32 @llvm.umin.i32(i32 %.01115.i, i32 1024)
  %i.r = zext nneg i32 %i.q to i64
  %i.s = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.r, ptr noundef %0)
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %.not14.i = icmp eq i32 %i.t, 0
  br i1 %.not14.i, label %seek_forward.exit, label %bb.e

seek_forward.exit.thread10:                       ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %seek_forward.exit.thread

seek_forward.exit:                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %.loopexit

seek_forward.exit.thread:                         ; preds = %bb.c, %seek_forward.exit.thread10
  store i8 0, ptr %i.e, align 1
  %i.u = load ptr, ptr @stderr, align 8
  %i.v = load i32, ptr %2, align 4
  %i.w = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.175, ptr noundef nonnull %i.b, i32 noundef %i.v) #65 ; 0 uses
  %i.x = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %i.y = icmp ult i64 %i.x, 8
  br i1 %i.y, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b, %seek_forward.exit, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %seek_forward.exit ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i64 -9223372036854775808, 2147483648) i64 @wav_ieee_read(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #13 {
bb.a:
  %i.a = shl nsw i32 %2, 2
  %i.b = load i16, ptr %0, align 8
  %i.c = sext i16 %i.b to i32
  %i.d = mul nsw i32 %i.a, %i.c
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = alloca i8, i64 %i.e, align 16            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i64 @fread(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef %i.e, ptr noundef %i.h) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %.not = icmp eq i64 %i.k, 0
  %.pre = load i16, ptr %0, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre46 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.pre47 = sext i16 %.pre to i32
  %.pre48 = shl nsw i32 %.pre47, 2
  %.pre50 = sext i32 %.pre48 to i64               ; 3 uses
  br i1 %.not, label %._crit_edge45, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i64 %i.i, %.pre50
  %i.m = add nsw i64 %i.l, %.pre46
  %i.n = icmp sgt i64 %i.m, %i.k
  br i1 %i.n, label %bb.c, label %._crit_edge45

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i64 %i.k, %.pre46
  %i.p = mul nsw i64 %i.o, %.pre50
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %bb.a, %bb.c, %bb.b
  %.033 = phi i64 [ %i.i, %bb.b ], [ %i.p, %bb.c ], [ %i.i, %bb.a ]
  %i.q = sdiv i64 %.033, %.pre50                  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = add nsw i64 %.pre46, %i.q
  store i64 %i.s, ptr %i.r, align 8
  %i.t = icmp sgt i64 %i.q, 0
  br i1 %i.t, label %.preheader, label %._crit_edge40

.preheader:                                       ; preds = %._crit_edge45, %._crit_edge
  %i.u = phi i16 [ %i.ai, %._crit_edge ], [ %.pre, %._crit_edge45 ] ; 3 uses
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %._crit_edge ], [ 0, %._crit_edge45 ] ; 3 uses
  %i.v = icmp sgt i16 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %.in = phi i16 [ %i.af, %.lr.ph ], [ %i.u, %.preheader ]
  %i.w = sext i16 %.in to i64
  %i.x = mul i64 %indvars.iv42, %i.w
  %i.y = add i64 %i.x, %indvars.iv
  %sext = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext, 30
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv42
  store float %i.ab, ptr %i.ae, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i16, ptr %0, align 8               ; 3 uses
  %i.ag = sext i16 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.ai = phi i16 [ %i.u, %.preheader ], [ %i.af, %.lr.ph ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next43, %i.q
  br i1 %exitcond.not, label %._crit_edge40, label %.preheader, !llvm.loop !73

._crit_edge40:                                    ; preds = %._crit_edge, %._crit_edge45
  ret i64 %i.q
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1_@_ov_open2:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.bm, %.lr.ph148.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph148.i.i ], [ %indvars.iv.next.i.i, %bb.bm ] ; 15 uses
  %i.cm = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %i.cm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %i.bk, align 8
  store i64 %i.h, ptr %i.cn, align 8
  %i.co = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i32.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i32.i, label %_seek_helper.exit.i26.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %i.i, align 8
  %i.cq = call i32 %i.cp(ptr noundef nonnull %i.co, i64 noundef %i.h, i32 noundef 0) #62, !inline_history !216 ; 0 uses
  store i64 %i.h, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit.i26.i

bb.o:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i85.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i85.i.i, label %_seek_helper.exit86.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = load ptr, ptr %i.bt, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cv = load ptr, ptr %i.i, align 8
  %i.cw = call i32 %i.cv(ptr noundef nonnull %i.cr, i64 noundef %i.cu, i32 noundef 0) #62, !inline_history !216 ; 0 uses
  store i64 %i.cu, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit86.i.i

_seek_helper.exit86.i.i:                          ; preds = %bb.p, %bb.o
  %i.cx = load ptr, ptr %i.at, align 8
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %indvars.iv.i.i
  %i.cz = load ptr, ptr %i.ba, align 8
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cz, i64 %indvars.iv.i.i
  %i.db = call fastcc i32 @_fetch_headers(ptr noundef nonnull %0, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.da, ptr noundef null, ptr noundef null)
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_seek_helper.exit86.i.i
  %i.dd = load ptr, ptr %i.bk, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i.i
  store i64 -1, ptr %i.de, align 8
  br label %_seek_helper.exit.i26.i

bb.r:                                             ; preds = %_seek_helper.exit86.i.i
  %i.df = load i64, ptr %i.g, align 8
  %i.dg = load ptr, ptr %i.bk, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.i.i
  store i64 %i.df, ptr %i.dh, align 8
  br label %_seek_helper.exit.i26.i

_seek_helper.exit.i26.i:                          ; preds = %bb.r, %bb.q, %bb.n, %bb.m
  %i.di = load ptr, ptr %i.bk, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i.i
  %i.dk = load i64, ptr %i.dj, align 8
  %.not.i.i = icmp eq i64 %i.dk, -1
  br i1 %.not.i.i, label %bb.aw, label %bb.s

bb.s:                                             ; preds = %_seek_helper.exit.i26.i
  %i.dl = load ptr, ptr %i.bv, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i.i
  %i.dn = load i64, ptr %i.dm, align 8
  store i32 0, ptr %i.by, align 4
  store i32 0, ptr %i.bz, align 8
  store i32 0, ptr %i.ca, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.cb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.do = shl i64 %i.dn, 32
  %i.dp = ashr exact i64 %i.do, 32
  store i64 %i.dp, ptr %i.cd, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i29.i, %bb.s
  %.073.i.i = phi i64 [ 0, %bb.s ], [ %.174.lcssa.i.i, %._crit_edge.i29.i ] ; 6 uses
  %.072.i.i = phi i64 [ -1, %bb.s ], [ %.1.lcssa.i30.i, %._crit_edge.i29.i ] ; 2 uses
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i.backedge, %bb.t
  %i.dq = call i64 @ogg_sync_pageseek(ptr noundef nonnull %i.ce, ptr noundef nonnull %1) ; 4 uses
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.split.i.i.i
  %i.ds = load i64, ptr %i.g, align 8
  %i.dt = sub nsw i64 %i.ds, %i.dq
  store i64 %i.dt, ptr %i.g, align 8
  br label %.split.i.i.i.backedge

bb.v:                                             ; preds = %.split.i.i.i
  %i.du = icmp eq i64 %i.dq, 0
  br i1 %i.du, label %bb.w, label %_get_next_page.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.dv = tail call ptr @__errno_location() #70
  store i32 0, ptr %i.dv, align 4
  %i.dw = load ptr, ptr %0, align 8
  %.not.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i, label %_get_next_page.exit.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = load i32, ptr %i.cf, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.dx, 0
  %.pre55.i.i.i = load i32, ptr %i.r, align 4     ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = sub nsw i32 %.pre55.i.i.i, %i.dx        ; 4 uses
  store i32 %i.dy, ptr %i.r, align 4
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ea = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.eb = sext i32 %i.dx to i64
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 %i.eb
  %i.ed = zext nneg i32 %i.dy to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 1 %i.ec, i64 %i.ed, i1 false)
  %.pre.pre.i.i.i = load i32, ptr %i.r, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre.i.i.i = phi i32 [ %.pre.pre.i.i.i, %bb.z ], [ %i.dy, %bb.y ]
  store i32 0, ptr %i.cf, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.ee = phi i32 [ %.pre.i.i.i, %bb.aa ], [ %.pre55.i.i.i, %bb.x ] ; 3 uses
  %i.ef = load i32, ptr %i.cg, align 8
  %i.eg = sub nsw i32 %i.ef, %i.ee
  %i.eh = icmp slt i32 %i.eg, 8500
  %.pre.i.i.i.i.i = load ptr, ptr %i.ce, align 8  ; 3 uses
  br i1 %i.eh, label %bb.ac, label %ogg_sync_buffer.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ei = sext i32 %i.ee to i64
  %i.ej = add nsw i64 %i.ei, 12596                ; 3 uses
  %.not26.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not26.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = call ptr @realloc(ptr noundef nonnull %.pre.i.i.i.i.i, i64 noundef %i.ej) #66
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.el = call noalias ptr @malloc(i64 noundef %i.ej) #69
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %storemerge.i.i.i.i.i = phi ptr [ %i.el, %bb.ae ], [ %i.ek, %bb.ad ] ; 2 uses
  store ptr %storemerge.i.i.i.i.i, ptr %i.ce, align 8
  %i.em = trunc i64 %i.ej to i32
  store i32 %i.em, ptr %i.cg, align 8
  %.pre27.i.i.i.i.i = load i32, ptr %i.r, align 4
  br label %ogg_sync_buffer.exit.i.i.i.i

ogg_sync_buffer.exit.i.i.i.i:                     ; preds = %bb.af, %bb.ab
  %i.en = phi i32 [ %.pre27.i.i.i.i.i, %bb.af ], [ %i.ee, %bb.ab ]
  %i.eo = phi ptr [ %storemerge.i.i.i.i.i, %bb.af ], [ %.pre.i.i.i.i.i, %bb.ab ]
  %i.ep = sext i32 %i.en to i64
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 %i.ep
  %i.er = load ptr, ptr %i.ch, align 8
  %i.es = load ptr, ptr %0, align 8
  %i.et = call i64 %i.er(ptr noundef %i.eq, i64 noundef 1, i64 noundef 8500, ptr noundef %i.es) #62, !inline_history !217 ; 2 uses
  %i.eu = icmp sgt i64 %i.et, 0
  br i1 %i.eu, label %bb.ag, label %_get_next_page.exit.thread.i.i

bb.ag:                                            ; preds = %ogg_sync_buffer.exit.i.i.i.i
  %i.ev = load i32, ptr %i.r, align 4
  %i.ew = sext i32 %i.ev to i64
  %i.ex = add nsw i64 %i.et, %i.ew                ; 2 uses
  %i.ey = load i32, ptr %i.cg, align 8
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp sgt i64 %i.ex, %i.ez
  br i1 %i.fa, label %.split.i.i.i.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = trunc nsw i64 %i.ex to i32
  store i32 %i.fb, ptr %i.r, align 4
  br label %.split.i.i.i.backedge

.split.i.i.i.backedge:                            ; preds = %bb.ah, %bb.ag, %bb.u
  br label %.split.i.i.i

_get_next_page.exit.i.i:                          ; preds = %bb.v
  %i.fc = load i64, ptr %i.g, align 8             ; 2 uses
  %i.fd = add nsw i64 %i.fc, %i.dq
  store i64 %i.fd, ptr %i.g, align 8
  %i.fe = icmp slt i64 %i.fc, 0
  br i1 %i.fe, label %_get_next_page.exit.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %_get_next_page.exit.i.i
  %i.ff = load ptr, ptr %1, align 8               ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 14
  %i.fh = load i32, ptr %i.fg, align 1
  %i.fi = sext i32 %i.fh to i64
  %i.fj = load ptr, ptr %i.bv, align 8
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.i.i
  %i.fl = load i64, ptr %i.fk, align 8
  %.not80.i.i = icmp eq i64 %i.fl, %i.fi
  br i1 %.not80.i.i, label %bb.aj, label %_get_next_page.exit.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fm = call i32 @ogg_stream_pagein(ptr noundef nonnull %i.bu, ptr noundef nonnull %1) ; 0 uses
  %i.fn = load i64, ptr %i.cj, align 8            ; 2 uses
  %.promoted.i.i = load i64, ptr %i.ci, align 8   ; 2 uses
  %sext.i.i141.i.i = shl i64 %.promoted.i.i, 32
  %i.fo = ashr exact i64 %sext.i.i141.i.i, 32     ; 2 uses
  %.not.i.i88142.i.i = icmp sgt i64 %i.fn, %i.fo
  br i1 %.not.i.i88142.i.i, label %.lr.ph.i31.i, label %._crit_edge.i29.i

.lr.ph.i31.i:                                     ; preds = %bb.aj
  %i.fp = load ptr, ptr %i.ck, align 8            ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.au, %.lr.ph.i31.i
  %i.fq = phi i64 [ %i.fo, %.lr.ph.i31.i ], [ %i.iv, %bb.au ] ; 2 uses
  %.1144.i.i = phi i64 [ %.072.i.i, %.lr.ph.i31.i ], [ %.2.i.i, %bb.au ] ; 3 uses
  %.174143.i.i = phi i64 [ %.073.i.i, %.lr.ph.i31.i ], [ %.376.i.i, %bb.au ] ; 2 uses
  %i.fr = phi i64 [ %.promoted.i.i, %.lr.ph.i31.i ], [ %i.iu, %bb.au ] ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fq
  %i.ft = load i32, ptr %i.fs, align 4            ; 2 uses
  %i.fu = and i32 %i.ft, 1024
  %.not51.i.i.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not51.i.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fv = and i32 %i.ft, 255                      ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 255
  br i1 %i.fw, label %.lr.ph.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fq, %bb.al ]
  %.04554.i.i.i.i = phi i32 [ %i.ga, %.lr.ph.i.i.i.i ], [ 255, %bb.al ]
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 3 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %indvars.iv.next.i.i.i.i
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = and i32 %i.fy, 255                      ; 2 uses
  %i.ga = add nuw nsw i32 %i.fz, %.04554.i.i.i.i  ; 2 uses
  %i.gb = icmp eq i32 %i.fz, 255
  br i1 %i.gb, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !llvm.loop !15

bb.am:                                            ; preds = %bb.ak
  %i.gc = add nsw i64 %i.fr, 1                    ; 2 uses
  store i64 %i.gc, ptr %i.ci, align 8
  %i.gd = load i64, ptr %i.cc, align 8
  %i.ge = add nsw i64 %i.gd, 1
  store i64 %i.ge, ptr %i.cc, align 8
  br label %bb.au

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %bb.al
  %.047.lcssa.in.i.i.i.i = phi i64 [ %i.fr, %bb.al ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.045.lcssa.i.i.i.i = phi i32 [ %i.fv, %bb.al ], [ %i.ga, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.gf = load ptr, ptr %i.bu, align 8
  %i.gg = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 %i.gg ; 5 uses
  %sext62.i.i.i.i = shl i64 %.047.lcssa.in.i.i.i.i, 32
  %i.gi = zext nneg i32 %.045.lcssa.i.i.i.i to i64 ; 2 uses
  %i.gj = add nsw i64 %i.gg, %i.gi
  store i64 %i.gj, ptr %i.cl, align 8
  %sext63.i.i.i.i = add i64 %sext62.i.i.i.i, 4294967296
  %i.gk = ashr exact i64 %sext63.i.i.i.i, 32      ; 2 uses
  store i64 %i.gk, ptr %i.ci, align 8
  %i.gl = load i64, ptr %i.cc, align 8
  %i.gm = add nsw i64 %i.gl, 1
  store i64 %i.gm, ptr %i.cc, align 8
  %i.gn = load ptr, ptr %i.at, align 8
  %i.go = getelementptr inbounds nuw [56 x i8], ptr %i.gn, i64 %indvars.iv.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gq = load ptr, ptr %i.gp, align 8            ; 3 uses
  %i.gr = shl nuw nsw i64 %i.gi, 3
  %.not.i.i91.i.i = icmp ult i32 %.045.lcssa.i.i.i.i, 5
  %i.gs = icmp eq i32 %.045.lcssa.i.i.i.i, 0
  br i1 %i.gs, label %vorbis_packet_blocksize.exit.i.i, label %oggpack_read.exit.i.i.i

oggpack_read.exit.i.i.i:                          ; preds = %.loopexit.i.i
  %i.gt = load i8, ptr %i.gh, align 1             ; 2 uses
  %i.gu = and i8 %i.gt, 1
  %.not.i92.i.i = icmp eq i8 %i.gu, 0
  br i1 %.not.i92.i.i, label %bb.an, label %vorbis_packet_blocksize.exit.i.i

bb.an:                                            ; preds = %oggpack_read.exit.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gw = load i32, ptr %i.gv, align 8            ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 1
  br i1 %i.gx, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.an, %.lr.ph.i.i.i
  %.035.i.i.i = phi i32 [ %i.gz, %.lr.ph.i.i.i ], [ %i.gw, %bb.an ] ; 2 uses
  %.01234.i.i.i = phi i32 [ %i.gy, %.lr.ph.i.i.i ], [ 0, %bb.an ]
  %i.gy = add nuw nsw i32 %.01234.i.i.i, 1        ; 2 uses
  %i.gz = lshr i32 %.035.i.i.i, 1
  %i.ha = icmp samesign ugt i32 %.035.i.i.i, 3
  br i1 %i.ha, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !16

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.an
  %.012.lcssa.i.i.i = phi i32 [ 0, %bb.an ], [ %i.gy, %.lr.ph.i.i.i ] ; 6 uses
  %i.hb = zext nneg i32 %.012.lcssa.i.i.i to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.hb
  %i.hc = xor i64 %notmask.i.i.i.i, -1
  %i.hd = add nuw nsw i32 %.012.lcssa.i.i.i, 1
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = icmp samesign ult i64 %i.gr, %i.he
  %or.cond.i.i = select i1 %.not.i.i91.i.i, i1 %i.hf, i1 false
  br i1 %or.cond.i.i, label %vorbis_packet_blocksize.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i.i.i
  %i.hg = lshr exact i8 %i.gt, 1
  %i.hh = zext nneg i8 %i.hg to i64               ; 2 uses
  %i.hi = icmp samesign ugt i32 %.012.lcssa.i.i.i, 7
  br i1 %i.hi, label %bb.ap, label %oggpack_read.exit22.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = zext i8 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 7
  %i.hn = or disjoint i64 %i.hm, %i.hh            ; 2 uses
  %i.ho = icmp samesign ugt i32 %.012.lcssa.i.i.i, 15
  br i1 %i.ho, label %bb.aq, label %oggpack_read.exit22.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = zext i8 %i.hq to i64
  %i.hs = shl nuw nsw i64 %i.hr, 15
  %i.ht = or disjoint i64 %i.hs, %i.hn            ; 2 uses
  %i.hu = icmp samesign ugt i32 %.012.lcssa.i.i.i, 23
  br i1 %i.hu, label %bb.ar, label %oggpack_read.exit22.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gh, i64 3
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = zext i8 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hx, 23
  %i.hz = or disjoint i64 %i.hy, %i.ht            ; 2 uses
  %i.ia = icmp samesign ult i32 %.012.lcssa.i.i.i, 32
  br i1 %i.ia, label %oggpack_read.exit22.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = zext i8 %i.ic to i64
  %i.ie = shl nuw nsw i64 %i.id, 31
  %i.if = and i64 %i.ie, 2147483648
  %i.ig = or disjoint i64 %i.if, %i.hz
  br label %oggpack_read.exit22.i.i.i

oggpack_read.exit22.i.i.i:                        ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.0.i16.i.i.i = phi i64 [ %i.ig, %bb.as ], [ %i.hh, %bb.ao ], [ %i.hz, %bb.ar ], [ %i.ht, %bb.aq ], [ %i.hn, %bb.ap ]
  %i.ih = and i64 %.0.i16.i.i.i, %i.hc            ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 4294967295
  br i1 %i.ii, label %vorbis_packet_blocksize.exit.i.i, label %bb.at

bb.at:                                            ; preds = %oggpack_read.exit22.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %sext.i.i.i = shl nuw i64 %i.ih, 32
  %i.ik = ashr exact i64 %sext.i.i.i, 29
  %i.il = getelementptr inbounds i8, ptr %i.ij, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = load i32, ptr %i.im, align 4
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8
  br label %vorbis_packet_blocksize.exit.i.i

vorbis_packet_blocksize.exit.i.i:                 ; preds = %bb.at, %oggpack_read.exit22.i.i.i, %._crit_edge.i.i.i, %oggpack_read.exit.i.i.i, %.loopexit.i.i
  %.013.i.i.i = phi i64 [ %i.iq, %bb.at ], [ -135, %oggpack_read.exit.i.i.i ], [ -136, %oggpack_read.exit22.i.i.i ], [ -135, %.loopexit.i.i ], [ -136, %._crit_edge.i.i.i ] ; 2 uses
  %.not83.i.i = icmp eq i64 %.1144.i.i, -1
  %i.ir = add nsw i64 %.013.i.i.i, %.1144.i.i
  %i.is = ashr i64 %i.ir, 2
  %i.it = select i1 %.not83.i.i, i64 0, i64 %i.is
  %.275.i.i = add nsw i64 %i.it, %.174143.i.i
  br label %bb.au

bb.au:                                            ; preds = %vorbis_packet_blocksize.exit.i.i, %bb.am
  %i.iu = phi i64 [ %i.gk, %vorbis_packet_blocksize.exit.i.i ], [ %i.gc, %bb.am ] ; 2 uses
  %.376.i.i = phi i64 [ %.275.i.i, %vorbis_packet_blocksize.exit.i.i ], [ %.174143.i.i, %bb.am ] ; 2 uses
  %.2.i.i = phi i64 [ %.013.i.i.i, %vorbis_packet_blocksize.exit.i.i ], [ %.1144.i.i, %bb.am ] ; 2 uses
  %sext.i.i.i.i = shl i64 %i.iu, 32
  %i.iv = ashr exact i64 %sext.i.i.i.i, 32        ; 2 uses
  %.not.i.i88.i.i = icmp sgt i64 %i.fn, %i.iv
  br i1 %.not.i.i88.i.i, label %bb.ak, label %._crit_edge.i29.i, !llvm.loop !218

._crit_edge.i29.i:                                ; preds = %bb.au, %bb.aj
  %.174.lcssa.i.i = phi i64 [ %.073.i.i, %bb.aj ], [ %.376.i.i, %bb.au ] ; 2 uses
  %.1.lcssa.i30.i = phi i64 [ %.072.i.i, %bb.aj ], [ %.2.i.i, %bb.au ]
  %3 = getelementptr i8, ptr %i.ff, i64 12
  %4 = load i16, ptr %3, align 1
  %5 = zext i16 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %i.ff, i64 11
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = getelementptr i8, ptr %i.ff, i64 9
  %10 = load i16, ptr %9, align 1
  %11 = zext i16 %10 to i64
  %12 = shl nuw nsw i64 %5, 24
  %13 = shl nuw nsw i64 %8, 16
  %14 = or disjoint i64 %13, %12
  %15 = or disjoint i64 %14, %11
  %16 = getelementptr i8, ptr %i.ff, i64 7
  %17 = load i16, ptr %16, align 1
  %18 = zext i16 %17 to i64
  %19 = shl nuw i64 %15, 24
  %20 = shl nuw nsw i64 %18, 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  %21 = load i8, ptr %i.iw, align 1
  %22 = zext i8 %21 to i64
  %23 = or disjoint i64 %20, %22
  %24 = or disjoint i64 %23, %19                  ; 2 uses
  %.not82.i.i = icmp eq i64 %24, -1
  br i1 %.not82.i.i, label %bb.t, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i29.i
  %i.ix = sub nsw i64 %24, %.174.lcssa.i.i
  br label %_get_next_page.exit.thread.i.i

_get_next_page.exit.thread.i.i:                   ; preds = %bb.ai, %_get_next_page.exit.i.i, %ogg_sync_buffer.exit.i.i.i.i, %bb.w, %bb.av
  %.4.ph.i.i = phi i64 [ %.073.i.i, %ogg_sync_buffer.exit.i.i.i.i ], [ %i.ix, %bb.av ], [ %.073.i.i, %bb.w ], [ %.073.i.i, %_get_next_page.exit.i.i ], [ %.073.i.i, %bb.ai ]
  %spec.store.select.i27.i = call i64 @llvm.smax.i64(i64 %.4.ph.i.i, i64 0)
  %i.iy = load ptr, ptr %i.bq, align 8
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.idx.i.i
  store i64 %spec.store.select.i27.i, ptr %i.iz, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %_get_next_page.exit.thread.i.i, %_seek_helper.exit.i26.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ja = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i93.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i93.i.i, label %._seek_helper.exit94_crit_edge.i.i, label %bb.ax

._seek_helper.exit94_crit_edge.i.i:               ; preds = %bb.aw
  %.pre.pre.i.i = load i64, ptr %i.g, align 8
  br label %_seek_helper.exit94.i.i.preheader

bb.ax:                                            ; preds = %bb.aw
  %i.jb = load ptr, ptr %i.bt, align 8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i
  %i.jd = load i64, ptr %i.jc, align 8            ; 3 uses
  %i.je = load ptr, ptr %i.i, align 8
  %i.jf = call i32 %i.je(ptr noundef nonnull %i.ja, i64 noundef %i.jd, i32 noundef 0) #62, !inline_history !216 ; 0 uses
  store i64 %i.jd, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit94.i.i.preheader

_seek_helper.exit94.i.i.preheader:                ; preds = %bb.ax, %._seek_helper.exit94_crit_edge.i.i
  %.ph = phi i64 [ %i.jd, %bb.ax ], [ %.pre.pre.i.i, %._seek_helper.exit94_crit_edge.i.i ]
  br label %_seek_helper.exit94.i.i

_seek_helper.exit94.i.i:                          ; preds = %_seek_helper.exit94.i.i.preheader, %bb.bl
  %i.jg = phi i64 [ %.1.lcssa45.i.i.i, %bb.bl ], [ %.ph, %_seek_helper.exit94.i.i.preheader ] ; 4 uses
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge32.i.i.i, %_seek_helper.exit94.i.i
  %.02234.i.i.i = phi i64 [ %i.jg, %_seek_helper.exit94.i.i ], [ %spec.store.select.i.i.i, %._crit_edge32.i.i.i ]
  %i.jh = call i64 @llvm.smax.i64(i64 %.02234.i.i.i, i64 8500)
  %spec.store.select.i.i.i = add nsw i64 %i.jh, -8500 ; 4 uses
  %i.ji = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i95.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i95.i.i, label %._seek_helper.exit_crit_edge.i.i.i, label %bb.az

._seek_helper.exit_crit_edge.i.i.i:               ; preds = %bb.ay
  %.pre.i98.i.i = load i64, ptr %i.g, align 8
  br label %_seek_helper.exit.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jj = load ptr, ptr %i.i, align 8
  %i.jk = call i32 %i.jj(ptr noundef nonnull %i.ji, i64 noundef %spec.store.select.i.i.i, i32 noundef 0) #62, !inline_history !219 ; 0 uses
  store i64 %spec.store.select.i.i.i, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit.i.i.i

_seek_helper.exit.i.i.i:                          ; preds = %bb.az, %._seek_helper.exit_crit_edge.i.i.i
  %i.jl = phi i64 [ %.pre.i98.i.i, %._seek_helper.exit_crit_edge.i.i.i ], [ %spec.store.select.i.i.i, %bb.az ] ; 2 uses
  %i.jm = icmp slt i64 %i.jl, %i.jg
  br i1 %i.jm, label %.lr.ph.i96.i.i, label %._crit_edge32.i.i.i

bb.ba:                                            ; preds = %bb.bb
  %i.jn = load i64, ptr %i.g, align 8             ; 2 uses
  %i.jo = icmp slt i64 %i.jn, %i.jg
  br i1 %i.jo, label %.lr.ph.i96.i.i, label %._crit_edge32.thread.i.i.i, !llvm.loop !13

.lr.ph.i96.i.i:                                   ; preds = %_seek_helper.exit.i.i.i, %bb.ba
  %i.jp = phi i64 [ %i.jn, %bb.ba ], [ %i.jl, %_seek_helper.exit.i.i.i ]
  %.131.i.i.i = phi i64 [ %i.jr, %bb.ba ], [ -1, %_seek_helper.exit.i.i.i ]
  %i.jq = sub nsw i64 %i.jg, %i.jp
  %i.jr = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.jq) ; 4 uses
  %i.js = icmp eq i64 %i.jr, -128
  br i1 %i.js, label %select.unfold.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i96.i.i
  %i.jt = icmp slt i64 %i.jr, 0
  br i1 %i.jt, label %._crit_edge.i97.i.i, label %bb.ba, !llvm.loop !13

._crit_edge.i97.i.i:                              ; preds = %bb.bb
  br label %._crit_edge32.i.i.i, !llvm.loop !13

._crit_edge32.i.i.i:                              ; preds = %._crit_edge.i97.i.i, %_seek_helper.exit.i.i.i
  %.1.lcssa.i.i.i = phi i64 [ %.131.i.i.i, %._crit_edge.i97.i.i ], [ -1, %_seek_helper.exit.i.i.i ] ; 2 uses
  %i.ju = icmp eq i64 %.1.lcssa.i.i.i, -1
  br i1 %i.ju, label %bb.ay, label %._crit_edge32.thread.i.i.i, !llvm.loop !14

._crit_edge32.thread.i.i.i:                       ; preds = %._crit_edge32.i.i.i, %bb.ba
  %.1.lcssa45.i.i.i = phi i64 [ %i.jr, %bb.ba ], [ %.1.lcssa.i.i.i, %._crit_edge32.i.i.i ] ; 4 uses
  %i.jv = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i27.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i27.i.i.i, label %_seek_helper.exit28.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge32.thread.i.i.i
  %i.jw = load ptr, ptr %i.i, align 8
  %i.jx = call i32 %i.jw(ptr noundef nonnull %i.jv, i64 noundef %.1.lcssa45.i.i.i, i32 noundef 0) #62, !inline_history !219 ; 0 uses
  store i64 %.1.lcssa45.i.i.i, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit28.i.i.i

_seek_helper.exit28.i.i.i:                        ; preds = %bb.bc, %._crit_edge32.thread.i.i.i
  %i.jy = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 8500)
  %i.jz = icmp slt i64 %i.jy, 0
  br i1 %i.jz, label %select.unfold.i.i, label %_get_prev_page.exit.i.i

select.unfold.i.i:                                ; preds = %_seek_helper.exit28.i.i.i, %.lr.ph.i96.i.i
  %i.ka = load ptr, ptr %i.at, align 8
  %i.kb = getelementptr inbounds nuw [56 x i8], ptr %i.ka, i64 %indvars.iv.i.i
  call void @vorbis_info_clear(ptr noundef %i.kb)
  %i.kc = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.kc, i64 %indvars.iv.i.i ; 6 uses
  %.not.i99.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i99.i.i, label %vorbis_comment_clear.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %select.unfold.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8            ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %.lr.ph.i101.i.i, label %._crit_edge.i100.i.i

.lr.ph.i101.i.i:                                  ; preds = %.preheader.i.i.i, %bb.be
  %i.kh = phi i32 [ %i.kl, %bb.be ], [ %i.kf, %.preheader.i.i.i ]
  %.023.i102.i.i = phi i64 [ %i.km, %bb.be ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.ki = load ptr, ptr %i.kd, align 8
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %.023.i102.i.i
  %i.kk = load ptr, ptr %i.kj, align 8            ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not22.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i101.i.i
  call void @free(ptr noundef nonnull %i.kk) #62
  %.pre.i103.i.i = load i32, ptr %i.ke, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i101.i.i
  %i.kl = phi i32 [ %i.kh, %.lr.ph.i101.i.i ], [ %.pre.i103.i.i, %bb.bd ] ; 2 uses
  %i.km = add nuw nsw i64 %.023.i102.i.i, 1       ; 2 uses
  %i.kn = sext i32 %i.kl to i64
  %i.ko = icmp slt i64 %i.km, %i.kn
  br i1 %i.ko, label %.lr.ph.i101.i.i, label %._crit_edge.i100.i.i, !llvm.loop !1

._crit_edge.i100.i.i:                             ; preds = %bb.be, %.preheader.i.i.i
  %i.kp = load ptr, ptr %i.kd, align 8            ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not19.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i100.i.i
  call void @free(ptr noundef nonnull %i.kp) #62
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %._crit_edge.i100.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8            ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not20.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @free(ptr noundef nonnull %i.kr) #62
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8            ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not21.i.i.i, label %vorbis_comment_clear.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef nonnull %i.kt) #62
  br label %vorbis_comment_clear.exit.i.i

vorbis_comment_clear.exit.i.i:                    ; preds = %bb.bj, %bb.bi, %select.unfold.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kd, i8 0, i64 32, i1 false)
  br label %bb.bm

_get_prev_page.exit.i.i:                          ; preds = %_seek_helper.exit28.i.i.i
  %i.ku = load ptr, ptr %1, align 8               ; 5 uses
  %25 = getelementptr i8, ptr %i.ku, i64 12
  %26 = load i16, ptr %25, align 1
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds nuw i8, ptr %i.ku, i64 11
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr i8, ptr %i.ku, i64 9
  %32 = load i16, ptr %31, align 1
  %33 = zext i16 %32 to i64
  %34 = shl nuw nsw i64 %27, 24
  %35 = shl nuw nsw i64 %30, 16
  %36 = or disjoint i64 %35, %34
  %37 = or disjoint i64 %36, %33
  %38 = getelementptr i8, ptr %i.ku, i64 7
  %39 = load i16, ptr %38, align 1
  %40 = zext i16 %39 to i64
  %41 = shl nuw i64 %37, 24
  %42 = shl nuw nsw i64 %40, 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 6
  %43 = load i8, ptr %i.kv, align 1
  %44 = zext i8 %43 to i64
  %45 = or disjoint i64 %42, %44
  %46 = or disjoint i64 %45, %41                  ; 2 uses
  %.not84.i.i = icmp eq i64 %46, -1
  br i1 %.not84.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_get_prev_page.exit.i.i
  %i.kw = load ptr, ptr %i.bq, align 8
  %.idx195.i.i = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %.idx195.i.i ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = sub nsw i64 %46, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 %i.kz, ptr %i.la, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %_get_prev_page.exit.i.i
  store i64 %.1.lcssa45.i.i.i, ptr %i.g, align 8
  br label %_seek_helper.exit94.i.i

bb.bm:                                            ; preds = %bb.bk, %vorbis_comment_clear.exit.i.i
  %i.lb = load i32, ptr %i.av, align 8
  %i.lc = sext i32 %i.lb to i64
  %i.ld = icmp slt i64 %indvars.iv.next.i.i, %i.lc
  br i1 %i.ld, label %bb.l, label %_open_seekable2.exit, !llvm.loop !220

_open_seekable2.exit.thread:                      ; preds = %.lr.ph.i.i, %bb.j, %bb.i, %_seek_helper.exit28.i.i
  %.0.i.ph = phi i32 [ -128, %bb.j ], [ -129, %_seek_helper.exit28.i.i ], [ -128, %bb.i ], [ -128, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  br label %bb.bn

_open_seekable2.exit:                             ; preds = %bb.bm, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #62
  %i.le = call i32 @ov_raw_seek(ptr noundef nonnull %0, i64 noundef 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  %.not10 = icmp eq i32 %i.le, 0
  br i1 %.not10, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %_open_seekable2.exit.thread, %_open_seekable2.exit
  %.0.i13 = phi i32 [ %.0.i.ph, %_open_seekable2.exit.thread ], [ %i.le, %_open_seekable2.exit ]
  store ptr null, ptr %0, align 8
  %i.lf = call i32 @ov_clear(ptr noundef nonnull %0) ; 0 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.b
  store i32 3, ptr %i.a, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %_open_seekable2.exit, %bb.bn, %bb.a, %bb.bo
  %.0 = phi i32 [ 0, %bb.bo ], [ -131, %bb.a ], [ %.0.i13, %bb.bn ], [ 0, %_open_seekable2.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -138, 1) i32 @ov_open(ptr noundef %0, ptr noundef initializes((0, 944)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_ov_open1(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef nonnull byval(%struct.ov_callbacks) align 8 @__const.ov_test.callbacks) ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %ov_open_callbacks.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @_ov_open2(ptr noundef %1)
  br label %ov_open_callbacks.exit

ov_open_callbacks.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @_fseek64_wrap(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fseek(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -131, 1) i32 @ov_halfrate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ov_halfrate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %ov_halfrate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @vorbis_dsp_clear(ptr noundef nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.k = tail call i32 @vorbis_block_clear(ptr noundef nonnull %i.j) ; 0 uses
  store i32 2, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %ov_halfrate.exit

.lr.ph:                                           ; preds = %bb.e
  %i.o = icmp ne i32 %1, 0                        ; 2 uses
  %i.p = zext i1 %i.o to i32                      ; 2 uses
  br i1 %i.o, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp slt i64 %i.t, 65
  br i1 %i.u, label %vorbis_synthesis_halfrate.exit, label %.lr.ph37

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 5808
  store i32 %i.p, ptr %i.z, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.l, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph.split.us, label %ov_halfrate.exit, !llvm.loop !221

.lr.ph.split:                                     ; preds = %.lr.ph37
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ad, i64 %indvars.iv.next25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp slt i64 %i.ah, 65
  br i1 %i.ai, label %vorbis_synthesis_halfrate.exit, label %.lr.ph37, !llvm.loop !221

vorbis_synthesis_halfrate.exit:                   ; preds = %.lr.ph.split, %.lr.ph.split.preheader
  %.lcssa = phi i32 [ %i.m, %.lr.ph.split.preheader ], [ %i.bb, %.lr.ph.split ]
  %i.aj = load i32, ptr %i.d, align 8
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %ov_halfrate.exit, label %bb.f

bb.f:                                             ; preds = %vorbis_synthesis_halfrate.exit
  %i.ak = load i32, ptr %i.f, align 8
  %i.al = icmp sgt i32 %i.ak, 2
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @vorbis_dsp_clear(ptr noundef nonnull %i.am), !inline_history !222
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ao = tail call i32 @vorbis_block_clear(ptr noundef nonnull %i.an), !inline_history !222 ; 0 uses
  store i32 2, ptr %i.f, align 8
  %.pre = load i32, ptr %i.l, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi i32 [ %.pre, %bb.g ], [ %.lcssa, %bb.f ]
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph20, label %ov_halfrate.exit

.lr.ph20:                                         ; preds = %bb.h, %.lr.ph20
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.lr.ph20 ], [ 0, %bb.h ] ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %indvars.iv27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 5808
  store i32 0, ptr %i.av, align 8
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %i.aw = load i32, ptr %i.l, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next28, %i.ax
  br i1 %i.ay, label %.lr.ph20, label %ov_halfrate.exit, !llvm.loop !221

.lr.ph37:                                         ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %i.az = phi ptr [ %i.ag, %.lr.ph.split ], [ %i.s, %.lr.ph.split.preheader ]
  %indvars.iv2436 = phi i64 [ %indvars.iv.next25, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 5808
  store i32 %i.p, ptr %i.ba, align 8
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv2436, 1 ; 3 uses
  %i.bb = load i32, ptr %i.l, align 8             ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next25, %i.bc
  br i1 %i.bd, label %.lr.ph.split, label %ov_halfrate.exit, !llvm.loop !221

ov_halfrate.exit:                                 ; preds = %.lr.ph.split.us, %.lr.ph37, %.lr.ph20, %bb.e, %bb.h, %vorbis_synthesis_halfrate.exit, %bb.b, %bb.a
  %.011 = phi i32 [ -131, %bb.a ], [ -131, %bb.h ], [ -131, %bb.b ], [ 0, %.lr.ph37 ], [ -131, %vorbis_synthesis_halfrate.exit ], [ 0, %bb.e ], [ -131, %.lr.ph20 ], [ 0, %.lr.ph.split.us ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @vorbis_synthesis_halfrate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #26 {
bb.a:
end_hunk_1
begin_hunk_2_@vorbis_packet_blocksize:bb.a
  %i.bf = load i64, ptr %i.be, align 8
  br label %oggpack_read.exit.thread

oggpack_read.exit.thread:                         ; preds = %bb.a, %bb.c, %oggpack_read.exit22, %oggpack_read.exit, %bb.i
  %.013 = phi i64 [ %i.bf, %bb.i ], [ -135, %oggpack_read.exit ], [ -136, %oggpack_read.exit22 ], [ -135, %bb.a ], [ -136, %bb.c ]
  ret i64 %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @_get_next_page(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %.fr = freeze i64 %i.c
  %i.d = add i64 %.fr, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.024 = phi i64 [ %i.d, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %i.e = icmp sgt i64 %.024, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.not30 = icmp eq i64 %.024, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 912
  br i1 %.not30, label %.split.us.split, label %.split

.split.us.split:                                  ; preds = %bb.c
  %i.l = tail call i64 @ogg_sync_pageseek(ptr noundef nonnull %i.g, ptr noundef %1) ; 3 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %select.unfold.us, label %.split46.us

.split46.us:                                      ; preds = %select.unfold.us, %.split.us.split
  %.us-phi47 = phi i64 [ %i.l, %.split.us.split ], [ %i.r, %select.unfold.us ] ; 2 uses
  %i.n = icmp eq i64 %.us-phi47, 0
  br i1 %i.n, label %_get_data.exit.thread, label %.split41.us

select.unfold.us:                                 ; preds = %.split.us.split, %select.unfold.us
  %i.o = phi i64 [ %i.r, %select.unfold.us ], [ %i.l, %.split.us.split ]
  %i.p = load i64, ptr %i.f, align 8
  %i.q = sub nsw i64 %i.p, %i.o
  store i64 %i.q, ptr %i.f, align 8
  %i.r = tail call i64 @ogg_sync_pageseek(ptr noundef nonnull %i.g, ptr noundef %1) ; 3 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %select.unfold.us, label %.split46.us

.split:                                           ; preds = %bb.c, %.split.backedge
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split
  %i.t = load i64, ptr %i.f, align 8
  %.not = icmp slt i64 %i.t, %.024
  br i1 %.not, label %bb.e, label %_get_data.exit.thread

bb.e:                                             ; preds = %bb.d, %.split
  %i.u = tail call i64 @ogg_sync_pageseek(ptr noundef nonnull %i.g, ptr noundef %1) ; 4 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.f, align 8
  %i.x = sub nsw i64 %i.w, %i.u
  store i64 %i.x, ptr %i.f, align 8
  br label %.split.backedge

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %bb.h, label %.split41.us

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @__errno_location() #70    ; 2 uses
  store i32 0, ptr %i.z, align 4
  %i.aa = load ptr, ptr %0, align 8
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_get_data.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.h, align 8             ; 3 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  %.pre55 = load i32, ptr %i.i, align 4           ; 2 uses
  br i1 %.not.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = sub nsw i32 %.pre55, %i.ab              ; 4 uses
  store i32 %i.ac, ptr %i.i, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.af = sext i32 %i.ab to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = zext nneg i32 %i.ac to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.ag, i64 %i.ah, i1 false)
  %.pre.pre = load i32, ptr %i.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre = phi i32 [ %.pre.pre, %bb.k ], [ %i.ac, %bb.j ]
  store i32 0, ptr %i.h, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ai = phi i32 [ %.pre, %bb.l ], [ %.pre55, %bb.i ] ; 3 uses
  %i.aj = load i32, ptr %i.j, align 8
  %i.ak = sub nsw i32 %i.aj, %i.ai
  %i.al = icmp slt i32 %i.ak, 8500
  %.pre.i.i = load ptr, ptr %i.g, align 8         ; 3 uses
  br i1 %i.al, label %bb.n, label %ogg_sync_buffer.exit.i

bb.n:                                             ; preds = %bb.m
  %i.am = sext i32 %i.ai to i64
  %i.an = add nsw i64 %i.am, 12596                ; 3 uses
  %.not26.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not26.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %.pre.i.i, i64 noundef %i.an) #66
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #69
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge.i.i = phi ptr [ %i.ap, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.g, align 8
  %i.aq = trunc i64 %i.an to i32
  store i32 %i.aq, ptr %i.j, align 8
  %.pre27.i.i = load i32, ptr %i.i, align 4
  br label %ogg_sync_buffer.exit.i

ogg_sync_buffer.exit.i:                           ; preds = %bb.q, %bb.m
  %i.ar = phi i32 [ %.pre27.i.i, %bb.q ], [ %i.ai, %bb.m ]
  %i.as = phi ptr [ %storemerge.i.i, %bb.q ], [ %.pre.i.i, %bb.m ]
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.k, align 8
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = tail call i64 %i.av(ptr noundef %i.au, i64 noundef 1, i64 noundef 8500, ptr noundef %i.aw) #62, !inline_history !231 ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %ogg_sync_wrote.exit.i

bb.r:                                             ; preds = %ogg_sync_buffer.exit.i
  %i.az = load i32, ptr %i.i, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = add nsw i64 %i.ax, %i.ba                ; 2 uses
  %i.bc = load i32, ptr %i.j, align 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp sgt i64 %i.bb, %i.bd
  br i1 %i.be, label %.split.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = trunc nsw i64 %i.bb to i32
  store i32 %i.bf, ptr %i.i, align 4
  br label %.split.backedge

.split.backedge:                                  ; preds = %bb.s, %bb.r, %bb.f
  br label %.split

ogg_sync_wrote.exit.i:                            ; preds = %ogg_sync_buffer.exit.i
  %i.bg = icmp eq i64 %i.ax, 0
  br i1 %i.bg, label %bb.t, label %_get_data.exit.thread

bb.t:                                             ; preds = %ogg_sync_wrote.exit.i
  %i.bh = load i32, ptr %i.z, align 4
  %.not11.i = icmp eq i32 %i.bh, 0
  %spec.select = select i1 %.not11.i, i64 -2, i64 -128
  br label %_get_data.exit.thread

.split41.us:                                      ; preds = %bb.g, %.split46.us
  %.us-phi42 = phi i64 [ %.us-phi47, %.split46.us ], [ %i.u, %bb.g ]
  %i.bi = load i64, ptr %i.f, align 8             ; 2 uses
  %i.bj = add nsw i64 %i.bi, %.us-phi42
  store i64 %i.bj, ptr %i.f, align 8
  br label %_get_data.exit.thread

_get_data.exit.thread:                            ; preds = %bb.d, %bb.h, %bb.t, %ogg_sync_wrote.exit.i, %.split46.us, %.split41.us
  %.3.ph = phi i64 [ %i.bi, %.split41.us ], [ -1, %.split46.us ], [ -128, %ogg_sync_wrote.exit.i ], [ %spec.select, %bb.t ], [ -1, %bb.d ], [ -2, %bb.h ]
  ret i64 %.3.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ogg_page_serialno(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.c = load i32, ptr %i.b, align 1
  ret i32 %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @ogg_stream_pagein(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %i.j = and i8 %i.i, 1
  %i.k = and i8 %i.i, 2                           ; 2 uses
  %i.l = and i8 %i.i, 4
  %i.m = getelementptr i8, ptr %i.a, i64 12
  %2 = load i16, ptr %i.m, align 1
  %i.n = zext i16 %2 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr %i.a, i64 9
  %i.s = load i16, ptr %i.r, align 1
  %i.t = zext i16 %i.s to i64
  %i.u = shl nuw nsw i64 %i.n, 24
  %i.v = shl nuw nsw i64 %i.q, 16
  %3 = or disjoint i64 %i.v, %i.u
  %i.w = or disjoint i64 %3, %i.t
  %4 = getelementptr i8, ptr %i.a, i64 7
  %5 = load i16, ptr %4, align 1
  %6 = zext i16 %5 to i64
  %7 = shl nuw i64 %i.w, 24
  %8 = shl nuw nsw i64 %6, 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %9 = or disjoint i64 %8, %i.z
  %i.aa = or disjoint i64 %9, %7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.ah = load i8, ptr %i.ag, align 1             ; 4 uses
  %i.ai = zext i8 %i.ah to i32                    ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 4 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = sub nsw i64 %i.ao, %i.am                ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8
  %.not133 = icmp eq i64 %i.ao, %i.am
  br i1 %.not133, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.ar, i64 %i.ap, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 0, ptr %i.al, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not134 = icmp eq i64 %i.ak, 0
  br i1 %.not134, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %.not135 = icmp eq i64 %i.at, %i.ak
  br i1 %.not135, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = sub nsw i64 %i.at, %i.ak
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ak
  %i.ay = shl i64 %i.au, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aw, ptr nonnull align 4 %i.ax, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ak
  %i.bc = load i64, ptr %i.as, align 8
  %i.bd = sub nsw i64 %i.bc, %i.ak
  %i.be = shl i64 %i.bd, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ba, ptr nonnull align 8 %i.bb, i64 %i.be, i1 false)
  %.pre = load i64, ptr %i.as, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bf = phi i64 [ %.pre, %bb.g ], [ %i.ak, %bb.f ]
  %i.bg = sub nsw i64 %i.bf, %i.ak
  store i64 %i.bg, ptr %i.as, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = sub nsw i64 %i.bi, %i.ak
  store i64 %i.bj, ptr %i.bh, align 8
  store i64 0, ptr %i.aj, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.bk = sext i32 %i.ac to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bm = load i64, ptr %i.bl, align 8
  %.not136 = icmp eq i64 %i.bm, %i.bk
  %.not137 = icmp eq i8 %i.g, 0
  %or.cond = select i1 %.not136, i1 %.not137, i1 false
  br i1 %or.cond, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.bn = add nuw nsw i32 %i.ai, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 13 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = zext nneg i32 %i.bn to i64
  %i.bt = add nsw i64 %i.br, %i.bs
  %.not.i = icmp sgt i64 %i.bp, %i.bt
  br i1 %.not.i, label %_os_lacing_expand.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add nuw nsw i32 %i.ai, 33
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = add nsw i64 %i.bp, %i.bv                ; 2 uses
  store i64 %i.bw, ptr %i.bo, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = shl i64 %i.bw, 2
  %i.ca = tail call ptr @realloc(ptr noundef %i.by, i64 noundef %i.bz) #66
  store ptr %i.ca, ptr %i.bx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load i64, ptr %i.bo, align 8
  %i.ce = shl i64 %i.cd, 3
  %i.cf = tail call ptr @realloc(ptr noundef %i.cc, i64 noundef %i.ce) #66
  store ptr %i.cf, ptr %i.cb, align 8
  br label %_os_lacing_expand.exit

_os_lacing_expand.exit:                           ; preds = %bb.j, %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %.not138 = icmp eq i64 %i.ch, %i.af
  br i1 %.not138, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_os_lacing_expand.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8            ; 4 uses
  %i.ck = load i64, ptr %i.bq, align 8            ; 4 uses
  %sext169 = shl i64 %i.cj, 32                    ; 2 uses
  %i.cl = ashr exact i64 %sext169, 32             ; 6 uses
  %i.cm = icmp sgt i64 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.promoted = load i64, ptr %i.cp, align 8       ; 3 uses
  %i.cq = sub i64 %i.ck, %i.cl                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cq, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cr = getelementptr i8, ptr %0, i64 24
  %i.cs = ashr exact i64 %sext169, 30
  %i.ct = getelementptr i8, ptr %i.co, i64 %i.cs
  %i.cu = shl i64 %i.ck, 2
  %i.cv = getelementptr i8, ptr %i.co, i64 %i.cu
  %bound0 = icmp ult ptr %i.cp, %i.cv
  %bound1 = icmp ult ptr %i.ct, %i.cr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, -4                      ; 3 uses
  %i.cw = add i64 %i.cl, %n.vec
  %i.cx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  %i.cy = getelementptr [4 x i8], ptr %i.co, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.cx, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi209 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cz = getelementptr [4 x i8], ptr %i.cy, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %wide.load = load <2 x i32>, ptr %i.cz, align 4, !alias.scope !239
  %wide.load210 = load <2 x i32>, ptr %i.da, align 4, !alias.scope !239
  %i.db = and <2 x i32> %wide.load, splat (i32 255)
  %i.dc = and <2 x i32> %wide.load210, splat (i32 255)
  %i.dd = zext nneg <2 x i32> %i.db to <2 x i64>
  %i.de = zext nneg <2 x i32> %i.dc to <2 x i64>
  %i.df = sub <2 x i64> %vec.phi, %i.dd           ; 2 uses
  %i.dg = sub <2 x i64> %vec.phi209, %i.de        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dg, %i.df
  %i.di = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.di, ptr %i.cp, align 8, !alias.scope !240, !noalias !239
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph ], [ %i.cw, %middle.block ]
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.di, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dj = phi i64 [ %i.do, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = and i32 %i.dl, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = sub nsw i64 %i.dj, %i.dn                ; 2 uses
  store i64 %i.do, ptr %i.cp, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dp = icmp sgt i64 %i.ck, %indvars.iv.next
  br i1 %i.dp, label %scalar.ph, label %._crit_edge, !llvm.loop !236

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.l
  store i64 %i.cj, ptr %i.bq, align 8
  %.not139 = icmp eq i64 %i.ch, -1
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
end_hunk_2
begin_hunk_3_@ogg_stream_pagein:bb.a

bb.z:                                             ; preds = %._crit_edge167.thread
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 1, ptr %i.gj, align 8
  %i.gk = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, 0
  br i1 %i.gl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = getelementptr [4 x i8], ptr %i.gn, i64 %i.gk
  %i.gp = getelementptr i8, ptr %i.go, i64 -4     ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = or i32 %i.gq, 512
  store i32 %i.gr, ptr %i.gp, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %._crit_edge167.thread
  %i.gs = add nsw i64 %i.af, 1
  store i64 %i.gs, ptr %i.cg, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.i, %bb.ab
  %.0126 = phi i32 [ 0, %bb.ab ], [ -1, %bb.i ]
  ret i32 %.0126
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_pcm_seek_page(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.ogg_page, align 8           ; 6 uses
  %3 = alloca %struct.ogg_page, align 8           ; 10 uses
  %i.a = tail call i64 @ov_pcm_total(ptr noundef %0, i32 noundef -1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ax, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %1, 0
  %i.h = icmp sgt i64 %1, %i.a
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.ax, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0) ; 2 uses
  %i.l = add i32 %smin, -1                        ; 2 uses
  %.pre.pre = load ptr, ptr %i.k, align 8         ; 2 uses
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph475, label %._crit_edge372

.lr.ph475:                                        ; preds = %bb.d
  %i.n = zext nneg i32 %i.j to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.o = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %._crit_edge372, !llvm.loop !241

._crit_edge372:                                   ; preds = %bb.e, %bb.d
  %.0170.lcssa = phi i64 [ %i.a, %bb.d ], [ %i.w, %bb.e ]
  %.pre373 = shl nsw i32 %i.l, 1
  br label %split

bb.f:                                             ; preds = %.lr.ph475, %bb.e
  %i.q = phi i32 [ %i.j, %.lr.ph475 ], [ %i.o, %bb.e ]
  %.0170473 = phi i64 [ %i.a, %.lr.ph475 ], [ %i.w, %bb.e ]
  %indvars.iv472 = phi i64 [ %i.n, %.lr.ph475 ], [ %indvars.iv.next, %bb.e ]
  %indvars.iv.next = add nsw i64 %indvars.iv472, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.r = shl nsw i32 %indvars, 1                  ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sub nsw i64 %.0170473, %i.v              ; 4 uses
  %.not201 = icmp slt i64 %1, %i.w
  br i1 %.not201, label %bb.e, label %split, !llvm.loop !241

split:                                            ; preds = %bb.f, %._crit_edge372
  %.pre-phi374 = phi i32 [ %.pre373, %._crit_edge372 ], [ %i.r, %bb.f ]
  %.0179.in.lcssa = phi i32 [ %smin, %._crit_edge372 ], [ %i.q, %bb.f ]
  %.0179.lcssa = phi i32 [ %i.l, %._crit_edge372 ], [ %indvars, %bb.f ] ; 3 uses
  %.1171 = phi i64 [ %.0170.lcssa, %._crit_edge372 ], [ %i.w, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = sext i32 %.0179.in.lcssa to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = sext i32 %.0179.lcssa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8            ; 4 uses
  %i.af = sext i32 %.pre-phi374 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub nsw i64 %1, %.1171
  %i.al = add nsw i64 %i.ah, %i.ak                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #62
  %i.am = icmp slt i64 %i.ae, %i.ab
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %split
  %i.an = add nsw i64 %i.aj, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_seek_helper.exit218.thread255
  %.0132343 = phi i64 [ %i.ae, %.lr.ph ], [ %.6138, %_seek_helper.exit218.thread255 ] ; 2 uses
  %.0139342 = phi i64 [ %i.an, %.lr.ph ], [ %.5144, %_seek_helper.exit218.thread255 ] ; 4 uses
  %.0145341 = phi i64 [ %i.ah, %.lr.ph ], [ %.6151, %_seek_helper.exit218.thread255 ] ; 4 uses
  %.0152340 = phi i64 [ %i.ae, %.lr.ph ], [ %.6158, %_seek_helper.exit218.thread255 ] ; 7 uses
  %.0159339 = phi i64 [ %i.ab, %.lr.ph ], [ %.6165, %_seek_helper.exit218.thread255 ] ; 4 uses
  %i.ar = sub nsw i64 %.0159339, %.0152340        ; 2 uses
  %i.as = icmp slt i64 %i.ar, 8500
  br i1 %i.as, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = sub nsw i64 %i.al, %.0145341
  %i.au = mul nsw i64 %i.at, %i.ar
  %i.av = sub nsw i64 %.0139342, %.0145341
  %i.aw = sdiv i64 %i.au, %i.av
  %i.ax = add i64 %.0152340, -8500
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = add nsw i64 %.0152340, 1
  %spec.select = call i64 @llvm.smax.i64(i64 %i.ay, i64 %i.az)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %spec.select, %bb.h ], [ %.0152340, %bb.g ] ; 3 uses
  %i.ba = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_seek_helper.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ao, align 8
  %i.bc = call i32 %i.bb(ptr noundef nonnull %i.ba, i64 noundef %.0, i32 noundef 0) #62, !inline_history !17 ; 0 uses
  store i64 %.0, ptr %i.ap, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit

_seek_helper.exit:                                ; preds = %bb.i, %bb.j
  %i.bd = icmp slt i64 %.0152340, %.0159339
  br i1 %i.bd, label %_seek_helper.exit218.outer.split, label %_seek_helper.exit218.thread255

_seek_helper.exit218.outer.split:                 ; preds = %_seek_helper.exit, %_seek_helper.exit216
  %.1.ph335 = phi i64 [ %.6, %_seek_helper.exit216 ], [ %.0, %_seek_helper.exit ] ; 5 uses
  %.1133.ph334 = phi i64 [ %.4136, %_seek_helper.exit216 ], [ %.0132343, %_seek_helper.exit ] ; 6 uses
  %.1146.ph333 = phi i64 [ %.4149, %_seek_helper.exit216 ], [ %.0145341, %_seek_helper.exit ] ; 4 uses
  %.1153.ph332 = phi i64 [ %.4156, %_seek_helper.exit216 ], [ %.0152340, %_seek_helper.exit ] ; 6 uses
  %.1160.ph331 = phi i64 [ %.4163, %_seek_helper.exit216 ], [ %.0159339, %_seek_helper.exit ] ; 6 uses
  br label %_seek_helper.exit218

_seek_helper.exit218:                             ; preds = %_seek_helper.exit218.outer.split, %bb.p
  %i.be = load i64, ptr %i.ap, align 8
  %i.bf = sub nsw i64 %.1160.ph331, %i.be
  %i.bg = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %i.bf) ; 9 uses
  %i.bh = icmp eq i64 %i.bg, -128
  br i1 %i.bh, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %_seek_helper.exit218
  %i.bi = icmp slt i64 %i.bg, 0
  br i1 %i.bi, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i64 %.1153.ph332, 1             ; 2 uses
  %.not208 = icmp sgt i64 %.1.ph335, %i.bj
  br i1 %.not208, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp eq i64 %.1.ph335, 0
  br i1 %i.bk, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = add nsw i64 %.1.ph335, -8500
  %spec.select210 = call i64 @llvm.smax.i64(i64 %i.bl, i64 %i.bj) ; 3 uses
  %i.bm = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i215 = icmp eq ptr %i.bm, null
  br i1 %.not.i215, label %_seek_helper.exit216, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.ao, align 8
  %i.bo = call i32 %i.bn(ptr noundef nonnull %i.bm, i64 noundef %spec.select210, i32 noundef 0) #62, !inline_history !17 ; 0 uses
  br label %_seek_helper.exit216.sink.split

bb.p:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %2, align 8               ; 5 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 12
  %4 = load i16, ptr %i.bq, align 1
  %i.br = zext i16 %4 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 11
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr i8, ptr %i.bp, i64 9
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.br, 24
  %i.bz = shl nuw nsw i64 %i.bu, 16
  %5 = or disjoint i64 %i.bz, %i.by
  %i.ca = or disjoint i64 %5, %i.bx
  %6 = getelementptr i8, ptr %i.bp, i64 7
  %7 = load i16, ptr %6, align 1
  %8 = zext i16 %7 to i64
  %9 = shl nuw i64 %i.ca, 24
  %10 = shl nuw nsw i64 %8, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i64
  %11 = or disjoint i64 %10, %i.cd
  %i.ce = or disjoint i64 %11, %9                 ; 6 uses
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %_seek_helper.exit218, label %bb.q, !llvm.loop !242

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp slt i64 %i.ce, %i.al
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ci = sub nsw i64 %i.al, %i.ce
  %i.cj = icmp sgt i64 %i.ci, 44100
  br i1 %i.cj, label %_seek_helper.exit218.thread255, label %_seek_helper.exit216

bb.s:                                             ; preds = %bb.q
  %i.ck = add nsw i64 %.1153.ph332, 1             ; 2 uses
  %.not206 = icmp sgt i64 %.1.ph335, %i.ck
  br i1 %.not206, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.cl = load i64, ptr %i.ap, align 8
  %i.cm = icmp eq i64 %.1160.ph331, %i.cl
  br i1 %i.cm, label %bb.u, label %_seek_helper.exit218.thread255

bb.u:                                             ; preds = %bb.t
  %i.cn = add nsw i64 %.1.ph335, -8500
  %spec.select211 = call i64 @llvm.smax.i64(i64 %i.cn, i64 %i.ck) ; 3 uses
  %i.co = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i217 = icmp eq ptr %i.co, null
  br i1 %.not.i217, label %_seek_helper.exit216, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = load ptr, ptr %i.ao, align 8
  %i.cq = call i32 %i.cp(ptr noundef nonnull %i.co, i64 noundef %spec.select211, i32 noundef 0) #62, !inline_history !17 ; 0 uses
  br label %_seek_helper.exit216.sink.split

_seek_helper.exit216.sink.split:                  ; preds = %bb.o, %bb.v
  %spec.select211.sink = phi i64 [ %spec.select211, %bb.v ], [ %spec.select210, %bb.o ] ; 2 uses
  %.4163.ph = phi i64 [ %i.bg, %bb.v ], [ %.1160.ph331, %bb.o ]
  store i64 %spec.select211.sink, ptr %i.ap, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit216

_seek_helper.exit216:                             ; preds = %_seek_helper.exit216.sink.split, %bb.u, %bb.r, %bb.n
  %.4163 = phi i64 [ %i.bg, %bb.u ], [ %.1160.ph331, %bb.r ], [ %.1160.ph331, %bb.n ], [ %.4163.ph, %_seek_helper.exit216.sink.split ] ; 3 uses
  %.4156 = phi i64 [ %.1153.ph332, %bb.u ], [ %i.ch, %bb.r ], [ %.1153.ph332, %bb.n ], [ %.1153.ph332, %_seek_helper.exit216.sink.split ] ; 3 uses
  %.4149 = phi i64 [ %.1146.ph333, %bb.u ], [ %i.ce, %bb.r ], [ %.1146.ph333, %bb.n ], [ %.1146.ph333, %_seek_helper.exit216.sink.split ] ; 2 uses
  %.4136 = phi i64 [ %.1133.ph334, %bb.u ], [ %i.bg, %bb.r ], [ %.1133.ph334, %bb.n ], [ %.1133.ph334, %_seek_helper.exit216.sink.split ] ; 2 uses
  %.6 = phi i64 [ %spec.select211, %bb.u ], [ %i.ch, %bb.r ], [ %spec.select210, %bb.n ], [ %spec.select211.sink, %_seek_helper.exit216.sink.split ]
  %i.cr = icmp slt i64 %.4156, %.4163
  br i1 %i.cr, label %_seek_helper.exit218.outer.split, label %_seek_helper.exit218.thread255, !llvm.loop !242

_seek_helper.exit218.thread255:                   ; preds = %bb.r, %bb.t, %_seek_helper.exit216, %_seek_helper.exit
  %.6165 = phi i64 [ %.0159339, %_seek_helper.exit ], [ %.4163, %_seek_helper.exit216 ], [ %i.bg, %bb.t ], [ %.1160.ph331, %bb.r ] ; 2 uses
  %.6158 = phi i64 [ %.0152340, %_seek_helper.exit ], [ %.4156, %_seek_helper.exit216 ], [ %.1153.ph332, %bb.t ], [ %i.ch, %bb.r ] ; 2 uses
  %.6151 = phi i64 [ %.0145341, %_seek_helper.exit ], [ %.4149, %_seek_helper.exit216 ], [ %.1146.ph333, %bb.t ], [ %i.ce, %bb.r ]
  %.5144 = phi i64 [ %.0139342, %_seek_helper.exit ], [ %.0139342, %_seek_helper.exit216 ], [ %i.ce, %bb.t ], [ %.0139342, %bb.r ]
  %.6138 = phi i64 [ %.0132343, %_seek_helper.exit ], [ %.4136, %_seek_helper.exit216 ], [ %.1133.ph334, %bb.t ], [ %i.bg, %bb.r ] ; 2 uses
  %i.cs = icmp slt i64 %.6158, %.6165
  br i1 %i.cs, label %bb.g, label %._crit_edge, !llvm.loop !243

._crit_edge:                                      ; preds = %_seek_helper.exit218.thread255, %bb.l, %bb.s, %split
  %.0132.lcssa = phi i64 [ %i.ae, %split ], [ %.1133.ph334, %bb.l ], [ %.1133.ph334, %bb.s ], [ %.6138, %_seek_helper.exit218.thread255 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #62
  %i.ct = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i219 = icmp eq ptr %i.ct, null
  br i1 %.not.i219, label %_seek_helper.exit220, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call i32 %i.cv(ptr noundef nonnull %i.ct, i64 noundef %.0132.lcssa, i32 noundef 0) #62, !inline_history !17 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.0132.lcssa, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cy, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit220

_seek_helper.exit220:                             ; preds = %._crit_edge, %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 -1, ptr %i.cz, align 8
  %i.da = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef -1)
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.thread285, label %bb.x

bb.x:                                             ; preds = %_seek_helper.exit220
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8
  %.not202 = icmp eq i32 %.0179.lcssa, %i.dd
  br i1 %.not202, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @vorbis_dsp_clear(ptr noundef nonnull %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.dg = call i32 @vorbis_block_clear(ptr noundef nonnull %i.df) ; 0 uses
  store i32 2, ptr %i.b, align 8
  store i32 %.0179.lcssa, ptr %i.dc, align 8
  %i.dh = load ptr, ptr %3, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 14
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.dk, ptr %i.dl, align 8
  store i32 3, ptr %i.b, align 8
  br label %vorbis_synthesis_restart.exit

bb.z:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not.i221 = icmp eq ptr %i.dp, null
  %.not19.i = icmp eq ptr %i.dn, null
  %or.cond.i = select i1 %.not.i221, i1 true, i1 %.not19.i
  br i1 %or.cond.i, label %vorbis_synthesis_restart.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8            ; 3 uses
  %.not20.i = icmp eq ptr %i.dr, null
  br i1 %.not20.i, label %vorbis_synthesis_restart.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 5808
  %i.dt = load i32, ptr %i.ds, align 8            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = add nsw i32 %i.dt, 1
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = ashr i64 %i.dv, %i.dx                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 %i.dy, ptr %i.dz, align 8
  %i.ea = zext nneg i32 %i.dt to i64
  %i.eb = ashr i64 %i.dy, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 %i.ec, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i32 -1, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 -1, i64 16, i1 false)
  store i32 0, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 296
  store i64 -1, ptr %i.eh, align 8
  br label %vorbis_synthesis_restart.exit

vorbis_synthesis_restart.exit:                    ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 532
  store i32 0, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 0, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 0, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  %i.es = shl i64 %i.ek, 32
  %i.et = ashr exact i64 %i.es, 32
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.et, ptr %i.eu, align 8
  %i.ev = call i32 @ogg_stream_pagein(ptr noundef nonnull %i.ei, ptr noundef nonnull %3) ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ey = load i64, ptr %i.ex, align 8            ; 3 uses
  %.promoted = load i64, ptr %i.ew, align 8       ; 2 uses
  %sext.i.i345 = shl i64 %.promoted, 32           ; 2 uses
  %i.ez = ashr exact i64 %sext.i.i345, 32         ; 2 uses
  %.not.i.i346 = icmp sgt i64 %i.ey, %i.ez
  br i1 %.not.i.i346, label %.lr.ph348, label %._crit_edge349

.lr.ph348:                                        ; preds = %vorbis_synthesis_restart.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fb = load ptr, ptr %i.fa, align 8            ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph348, %ogg_stream_packetout.exit
  %i.fe = phi i64 [ %i.ez, %.lr.ph348 ], [ %.pre-phi, %ogg_stream_packetout.exit ] ; 2 uses
  %sext.i.i347 = phi i64 [ %sext.i.i345, %.lr.ph348 ], [ %sext.i.i.pre-phi, %ogg_stream_packetout.exit ]
  %i.ff = phi i64 [ %.promoted, %.lr.ph348 ], [ %i.hy, %ogg_stream_packetout.exit ] ; 4 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fe
  %i.fh = load i32, ptr %i.fg, align 4            ; 2 uses
  %i.fi = and i32 %i.fh, 1024
  %.not51.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not51.i.i, label %bb.ad, label %.thread277

.thread277:                                       ; preds = %bb.ac
  %i.fj = add nsw i64 %i.ff, 1
  store i64 %i.fj, ptr %i.ew, align 8
  %i.fk = load i64, ptr %i.er, align 8
end_hunk_3
begin_hunk_4_@ov_pcm_seek_page:bb.a
  %i.gi = load i64, ptr %i.fy, align 8            ; 2 uses
  %i.gj = icmp slt i64 %i.gi, %i.gb
  br i1 %i.gj, label %.lr.ph.i, label %._crit_edge32.thread.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %_seek_helper.exit.i, %bb.ai
  %i.gk = phi i64 [ %i.gi, %bb.ai ], [ %i.gg, %_seek_helper.exit.i ]
  %.131.i = phi i64 [ %i.gm, %bb.ai ], [ -1, %_seek_helper.exit.i ]
  %i.gl = sub nsw i64 %i.gb, %i.gk
  %i.gm = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef %i.gl) ; 4 uses
  %i.gn = icmp eq i64 %i.gm, -128
  br i1 %i.gn, label %.thread290, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %i.go = icmp slt i64 %i.gm, 0
  br i1 %i.go, label %._crit_edge.i, label %bb.ai, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.aj
  br label %._crit_edge32.i, !llvm.loop !13

._crit_edge32.i:                                  ; preds = %._crit_edge.i, %_seek_helper.exit.i
  %.1.lcssa.i = phi i64 [ %.131.i, %._crit_edge.i ], [ -1, %_seek_helper.exit.i ] ; 2 uses
  %i.gp = icmp eq i64 %.1.lcssa.i, -1
  br i1 %i.gp, label %bb.ag, label %._crit_edge32.thread.i, !llvm.loop !14

._crit_edge32.thread.i:                           ; preds = %._crit_edge32.i, %bb.ai
  %.1.lcssa45.i = phi i64 [ %i.gm, %bb.ai ], [ %.1.lcssa.i, %._crit_edge32.i ] ; 5 uses
  %i.gq = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i27.i = icmp eq ptr %i.gq, null
  br i1 %.not.i27.i, label %_seek_helper.exit28.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge32.thread.i
  %i.gr = load ptr, ptr %i.fz, align 8
  %i.gs = call i32 %i.gr(ptr noundef nonnull %i.gq, i64 noundef %.1.lcssa45.i, i32 noundef 0) #62, !inline_history !244 ; 0 uses
  store i64 %.1.lcssa45.i, ptr %i.fy, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ga, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit28.i

_seek_helper.exit28.i:                            ; preds = %bb.ak, %._crit_edge32.thread.i
  %i.gt = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 8500)
  %i.gu = icmp slt i64 %i.gt, 0
  br i1 %i.gu, label %.thread290, label %_get_prev_page.exit

_get_prev_page.exit:                              ; preds = %_seek_helper.exit28.i
  %i.gv = load ptr, ptr %3, align 8               ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 12
  %i.gx = load i16, ptr %i.gw, align 1
  %i.gy = icmp sgt i16 %i.gx, -1
  br i1 %i.gy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_get_prev_page.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 5
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = and i8 %i.ha, 1
  %.not204 = icmp eq i8 %i.hb, 0
  br i1 %.not204, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %_get_prev_page.exit
  %i.hc = call i32 @ov_raw_seek(ptr noundef nonnull %0, i64 noundef %.1.lcssa45.i)
  br label %.thread285

bb.an:                                            ; preds = %bb.al
  store i64 %.1.lcssa45.i, ptr %i.fy, align 8
  br label %bb.af

bb.ao:                                            ; preds = %.loopexit.loopexit.i, %bb.ad
  %sext62.i.pre-phi.i = phi i64 [ %.pre.i, %.loopexit.loopexit.i ], [ %sext.i.i347, %bb.ad ]
  %i.hd = load ptr, ptr %i.fc, align 8
  %i.he = ashr exact i64 %sext62.i.pre-phi.i, 29
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 %i.he
  %i.hg = load i64, ptr %i.hf, align 8            ; 2 uses
  %.not203 = icmp eq i64 %i.hg, -1
  br i1 %.not203, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %sext.i.i228 = shl i64 %i.ff, 32                ; 3 uses
  %i.hh = ashr exact i64 %sext.i.i228, 32         ; 4 uses
  %.not.i.i229 = icmp sgt i64 %i.ey, %i.hh
  br i1 %.not.i.i229, label %bb.aq, label %ogg_stream_packetout.exit

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4            ; 2 uses
  %i.hk = and i32 %i.hj, 1024
  %.not51.i.i231 = icmp eq i32 %i.hk, 0
  br i1 %.not51.i.i231, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hl = add nsw i64 %i.ff, 1
  br label %.sink.split.i.i

bb.as:                                            ; preds = %bb.aq
  %i.hm = and i32 %i.hj, 255                      ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 255
  br i1 %i.hn, label %.lr.ph.i.i235, label %._crit_edge.i.i

.lr.ph.i.i235:                                    ; preds = %bb.as, %.lr.ph.i.i235
  %indvars.iv.i.i236 = phi i64 [ %indvars.iv.next.i.i239, %.lr.ph.i.i235 ], [ %i.hh, %bb.as ]
  %.04554.i.i238 = phi i32 [ %i.hr, %.lr.ph.i.i235 ], [ 255, %bb.as ]
  %indvars.iv.next.i.i239 = add nsw i64 %indvars.iv.i.i236, 1 ; 3 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i239
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = and i32 %i.hp, 255                      ; 2 uses
  %i.hr = add nuw nsw i32 %i.hq, %.04554.i.i238   ; 2 uses
  %i.hs = icmp eq i32 %i.hq, 255
  br i1 %i.hs, label %.lr.ph.i.i235, label %._crit_edge.i.i.loopexit, !llvm.loop !15

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph.i.i235
  %.pre = shl i64 %indvars.iv.next.i.i239, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %bb.as
  %.pre2.i.pre-phi = phi i64 [ %.pre, %._crit_edge.i.i.loopexit ], [ %sext.i.i228, %bb.as ]
  %.045.lcssa.i.i232 = phi i32 [ %i.hr, %._crit_edge.i.i.loopexit ], [ %i.hm, %bb.as ]
  %.pre.i234 = zext nneg i32 %.045.lcssa.i.i232 to i64
  %i.ht = load i64, ptr %i.fd, align 8
  %i.hu = add nsw i64 %i.ht, %.pre.i234
  store i64 %i.hu, ptr %i.fd, align 8
  %sext63.i.i = add i64 %.pre2.i.pre-phi, 4294967296
  %i.hv = ashr exact i64 %sext63.i.i, 32
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i, %bb.ar
  %.sink.i.i = phi i64 [ %i.hv, %._crit_edge.i.i ], [ %i.hl, %bb.ar ] ; 3 uses
  store i64 %.sink.i.i, ptr %i.ew, align 8
  %i.hw = load i64, ptr %i.er, align 8
  %i.hx = add nsw i64 %i.hw, 1
  store i64 %i.hx, ptr %i.er, align 8
  %.pre370 = shl i64 %.sink.i.i, 32               ; 2 uses
  %.pre371 = ashr exact i64 %.pre370, 32
  br label %ogg_stream_packetout.exit

ogg_stream_packetout.exit:                        ; preds = %bb.ap, %.sink.split.i.i
  %.pre-phi = phi i64 [ %i.hh, %bb.ap ], [ %.pre371, %.sink.split.i.i ] ; 2 uses
  %sext.i.i.pre-phi = phi i64 [ %sext.i.i228, %bb.ap ], [ %.pre370, %.sink.split.i.i ]
  %i.hy = phi i64 [ %i.ff, %bb.ap ], [ %.sink.i.i, %.sink.split.i.i ]
  %.not.i.i = icmp sgt i64 %i.ey, %.pre-phi
  br i1 %.not.i.i, label %bb.ac, label %._crit_edge349

.thread285:                                       ; preds = %_seek_helper.exit220, %bb.am
  %.0180.ph = phi i32 [ %i.hc, %bb.am ], [ -2, %_seek_helper.exit220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  br label %bb.ax

.thread290:                                       ; preds = %_seek_helper.exit28.i, %.lr.ph.i, %.thread277
  %.4176.ph = phi i64 [ -136, %.thread277 ], [ -128, %.lr.ph.i ], [ -129, %_seek_helper.exit28.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  br label %.sink.split

bb.at:                                            ; preds = %bb.ao
  %i.hz = load ptr, ptr %i.k, align 8
  %i.ia = load i32, ptr %i.dc, align 8
  %i.ib = shl nsw i32 %i.ia, 1
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = sub nsw i64 %i.hg, %i.ie
  %spec.select212 = call i64 @llvm.smax.i64(i64 %i.if, i64 0)
  %i.ig = add nsw i64 %spec.select212, %.1171     ; 2 uses
  store i64 %i.ig, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  %i.ih = icmp sgt i64 %i.ig, %1
  br i1 %i.ih, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ii = call i64 @ov_pcm_total(ptr noundef nonnull %0, i32 noundef -1)
  %i.ij = icmp sgt i64 %1, %i.ii
  br i1 %i.ij, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i8 0, i64 16, i1 false)
  br label %bb.ax

.sink.split:                                      ; preds = %bb.m, %_seek_helper.exit218, %.thread290
  %.6178.ph = phi i64 [ %.4176.ph, %.thread290 ], [ %i.bg, %_seek_helper.exit218 ], [ %i.bg, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  %i.il = trunc i64 %.6178.ph to i32
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.at, %bb.au
  %.6178 = phi i32 [ -129, %bb.at ], [ -129, %bb.au ], [ %i.il, %.sink.split ]
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -1, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @vorbis_dsp_clear(ptr noundef nonnull %i.in)
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ip = call i32 @vorbis_block_clear(ptr noundef nonnull %i.io) ; 0 uses
  store i32 2, ptr %i.b, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.thread285, %bb.c, %bb.b, %bb.a, %bb.aw, %bb.av
  %.2182 = phi i32 [ -131, %bb.a ], [ -138, %bb.b ], [ %.0180.ph, %.thread285 ], [ %.6178, %bb.aw ], [ 0, %bb.av ], [ -131, %bb.c ]
  ret i32 %.2182
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ogg_page_granulepos(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 12
  %i.c = load i16, ptr %i.b, align 1
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr i8, ptr %i.a, i64 9
  %1 = load i16, ptr %i.h, align 1
  %i.i = zext i16 %1 to i64
  %i.j = shl nuw nsw i64 %i.d, 24
  %i.k = shl nuw nsw i64 %i.g, 16
  %i.l = or disjoint i64 %i.j, %i.k
  %i.m = or disjoint i64 %i.l, %i.i
  %i.n = getelementptr i8, ptr %i.a, i64 7
  %2 = load i16, ptr %i.n, align 1
  %i.o = zext i16 %2 to i64
  %i.p = shl nuw i64 %i.m, 24
  %i.q = shl nuw nsw i64 %i.o, 8
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = or disjoint i64 %i.r, %i.u
  ret i64 %i.v
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @ogg_stream_packetpeek(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #32 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8
  %sext.i = shl i64 %i.b, 32                      ; 2 uses
  %i.e = ashr exact i64 %sext.i, 32               ; 3 uses
  %.not.i = icmp sgt i64 %i.d, %i.e
  br i1 %.not.i, label %bb.b, label %_packetout.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.e
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = and i32 %i.i, 1024
  %.not51.i = icmp eq i32 %i.j, 0
  br i1 %.not51.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add nsw i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8
  br label %_packetout.exit

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_packetout.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %i.i, 255                        ; 2 uses
  %i.p = and i32 %i.i, 512                        ; 2 uses
  %i.q = and i32 %i.i, 256
  %i.r = icmp eq i32 %i.o, 255
  br i1 %i.r, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.e, %bb.e ]
  %.055.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.p, %bb.e ]
  %.04554.i = phi i32 [ %i.w, %.lr.ph.i ], [ 255, %bb.e ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 255                        ; 2 uses
  %i.v = and i32 %i.t, 512
  %.not52.i = icmp eq i32 %i.v, 0
  %spec.select.i = select i1 %.not52.i, i32 %.055.i, i32 512 ; 2 uses
  %i.w = add nuw nsw i32 %i.u, %.04554.i          ; 2 uses
  %i.x = icmp eq i32 %i.u, 255
  br i1 %i.x, label %.lr.ph.i, label %.loopexit.loopexit, !llvm.loop !15

.loopexit.loopexit:                               ; preds = %.lr.ph.i
  %.pre = shl i64 %indvars.iv.next.i, 32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %sext62.i.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit ], [ %sext.i, %bb.e ]
  %.045.lcssa.i = phi i32 [ %i.w, %.loopexit.loopexit ], [ %i.o, %bb.e ]
  %.0.lcssa.i = phi i32 [ %spec.select.i, %.loopexit.loopexit ], [ %i.p, %bb.e ]
  %i.y = zext nneg i32 %.0.lcssa.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = zext nneg i32 %i.q to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae
  store ptr %i.af, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ashr exact i64 %sext62.i.pre-phi, 29
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = zext nneg i32 %.045.lcssa.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ap, ptr %i.aq, align 8
  br label %_packetout.exit

_packetout.exit:                                  ; preds = %bb.a, %bb.d, %.loopexit, %bb.c
  %.048.i = phi i32 [ 0, %bb.a ], [ 1, %.loopexit ], [ 1, %bb.d ], [ -1, %bb.c ]
  ret i32 %.048.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ogg_page_continued(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 1
  %i.e = zext nneg i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @ov_pcm_seek(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.ogg_packet, align 8         ; 11 uses
  %3 = alloca %struct.ogg_page, align 8           ; 7 uses
  %i.a = tail call i32 @ov_pcm_seek_page(ptr noundef %0, i64 noundef %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @_make_decode_ready(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = getelementptr i8, ptr %0, i64 120       ; 14 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %scevgep = getelementptr i8, ptr %0, i64 128
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %ogg_stream_packetout.exit
  %.085 = phi i32 [ %.4, %ogg_stream_packetout.exit ], [ 0, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #62
  %i.ag = load i64, ptr %i.e, align 8             ; 3 uses
  %i.ah = load i64, ptr %i.f, align 8
  %sext.i.i = shl i64 %i.ag, 32                   ; 4 uses
  %i.ai = ashr exact i64 %sext.i.i, 32            ; 5 uses
  %.not.i.i = icmp sgt i64 %i.ah, %i.ai
  br i1 %.not.i.i, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.v, align 8             ; 4 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 4 uses
  %i.am = and i32 %i.al, 1024
  %.not51.i.i = icmp eq i32 %i.am, 0
  br i1 %.not51.i.i, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.an = and i32 %i.al, 255                      ; 3 uses
  %i.ao = and i32 %i.al, 512                      ; 2 uses
  %i.ap = and i32 %i.al, 256
  %i.aq = icmp eq i32 %i.an, 255                  ; 2 uses
  br i1 %i.aq, label %.lr.ph.i.i, label %bb.f

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.e ]
  %.055.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.ao, %bb.e ]
  %.04554.i.i = phi i32 [ %i.av, %.lr.ph.i.i ], [ 255, %bb.e ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 255                      ; 2 uses
  %i.au = and i32 %i.as, 512
  %.not52.i.i = icmp eq i32 %i.au, 0
  %spec.select.i.i = select i1 %.not52.i.i, i32 %.055.i.i, i32 512 ; 2 uses
  %i.av = add nuw nsw i32 %i.at, %.04554.i.i      ; 2 uses
  %i.aw = icmp eq i32 %i.at, 255
end_hunk_4
