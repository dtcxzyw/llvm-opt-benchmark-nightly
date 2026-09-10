Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaResub?download=true
inline.NumInlined: 1135
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 60
begin_hunk_0_@Gia_ManAddDivisors:bb.a

Vec_IntPush.exit:                                 ; preds = %bb.e, %Vec_IntGrow.exit, %bb.n, %Vec_IntGrow.exit11.sink.split.i
  %i.bg = phi i32 [ %i.ao, %Vec_IntGrow.exit ], [ %i.ao, %bb.n ], [ %.pre201, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !49
  %i.bj = add nsw i32 %i.bg, 1
  store i32 %i.bj, ptr %i.ah, align 4, !tbaa !47
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bk
  store i32 %i.x, ptr %i.bl, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val102 = load i32, ptr %i.ab, align 4, !tbaa !47
  %i.bm = sext i32 %.val102 to i64
  %i.bn = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %i.bn, label %.lr.ph, label %.critedge2.loopexit, !llvm.loop !115

.critedge2.loopexit:                              ; preds = %Vec_IntPush.exit
  %.val114.pre = load i32, ptr %i.r, align 4, !tbaa !55
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.d
  %.val114 = phi i32 [ %.val114.pre, %.critedge2.loopexit ], [ %.val114202, %bb.d ] ; 2 uses
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %i.bo = sext i32 %.val114 to i64
  %i.bp = icmp slt i64 %indvars.iv.next187, %i.bo
  br i1 %i.bp, label %bb.d, label %.critedge.preheader, !llvm.loop !116

.critedge:                                        ; preds = %.critedge.preheader183, %.critedge
  %indvars.iv189 = phi i64 [ 0, %.critedge.preheader183 ], [ %indvars.iv.next190, %.critedge ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv189 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %.val106 = load i32, ptr %i.br, align 4, !tbaa !47
  %i.bs = getelementptr i8, ptr %i.bq, i64 8
  %.val107 = load ptr, ptr %i.bs, align 8, !tbaa !49
  %i.bt = sext i32 %.val106 to i64
  tail call void @qsort(ptr noundef %.val107, i64 noundef %i.bt, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #34
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %.critedge, !llvm.loop !117

.critedge4:                                       ; preds = %.critedge, %.critedge.preheader
  %i.bu = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 0, ptr %i.bv, align 4, !tbaa !47
  store i32 100, ptr %i.bu, align 8, !tbaa !48
  %i.bw = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !49
  %i.by = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 0, ptr %i.bz, align 4, !tbaa !47
  store i32 100, ptr %i.by, align 8, !tbaa !48
  %i.ca = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !49
  %i.cc = getelementptr i8, ptr %0, i64 32
  %i.cd = load i32, ptr %i.a, align 8, !tbaa !58
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph178, label %.critedge6

.lr.ph178:                                        ; preds = %.critedge4
  %i.cf = getelementptr i8, ptr %0, i64 40
  %i.cg = getelementptr i8, ptr %i.b, i64 8
  %i.ch = getelementptr i8, ptr %1, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph178, %.critedge8
  %indvars.iv195 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next196, %.critedge8 ] ; 7 uses
  %.091175 = phi ptr [ %i.by, %.lr.ph178 ], [ %.293, %.critedge8 ] ; 6 uses
  %.094174 = phi ptr [ %i.bu, %.lr.ph178 ], [ %.296, %.critedge8 ] ; 8 uses
  %.val105 = load ptr, ptr %i.cc, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %.val105, null
  br i1 %.not, label %.critedge6.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %.val105, i64 %indvars.iv195
  %.val112 = load i64, ptr %i.ci, align 4         ; 4 uses
  %i.cj = and i64 %.val112, 2147483648
  %.not.i138 = icmp ne i64 %i.cj, 0
  %i.ck = and i64 %.val112, 536870911
  %i.cl = icmp eq i64 %i.ck, 536870911
  %narrow.i.not = or i1 %.not.i138, %i.cl
  br i1 %narrow.i.not, label %.critedge8, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = and i64 %.val112, 536870911
  %i.cn = trunc nuw nsw i64 %indvars.iv195 to i32
  %i.co = sub nsw i64 %indvars.iv195, %i.cm
  %.val119 = load ptr, ptr %i.q, align 8, !tbaa !57 ; 2 uses
  %sext = shl i64 %i.co, 32
  %i.cp = ashr exact i64 %sext, 28
  %i.cq = getelementptr inbounds i8, ptr %.val119, i64 %i.cp ; 2 uses
  %i.cr = lshr i64 %.val112, 32
  %i.cs = and i64 %i.cr, 536870911
  %i.ct = sub nsw i64 %indvars.iv195, %i.cs
  %sext227 = shl i64 %i.ct, 32
  %i.cu = ashr exact i64 %sext227, 28
  %i.cv = getelementptr inbounds i8, ptr %.val119, i64 %i.cu ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cq, i64 4
  %.val129 = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.cx = getelementptr i8, ptr %i.cq, i64 8
  %.val130 = load ptr, ptr %i.cx, align 8, !tbaa !49
  %i.cy = getelementptr i8, ptr %i.cv, i64 4
  %.val131 = load i32, ptr %i.cy, align 4, !tbaa !47
  %i.cz = getelementptr i8, ptr %i.cv, i64 8
  %.val132 = load ptr, ptr %i.cz, align 8, !tbaa !49
  tail call fastcc void @Vec_IntTwoFindCommon(i32 %.val129, ptr %.val130, i32 %.val131, ptr %.val132, ptr noundef %.094174)
  %.val104 = load ptr, ptr %i.cf, align 8, !tbaa !52 ; 2 uses
  %.not.i139 = icmp eq ptr %.val104, null
  br i1 %.not.i139, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjIsMuxId.exit

Gia_ObjIsMuxId.exit:                              ; preds = %bb.u
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.val104, i64 %indvars.iv195
  %i.db = load i32, ptr %i.da, align 4, !tbaa !50 ; 2 uses
  %.not162 = icmp eq i32 %i.db, 0
  br i1 %.not162, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjFaninId2.exit

Gia_ObjFaninId2.exit:                             ; preds = %Gia_ObjIsMuxId.exit
  %i.dc = ashr i32 %i.db, 1
  %.val117 = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [16 x i8], ptr %.val117, i64 %i.dd ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %.val126 = load i32, ptr %i.df, align 4, !tbaa !47
  %i.dg = getelementptr i8, ptr %i.de, i64 8
  %.val127 = load ptr, ptr %i.dg, align 8, !tbaa !49
  %i.dh = getelementptr i8, ptr %.094174, i64 4
  %.094.val = load i32, ptr %i.dh, align 4, !tbaa !47
  %i.di = getelementptr i8, ptr %.094174, i64 8
  %.094.val128 = load ptr, ptr %i.di, align 8, !tbaa !49
  tail call fastcc void @Vec_IntTwoFindCommon(i32 %.val126, ptr %.val127, i32 %.094.val, ptr %.094.val128, ptr noundef %.091175)
  br label %Gia_ObjIsMuxId.exit.thread

Gia_ObjIsMuxId.exit.thread:                       ; preds = %bb.u, %Gia_ObjFaninId2.exit, %Gia_ObjIsMuxId.exit
  %.195 = phi ptr [ %.091175, %Gia_ObjFaninId2.exit ], [ %.094174, %Gia_ObjIsMuxId.exit ], [ %.094174, %bb.u ] ; 5 uses
  %.192 = phi ptr [ %.094174, %Gia_ObjFaninId2.exit ], [ %.091175, %Gia_ObjIsMuxId.exit ], [ %.091175, %bb.u ] ; 9 uses
  %i.dj = getelementptr i8, ptr %.195, i64 4      ; 4 uses
  %.195.val100 = load i32, ptr %i.dj, align 4, !tbaa !47 ; 4 uses
  %i.dk = icmp eq i32 %.195.val100, 0
  br i1 %i.dk, label %.critedge8, label %bb.v

bb.v:                                             ; preds = %Gia_ObjIsMuxId.exit.thread
  %.val116 = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.val116, i64 %indvars.iv195 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 4      ; 2 uses
  %.val6.i = load i32, ptr %i.dm, align 4, !tbaa !47 ; 3 uses
  %i.dn = add nsw i32 %.val6.i, %.195.val100      ; 3 uses
  %i.do = load i32, ptr %.192, align 8, !tbaa !48
  %.not.i.i142 = icmp slt i32 %i.do, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %.192, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i.i142, label %bb.w, label %Vec_IntGrow.exit.i143

bb.w:                                             ; preds = %bb.v
  %.not9.i.i144 = icmp eq ptr %i.dq, null
  %i.dr = sext i32 %i.dn to i64
  %i.ds = shl nsw i64 %i.dr, 2                    ; 2 uses
  br i1 %.not9.i.i144, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = tail call ptr @realloc(ptr noundef nonnull %i.dq, i64 noundef %i.ds) #32
  %.val7.pre.pre.i = load i32, ptr %i.dm, align 4, !tbaa !47
  %.val9.pre.pre.i = load i32, ptr %i.dj, align 4, !tbaa !47
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.du = tail call noalias ptr @malloc(i64 noundef %i.ds) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.val9.pre.i = phi i32 [ %.val9.pre.pre.i, %bb.x ], [ %.195.val100, %bb.y ]
  %.val7.pre.i = phi i32 [ %.val7.pre.pre.i, %bb.x ], [ %.val6.i, %bb.y ]
  %i.dv = phi ptr [ %i.dt, %bb.x ], [ %i.du, %bb.y ] ; 2 uses
  store ptr %i.dv, ptr %i.dp, align 8, !tbaa !49
  store i32 %i.dn, ptr %.192, align 8, !tbaa !48
  br label %Vec_IntGrow.exit.i143

Vec_IntGrow.exit.i143:                            ; preds = %bb.z, %bb.v
  %i.dw = phi ptr [ %i.dv, %bb.z ], [ %i.dq, %bb.v ] ; 3 uses
  %.val9.i = phi i32 [ %.val9.pre.i, %bb.z ], [ %.195.val100, %bb.v ] ; 2 uses
  %.val7.i = phi i32 [ %.val7.pre.i, %bb.z ], [ %.val6.i, %bb.v ] ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dl, i64 8
  %.val8.i = load ptr, ptr %i.dx, align 8, !tbaa !49 ; 4 uses
  %i.dy = getelementptr i8, ptr %.195, i64 8      ; 2 uses
  %.val10.i = load ptr, ptr %i.dy, align 8, !tbaa !49 ; 4 uses
  %i.dz = sext i32 %.val7.i to i64
  %.idx.i.i = shl nsw i64 %i.dz, 2                ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.val8.i, i64 %.idx.i.i ; 3 uses
  %i.eb = sext i32 %.val9.i to i64
  %.idx19.i.i = shl nsw i64 %i.eb, 2              ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.val10.i, i64 %.idx19.i.i ; 3 uses
  %i.ed = icmp sgt i32 %.val7.i, 0
  %i.ee = icmp sgt i32 %.val9.i, 0
  %i.ef = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %i.ef, label %.lr.ph.i.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.ae, %Vec_IntGrow.exit.i143
  %.036.lcssa.i.i = phi ptr [ %i.dw, %Vec_IntGrow.exit.i143 ], [ %.137.i.i, %bb.ae ] ; 5 uses
  %.033.lcssa.i.i = phi ptr [ %.val8.i, %Vec_IntGrow.exit.i143 ], [ %.134.i.i, %bb.ae ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.val10.i, %Vec_IntGrow.exit.i143 ], [ %.1.i.i, %bb.ae ] ; 5 uses
  %.0.lcssa.i.i231 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 2 uses
  %i.eg = icmp ult ptr %.033.lcssa.i.i, %i.ea
  br i1 %i.eg, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.033.lcssa.i.i237 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 2 uses
  %.036.lcssa.i.i236 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %i.eh = ptrtoaddr ptr %.val8.i to i64
  %i.ei = add i64 %.idx.i.i, %i.eh
  %i.ej = xor i64 %.033.lcssa.i.i237, -1
  %i.ek = add i64 %i.ei, %i.ej                    ; 2 uses
  %i.el = lshr i64 %i.ek, 2
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check240 = icmp ult i64 %i.ek, 28
  %i.en = sub i64 %.033.lcssa.i.i237, %.036.lcssa.i.i236
  %diff.check238 = icmp ugt i64 %i.en, -32
  %or.cond = select i1 %min.iters.check240, i1 true, i1 %diff.check238
  br i1 %or.cond, label %.lr.ph13.i.i.preheader256, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph13.i.i.preheader
  %n.vec242 = and i64 %i.em, 9223372036854775800  ; 3 uses
  %i.eo = shl i64 %n.vec242, 2                    ; 2 uses
  %i.ep = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.eo
  %i.eq = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.eo ; 2 uses
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next249, %vector.body243 ] ; 2 uses
  %i.er = shl i64 %index244, 2                    ; 2 uses
  %next.gep245 = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.er ; 2 uses
  %next.gep246 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep245, i64 16
  %wide.load247 = load <4 x i32>, ptr %next.gep245, align 4, !tbaa !50
  %wide.load248 = load <4 x i32>, ptr %i.es, align 4, !tbaa !50
  %i.et = getelementptr i8, ptr %next.gep246, i64 16
  store <4 x i32> %wide.load247, ptr %next.gep246, align 4, !tbaa !50
  store <4 x i32> %wide.load248, ptr %i.et, align 4, !tbaa !50
  %index.next249 = add nuw i64 %index244, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.eu, label %middle.block250, label %vector.body243, !llvm.loop !118

middle.block250:                                  ; preds = %vector.body243
  %cmp.n251 = icmp eq i64 %i.em, %n.vec242
  br i1 %cmp.n251, label %.preheader.i.i, label %.lr.ph13.i.i.preheader256

.lr.ph13.i.i.preheader256:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block250
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.ep, %middle.block250 ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.eq, %middle.block250 ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i143, %bb.ae
  %.08.i.i = phi ptr [ %.1.i.i, %bb.ae ], [ %.val10.i, %Vec_IntGrow.exit.i143 ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.ae ], [ %.val8.i, %Vec_IntGrow.exit.i143 ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.ae ], [ %i.dw, %Vec_IntGrow.exit.i143 ] ; 4 uses
  %i.ev = load i32, ptr %.0337.i.i, align 4, !tbaa !50 ; 4 uses
  %i.ew = load i32, ptr %.08.i.i, align 4, !tbaa !50 ; 3 uses
  %i.ex = icmp eq i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.ev, ptr %.0366.i.i, align 4, !tbaa !50
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.ae

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.fa = icmp slt i32 %i.ev, %i.ew
  br i1 %i.fa, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fb = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.ev, ptr %.0366.i.i, align 4, !tbaa !50
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.ew, ptr %.0366.i.i, align 4, !tbaa !50
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa
  %.134.i.i = phi ptr [ %i.ey, %bb.aa ], [ %i.fb, %bb.ac ], [ %.0337.i.i, %bb.ad ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ez, %bb.aa ], [ %.08.i.i, %bb.ac ], [ %i.fc, %bb.ad ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.fd = icmp ult ptr %.134.i.i, %i.ea
  %i.fe = icmp ult ptr %.1.i.i, %i.ec
  %i.ff = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %i.ff, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !119

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block250, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.eq, %middle.block250 ], [ %i.fx, %.lr.ph13.i.i ] ; 5 uses
  %i.fg = icmp ult ptr %.0.lcssa.i.i, %i.ec
  br i1 %i.fg, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge2.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i230 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %i.fh = ptrtoaddr ptr %.val10.i to i64
  %i.fi = add i64 %.idx19.i.i, %i.fh
  %i.fj = xor i64 %.0.lcssa.i.i231, -1
  %i.fk = add i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = lshr i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fk, 28
  %i.fn = sub i64 %.0.lcssa.i.i231, %.238.lcssa.i.i230
  %diff.check = icmp ugt i64 %i.fn, -32
  %or.cond254 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond254, label %.lr.ph17.i.i.preheader255, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph17.i.i.preheader
  %n.vec = and i64 %i.fm, 9223372036854775800     ; 3 uses
  %i.fo = shl i64 %n.vec, 2                       ; 2 uses
  %i.fp = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.fo
  %i.fq = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.fo ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fr = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.fr ; 2 uses
  %next.gep232 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.fr ; 2 uses
  %i.fs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !50
  %wide.load233 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !50
  %i.ft = getelementptr i8, ptr %next.gep232, i64 16
  store <4 x i32> %wide.load, ptr %next.gep232, align 4, !tbaa !50
  store <4 x i32> %wide.load233, ptr %i.ft, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fm, %n.vec
  br i1 %cmp.n, label %Vec_IntTwoMerge2.exit, label %.lr.ph17.i.i.preheader255

.lr.ph17.i.i.preheader255:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.fp, %middle.block ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.fq, %middle.block ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader256, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.fv, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader256 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.fx, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader256 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.fw = load i32, ptr %.23512.i.i, align 4, !tbaa !50
  %i.fx = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.fw, ptr %.23811.i.i, align 4, !tbaa !50
  %i.fy = icmp ult ptr %i.fv, %i.ea
  br i1 %i.fy, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !121

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader255, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.fz, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader255 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.gb, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader255 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.ga = load i32, ptr %.216.i.i, align 4, !tbaa !50
  %i.gb = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.ga, ptr %.315.i.i, align 4, !tbaa !50
  %i.gc = icmp ult ptr %i.fz, %i.ec
  br i1 %i.gc, label %.lr.ph17.i.i, label %Vec_IntTwoMerge2.exit, !llvm.loop !122

Vec_IntTwoMerge2.exit:                            ; preds = %.lr.ph17.i.i, %middle.block, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.fq, %middle.block ], [ %i.gb, %.lr.ph17.i.i ]
  %i.gd = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.ge = ptrtoint ptr %i.dw to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = lshr exact i64 %i.gf, 2
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %.192, i64 4
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !tbaa.struct !125
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %.192, i64 16, i1 false), !tbaa.struct !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.192, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !125
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.195.val171 = load i32, ptr %i.dj, align 4, !tbaa !47
  %i.gj = icmp sgt i32 %.195.val171, 0
  br i1 %i.gj, label %.lr.ph173, label %.critedge8

.lr.ph173:                                        ; preds = %Vec_IntTwoMerge2.exit
  %.val108 = load ptr, ptr %i.cg, align 8, !tbaa !49
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph173, %Vec_IntPush.exit152
  %indvars.iv192 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next193, %Vec_IntPush.exit152 ] ; 2 uses
  %.195.val109 = load ptr, ptr %i.dy, align 8, !tbaa !49
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.195.val109, i64 %indvars.iv192
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !50
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %.val108, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !50
  %.val115 = load ptr, ptr %i.ch, align 8, !tbaa !57
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [16 x i8], ptr %.val115, i64 %i.gp ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !47 ; 7 uses
  %i.gt = load i32, ptr %i.gq, align 8, !tbaa !48
  %i.gu = icmp eq i32 %i.gs, %i.gt
  br i1 %i.gu, label %bb.ag, label %Vec_IntPush.exit152

bb.ag:                                            ; preds = %bb.af
  %i.gv = icmp slt i32 %i.gs, 16
  br i1 %i.gv, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i150 = icmp eq ptr %i.gx, null
  br i1 %.not9.i.i150, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gy = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gx, i64 noundef 64) #32
  br label %Vec_IntGrow.exit.i151

bb.aj:                                            ; preds = %bb.ah
  %i.gz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit.i151

Vec_IntGrow.exit.i151:                            ; preds = %bb.aj, %bb.ai
  %i.ha = phi ptr [ %i.gy, %bb.ai ], [ %i.gz, %bb.aj ]
  store ptr %i.ha, ptr %i.gw, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i148

bb.ak:                                            ; preds = %bb.ag
  %i.hb = icmp samesign ult i32 %i.gs, 1073741823
  %i.hc = shl nuw nsw i32 %i.gs, 1
  %spec.select.i145 = select i1 %i.hb, i32 %i.hc, i32 2147483647 ; 3 uses
  %.not.i9.i146 = icmp samesign ult i32 %i.gs, %spec.select.i145
  br i1 %.not.i9.i146, label %bb.al, label %Vec_IntPush.exit152

bb.al:                                            ; preds = %bb.ak
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !49 ; 2 uses
  %.not9.i10.i147 = icmp eq ptr %i.he, null
  %i.hf = zext nneg i32 %spec.select.i145 to i64
  %i.hg = shl nuw nsw i64 %i.hf, 2                ; 2 uses
  br i1 %.not9.i10.i147, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = tail call ptr @realloc(ptr noundef nonnull %i.he, i64 noundef %i.hg) #32
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.hi = tail call noalias ptr @malloc(i64 noundef %i.hg) #33
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hj = phi ptr [ %i.hh, %bb.am ], [ %i.hi, %bb.an ]
  store ptr %i.hj, ptr %i.hd, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i148

Vec_IntGrow.exit11.sink.split.i148:               ; preds = %bb.ao, %Vec_IntGrow.exit.i151
  %spec.select.sink.i149 = phi i32 [ %spec.select.i145, %bb.ao ], [ 16, %Vec_IntGrow.exit.i151 ]
  store i32 %spec.select.sink.i149, ptr %i.gq, align 8, !tbaa !48
  %.pre204 = load i32, ptr %i.gr, align 4, !tbaa !47
  br label %Vec_IntPush.exit152

Vec_IntPush.exit152:                              ; preds = %bb.af, %bb.ak, %Vec_IntGrow.exit11.sink.split.i148
  %i.hk = phi i32 [ %i.gs, %bb.af ], [ %i.gs, %bb.ak ], [ %.pre204, %Vec_IntGrow.exit11.sink.split.i148 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !49
  %i.hn = add nsw i32 %i.hk, 1
  store i32 %i.hn, ptr %i.gr, align 4, !tbaa !47
  %i.ho = sext i32 %i.hk to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  store i32 %i.cn, ptr %i.hp, align 4, !tbaa !50
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %.195.val = load i32, ptr %i.dj, align 4, !tbaa !47
  %i.hq = sext i32 %.195.val to i64
  %i.hr = icmp slt i64 %indvars.iv.next193, %i.hq
  br i1 %i.hr, label %bb.af, label %.critedge8, !llvm.loop !123

.critedge8:                                       ; preds = %Vec_IntPush.exit152, %Vec_IntTwoMerge2.exit, %bb.t, %Gia_ObjIsMuxId.exit.thread
  %.296 = phi ptr [ %.195, %Gia_ObjIsMuxId.exit.thread ], [ %.094174, %bb.t ], [ %.195, %Vec_IntTwoMerge2.exit ], [ %.195, %Vec_IntPush.exit152 ] ; 2 uses
  %.293 = phi ptr [ %.192, %Gia_ObjIsMuxId.exit.thread ], [ %.091175, %bb.t ], [ %.192, %Vec_IntTwoMerge2.exit ], [ %.192, %Vec_IntPush.exit152 ] ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.hs = load i32, ptr %i.a, align 8, !tbaa !58
  %i.ht = sext i32 %i.hs to i64
  %i.hu = icmp slt i64 %indvars.iv.next196, %i.ht
  br i1 %i.hu, label %bb.s, label %.critedge6.loopexit, !llvm.loop !124

.critedge6.loopexit:                              ; preds = %.critedge8, %bb.s
  %.094.lcssa.ph = phi ptr [ %.094174, %bb.s ], [ %.296, %.critedge8 ] ; 2 uses
  %.091.lcssa.ph = phi ptr [ %.091175, %bb.s ], [ %.293, %.critedge8 ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.094.lcssa.ph, i64 8
  %.pre205 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge4
  %i.hv = phi ptr [ %i.bw, %.critedge4 ], [ %.pre205, %.critedge6.loopexit ] ; 2 uses
  %.094.lcssa = phi ptr [ %i.bu, %.critedge4 ], [ %.094.lcssa.ph, %.critedge6.loopexit ]
  %.091.lcssa = phi ptr [ %i.by, %.critedge4 ], [ %.091.lcssa.ph, %.critedge6.loopexit ] ; 2 uses
  %.not.i153 = icmp eq ptr %i.hv, null
  br i1 %.not.i153, label %Vec_IntFree.exit, label %bb.ap

bb.ap:                                            ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %i.hv) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge6, %bb.ap
  tail call void @free(ptr noundef nonnull %.094.lcssa) #34
  %i.hw = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 8
end_hunk_0
begin_hunk_1_@Gia_ManFindOneUnateInt:bb.a
  br label %Vec_IntGrow.exit11.sink.split.i25

bb.q:                                             ; preds = %bb.o
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i25

bb.r:                                             ; preds = %bb.n
  %i.aw = icmp samesign ult i32 %i.ap, 1073741823
  %i.ax = shl nuw nsw i32 %i.ap, 1
  %spec.select.i22 = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 4 uses
  %.not.i9.i23 = icmp samesign ult i32 %i.ap, %spec.select.i22
  %.pre48 = load ptr, ptr %i.h, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i23, label %bb.s, label %Vec_IntPush.exit29

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i24 = icmp eq ptr %.pre48, null
  %i.ay = zext nneg i32 %spec.select.i22 to i64
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  br i1 %.not9.i10.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %.pre48, i64 noundef %i.az) #32
  br label %Vec_IntGrow.exit11.sink.split.i25

bb.u:                                             ; preds = %bb.s
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.az) #33
  br label %Vec_IntGrow.exit11.sink.split.i25

Vec_IntGrow.exit11.sink.split.i25:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %i.bc = phi ptr [ %i.av, %bb.q ], [ %i.au, %bb.p ], [ %i.ba, %bb.t ], [ %i.bb, %bb.u ] ; 2 uses
  %spec.select.sink.i26 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i22, %bb.t ], [ %spec.select.i22, %bb.u ]
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !49
  store i32 %spec.select.sink.i26, ptr %4, align 8, !tbaa !48
  %.pre49 = load i32, ptr %i.a, align 4, !tbaa !47
  br label %Vec_IntPush.exit29

Vec_IntPush.exit29:                               ; preds = %.Vec_IntPush.exit29_crit_edge, %bb.r, %Vec_IntGrow.exit11.sink.split.i25
  %i.bd = phi i32 [ %i.ap, %.Vec_IntPush.exit29_crit_edge ], [ %i.ap, %bb.r ], [ %.pre49, %Vec_IntGrow.exit11.sink.split.i25 ] ; 2 uses
  %i.be = phi ptr [ %.pre47, %.Vec_IntPush.exit29_crit_edge ], [ %.pre48, %bb.r ], [ %i.bc, %Vec_IntGrow.exit11.sink.split.i25 ]
  %i.bf = add nsw i32 %i.bd, 1
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !47
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bg
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bi = shl i32 %indvars.iv.tr, 1
  %i.bj = or disjoint i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !50
  br label %bb.ad

Abc_TtIntersectOne.exit21:                        ; preds = %.lr.ph.i
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !47  ; 7 uses
  %i.bl = load i32, ptr %5, align 8, !tbaa !48
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.v, label %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge

Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge: ; preds = %Abc_TtIntersectOne.exit21
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !49
  br label %Vec_IntPush.exit37

bb.v:                                             ; preds = %Abc_TtIntersectOne.exit21
  %i.bn = icmp slt i32 %i.bk, 16
  br i1 %i.bn, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i35 = icmp eq ptr %i.bo, null
  br i1 %.not9.i.i35, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bo, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.y:                                             ; preds = %bb.w
  %i.bq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.z:                                             ; preds = %bb.v
  %i.br = icmp samesign ult i32 %i.bk, 1073741823
  %i.bs = shl nuw nsw i32 %i.bk, 1
  %spec.select.i30 = select i1 %i.br, i32 %i.bs, i32 2147483647 ; 4 uses
  %.not.i9.i31 = icmp samesign ult i32 %i.bk, %spec.select.i30
  %.pre45 = load ptr, ptr %i.g, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i31, label %bb.aa, label %Vec_IntPush.exit37

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i32 = icmp eq ptr %.pre45, null
  %i.bt = zext nneg i32 %spec.select.i30 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 2 uses
  br i1 %.not9.i10.i32, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = tail call ptr @realloc(ptr noundef nonnull %.pre45, i64 noundef %i.bu) #32
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.ac:                                            ; preds = %bb.aa
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bu) #33
  br label %Vec_IntGrow.exit11.sink.split.i33

Vec_IntGrow.exit11.sink.split.i33:                ; preds = %bb.ab, %bb.ac, %bb.x, %bb.y
  %i.bx = phi ptr [ %i.bq, %bb.y ], [ %i.bp, %bb.x ], [ %i.bv, %bb.ab ], [ %i.bw, %bb.ac ] ; 2 uses
  %spec.select.sink.i34 = phi i32 [ 16, %bb.y ], [ 16, %bb.x ], [ %spec.select.i30, %bb.ab ], [ %spec.select.i30, %bb.ac ]
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !49
  store i32 %spec.select.sink.i34, ptr %5, align 8, !tbaa !48
  %.pre46 = load i32, ptr %i.b, align 4, !tbaa !47
  br label %Vec_IntPush.exit37

Vec_IntPush.exit37:                               ; preds = %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge, %bb.z, %Vec_IntGrow.exit11.sink.split.i33
  %i.by = phi i32 [ %i.bk, %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge ], [ %i.bk, %bb.z ], [ %.pre46, %Vec_IntGrow.exit11.sink.split.i33 ] ; 2 uses
  %i.bz = phi ptr [ %.pre, %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge ], [ %.pre45, %bb.z ], [ %i.bx, %Vec_IntGrow.exit11.sink.split.i33 ]
  %i.ca = add nsw i32 %i.by, 1
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !47
  %i.cb = sext i32 %i.by to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !50
  br label %bb.ad

bb.ad:                                            ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit37, %Vec_IntPush.exit29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val19 = load i32, ptr %i.c, align 4, !tbaa !77
  %i.ce = sext i32 %.val19 to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %bb.b, label %.critedge, !llvm.loop !183

.critedge:                                        ; preds = %bb.ad, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManFindOneUnate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %3, align 8, !tbaa !71
  %i.d = load ptr, ptr %4, align 8, !tbaa !71
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.a, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.c, ptr noundef %i.d)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.e, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.g, ptr noundef %i.i)
  br label %.split25.us

.split:                                           ; preds = %bb.a
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %3, align 8, !tbaa !71
  %i.n = load ptr, ptr %4, align 8, !tbaa !71
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.k, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.m, ptr noundef %i.n)
  %i.o = load ptr, ptr %3, align 8, !tbaa !71
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val = load i32, ptr %i.p, align 4, !tbaa !47
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 0, i32 noundef %.val) ; 0 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.r, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.t, ptr noundef %i.v)
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val.1 = load i32, ptr %i.x, align 4, !tbaa !47
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 1, i32 noundef %.val.1) ; 0 uses
  br label %.split25.us

.split25.us:                                      ; preds = %.split, %.split.us.preheader
  %i.z = load ptr, ptr %3, align 8, !tbaa !71     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx.i = shl nsw i64 %i.ai, 2                  ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %.idx76.i = shl nsw i64 %i.am, 2                ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 %.idx76.i ; 3 uses
  %i.ao = icmp sgt i32 %i.ah, 0
  %i.ap = icmp sgt i32 %i.al, 0
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.g, %.split25.us
  %.048.lcssa.i = phi ptr [ %i.ad, %.split25.us ], [ %.149.i, %bb.g ] ; 5 uses
  %.045.lcssa.i = phi ptr [ %i.af, %.split25.us ], [ %.146.i, %bb.g ] ; 5 uses
  %.042.lcssa.i = phi ptr [ %i.ad, %.split25.us ], [ %.143.i, %bb.g ] ; 5 uses
  %.040.lcssa.i = phi ptr [ %i.af, %.split25.us ], [ %.141.i, %bb.g ] ; 5 uses
  %.040.lcssa.i47 = ptrtoaddr ptr %.040.lcssa.i to i64
  %.045.lcssa.i48 = ptrtoaddr ptr %.045.lcssa.i to i64 ; 2 uses
  %i.ar = icmp ult ptr %.048.lcssa.i, %i.aj
  br i1 %i.ar, label %.lr.ph70.i.preheader, label %.preheader.i

.lr.ph70.i.preheader:                             ; preds = %.preheader55.i
  %.048.lcssa.i42 = ptrtoaddr ptr %.048.lcssa.i to i64 ; 2 uses
  %.042.lcssa.i41 = ptrtoaddr ptr %.042.lcssa.i to i64
  %i.as = ptrtoaddr ptr %i.ad to i64
  %i.at = add i64 %.idx.i, %i.as
  %i.au = xor i64 %.048.lcssa.i42, -1
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 44
  %i.ay = sub i64 %.048.lcssa.i42, %.042.lcssa.i41
  %diff.check = icmp ugt i64 %i.ay, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph70.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph70.i.preheader
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.az = shl i64 %n.vec, 2                       ; 2 uses
  %i.ba = getelementptr i8, ptr %.042.lcssa.i, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %.048.lcssa.i, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.042.lcssa.i, i64 %i.bc ; 2 uses
  %next.gep43 = getelementptr i8, ptr %.048.lcssa.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep43, align 4, !tbaa !50
  %wide.load44 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !50
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !50
  store <4 x i32> %wide.load44, ptr %i.be, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph70.i.preheader67

.lr.ph70.i.preheader67:                           ; preds = %.lr.ph70.i.preheader, %middle.block
  %.24469.i.ph = phi ptr [ %.042.lcssa.i, %.lr.ph70.i.preheader ], [ %i.ba, %middle.block ]
  %.25068.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph70.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph70.i

.lr.ph.i:                                         ; preds = %.split25.us, %bb.g
  %.04063.i = phi ptr [ %.141.i, %bb.g ], [ %i.af, %.split25.us ] ; 4 uses
  %.04262.i = phi ptr [ %.143.i, %bb.g ], [ %i.ad, %.split25.us ] ; 4 uses
  %.04561.i = phi ptr [ %.146.i, %bb.g ], [ %i.af, %.split25.us ] ; 4 uses
  %.04860.i = phi ptr [ %.149.i, %bb.g ], [ %i.ad, %.split25.us ] ; 4 uses
  %i.bg = load i32, ptr %.04860.i, align 4, !tbaa !50 ; 5 uses
  %i.bh = load i32, ptr %.04561.i, align 4, !tbaa !50 ; 4 uses
  %.unshifted.i = xor i32 %i.bh, %i.bg
  %i.bi = icmp ult i32 %.unshifted.i, 2
  br i1 %i.bi, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.bg, %i.bh
  br i1 %.not.i, label %bb.c, label %Gia_ManFindFirstCommonLit.exit

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.bl = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.04262.i, i64 4
  store i32 %i.bg, ptr %.04262.i, align 4, !tbaa !50
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.04063.i, i64 4
  store i32 %i.bh, ptr %.04063.i, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.149.i = phi ptr [ %i.bj, %bb.c ], [ %i.bm, %bb.e ], [ %.04860.i, %bb.f ] ; 3 uses
  %.146.i = phi ptr [ %i.bk, %bb.c ], [ %.04561.i, %bb.e ], [ %i.bo, %bb.f ] ; 3 uses
  %.143.i = phi ptr [ %.04262.i, %bb.c ], [ %i.bn, %bb.e ], [ %.04262.i, %bb.f ] ; 2 uses
  %.141.i = phi ptr [ %.04063.i, %bb.c ], [ %.04063.i, %bb.e ], [ %i.bp, %bb.f ] ; 2 uses
  %i.bq = icmp ult ptr %.149.i, %i.aj
  %i.br = icmp ult ptr %.146.i, %i.an
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %.lr.ph.i, label %.preheader55.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph70.i, %middle.block, %.preheader55.i
  %.244.lcssa.i = phi ptr [ %.042.lcssa.i, %.preheader55.i ], [ %i.ba, %middle.block ], [ %i.ck, %.lr.ph70.i ]
  %i.bt = icmp ult ptr %.045.lcssa.i, %i.an
  br i1 %i.bt, label %.lr.ph74.i.preheader, label %._crit_edge.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.bu = ptrtoaddr ptr %i.af to i64
  %i.bv = add i64 %.idx76.i, %i.bu
  %i.bw = xor i64 %.045.lcssa.i48, -1
  %i.bx = add i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check51 = icmp ult i64 %i.bx, 44
  %i.ca = sub i64 %.045.lcssa.i48, %.040.lcssa.i47
  %diff.check49 = icmp ugt i64 %i.ca, -32
  %or.cond65 = select i1 %min.iters.check51, i1 true, i1 %diff.check49
  br i1 %or.cond65, label %.lr.ph74.i.preheader66, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph74.i.preheader
  %n.vec53 = and i64 %i.bz, 9223372036854775800   ; 3 uses
  %i.cb = shl i64 %n.vec53, 2                     ; 2 uses
  %i.cc = getelementptr i8, ptr %.040.lcssa.i, i64 %i.cb ; 2 uses
  %i.cd = getelementptr i8, ptr %.045.lcssa.i, i64 %i.cb
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.ce = shl i64 %index55, 2                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %.040.lcssa.i, i64 %i.ce ; 2 uses
  %next.gep57 = getelementptr i8, ptr %.045.lcssa.i, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load58 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !50
  %wide.load59 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !50
  %i.cg = getelementptr i8, ptr %next.gep56, i64 16
  store <4 x i32> %wide.load58, ptr %next.gep56, align 4, !tbaa !50
  store <4 x i32> %wide.load59, ptr %i.cg, align 4, !tbaa !50
  %index.next60 = add nuw i64 %index55, 8         ; 2 uses
  %i.ch = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.ch, label %middle.block61, label %vector.body54, !llvm.loop !185

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %i.bz, %n.vec53
  br i1 %cmp.n62, label %._crit_edge.i, label %.lr.ph74.i.preheader66

.lr.ph74.i.preheader66:                           ; preds = %.lr.ph74.i.preheader, %middle.block61
  %.273.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph74.i.preheader ], [ %i.cc, %middle.block61 ]
  %.24772.i.ph = phi ptr [ %.045.lcssa.i, %.lr.ph74.i.preheader ], [ %i.cd, %middle.block61 ]
  br label %.lr.ph74.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader67, %.lr.ph70.i
  %.24469.i = phi ptr [ %i.ck, %.lr.ph70.i ], [ %.24469.i.ph, %.lr.ph70.i.preheader67 ] ; 2 uses
  %.25068.i = phi ptr [ %i.ci, %.lr.ph70.i ], [ %.25068.i.ph, %.lr.ph70.i.preheader67 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.25068.i, i64 4 ; 2 uses
  %i.cj = load i32, ptr %.25068.i, align 4, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %.24469.i, i64 4 ; 2 uses
  store i32 %i.cj, ptr %.24469.i, align 4, !tbaa !50
  %i.cl = icmp ult ptr %i.ci, %i.aj
  br i1 %i.cl, label %.lr.ph70.i, label %.preheader.i, !llvm.loop !186

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader66, %.lr.ph74.i
  %.273.i = phi ptr [ %i.co, %.lr.ph74.i ], [ %.273.i.ph, %.lr.ph74.i.preheader66 ] ; 2 uses
  %.24772.i = phi ptr [ %i.cm, %.lr.ph74.i ], [ %.24772.i.ph, %.lr.ph74.i.preheader66 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.24772.i, i64 4 ; 2 uses
  %i.cn = load i32, ptr %.24772.i, align 4, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %.273.i, i64 4 ; 2 uses
  store i32 %i.cn, ptr %.273.i, align 4, !tbaa !50
  %i.cp = icmp ult ptr %i.cm, %i.an
  br i1 %i.cp, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !187

._crit_edge.i:                                    ; preds = %.lr.ph74.i, %middle.block61, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader.i ], [ %i.cc, %middle.block61 ], [ %i.co, %.lr.ph74.i ]
  %i.cq = ptrtoint ptr %.244.lcssa.i to i64
  %i.cr = ptrtoint ptr %i.ad to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = lshr exact i64 %i.cs, 2
  %i.cu = trunc i64 %i.ct to i32
  store i32 %i.cu, ptr %i.ag, align 4, !tbaa !47
  %i.cv = ptrtoint ptr %.2.lcssa.i to i64
  %i.cw = ptrtoint ptr %i.af to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = lshr exact i64 %i.cx, 2
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.ak, align 4, !tbaa !47
  br label %Gia_ManFindFirstCommonLit.exit

Gia_ManFindFirstCommonLit.exit:                   ; preds = %bb.b, %._crit_edge.i
  %.051.i = phi i32 [ -1, %._crit_edge.i ], [ %i.bg, %bb.b ]
  ret i32 %.051.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @Gia_ManFindTwoUnateInt(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 5 uses
  br i1 %i.a, label %.lr.ph.preheader.i, label %Abc_TtCountOnesVec.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Abc_TtCountOnes2.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %Abc_TtCountOnes2.exit.i ] ; 2 uses
  %.08.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.g, %Abc_TtCountOnes2.exit.i ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.c = load i64, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %Abc_TtCountOnes2.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.c)
  %i.e = trunc nuw nsw i64 %i.d to i32
  br label %Abc_TtCountOnes2.exit.i

Abc_TtCountOnes2.exit.i:                          ; preds = %bb.b, %.lr.ph.i
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %.lr.ph.i ]
  %i.g = add nuw nsw i32 %i.f, %.08.i             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCountOnesVec.exit, label %.lr.ph.i, !llvm.loop !8

Abc_TtCountOnesVec.exit:                          ; preds = %Abc_TtCountOnes2.exit.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.g, %Abc_TtCountOnes2.exit.i ] ; 3 uses
  store i32 0, ptr %6, align 4, !tbaa !50
  %i.h = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %.val4886 = load i32, ptr %i.h, align 4, !tbaa !47 ; 2 uses
  %i.i = icmp sgt i32 %.val4886, 0
  br i1 %i.i, label %.critedge.lr.ph, label %.loopexit73

.critedge.lr.ph:                                  ; preds = %Abc_TtCountOnesVec.exit
  %i.j = getelementptr i8, ptr %4, i64 8
  %.val52 = load ptr, ptr %i.j, align 8, !tbaa !49 ; 3 uses
  %i.k = getelementptr i8, ptr %5, i64 8
  %.val51 = load ptr, ptr %i.k, align 8, !tbaa !49 ; 3 uses
  %i.l = getelementptr i8, ptr %2, i64 8
  %wide.trip.count.i.i = zext nneg i32 %3 to i64  ; 4 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %Gia_ManDivCover.exit
  %.val48116 = phi i32 [ %.val4886, %.critedge.lr.ph ], [ %.val48114, %Gia_ManDivCover.exit ] ; 2 uses
  %i.m = phi i32 [ 0, %.critedge.lr.ph ], [ %i.cm, %Gia_ManDivCover.exit ] ; 2 uses
  %indvars.iv109 = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next110, %Gia_ManDivCover.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.critedge.lr.ph ], [ %indvars.iv.next, %Gia_ManDivCover.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv109
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50   ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv109
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50   ; 3 uses
  %i.r = shl nsw i32 %i.q, 1
  %i.s = icmp slt i32 %i.r, %.0.lcssa.i
  br i1 %i.s, label %.loopexit73, label %bb.c

bb.c:                                             ; preds = %.critedge
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 3 uses
  %i.t = sext i32 %.val48116 to i64
  %i.u = icmp slt i64 %indvars.iv.next110, %i.t
  br i1 %i.u, label %.critedge2.lr.ph, label %.loopexit73

.critedge2.lr.ph:                                 ; preds = %bb.c
  %.val54 = load ptr, ptr %i.l, align 8, !tbaa !79 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !50
  %i.x = add nsw i32 %i.w, %i.q
  %i.y = icmp slt i32 %i.x, %.0.lcssa.i
  br i1 %i.y, label %Gia_ManDivCover.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge2.lr.ph
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !50  ; 2 uses
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.aa)
  %i.ac = tail call noundef i32 @llvm.smin.i32(i32 %i.o, i32 %i.aa)
  br label %bb.d

.critedge2:                                       ; preds = %.loopexit
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv.next107
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !50 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv.next107
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !50
  %i.ah = tail call noundef i32 @llvm.smin.i32(i32 %i.o, i32 %i.ae)
  %i.ai = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.ae)
  %i.aj = add nsw i32 %i.ag, %i.q
  %i.ak = icmp slt i32 %i.aj, %.0.lcssa.i
  br i1 %i.ak, label %Gia_ManDivCover.exit, label %bb.d, !llvm.loop !188

bb.d:                                             ; preds = %.lr.ph, %.critedge2
  %i.al = phi i32 [ %i.ab, %.lr.ph ], [ %i.ai, %.critedge2 ] ; 3 uses
  %i.am = phi i32 [ %i.ac, %.lr.ph ], [ %i.ah, %.critedge2 ] ; 3 uses
  %indvars.iv106158 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next107, %.critedge2 ]
  %i.an = phi i32 [ %i.m, %.lr.ph ], [ %i.aq, %.critedge2 ]
  %.pn163.in = ashr i32 %i.am, 1
  %.pn163 = sext i32 %.pn163.in to i64
  %.in162 = getelementptr inbounds [8 x i8], ptr %.val54, i64 %.pn163
  %i.ao = load ptr, ptr %.in162, align 8, !tbaa !92 ; 4 uses
  %.pn.in = ashr i32 %i.al, 1
  %.pn = sext i32 %.pn.in to i64
  %.in = getelementptr inbounds [8 x i8], ptr %.val54, i64 %.pn
  %i.ap = load ptr, ptr %.in, align 8, !tbaa !92  ; 4 uses
  %i.aq = add nsw i32 %i.an, 1                    ; 4 uses
  store i32 %i.aq, ptr %6, align 4, !tbaa !50
  %i.ar = and i32 %i.al, 1                        ; 2 uses
  %i.as = and i32 %i.am, 1                        ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  %i.au = or i32 %i.as, %i.ar
  %or.cond.i.i = icmp eq i32 %i.au, 0
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.d
  br i1 %i.a, label %.lr.ph108.i.i, label %Gia_ManDivCover.exit.thread63

bb.e:                                             ; preds = %.lr.ph108.i.i
  %indvars.iv.next130.i.i = add nuw nsw i64 %indvars.iv129.i.i, 1 ; 2 uses
  %exitcond133.not.i.i = icmp eq i64 %indvars.iv.next130.i.i, %wide.trip.count.i.i
end_hunk_1
begin_hunk_2_@Gia_ManFindXorInt:bb.a
  %.not9.i10.i = icmp eq ptr %.pre66, null
  %i.an = zext nneg i32 %spec.select.i to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %.pre66, i64 noundef %i.ao) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ao) #33
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.ar = phi ptr [ %i.ak, %bb.g ], [ %i.aj, %bb.f ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !49
  store i32 %spec.select.sink.i, ptr %5, align 8, !tbaa !48
  %.pre67 = load i32, ptr %i.f, align 4, !tbaa !47
  br label %Abc_TtIntersectXor.exit41.sink.split

bb.l:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count59.i
  br i1 %exitcond.not.i, label %bb.m, label %.lr.ph.i, !llvm.loop !191

.lr.ph.i:                                         ; preds = %.lr.ph49.i, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.lr.ph49.i ] ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !93
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !93
  %i.aw = xor i64 %i.at, %i.av
  %i.ax = xor i64 %i.aw, -1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !93
  %i.ba = and i64 %i.az, %i.ax
  %.not41.i = icmp eq i64 %i.ba, 0
  br i1 %.not41.i, label %bb.l, label %Abc_TtIntersectXor.exit41

bb.m:                                             ; preds = %bb.l
  %i.bb = shl i32 %i.l, 17
  %i.bc = shl i32 %i.m, 2
  %i.bd = or i32 %i.bc, %i.bb
  %i.be = or disjoint i32 %i.bd, 1                ; 3 uses
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !47  ; 7 uses
  %i.bg = load i32, ptr %5, align 8, !tbaa !48
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.n, label %.Vec_IntPush.exit49_crit_edge

.Vec_IntPush.exit49_crit_edge:                    ; preds = %bb.m
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !49
  br label %Abc_TtIntersectXor.exit41.sink.split

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp slt i32 %i.bf, 16
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i47 = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i45

bb.q:                                             ; preds = %bb.o
  %i.bl = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i45

bb.r:                                             ; preds = %bb.n
  %i.bm = icmp samesign ult i32 %i.bf, 1073741823
  %i.bn = shl nuw nsw i32 %i.bf, 1
  %spec.select.i42 = select i1 %i.bm, i32 %i.bn, i32 2147483647 ; 4 uses
  %.not.i9.i43 = icmp samesign ult i32 %i.bf, %spec.select.i42
  %.pre63 = load ptr, ptr %i.g, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i43, label %bb.s, label %Abc_TtIntersectXor.exit41.sink.split

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i44 = icmp eq ptr %.pre63, null
  %i.bo = zext nneg i32 %spec.select.i42 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  br i1 %.not9.i10.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %.pre63, i64 noundef %i.bp) #32
  br label %Vec_IntGrow.exit11.sink.split.i45

bb.u:                                             ; preds = %bb.s
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #33
  br label %Vec_IntGrow.exit11.sink.split.i45

Vec_IntGrow.exit11.sink.split.i45:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %i.bs = phi ptr [ %i.bl, %bb.q ], [ %i.bk, %bb.p ], [ %i.bq, %bb.t ], [ %i.br, %bb.u ] ; 2 uses
  %spec.select.sink.i46 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i42, %bb.t ], [ %spec.select.i42, %bb.u ]
  store ptr %i.bs, ptr %i.g, align 8, !tbaa !49
  store i32 %spec.select.sink.i46, ptr %5, align 8, !tbaa !48
  %.pre64 = load i32, ptr %i.f, align 4, !tbaa !47
  br label %Abc_TtIntersectXor.exit41.sink.split

Abc_TtIntersectXor.exit41.sink.split:             ; preds = %Vec_IntGrow.exit11.sink.split.i45, %bb.r, %.Vec_IntPush.exit49_crit_edge, %Vec_IntGrow.exit11.sink.split.i, %bb.h, %.loopexit.Vec_IntPush.exit_crit_edge
  %.sink77 = phi i32 [ %.pre67, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ae, %.loopexit.Vec_IntPush.exit_crit_edge ], [ %i.ae, %bb.h ], [ %i.bf, %.Vec_IntPush.exit49_crit_edge ], [ %i.bf, %bb.r ], [ %.pre64, %Vec_IntGrow.exit11.sink.split.i45 ] ; 2 uses
  %.sink73 = phi ptr [ %i.ar, %Vec_IntGrow.exit11.sink.split.i ], [ %.pre65, %.loopexit.Vec_IntPush.exit_crit_edge ], [ %.pre66, %bb.h ], [ %.pre, %.Vec_IntPush.exit49_crit_edge ], [ %.pre63, %bb.r ], [ %i.bs, %Vec_IntGrow.exit11.sink.split.i45 ]
  %.sink = phi i32 [ %i.ad, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ad, %.loopexit.Vec_IntPush.exit_crit_edge ], [ %i.ad, %bb.h ], [ %i.be, %.Vec_IntPush.exit49_crit_edge ], [ %i.be, %bb.r ], [ %i.be, %Vec_IntGrow.exit11.sink.split.i45 ]
  %i.bt = add nsw i32 %.sink77, 1
  store i32 %i.bt, ptr %i.f, align 4, !tbaa !47
  %i.bu = sext i32 %.sink77 to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %.sink73, i64 %i.bu
  store i32 %.sink, ptr %i.bv, align 4, !tbaa !50
  br label %Abc_TtIntersectXor.exit41

Abc_TtIntersectXor.exit41:                        ; preds = %.lr.ph.i, %Abc_TtIntersectXor.exit41.sink.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv58
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !192

.critedge2:                                       ; preds = %Abc_TtIntersectXor.exit41, %bb.b
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %.critedge, label %bb.b, !llvm.loop !193

.critedge:                                        ; preds = %.critedge2, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManFindXor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !47
  %i.c = load ptr, ptr %0, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @Gia_ManFindXorInt(ptr noundef %i.c, ptr poison, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !81
  tail call void @Gia_ManFindXorInt(ptr noundef %i.h, ptr poison, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.f)
  br label %.split26.us

.split:                                           ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !47
  %i.l = load ptr, ptr %0, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @Gia_ManFindXorInt(ptr noundef %i.l, ptr poison, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.j)
  %i.n = load ptr, ptr %4, align 8, !tbaa !71
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val = load i32, ptr %i.o, align 4, !tbaa !47
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 0, i32 noundef %.val) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !47
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !81
  tail call void @Gia_ManFindXorInt(ptr noundef %i.t, ptr poison, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.r)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val.1 = load i32, ptr %i.v, align 4, !tbaa !47
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 1, i32 noundef %.val.1) ; 0 uses
  br label %.split26.us

.split26.us:                                      ; preds = %.split, %.split.us.preheader
  %i.x = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %.idx.i = shl nsw i64 %i.ag, 2                  ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ab, i64 %.idx.i ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx76.i = shl nsw i64 %i.ak, 2                ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ad, i64 %.idx76.i ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = icmp sgt i32 %i.aj, 0
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.g, %.split26.us
  %.048.lcssa.i = phi ptr [ %i.ab, %.split26.us ], [ %.149.i, %bb.g ] ; 5 uses
  %.045.lcssa.i = phi ptr [ %i.ad, %.split26.us ], [ %.146.i, %bb.g ] ; 5 uses
  %.042.lcssa.i = phi ptr [ %i.ab, %.split26.us ], [ %.143.i, %bb.g ] ; 5 uses
  %.040.lcssa.i = phi ptr [ %i.ad, %.split26.us ], [ %.141.i, %bb.g ] ; 5 uses
  %.040.lcssa.i48 = ptrtoaddr ptr %.040.lcssa.i to i64
  %.045.lcssa.i49 = ptrtoaddr ptr %.045.lcssa.i to i64 ; 2 uses
  %i.ap = icmp ult ptr %.048.lcssa.i, %i.ah
  br i1 %i.ap, label %.lr.ph70.i.preheader, label %.preheader.i

.lr.ph70.i.preheader:                             ; preds = %.preheader55.i
  %.048.lcssa.i43 = ptrtoaddr ptr %.048.lcssa.i to i64 ; 2 uses
  %.042.lcssa.i42 = ptrtoaddr ptr %.042.lcssa.i to i64
  %i.aq = ptrtoaddr ptr %i.ab to i64
  %i.ar = add i64 %.idx.i, %i.aq
  %i.as = xor i64 %.048.lcssa.i43, -1
  %i.at = add i64 %i.ar, %i.as                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 44
  %i.aw = sub i64 %.048.lcssa.i43, %.042.lcssa.i42
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph70.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph70.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.ax = shl i64 %n.vec, 2                       ; 2 uses
  %i.ay = getelementptr i8, ptr %.042.lcssa.i, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %.048.lcssa.i, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.042.lcssa.i, i64 %i.ba ; 2 uses
  %next.gep44 = getelementptr i8, ptr %.048.lcssa.i, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep44, align 4, !tbaa !50
  %wide.load45 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !50
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !50
  store <4 x i32> %wide.load45, ptr %i.bc, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph70.i.preheader68

.lr.ph70.i.preheader68:                           ; preds = %.lr.ph70.i.preheader, %middle.block
  %.24469.i.ph = phi ptr [ %.042.lcssa.i, %.lr.ph70.i.preheader ], [ %i.ay, %middle.block ]
  %.25068.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph70.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph70.i

.lr.ph.i:                                         ; preds = %.split26.us, %bb.g
  %.04063.i = phi ptr [ %.141.i, %bb.g ], [ %i.ad, %.split26.us ] ; 4 uses
  %.04262.i = phi ptr [ %.143.i, %bb.g ], [ %i.ab, %.split26.us ] ; 4 uses
  %.04561.i = phi ptr [ %.146.i, %bb.g ], [ %i.ad, %.split26.us ] ; 4 uses
  %.04860.i = phi ptr [ %.149.i, %bb.g ], [ %i.ab, %.split26.us ] ; 4 uses
  %i.be = load i32, ptr %.04860.i, align 4, !tbaa !50 ; 5 uses
  %i.bf = load i32, ptr %.04561.i, align 4, !tbaa !50 ; 4 uses
  %.unshifted.i = xor i32 %i.bf, %i.be
  %i.bg = icmp ult i32 %.unshifted.i, 2
  br i1 %i.bg, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.be, %i.bf
  br i1 %.not.i, label %bb.c, label %Gia_ManFindFirstCommonLit.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.bj = icmp slt i32 %i.be, %i.bf
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.04262.i, i64 4
  store i32 %i.be, ptr %.04262.i, align 4, !tbaa !50
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.04063.i, i64 4
  store i32 %i.bf, ptr %.04063.i, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.149.i = phi ptr [ %i.bh, %bb.c ], [ %i.bk, %bb.e ], [ %.04860.i, %bb.f ] ; 3 uses
  %.146.i = phi ptr [ %i.bi, %bb.c ], [ %.04561.i, %bb.e ], [ %i.bm, %bb.f ] ; 3 uses
  %.143.i = phi ptr [ %.04262.i, %bb.c ], [ %i.bl, %bb.e ], [ %.04262.i, %bb.f ] ; 2 uses
  %.141.i = phi ptr [ %.04063.i, %bb.c ], [ %.04063.i, %bb.e ], [ %i.bn, %bb.f ] ; 2 uses
  %i.bo = icmp ult ptr %.149.i, %i.ah
  %i.bp = icmp ult ptr %.146.i, %i.al
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.lr.ph.i, label %.preheader55.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph70.i, %middle.block, %.preheader55.i
  %.244.lcssa.i = phi ptr [ %.042.lcssa.i, %.preheader55.i ], [ %i.ay, %middle.block ], [ %i.ci, %.lr.ph70.i ]
  %i.br = icmp ult ptr %.045.lcssa.i, %i.al
  br i1 %i.br, label %.lr.ph74.i.preheader, label %._crit_edge.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.bs = ptrtoaddr ptr %i.ad to i64
  %i.bt = add i64 %.idx76.i, %i.bs
  %i.bu = xor i64 %.045.lcssa.i49, -1
  %i.bv = add i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.bv, 44
  %i.by = sub i64 %.045.lcssa.i49, %.040.lcssa.i48
  %diff.check50 = icmp ugt i64 %i.by, -32
  %or.cond66 = select i1 %min.iters.check52, i1 true, i1 %diff.check50
  br i1 %or.cond66, label %.lr.ph74.i.preheader67, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph74.i.preheader
  %n.vec54 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.bz = shl i64 %n.vec54, 2                     ; 2 uses
  %i.ca = getelementptr i8, ptr %.040.lcssa.i, i64 %i.bz ; 2 uses
  %i.cb = getelementptr i8, ptr %.045.lcssa.i, i64 %i.bz
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body55 ] ; 2 uses
  %i.cc = shl i64 %index56, 2                     ; 2 uses
  %next.gep57 = getelementptr i8, ptr %.040.lcssa.i, i64 %i.cc ; 2 uses
  %next.gep58 = getelementptr i8, ptr %.045.lcssa.i, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load59 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !50
  %wide.load60 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !50
  %i.ce = getelementptr i8, ptr %next.gep57, i64 16
  store <4 x i32> %wide.load59, ptr %next.gep57, align 4, !tbaa !50
  store <4 x i32> %wide.load60, ptr %i.ce, align 4, !tbaa !50
  %index.next61 = add nuw i64 %index56, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.cf, label %middle.block62, label %vector.body55, !llvm.loop !195

middle.block62:                                   ; preds = %vector.body55
  %cmp.n63 = icmp eq i64 %i.bx, %n.vec54
  br i1 %cmp.n63, label %._crit_edge.i, label %.lr.ph74.i.preheader67

.lr.ph74.i.preheader67:                           ; preds = %.lr.ph74.i.preheader, %middle.block62
  %.273.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph74.i.preheader ], [ %i.ca, %middle.block62 ]
  %.24772.i.ph = phi ptr [ %.045.lcssa.i, %.lr.ph74.i.preheader ], [ %i.cb, %middle.block62 ]
  br label %.lr.ph74.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader68, %.lr.ph70.i
  %.24469.i = phi ptr [ %i.ci, %.lr.ph70.i ], [ %.24469.i.ph, %.lr.ph70.i.preheader68 ] ; 2 uses
  %.25068.i = phi ptr [ %i.cg, %.lr.ph70.i ], [ %.25068.i.ph, %.lr.ph70.i.preheader68 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.25068.i, i64 4 ; 2 uses
  %i.ch = load i32, ptr %.25068.i, align 4, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %.24469.i, i64 4 ; 2 uses
  store i32 %i.ch, ptr %.24469.i, align 4, !tbaa !50
  %i.cj = icmp ult ptr %i.cg, %i.ah
  br i1 %i.cj, label %.lr.ph70.i, label %.preheader.i, !llvm.loop !196

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader67, %.lr.ph74.i
  %.273.i = phi ptr [ %i.cm, %.lr.ph74.i ], [ %.273.i.ph, %.lr.ph74.i.preheader67 ] ; 2 uses
  %.24772.i = phi ptr [ %i.ck, %.lr.ph74.i ], [ %.24772.i.ph, %.lr.ph74.i.preheader67 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.24772.i, i64 4 ; 2 uses
  %i.cl = load i32, ptr %.24772.i, align 4, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %.273.i, i64 4 ; 2 uses
  store i32 %i.cl, ptr %.273.i, align 4, !tbaa !50
  %i.cn = icmp ult ptr %i.ck, %i.al
  br i1 %i.cn, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !197

._crit_edge.i:                                    ; preds = %.lr.ph74.i, %middle.block62, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader.i ], [ %i.ca, %middle.block62 ], [ %i.cm, %.lr.ph74.i ]
  %i.co = ptrtoint ptr %.244.lcssa.i to i64
  %i.cp = ptrtoint ptr %i.ab to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = lshr exact i64 %i.cq, 2
  %i.cs = trunc i64 %i.cr to i32
  store i32 %i.cs, ptr %i.ae, align 4, !tbaa !47
  %i.ct = ptrtoint ptr %.2.lcssa.i to i64
  %i.cu = ptrtoint ptr %i.ad to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 2
  %i.cx = trunc i64 %i.cw to i32
  store i32 %i.cx, ptr %i.ai, align 4, !tbaa !47
  br label %Gia_ManFindFirstCommonLit.exit

Gia_ManFindFirstCommonLit.exit:                   ; preds = %bb.b, %._crit_edge.i
  %.051.i = phi i32 [ -1, %._crit_edge.i ], [ %i.be, %bb.b ]
  ret i32 %.051.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManFindUnatePairsInt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !47  ; 2 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph107, label %.critedge

.lr.ph107:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.d = getelementptr i8, ptr %3, i64 8
  %i.e = icmp sgt i32 %4, 0                       ; 8 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %wide.trip.count126 = zext nneg i32 %.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %.critedge2
  %indvars.iv123 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next124, %.critedge2 ] ; 4 uses
  %.val45 = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %indvars.iv123
  %i.i = load i32, ptr %i.h, align 4, !tbaa !50   ; 2 uses
  %.not = icmp eq i64 %indvars.iv123, 0
  br i1 %.not, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.b ] ; 2 uses
  %.val44 = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50   ; 2 uses
  %i.l = tail call noundef i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  %i.m = tail call noundef i32 @llvm.smax.i32(i32 %i.k, i32 %i.i) ; 2 uses
  %.val47 = load ptr, ptr %i.d, align 8, !tbaa !79 ; 2 uses
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val47, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92   ; 8 uses
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val47, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 8 uses
  %i.t = shl nsw i32 %i.l, 1
  %i.u = shl i32 %i.m, 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Abc_TtIntersectTwo.exit
  %.042104 = phi i32 [ 0, %.lr.ph ], [ %i.dn, %Abc_TtIntersectTwo.exit ] ; 4 uses
  %i.v = and i32 %.042104, 1
  %i.w = or disjoint i32 %i.v, %i.t
  %i.x = lshr i32 %.042104, 1                     ; 2 uses
  %i.y = icmp ne i32 %i.x, 0                      ; 3 uses
  %i.z = trunc i32 %.042104 to i1                 ; 3 uses
  %or.cond.i = and i1 %i.y, %i.z                  ; 2 uses
  br i1 %or.cond.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c
  br i1 %i.e, label %.lr.ph108.i, label %Abc_TtIntersectTwo.exit

bb.d:                                             ; preds = %.lr.ph108.i
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %wide.trip.count.i
  br i1 %exitcond133.not.i, label %.loopexit, label %.lr.ph108.i, !llvm.loop !9

.lr.ph108.i:                                      ; preds = %.preheader.i, %bb.d
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %bb.d ], [ 0, %.preheader.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv129.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv129.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !93
  %.demorgan.i = or i64 %i.ad, %i.ab
  %i.ae = xor i64 %.demorgan.i, -1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv129.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !93
  %i.ah = and i64 %i.ag, %i.ae
  %.not84.i = icmp eq i64 %i.ah, 0
  br i1 %.not84.i, label %bb.d, label %Abc_TtIntersectTwo.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.y, label %.preheader85.i, label %bb.g

.preheader85.i:                                   ; preds = %bb.e
  br i1 %i.e, label %.lr.ph103.i, label %Abc_TtIntersectTwo.exit

bb.f:                                             ; preds = %.lr.ph103.i
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next125.i, %wide.trip.count.i
  br i1 %exitcond128.not.i, label %.loopexit, label %.lr.ph103.i, !llvm.loop !10

.lr.ph103.i:                                      ; preds = %.preheader85.i, %bb.f
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %bb.f ], [ 0, %.preheader85.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv124.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !93
  %i.ak = xor i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv124.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !93
  %i.an = and i64 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv124.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !93
  %i.aq = and i64 %i.an, %i.ap
  %.not83.i = icmp eq i64 %i.aq, 0
  br i1 %.not83.i, label %bb.f, label %Abc_TtIntersectTwo.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.z, label %.preheader88.i, label %.preheader91.i

.preheader91.i:                                   ; preds = %bb.g
  br i1 %i.e, label %.lr.ph.i, label %Abc_TtIntersectTwo.exit

.preheader88.i:                                   ; preds = %bb.g
  br i1 %i.e, label %.lr.ph98.i, label %Abc_TtIntersectTwo.exit

bb.h:                                             ; preds = %.lr.ph98.i
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %exitcond123.not.i = icmp eq i64 %indvars.iv.next120.i, %wide.trip.count.i
  br i1 %exitcond123.not.i, label %.loopexit, label %.lr.ph98.i, !llvm.loop !11

.lr.ph98.i:                                       ; preds = %.preheader88.i, %bb.h
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %bb.h ], [ 0, %.preheader88.i ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv119.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !93
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv119.i
end_hunk_2
begin_hunk_3_@Gia_ManFindUnatePairsInt:bb.a
  br i1 %exitcond123.not.i65, label %Abc_TtIntersectTwo.exit, label %.lr.ph98.i61, !llvm.loop !11

.lr.ph98.i61:                                     ; preds = %.preheader88.i58, %bb.n
  %indvars.iv119.i62 = phi i64 [ %indvars.iv.next120.i64, %bb.n ], [ 0, %.preheader88.i58 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv119.i62
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !93
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv119.i62
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !93
  %i.cd = xor i64 %i.cc, -1
  %i.ce = and i64 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv119.i62
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !93
  %i.ch = and i64 %i.ce, %i.cg
  %.not82.i63 = icmp eq i64 %i.ch, 0
  br i1 %.not82.i63, label %bb.n, label %Abc_TtIntersectTwo.exit83

bb.o:                                             ; preds = %.lr.ph.i53
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i
  br i1 %exitcond.not.i57, label %Abc_TtIntersectTwo.exit, label %.lr.ph.i53, !llvm.loop !12

.lr.ph.i53:                                       ; preds = %.preheader91.i49, %bb.o
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %bb.o ], [ 0, %.preheader91.i49 ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i54
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !93
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i54
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !93
  %i.cm = and i64 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i54
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !93
  %i.cp = and i64 %i.cm, %i.co
  %.not.i55 = icmp eq i64 %i.cp, 0
  br i1 %.not.i55, label %bb.o, label %Abc_TtIntersectTwo.exit83

Abc_TtIntersectTwo.exit83:                        ; preds = %.lr.ph.i53, %.lr.ph98.i61, %.lr.ph103.i69, %.lr.ph108.i77
  %i.cq = shl nuw nsw i32 %i.x, 15
  %i.cr = add nuw nsw i32 %i.cq, %i.u
  %i.cs = or i32 %i.cr, %i.w
  %i.ct = shl nsw i32 %i.cs, 1
  %i.cu = load i32, ptr %i.f, align 4, !tbaa !47  ; 7 uses
  %i.cv = load i32, ptr %5, align 8, !tbaa !48
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.p, label %Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge

Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge: ; preds = %Abc_TtIntersectTwo.exit83
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !49
  br label %Vec_IntPush.exit

bb.p:                                             ; preds = %Abc_TtIntersectTwo.exit83
  %i.cx = icmp slt i32 %i.cu, 16
  br i1 %i.cx, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.cy, null
  br i1 %.not9.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cy, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.da = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i

bb.t:                                             ; preds = %bb.p
  %i.db = icmp samesign ult i32 %i.cu, 1073741823
  %i.dc = shl nuw nsw i32 %i.cu, 1
  %spec.select.i = select i1 %i.db, i32 %i.dc, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.cu, %spec.select.i
  %.pre128 = load ptr, ptr %i.g, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i, label %bb.u, label %Vec_IntPush.exit

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i = icmp eq ptr %.pre128, null
  %i.dd = zext nneg i32 %spec.select.i to i64
  %i.de = shl nuw nsw i64 %i.dd, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = tail call ptr @realloc(ptr noundef nonnull %.pre128, i64 noundef %i.de) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.dg = tail call noalias ptr @malloc(i64 noundef %i.de) #33
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %bb.w, %bb.r, %bb.s
  %i.dh = phi ptr [ %i.da, %bb.s ], [ %i.cz, %bb.r ], [ %i.df, %bb.v ], [ %i.dg, %bb.w ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i, %bb.v ], [ %spec.select.i, %bb.w ]
  store ptr %i.dh, ptr %i.g, align 8, !tbaa !49
  store i32 %spec.select.sink.i, ptr %5, align 8, !tbaa !48
  %.pre129 = load i32, ptr %i.f, align 4, !tbaa !47
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge, %bb.t, %Vec_IntGrow.exit11.sink.split.i
  %i.di = phi i32 [ %i.cu, %Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge ], [ %i.cu, %bb.t ], [ %.pre129, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.dj = phi ptr [ %.pre, %Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge ], [ %.pre128, %bb.t ], [ %i.dh, %Vec_IntGrow.exit11.sink.split.i ]
  %i.dk = add nsw i32 %i.di, 1
  store i32 %i.dk, ptr %i.f, align 4, !tbaa !47
  %i.dl = sext i32 %i.di to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dl
  store i32 %i.ct, ptr %i.dm, align 4, !tbaa !50
  br label %Abc_TtIntersectTwo.exit

Abc_TtIntersectTwo.exit:                          ; preds = %.lr.ph.i, %.lr.ph98.i, %.lr.ph103.i, %.lr.ph108.i, %bb.o, %bb.n, %bb.l, %bb.j, %.preheader91.i, %.preheader88.i, %.preheader85.i, %.preheader.i, %.preheader85.i66, %.preheader.i74, %.preheader91.i49, %.preheader88.i58, %Vec_IntPush.exit
  %i.dn = add nuw nsw i32 %.042104, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dn, 4
  br i1 %exitcond.not, label %bb.x, label %bb.c, !llvm.loop !198

bb.x:                                             ; preds = %Abc_TtIntersectTwo.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next, %indvars.iv123
  br i1 %exitcond122.not, label %.critedge2, label %.lr.ph, !llvm.loop !199

.critedge2:                                       ; preds = %bb.x, %bb.b
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.critedge, label %bb.b, !llvm.loop !200

.critedge:                                        ; preds = %.critedge2, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManFindUnatePairs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !71
  %i.b = load ptr, ptr %0, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  tail call void @Gia_ManFindUnatePairsInt(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.h = load ptr, ptr %0, align 8, !tbaa !81
  tail call void @Gia_ManFindUnatePairsInt(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.f)
  br label %.split26.us

.split:                                           ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val22 = load i32, ptr %i.k, align 4, !tbaa !47
  %i.l = load ptr, ptr %0, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  tail call void @Gia_ManFindUnatePairsInt(ptr noundef %i.l, ptr noundef %i.n, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.j)
  %i.o = load ptr, ptr %4, align 8, !tbaa !71
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val = load i32, ptr %i.p, align 4, !tbaa !47
  %i.q = sub nsw i32 %.val, %.val22
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef 0, i32 noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val22.1 = load i32, ptr %i.u, align 4, !tbaa !47
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.w = load ptr, ptr %0, align 8, !tbaa !81
  tail call void @Gia_ManFindUnatePairsInt(ptr noundef %i.v, ptr noundef %i.w, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.t)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val.1 = load i32, ptr %i.y, align 4, !tbaa !47
  %i.z = sub nsw i32 %.val.1, %.val22.1
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef 1, i32 noundef %i.z) ; 0 uses
  br label %.split26.us

.split26.us:                                      ; preds = %.split, %.split.us.preheader
  %i.ab = load ptr, ptr %4, align 8, !tbaa !71    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx.i = shl nsw i64 %i.ak, 2                  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %.idx.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !47 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %.idx76.i = shl nsw i64 %i.ao, 2                ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 %.idx76.i ; 3 uses
  %i.aq = icmp sgt i32 %i.aj, 0
  %i.ar = icmp sgt i32 %i.an, 0
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.g, %.split26.us
  %.048.lcssa.i = phi ptr [ %i.af, %.split26.us ], [ %.149.i, %bb.g ] ; 5 uses
  %.045.lcssa.i = phi ptr [ %i.ah, %.split26.us ], [ %.146.i, %bb.g ] ; 5 uses
  %.042.lcssa.i = phi ptr [ %i.af, %.split26.us ], [ %.143.i, %bb.g ] ; 5 uses
  %.040.lcssa.i = phi ptr [ %i.ah, %.split26.us ], [ %.141.i, %bb.g ] ; 5 uses
  %.040.lcssa.i42 = ptrtoaddr ptr %.040.lcssa.i to i64
  %.045.lcssa.i43 = ptrtoaddr ptr %.045.lcssa.i to i64 ; 2 uses
  %i.at = icmp ult ptr %.048.lcssa.i, %i.al
  br i1 %i.at, label %.lr.ph70.i.preheader, label %.preheader.i

.lr.ph70.i.preheader:                             ; preds = %.preheader55.i
  %.048.lcssa.i37 = ptrtoaddr ptr %.048.lcssa.i to i64 ; 2 uses
  %.042.lcssa.i36 = ptrtoaddr ptr %.042.lcssa.i to i64
  %i.au = ptrtoaddr ptr %i.af to i64
  %i.av = add i64 %.idx.i, %i.au
  %i.aw = xor i64 %.048.lcssa.i37, -1
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 44
  %i.ba = sub i64 %.048.lcssa.i37, %.042.lcssa.i36
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph70.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph70.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.bb = shl i64 %n.vec, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %.042.lcssa.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %.048.lcssa.i, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.042.lcssa.i, i64 %i.be ; 2 uses
  %next.gep38 = getelementptr i8, ptr %.048.lcssa.i, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep38, align 4, !tbaa !50
  %wide.load39 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !50
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !50
  store <4 x i32> %wide.load39, ptr %i.bg, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph70.i.preheader62

.lr.ph70.i.preheader62:                           ; preds = %.lr.ph70.i.preheader, %middle.block
  %.24469.i.ph = phi ptr [ %.042.lcssa.i, %.lr.ph70.i.preheader ], [ %i.bc, %middle.block ]
  %.25068.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph70.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph70.i

.lr.ph.i:                                         ; preds = %.split26.us, %bb.g
  %.04063.i = phi ptr [ %.141.i, %bb.g ], [ %i.ah, %.split26.us ] ; 4 uses
  %.04262.i = phi ptr [ %.143.i, %bb.g ], [ %i.af, %.split26.us ] ; 4 uses
  %.04561.i = phi ptr [ %.146.i, %bb.g ], [ %i.ah, %.split26.us ] ; 4 uses
  %.04860.i = phi ptr [ %.149.i, %bb.g ], [ %i.af, %.split26.us ] ; 4 uses
  %i.bi = load i32, ptr %.04860.i, align 4, !tbaa !50 ; 4 uses
  %i.bj = load i32, ptr %.04561.i, align 4, !tbaa !50 ; 4 uses
  %.unshifted.i = xor i32 %i.bj, %i.bi
  %i.bk = icmp ult i32 %.unshifted.i, 2
  br i1 %i.bk, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.bi, %i.bj
  br i1 %.not.i, label %bb.c, label %Gia_ManFindFirstCommonLit.exit

bb.c:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.bn = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.04262.i, i64 4
  store i32 %i.bi, ptr %.04262.i, align 4, !tbaa !50
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %.04063.i, i64 4
  store i32 %i.bj, ptr %.04063.i, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.149.i = phi ptr [ %i.bl, %bb.c ], [ %i.bo, %bb.e ], [ %.04860.i, %bb.f ] ; 3 uses
  %.146.i = phi ptr [ %i.bm, %bb.c ], [ %.04561.i, %bb.e ], [ %i.bq, %bb.f ] ; 3 uses
  %.143.i = phi ptr [ %.04262.i, %bb.c ], [ %i.bp, %bb.e ], [ %.04262.i, %bb.f ] ; 2 uses
  %.141.i = phi ptr [ %.04063.i, %bb.c ], [ %.04063.i, %bb.e ], [ %i.br, %bb.f ] ; 2 uses
  %i.bs = icmp ult ptr %.149.i, %i.al
  %i.bt = icmp ult ptr %.146.i, %i.ap
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph.i, label %.preheader55.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph70.i, %middle.block, %.preheader55.i
  %.244.lcssa.i = phi ptr [ %.042.lcssa.i, %.preheader55.i ], [ %i.bc, %middle.block ], [ %i.cm, %.lr.ph70.i ]
  %i.bv = icmp ult ptr %.045.lcssa.i, %i.ap
  br i1 %i.bv, label %.lr.ph74.i.preheader, label %._crit_edge.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.bw = ptrtoaddr ptr %i.ah to i64
  %i.bx = add i64 %.idx76.i, %i.bw
  %i.by = xor i64 %.045.lcssa.i43, -1
  %i.bz = add i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.bz, 44
  %i.cc = sub i64 %.045.lcssa.i43, %.040.lcssa.i42
  %diff.check44 = icmp ugt i64 %i.cc, -32
  %or.cond60 = select i1 %min.iters.check46, i1 true, i1 %diff.check44
  br i1 %or.cond60, label %.lr.ph74.i.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %.lr.ph74.i.preheader
  %n.vec48 = and i64 %i.cb, 9223372036854775800   ; 3 uses
  %i.cd = shl i64 %n.vec48, 2                     ; 2 uses
  %i.ce = getelementptr i8, ptr %.040.lcssa.i, i64 %i.cd ; 2 uses
  %i.cf = getelementptr i8, ptr %.045.lcssa.i, i64 %i.cd
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.cg = shl i64 %index50, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %.040.lcssa.i, i64 %i.cg ; 2 uses
  %next.gep52 = getelementptr i8, ptr %.045.lcssa.i, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !50
  %wide.load54 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !50
  %i.ci = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %wide.load53, ptr %next.gep51, align 4, !tbaa !50
  store <4 x i32> %wide.load54, ptr %i.ci, align 4, !tbaa !50
  %index.next55 = add nuw i64 %index50, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.cj, label %middle.block56, label %vector.body49, !llvm.loop !202

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.cb, %n.vec48
  br i1 %cmp.n57, label %._crit_edge.i, label %.lr.ph74.i.preheader61

.lr.ph74.i.preheader61:                           ; preds = %.lr.ph74.i.preheader, %middle.block56
  %.273.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph74.i.preheader ], [ %i.ce, %middle.block56 ]
  %.24772.i.ph = phi ptr [ %.045.lcssa.i, %.lr.ph74.i.preheader ], [ %i.cf, %middle.block56 ]
  br label %.lr.ph74.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader62, %.lr.ph70.i
  %.24469.i = phi ptr [ %i.cm, %.lr.ph70.i ], [ %.24469.i.ph, %.lr.ph70.i.preheader62 ] ; 2 uses
  %.25068.i = phi ptr [ %i.ck, %.lr.ph70.i ], [ %.25068.i.ph, %.lr.ph70.i.preheader62 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.25068.i, i64 4 ; 2 uses
  %i.cl = load i32, ptr %.25068.i, align 4, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %.24469.i, i64 4 ; 2 uses
  store i32 %i.cl, ptr %.24469.i, align 4, !tbaa !50
  %i.cn = icmp ult ptr %i.ck, %i.al
  br i1 %i.cn, label %.lr.ph70.i, label %.preheader.i, !llvm.loop !203

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader61, %.lr.ph74.i
  %.273.i = phi ptr [ %i.cq, %.lr.ph74.i ], [ %.273.i.ph, %.lr.ph74.i.preheader61 ] ; 2 uses
  %.24772.i = phi ptr [ %i.co, %.lr.ph74.i ], [ %.24772.i.ph, %.lr.ph74.i.preheader61 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.24772.i, i64 4 ; 2 uses
  %i.cp = load i32, ptr %.24772.i, align 4, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %.273.i, i64 4 ; 2 uses
  store i32 %i.cp, ptr %.273.i, align 4, !tbaa !50
  %i.cr = icmp ult ptr %i.co, %i.ap
  br i1 %i.cr, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !204

._crit_edge.i:                                    ; preds = %.lr.ph74.i, %middle.block56, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader.i ], [ %i.ce, %middle.block56 ], [ %i.cq, %.lr.ph74.i ]
  %i.cs = ptrtoint ptr %.244.lcssa.i to i64
  %i.ct = ptrtoint ptr %i.af to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = lshr exact i64 %i.cu, 2
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.ai, align 4, !tbaa !47
  %i.cx = ptrtoint ptr %.2.lcssa.i to i64
  %i.cy = ptrtoint ptr %i.ah to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = lshr exact i64 %i.cz, 2
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.am, align 4, !tbaa !47
  br label %Gia_ManFindFirstCommonLit.exit

Gia_ManFindFirstCommonLit.exit:                   ; preds = %bb.b, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManDeriveDivPair(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 10 uses
  %i.b = lshr i32 %0, 1
  %i.c = and i32 %i.b, 32767                      ; 2 uses
  %i.d = ashr i32 %0, 16
  %i.e = lshr i32 %i.c, 1
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val19 = load ptr, ptr %i.f, align 8, !tbaa !79 ; 2 uses
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92   ; 25 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 5 uses
  %i.k = ashr i32 %0, 17
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val19, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 25 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 5 uses
  %i.p = icmp slt i32 %i.c, %i.d
  br i1 %i.p, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.q = and i32 %0, 2
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = and i32 %0, 65536
  %.not38.i = icmp eq i32 %i.r, 0                 ; 2 uses
  %i.s = icmp sgt i32 %2, 0                       ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not38.i, label %.preheader42.i, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.c
  br i1 %i.s, label %.lr.ph.preheader.i, label %Abc_TtAndCompl.exit

.lr.ph.preheader.i:                               ; preds = %.preheader44.i
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 5 uses
  %min.iters.check51 = icmp ult i32 %2, 10
  br i1 %min.iters.check51, label %.lr.ph.i.preheader, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.preheader.i
  %i.t = sub i64 %i.j, %i.a
  %diff.check47 = icmp ugt i64 %i.t, -32
  %i.u = sub i64 %i.o, %i.a
  %diff.check48 = icmp ugt i64 %i.u, -32
  %conflict.rdx49 = or i1 %diff.check47, %diff.check48
  br i1 %conflict.rdx49, label %.lr.ph.i.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %vector.memcheck46
  %n.vec53 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index55 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load56 = load <2 x i64>, ptr %i.v, align 8, !tbaa !93
  %wide.load57 = load <2 x i64>, ptr %i.w, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index55 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load58 = load <2 x i64>, ptr %i.x, align 8, !tbaa !93
  %wide.load59 = load <2 x i64>, ptr %i.y, align 8, !tbaa !93
  %i.z = or <2 x i64> %wide.load58, %wide.load56
  %i.aa = or <2 x i64> %wide.load59, %wide.load57
  %i.ab = xor <2 x i64> %i.z, splat (i64 -1)
  %i.ac = xor <2 x i64> %i.aa, splat (i64 -1)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index55 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !tbaa !93
  store <2 x i64> %i.ac, ptr %i.ae, align 8, !tbaa !93
  %index.next60 = add nuw i64 %index55, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.af, label %middle.block61, label %vector.body54, !llvm.loop !205

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %n.vec53, %wide.trip.count.i
  br i1 %cmp.n62, label %Abc_TtAndCompl.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck46, %.lr.ph.preheader.i, %middle.block61
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck46 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec53, %middle.block61 ] ; 6 uses
  %xtraiter122 = and i64 %wide.trip.count.i, 1
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.ph
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.ph
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !93
  %.demorgan.i.prol = or i64 %i.aj, %i.ah
  %i.ak = xor i64 %.demorgan.i.prol, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.ph
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !93
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.am = add nsw i64 %wide.trip.count.i, -1
  %i.an = icmp eq i64 %indvars.iv.i.ph, %i.am
  br i1 %i.an, label %Abc_TtAndCompl.exit, label %.lr.ph.i

.preheader42.i:                                   ; preds = %bb.c
  br i1 %i.s, label %.lr.ph48.preheader.i, label %Abc_TtAndCompl.exit

.lr.ph48.preheader.i:                             ; preds = %.preheader42.i
  %wide.trip.count60.i = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check69 = icmp ult i32 %2, 10
  br i1 %min.iters.check69, label %.lr.ph48.i.preheader, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.lr.ph48.preheader.i
  %i.ao = sub i64 %i.j, %i.a
  %diff.check65 = icmp ugt i64 %i.ao, -32
  %i.ap = sub i64 %i.o, %i.a
  %diff.check66 = icmp ugt i64 %i.ap, -32
  %conflict.rdx67 = or i1 %diff.check65, %diff.check66
  br i1 %conflict.rdx67, label %.lr.ph48.i.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck64
  %n.vec71 = and i64 %wide.trip.count60.i, 2147483644 ; 3 uses
end_hunk_3
begin_hunk_4_@Gia_ManAppendObj:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !380
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !46
  %i.s = load i32, ptr %i.c, align 4, !tbaa !379  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52   ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #32 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !52
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !379 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !379
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !47
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !47 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #32
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #32
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !48
  %.pre = load i32, ptr %i.al, align 4, !tbaa !47
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !47
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !58
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !46
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #28

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #30

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #29

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nofree nounwind }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind }
attributes #35 = { nounwind allocsize(0,1) }
attributes #36 = { "function-inline-cost-multiplier"="2" }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { cold noreturn nounwind }

!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{!0, !53}
!1 = distinct !{!1, !53}
!2 = distinct !{!2, !53}
!3 = distinct !{!3, !53}
!4 = distinct !{!4, !53}
!5 = distinct !{!5, !53}
!6 = distinct !{!6, !53}
!7 = distinct !{!7, !53}
!8 = distinct !{!8, !53}
!9 = distinct !{!9, !53}
!10 = distinct !{!10, !53}
!11 = distinct !{!11, !53}
!12 = distinct !{!12, !53}
!13 = distinct !{!13, !53}
!14 = distinct !{!14, !53}
!15 = distinct !{!15, !53}
!16 = distinct !{!16, !53}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"any pointer", !21, i64 0}
!26 = !{!"p1 omnipotent char", !25, i64 0}
!27 = !{!"p1 _ZTS10Gia_Obj_t_", !25, i64 0}
!28 = !{!"p1 int", !25, i64 0}
!29 = !{!"p1 _ZTS10Vec_Int_t_", !25, i64 0}
!30 = !{!"Vec_Int_t_", !22, i64 0, !22, i64 4, !28, i64 8}
!31 = !{!"p1 _ZTS10Gia_Rpr_t_", !25, i64 0}
!32 = !{!"p1 _ZTS10Vec_Wec_t_", !25, i64 0}
!33 = !{!"p1 _ZTS10Vec_Str_t_", !25, i64 0}
!34 = !{!"p1 _ZTS10Abc_Cex_t_", !25, i64 0}
!35 = !{!"p1 _ZTS10Vec_Ptr_t_", !25, i64 0}
!36 = !{!"p1 _ZTS10Gia_Plc_t_", !25, i64 0}
!37 = !{!"p1 _ZTS10Gia_Man_t_", !25, i64 0}
!38 = !{!"p1 _ZTS10Vec_Flt_t_", !25, i64 0}
!39 = !{!"float", !21, i64 0}
!40 = !{!"p1 _ZTS10Vec_Vec_t_", !25, i64 0}
!41 = !{!"long", !21, i64 0}
!42 = !{!"p1 _ZTS10Vec_Wrd_t_", !25, i64 0}
!43 = !{!"p1 _ZTS10Vec_Bit_t_", !25, i64 0}
!44 = !{!"p1 _ZTS10Gia_Dat_t_", !25, i64 0}
!45 = !{!"Gia_Man_t_", !26, i64 0, !26, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !27, i64 32, !28, i64 40, !22, i64 48, !22, i64 52, !22, i64 56, !29, i64 64, !29, i64 72, !30, i64 80, !30, i64 96, !22, i64 112, !22, i64 116, !22, i64 120, !30, i64 128, !28, i64 144, !28, i64 152, !29, i64 160, !22, i64 168, !22, i64 172, !22, i64 176, !22, i64 180, !28, i64 184, !31, i64 192, !28, i64 200, !28, i64 208, !28, i64 216, !22, i64 224, !22, i64 228, !28, i64 232, !22, i64 240, !29, i64 248, !29, i64 256, !29, i64 264, !32, i64 272, !32, i64 280, !29, i64 288, !25, i64 296, !29, i64 304, !29, i64 312, !33, i64 320, !26, i64 328, !29, i64 336, !29, i64 344, !29, i64 352, !29, i64 360, !29, i64 368, !34, i64 376, !34, i64 384, !35, i64 392, !30, i64 400, !30, i64 416, !29, i64 432, !29, i64 440, !29, i64 448, !29, i64 456, !29, i64 464, !29, i64 472, !29, i64 480, !29, i64 488, !29, i64 496, !29, i64 504, !29, i64 512, !26, i64 520, !36, i64 528, !37, i64 536, !38, i64 544, !38, i64 552, !29, i64 560, !29, i64 568, !29, i64 576, !29, i64 584, !29, i64 592, !22, i64 600, !39, i64 604, !39, i64 608, !29, i64 616, !28, i64 624, !22, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !29, i64 664, !29, i64 672, !29, i64 680, !29, i64 688, !29, i64 696, !29, i64 704, !29, i64 712, !29, i64 720, !29, i64 728, !40, i64 736, !38, i64 744, !25, i64 752, !25, i64 760, !25, i64 768, !41, i64 776, !41, i64 784, !25, i64 792, !28, i64 800, !22, i64 808, !22, i64 812, !22, i64 816, !22, i64 820, !22, i64 824, !22, i64 828, !22, i64 832, !22, i64 836, !22, i64 840, !22, i64 844, !22, i64 848, !22, i64 852, !42, i64 856, !42, i64 864, !42, i64 872, !42, i64 880, !29, i64 888, !29, i64 896, !29, i64 904, !43, i64 912, !22, i64 920, !22, i64 924, !22, i64 928, !29, i64 936, !22, i64 944, !22, i64 948, !29, i64 952, !29, i64 960, !35, i64 968, !42, i64 976, !29, i64 984, !29, i64 992, !22, i64 1000, !22, i64 1004, !42, i64 1008, !30, i64 1016, !30, i64 1032, !30, i64 1048, !44, i64 1064, !33, i64 1072, !33, i64 1080, !22, i64 1088, !22, i64 1092, !22, i64 1096, !22, i64 1100, !33, i64 1104, !29, i64 1112, !29, i64 1120, !29, i64 1128, !35, i64 1136}
!46 = !{!45, !27, i64 32}
!47 = !{!30, !22, i64 4}
!48 = !{!30, !22, i64 0}
!49 = !{!30, !28, i64 8}
!50 = !{!22, !22, i64 0}
!51 = !{!45, !28, i64 144}
!52 = !{!45, !28, i64 40}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"Vec_Wec_t_", !22, i64 0, !22, i64 4, !29, i64 8}
!55 = !{!54, !22, i64 4}
!56 = !{!54, !22, i64 0}
!57 = !{!54, !29, i64 8}
!58 = !{!45, !22, i64 24}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!45, !29, i64 64}
!61 = !{!45, !29, i64 72}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!28, !28, i64 0}
!65 = !{!"timespec", !41, i64 0, !41, i64 8}
!66 = !{!65, !41, i64 0}
!67 = !{!65, !41, i64 8}
!68 = !{!"p1 long", !25, i64 0}
!69 = !{!"Gia_ResbMan_t_", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !35, i64 32, !29, i64 40, !21, i64 48, !21, i64 64, !21, i64 80, !29, i64 96, !21, i64 104, !21, i64 120, !32, i64 136, !21, i64 144, !68, i64 160, !68, i64 168, !42, i64 176}
!70 = !{!69, !22, i64 0}
!71 = !{!29, !29, i64 0}
!72 = !{!69, !32, i64 136}
!73 = !{!69, !29, i64 96}
!74 = !{!69, !29, i64 40}
!75 = !{!"any p2 pointer", !25, i64 0}
!76 = !{!"Vec_Ptr_t_", !22, i64 0, !22, i64 4, !75, i64 8}
!77 = !{!76, !22, i64 4}
!78 = !{!76, !22, i64 0}
!79 = !{!76, !75, i64 8}
!80 = !{!69, !35, i64 32}
!81 = !{!68, !68, i64 0}
!82 = !{!69, !68, i64 160}
!83 = !{!69, !68, i64 168}
!84 = !{!"Vec_Wrd_t_", !22, i64 0, !22, i64 4, !68, i64 8}
!85 = !{!84, !22, i64 4}
!86 = !{!84, !22, i64 0}
!87 = !{!84, !68, i64 8}
!88 = !{!69, !42, i64 176}
!89 = !{!69, !22, i64 8}
!90 = !{!69, !22, i64 16}
!91 = !{!69, !22, i64 24}
!92 = !{!25, !25, i64 0}
!93 = !{!41, !41, i64 0}
!94 = !{!45, !28, i64 232}
!95 = !{!45, !26, i64 0}
!96 = !{!"p1 _ZTS14Gia_ResbMan_t_", !25, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"p1 _ZTS8_IO_FILE", !25, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!45, !22, i64 176}
!101 = !{!45, !28, i64 624}
!102 = !{!42, !42, i64 0}
!103 = distinct !{!103, !53}
!104 = distinct !{!104, !53}
!105 = distinct !{!105, !53}
!106 = distinct !{!106, !53}
!107 = distinct !{!107, !59}
!108 = distinct !{!108, !53}
!109 = distinct !{!109, !59}
!110 = distinct !{!110, !53}
!111 = distinct !{!111, !53}
!112 = distinct !{!112, !53}
!113 = distinct !{!113, !59}
!114 = distinct !{!114, !59}
!115 = distinct !{!115, !53}
!116 = distinct !{!116, !53}
!117 = distinct !{!117, !53}
!118 = distinct !{!118, !53, !62, !63}
!119 = distinct !{!119, !53}
!120 = distinct !{!120, !53, !62, !63}
!121 = distinct !{!121, !53, !62}
!122 = distinct !{!122, !53, !62}
!123 = distinct !{!123, !53}
!124 = distinct !{!124, !53}
!125 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 8, !64}
!126 = distinct !{!126, !53}
!127 = distinct !{!127, !53, !62, !63}
!128 = distinct !{!128, !59}
!129 = distinct !{!129, !53, !62}
!130 = distinct !{!130, !53, !62, !63}
!131 = distinct !{!131, !59}
!132 = distinct !{!132, !53, !62}
!133 = distinct !{!133, !53}
!134 = !{!69, !22, i64 4}
!135 = !{!69, !22, i64 12}
!136 = !{!69, !22, i64 20}
!137 = !{!69, !22, i64 28}
!138 = !{ptr @Gia_ManResubPrintLit}
!139 = distinct !{!139, !53, !62, !63}
!140 = distinct !{!140, !53, !62, !63}
!141 = distinct !{!141, !53, !62}
!142 = distinct !{!142, !53, !62}
!143 = distinct !{!143, !53, !62, !63}
!144 = distinct !{!144, !53, !62, !63}
!145 = distinct !{!145, !59}
!146 = distinct !{!146, !53, !62}
!147 = distinct !{!147, !53, !62}
end_hunk_4
