Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaResub6?download=true
inline.NumInlined: 131
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Res6_ManReadPla:bb.a
  %indvars.iv.i.us.us.1.unr = phi i64 [ %indvars.iv.i.us.us.1.ph, %.lr.ph.i.us.us.1.preheader ], [ %indvars.iv.next.i.us.us.1.prol, %.lr.ph.i.us.us.1.prol ]
  %i.he = sub nsw i64 %indvars.iv.i.us.us.1.ph, %wide.trip.count.i
  %i.hf = icmp ugt i64 %i.he, -4
  br i1 %i.hf, label %Abc_TtCopy.exit.us.us.1, label %.lr.ph.i.us.us.1

.lr.ph.i.us.us.1:                                 ; preds = %.lr.ph.i.us.us.1.prol.loopexit, %.lr.ph.i.us.us.1
  %indvars.iv.i.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1.3, %.lr.ph.i.us.us.1 ], [ %indvars.iv.i.us.us.1.unr, %.lr.ph.i.us.us.1.prol.loopexit ] ; 6 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.us.us.1
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !46
  %i.hi = xor i64 %i.hh, -1
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i.us.us.1
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.1, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.us.us.1
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !46
  %i.hm = xor i64 %i.hl, -1
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.us.us.1
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.i.us.us.1, 2 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.us.us.1.1
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !46
  %i.hq = xor i64 %i.hp, -1
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.us.us.1.1
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.2 = add nuw nsw i64 %indvars.iv.i.us.us.1, 3 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.us.us.1.2
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !46
  %i.hu = xor i64 %i.ht, -1
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.us.us.1.2
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.3 = add nuw nsw i64 %indvars.iv.i.us.us.1, 4 ; 2 uses
  %exitcond.not.i.us.us.1.3 = icmp eq i64 %indvars.iv.next.i.us.us.1.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.3, label %Abc_TtCopy.exit.us.us.1, label %.lr.ph.i.us.us.1, !llvm.loop !56

Abc_TtCopy.exit.us.us.1:                          ; preds = %.lr.ph.i.us.us.1.prol.loopexit, %.lr.ph.i.us.us.1, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %.preheader100, label %.lr.ph18.i.us.us.preheader, !llvm.loop !57

.preheader100:                                    ; preds = %Abc_TtCopy.exit.us.us.1, %.preheader102.lr.ph, %.preheader103
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !58 ; 2 uses
  %i.hy = shl nuw nsw i32 1, %i.hx
  %.not127 = icmp eq i32 %i.hx, 31
  br i1 %.not127, label %.preheader99, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader100
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !59
  %i.ib = load i32, ptr %i.ae, align 4, !tbaa !19 ; 3 uses
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  %wide.trip.count24.i65 = zext i32 %i.ib to i64  ; 7 uses
  br i1 %i.ic, label %.lr.ph18.preheader.i64.preheader, label %.preheader99

.lr.ph18.preheader.i64.preheader:                 ; preds = %.lr.ph
  %.val203 = ptrtoaddr ptr %.val to i64
  %wide.trip.count139 = zext nneg i32 %i.hy to i64
  %i.id = mul nsw i64 %wide.trip.count24.i65, -8
  %min.iters.check206 = icmp ult i32 %i.ib, 4
  %n.vec208 = and i64 %wide.trip.count24.i65, 2147483644 ; 3 uses
  %cmp.n215 = icmp eq i64 %n.vec208, %wide.trip.count24.i65
  %xtraiter223 = and i64 %wide.trip.count24.i65, 3 ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br label %.lr.ph18.preheader.i64

.lr.ph18.preheader.i64:                           ; preds = %.lr.ph18.preheader.i64.preheader, %Abc_TtCopy.exit70.loopexit
  %indvars.iv136 = phi i64 [ 0, %.lr.ph18.preheader.i64.preheader ], [ %indvars.iv.next137, %Abc_TtCopy.exit70.loopexit ] ; 4 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv136
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !45 ; 7 uses
  %i.ig = mul nuw nsw i64 %indvars.iv136, %wide.trip.count24.i65
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ig ; 6 uses
  br i1 %min.iters.check206, label %.lr.ph18.i66.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph18.preheader.i64
  %i.ii = ptrtoaddr ptr %i.if to i64
  %i.ij = mul i64 %i.id, %indvars.iv136
  %i.ik = sub i64 %i.ij, %.val203
  %i.il = add i64 %i.ik, %i.ii
  %i.im = add i64 %i.il, -1
  %diff.check204 = icmp ult i64 %i.im, 31
  br i1 %diff.check204, label %.lr.ph18.i66.preheader, label %vector.body209

vector.body209:                                   ; preds = %vector.memcheck202, %vector.body209
  %index210 = phi i64 [ %index.next213, %vector.body209 ], [ 0, %vector.memcheck202 ] ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %index210 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %wide.load211 = load <2 x i64>, ptr %i.in, align 8, !tbaa !46
  %wide.load212 = load <2 x i64>, ptr %i.io, align 8, !tbaa !46
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index210 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x i64> %wide.load211, ptr %i.ip, align 8, !tbaa !46
  store <2 x i64> %wide.load212, ptr %i.iq, align 8, !tbaa !46
  %index.next213 = add nuw i64 %index210, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.ir, label %middle.block214, label %vector.body209, !llvm.loop !60

middle.block214:                                  ; preds = %vector.body209
  br i1 %cmp.n215, label %Abc_TtCopy.exit70.loopexit, label %.lr.ph18.i66.preheader

.lr.ph18.i66.preheader:                           ; preds = %vector.memcheck202, %.lr.ph18.preheader.i64, %middle.block214
  %indvars.iv21.i67.ph = phi i64 [ 0, %vector.memcheck202 ], [ 0, %.lr.ph18.preheader.i64 ], [ %n.vec208, %middle.block214 ] ; 3 uses
  br i1 %lcmp.mod224.not, label %.lr.ph18.i66.prol.loopexit, label %.lr.ph18.i66.prol

.lr.ph18.i66.prol:                                ; preds = %.lr.ph18.i66.preheader, %.lr.ph18.i66.prol
  %indvars.iv21.i67.prol = phi i64 [ %indvars.iv.next22.i68.prol, %.lr.ph18.i66.prol ], [ %indvars.iv21.i67.ph, %.lr.ph18.i66.preheader ] ; 3 uses
  %prol.iter225 = phi i64 [ %prol.iter225.next, %.lr.ph18.i66.prol ], [ 0, %.lr.ph18.i66.preheader ]
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv21.i67.prol
  %i.it = load i64, ptr %i.is, align 8, !tbaa !46
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv21.i67.prol
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !46
  %indvars.iv.next22.i68.prol = add nuw nsw i64 %indvars.iv21.i67.prol, 1 ; 2 uses
  %prol.iter225.next = add i64 %prol.iter225, 1   ; 2 uses
  %prol.iter225.cmp.not = icmp eq i64 %prol.iter225.next, %xtraiter223
  br i1 %prol.iter225.cmp.not, label %.lr.ph18.i66.prol.loopexit, label %.lr.ph18.i66.prol, !llvm.loop !61

.lr.ph18.i66.prol.loopexit:                       ; preds = %.lr.ph18.i66.prol, %.lr.ph18.i66.preheader
  %indvars.iv21.i67.unr = phi i64 [ %indvars.iv21.i67.ph, %.lr.ph18.i66.preheader ], [ %indvars.iv.next22.i68.prol, %.lr.ph18.i66.prol ]
  %i.iv = sub nsw i64 %indvars.iv21.i67.ph, %wide.trip.count24.i65
  %i.iw = icmp ugt i64 %i.iv, -4
  br i1 %i.iw, label %Abc_TtCopy.exit70.loopexit, label %.lr.ph18.i66

.lr.ph18.i66:                                     ; preds = %.lr.ph18.i66.prol.loopexit, %.lr.ph18.i66
  %indvars.iv21.i67 = phi i64 [ %indvars.iv.next22.i68.3, %.lr.ph18.i66 ], [ %indvars.iv21.i67.unr, %.lr.ph18.i66.prol.loopexit ] ; 6 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv21.i67
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !46
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv21.i67
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !46
  %indvars.iv.next22.i68 = add nuw nsw i64 %indvars.iv21.i67, 1 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next22.i68
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !46
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next22.i68
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !46
  %indvars.iv.next22.i68.1 = add nuw nsw i64 %indvars.iv21.i67, 2 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next22.i68.1
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !46
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next22.i68.1
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !46
  %indvars.iv.next22.i68.2 = add nuw nsw i64 %indvars.iv21.i67, 3 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next22.i68.2
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !46
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next22.i68.2
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !46
  %indvars.iv.next22.i68.3 = add nuw nsw i64 %indvars.iv21.i67, 4 ; 2 uses
  %exitcond25.not.i69.3 = icmp eq i64 %indvars.iv.next22.i68.3, %wide.trip.count24.i65
  br i1 %exitcond25.not.i69.3, label %Abc_TtCopy.exit70.loopexit, label %.lr.ph18.i66, !llvm.loop !62

Abc_TtCopy.exit70.loopexit:                       ; preds = %.lr.ph18.i66.prol.loopexit, %.lr.ph18.i66, %middle.block214
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.preheader99, label %.lr.ph18.preheader.i64, !llvm.loop !63

.preheader99:                                     ; preds = %Abc_TtCopy.exit70.loopexit, %.preheader100, %.lr.ph
  %.val58107 = load i32, ptr %i.bf, align 4, !tbaa !27
  %i.jj = icmp sgt i32 %.val58107, 0
  br i1 %i.jj, label %.lr.ph109, label %.critedge

.lr.ph109:                                        ; preds = %.preheader99
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ev, i64 120 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ev, i64 124 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ev, i64 128 ; 2 uses
  %.promoted = load i32, ptr %i.jl, align 4, !tbaa !27
  %.promoted111 = load i32, ptr %i.jk, align 8, !tbaa !30
  %.promoted114 = load ptr, ptr %i.jm, align 8, !tbaa !31
  %i.jn = sext i32 %.promoted to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph109, %Vec_IntPush.exit
  %indvars.iv143 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next144, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv141 = phi i64 [ %i.jn, %.lr.ph109 ], [ %indvars.iv.next142, %Vec_IntPush.exit ] ; 7 uses
  %i.jo = phi ptr [ %.promoted114, %.lr.ph109 ], [ %i.ke, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i113 = phi i32 [ %.promoted111, %.lr.ph109 ], [ %spec.select.sink.i112, %Vec_IntPush.exit ] ; 3 uses
  %.val60 = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv143
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !8
  %i.jr = add nsw i32 %i.jq, 1
  %i.js = trunc nsw i64 %indvars.iv141 to i32
  %i.jt = icmp eq i32 %spec.select.sink.i113, %i.js
  br i1 %i.jt, label %bb.aj, label %Vec_IntPush.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ju = icmp slt i64 %indvars.iv141, 16
  br i1 %i.ju, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %.not9.i.i = icmp eq ptr %i.jo, null
  br i1 %.not9.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.jo, i64 noundef 64) #24
  br label %Vec_IntPush.exit

bb.am:                                            ; preds = %bb.ak
  %i.jw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit

bb.an:                                            ; preds = %bb.aj
  %i.jx = icmp samesign ult i64 %indvars.iv141, 1073741823
  %indvars.iv141.tr = trunc i64 %indvars.iv141 to i32
  %i.jy = shl nsw i32 %indvars.iv141.tr, 1
  %spec.select.i = select i1 %i.jx, i32 %i.jy, i32 2147483647 ; 4 uses
  %i.jz = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv141, %i.jz
  br i1 %.not.i9.i, label %bb.ao, label %Vec_IntPush.exit

bb.ao:                                            ; preds = %bb.an
  %.not9.i10.i = icmp eq ptr %i.jo, null
  %i.ka = zext nneg i32 %spec.select.i to i64
  %i.kb = shl nuw nsw i64 %i.ka, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kc = tail call ptr @realloc(ptr noundef nonnull %i.jo, i64 noundef %i.kb) #24
  br label %Vec_IntPush.exit

bb.aq:                                            ; preds = %bb.ao
  %i.kd = tail call noalias ptr @malloc(i64 noundef %i.kb) #21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.am, %bb.al, %bb.aq, %bb.ap, %bb.ai, %bb.an
  %i.ke = phi ptr [ %i.jo, %bb.ai ], [ %i.jo, %bb.an ], [ %i.jw, %bb.am ], [ %i.jv, %bb.al ], [ %i.kc, %bb.ap ], [ %i.kd, %bb.aq ] ; 3 uses
  %spec.select.sink.i112 = phi i32 [ %spec.select.sink.i113, %bb.ai ], [ %spec.select.sink.i113, %bb.an ], [ 16, %bb.am ], [ 16, %bb.al ], [ %spec.select.i, %bb.ap ], [ %spec.select.i, %bb.aq ] ; 2 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %indvars.iv141
  store i32 %i.jr, ptr %i.kf, align 4, !tbaa !8
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %.val58 = load i32, ptr %i.bf, align 4, !tbaa !27
  %i.kg = sext i32 %.val58 to i64
  %i.kh = icmp slt i64 %indvars.iv.next144, %i.kg
  br i1 %i.kh, label %bb.ai, label %..critedge.loopexit_crit_edge, !llvm.loop !64

..critedge.loopexit_crit_edge:                    ; preds = %Vec_IntPush.exit
  %i.ki = trunc nsw i64 %indvars.iv.next142 to i32
  store i32 %i.ki, ptr %i.jl, align 4, !tbaa !27
  store i32 %spec.select.sink.i112, ptr %i.jk, align 8
  store ptr %i.ke, ptr %i.jm, align 8
  %.pre157 = load ptr, ptr %i.bn, align 8, !tbaa !33
  br label %.critedge

.critedge:                                        ; preds = %.preheader99, %..critedge.loopexit_crit_edge
  %i.kj = phi ptr [ %.pre157, %..critedge.loopexit_crit_edge ], [ %i.bj, %.preheader99 ] ; 5 uses
  %.not55 = icmp eq ptr %i.kj, null
  br i1 %.not55, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.kk = getelementptr i8, ptr %i.kj, i64 4      ; 2 uses
  %.val57116 = load i32, ptr %i.kk, align 4, !tbaa !27
  %i.kl = icmp sgt i32 %.val57116, 0
  br i1 %i.kl, label %.lr.ph118, label %.preheader..critedge2_crit_edge

.preheader..critedge2_crit_edge:                  ; preds = %.preheader
  %.phi.trans.insert = getelementptr i8, ptr %i.ev, i64 76
  %.val61.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !27
  %.phi.trans.insert159 = getelementptr i8, ptr %i.ev, i64 80
  %.val62.pre = load ptr, ptr %.phi.trans.insert159, align 8, !tbaa !31
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %.pre162 = load i32, ptr %.phi.trans.insert161, align 8, !tbaa !30
  br label %.critedge2

.lr.ph118:                                        ; preds = %.preheader
  %i.km = getelementptr i8, ptr %i.kj, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ev, i64 72 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ev, i64 76 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ev, i64 80 ; 2 uses
  %.promoted119 = load i32, ptr %i.ko, align 4, !tbaa !27
  %.promoted121 = load i32, ptr %i.kn, align 8, !tbaa !30
  %.promoted124 = load ptr, ptr %i.kp, align 8, !tbaa !31
  %i.kq = sext i32 %.promoted119 to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph118, %Vec_IntPush.exit78
  %indvars.iv150 = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next151, %Vec_IntPush.exit78 ] ; 2 uses
  %indvars.iv148 = phi i64 [ %i.kq, %.lr.ph118 ], [ %indvars.iv.next149, %Vec_IntPush.exit78 ] ; 7 uses
  %i.kr = phi ptr [ %.promoted124, %.lr.ph118 ], [ %i.lg, %Vec_IntPush.exit78 ] ; 6 uses
  %spec.select.sink.i75123 = phi i32 [ %.promoted121, %.lr.ph118 ], [ %spec.select.sink.i75122, %Vec_IntPush.exit78 ] ; 3 uses
  %.val59 = load ptr, ptr %i.km, align 8, !tbaa !31
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.val59, i64 %indvars.iv150
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !8
  %i.ku = trunc nsw i64 %indvars.iv148 to i32
  %i.kv = icmp eq i32 %spec.select.sink.i75123, %i.ku
  br i1 %i.kv, label %bb.as, label %Vec_IntPush.exit78

bb.as:                                            ; preds = %bb.ar
  %i.kw = icmp slt i64 %indvars.iv148, 16
  br i1 %i.kw, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %.not9.i.i76 = icmp eq ptr %i.kr, null
  br i1 %.not9.i.i76, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kx = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.kr, i64 noundef 64) #24
  br label %Vec_IntPush.exit78

bb.av:                                            ; preds = %bb.at
  %i.ky = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit78

bb.aw:                                            ; preds = %bb.as
  %i.kz = icmp samesign ult i64 %indvars.iv148, 1073741823
  %indvars.iv148.tr = trunc i64 %indvars.iv148 to i32
  %i.la = shl nsw i32 %indvars.iv148.tr, 1
  %spec.select.i71 = select i1 %i.kz, i32 %i.la, i32 2147483647 ; 4 uses
  %i.lb = sext i32 %spec.select.i71 to i64
  %.not.i9.i72 = icmp samesign ult i64 %indvars.iv148, %i.lb
  br i1 %.not.i9.i72, label %bb.ax, label %Vec_IntPush.exit78

bb.ax:                                            ; preds = %bb.aw
  %.not9.i10.i73 = icmp eq ptr %i.kr, null
  %i.lc = zext nneg i32 %spec.select.i71 to i64
  %i.ld = shl nuw nsw i64 %i.lc, 2                ; 2 uses
  br i1 %.not9.i10.i73, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.le = tail call ptr @realloc(ptr noundef nonnull %i.kr, i64 noundef %i.ld) #24
  br label %Vec_IntPush.exit78

bb.az:                                            ; preds = %bb.ax
  %i.lf = tail call noalias ptr @malloc(i64 noundef %i.ld) #21
  br label %Vec_IntPush.exit78

Vec_IntPush.exit78:                               ; preds = %bb.av, %bb.au, %bb.az, %bb.ay, %bb.ar, %bb.aw
  %i.lg = phi ptr [ %i.kr, %bb.ar ], [ %i.kr, %bb.aw ], [ %i.ky, %bb.av ], [ %i.kx, %bb.au ], [ %i.le, %bb.ay ], [ %i.lf, %bb.az ] ; 4 uses
  %spec.select.sink.i75122 = phi i32 [ %spec.select.sink.i75123, %bb.ar ], [ %spec.select.sink.i75123, %bb.aw ], [ 16, %bb.av ], [ 16, %bb.au ], [ %spec.select.i71, %bb.ay ], [ %spec.select.i71, %bb.az ] ; 3 uses
  %indvars.iv.next149 = add nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %indvars.iv148
  store i32 %i.kt, ptr %i.lh, align 4, !tbaa !8
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %.val57 = load i32, ptr %i.kk, align 4, !tbaa !27
  %i.li = sext i32 %.val57 to i64
  %i.lj = icmp slt i64 %indvars.iv.next151, %i.li
  br i1 %i.lj, label %bb.ar, label %..critedge2_crit_edge, !llvm.loop !65

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit78
  %i.lk = trunc nsw i64 %indvars.iv.next149 to i32 ; 2 uses
  store i32 %i.lk, ptr %i.ko, align 4, !tbaa !27
  store i32 %spec.select.sink.i75122, ptr %i.kn, align 8
  store ptr %i.lg, ptr %i.kp, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %.preheader..critedge2_crit_edge, %..critedge2_crit_edge
  %i.ll = phi i32 [ %.pre162, %.preheader..critedge2_crit_edge ], [ %spec.select.sink.i75122, %..critedge2_crit_edge ] ; 5 uses
  %.val62 = phi ptr [ %.val62.pre, %.preheader..critedge2_crit_edge ], [ %i.lg, %..critedge2_crit_edge ] ; 2 uses
  %.val61 = phi i32 [ %.val61.pre, %.preheader..critedge2_crit_edge ], [ %i.lk, %..critedge2_crit_edge ] ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.ln = getelementptr i8, ptr %i.ev, i64 76
  %i.lo = getelementptr i8, ptr %i.ev, i64 80     ; 2 uses
  %i.lp = sext i32 %.val61 to i64                 ; 2 uses
  %i.lq = getelementptr [4 x i8], ptr %.val62, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 -4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !8
  %i.lt = icmp eq i32 %.val61, %i.ll
  br i1 %i.lt, label %bb.ba, label %Vec_IntPush.exit86

bb.ba:                                            ; preds = %.critedge2
  %i.lu = icmp slt i32 %i.ll, 16
  br i1 %i.lu, label %Vec_IntGrow.exit11.sink.split.i82, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lv = icmp samesign ult i32 %i.ll, 1073741823
  %i.lw = shl nuw nsw i32 %i.ll, 1
  %spec.select.i79 = select i1 %i.lv, i32 %i.lw, i32 2147483647 ; 3 uses
  %.not.i9.i80 = icmp samesign ult i32 %i.ll, %spec.select.i79
  br i1 %.not.i9.i80, label %bb.bc, label %Vec_IntPush.exit86

bb.bc:                                            ; preds = %bb.bb
  %i.lx = zext nneg i32 %spec.select.i79 to i64
  %i.ly = shl nuw nsw i64 %i.lx, 2
  br label %Vec_IntGrow.exit11.sink.split.i82

Vec_IntGrow.exit11.sink.split.i82:                ; preds = %bb.ba, %bb.bc
  %.sink = phi i64 [ %i.ly, %bb.bc ], [ 64, %bb.ba ]
  %spec.select.sink.i83 = phi i32 [ %spec.select.i79, %bb.bc ], [ 16, %bb.ba ]
  %i.lz = tail call ptr @realloc(ptr noundef nonnull %.val62, i64 noundef %.sink) #24
  store ptr %i.lz, ptr %i.lo, align 8, !tbaa !31
  store i32 %spec.select.sink.i83, ptr %i.lm, align 8, !tbaa !30
  br label %Vec_IntPush.exit86

Vec_IntPush.exit86:                               ; preds = %.critedge2, %bb.bb, %Vec_IntGrow.exit11.sink.split.i82
  %i.ma = load ptr, ptr %i.lo, align 8, !tbaa !31
  %i.mb = add nsw i32 %.val61, 1
  store i32 %i.mb, ptr %i.ln, align 4, !tbaa !27
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.lp
  store i32 %i.ls, ptr %i.mc, align 4, !tbaa !8
  br label %bb.bd

bb.bd:                                            ; preds = %Vec_IntPush.exit86, %.critedge
  %i.md = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !31 ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.me, null
  br i1 %.not.i.i87, label %Vec_IntFree.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @free(ptr noundef nonnull %i.me) #22
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.be, %bb.bd
  tail call void @free(ptr noundef nonnull %i.kj) #22
  %i.mf = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.mf, null
  br i1 %.not.i6.i, label %Vec_IntFree.exit7.i, label %bb.bf

bb.bf:                                            ; preds = %Vec_IntFree.exit.i
  tail call void @free(ptr noundef nonnull %i.mf) #22
  br label %Vec_IntFree.exit7.i

Vec_IntFree.exit7.i:                              ; preds = %bb.bf, %Vec_IntFree.exit.i
  tail call void @free(ptr noundef nonnull %i.be) #22
  %i.mg = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !23 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.mi, null
  br i1 %.not.i8.i, label %Vec_WrdFree.exit.i, label %bb.bg

bb.bg:                                            ; preds = %Vec_IntFree.exit7.i
  tail call void @free(ptr noundef nonnull %i.mi) #22
  br label %Vec_WrdFree.exit.i

Vec_WrdFree.exit.i:                               ; preds = %bb.bg, %Vec_IntFree.exit7.i
  tail call void @free(ptr noundef nonnull %i.mg) #22
  %i.mj = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !23 ; 2 uses
  %.not.i9.i88 = icmp eq ptr %i.ml, null
  br i1 %.not.i9.i88, label %Abc_RDataStop.exit, label %bb.bh

bb.bh:                                            ; preds = %Vec_WrdFree.exit.i
  tail call void @free(ptr noundef nonnull %i.ml) #22
  br label %Abc_RDataStop.exit

Abc_RDataStop.exit:                               ; preds = %Vec_WrdFree.exit.i, %bb.bh
  tail call void @free(ptr noundef nonnull %i.mj) #22
  tail call void @free(ptr noundef nonnull %i.w) #22
  br label %.thread

.thread:                                          ; preds = %Abc_ReadPla.exit.thread, %bb.ah, %Abc_RDataStop.exit
  %.051 = phi ptr [ %i.ev, %Abc_RDataStop.exit ], [ null, %bb.ah ], [ null, %Abc_ReadPla.exit.thread ]
  ret ptr %.051
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Res6_ManStart(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #23 ; 21 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !66
  %i.b = add nsw i32 %0, 1
  %i.c = add nsw i32 %i.b, %1                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !40
  %i.e = add nsw i32 %i.c, 100                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %2, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %3, ptr %i.h, align 8, !tbaa !68
  %i.i = add nsw i32 %3, 63
  %i.j = sdiv i32 %i.i, 64                        ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.j, ptr %i.k, align 4, !tbaa !69
  %i.l = shl nsw i32 %i.e, 1                      ; 3 uses
  %i.m = mul nsw i32 %i.j, %i.l                   ; 5 uses
  %.not.i.i = icmp sgt i32 %i.m, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %Vec_WrdFill.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = zext nneg i32 %i.m to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #21 ; 3 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !23
  store i32 %i.m, ptr %i.n, align 8, !tbaa !20
  %i.s = zext nneg i32 %i.m to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.t, i1 false), !tbaa !46
  br label %Vec_WrdFill.exit

Vec_WrdFill.exit:                                 ; preds = %bb.a, %.lr.ph.i
  %.val4775 = phi ptr [ %i.r, %.lr.ph.i ], [ null, %bb.a ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.m, ptr %i.u, align 4, !tbaa !24
  %i.v = shl nuw i32 1, %2                        ; 3 uses
  %i.w = shl i32 %i.j, %2                         ; 5 uses
  %.not.i.i48 = icmp sgt i32 %i.w, 0
  br i1 %.not.i.i48, label %.lr.ph.i50, label %Vec_WrdFill.exit52

.lr.ph.i50:                                       ; preds = %Vec_WrdFill.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #21 ; 3 uses
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !23
  store i32 %i.w, ptr %i.x, align 8, !tbaa !20
  %i.ac = zext nneg i32 %i.w to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ad, i1 false), !tbaa !46
  br label %Vec_WrdFill.exit52
end_hunk_0
begin_hunk_1_@Res6_FindBestEval:bb.a
.lr.ph.i64:                                       ; preds = %._crit_edge
  %i.hk = getelementptr i8, ptr %1, i64 8
  %.val50 = load ptr, ptr %i.hk, align 8, !tbaa !31
  %i.hl = sext i32 %.val to i64
  %i.hm = getelementptr [4 x i8], ptr %.val50, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 -4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !8  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !44 ; 2 uses
  %i.hr = sext i32 %i.ho to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !45 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !59 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !45 ; 2 uses
  %i.hx = xor i32 %i.ho, 1
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !45 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !45 ; 2 uses
  %wide.trip.count.i65 = zext nneg i32 %i.hi to i64 ; 3 uses
  %min.iters.check144 = icmp ult i32 %i.hi, 4
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i64
  %n.vec146 = and i64 %wide.trip.count.i65, 2147483644 ; 3 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next158, %vector.body147 ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph145 ], [ %i.iv, %vector.body147 ]
  %vec.phi149 = phi <2 x i32> [ zeroinitializer, %vector.ph145 ], [ %i.iw, %vector.body147 ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index148 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %wide.load150 = load <2 x i64>, ptr %i.id, align 8, !tbaa !46
  %wide.load151 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !46
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %index148 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load152 = load <2 x i64>, ptr %i.if, align 8, !tbaa !46
  %wide.load153 = load <2 x i64>, ptr %i.ig, align 8, !tbaa !46
  %i.ih = and <2 x i64> %wide.load152, %wide.load150
  %i.ii = and <2 x i64> %wide.load153, %wide.load151
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index148 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load154 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !46
  %wide.load155 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !46
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %index148 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %wide.load156 = load <2 x i64>, ptr %i.il, align 8, !tbaa !46
  %wide.load157 = load <2 x i64>, ptr %i.im, align 8, !tbaa !46
  %i.in = and <2 x i64> %wide.load156, %wide.load154
  %i.io = and <2 x i64> %wide.load157, %wide.load155
  %i.ip = or <2 x i64> %i.in, %i.ih
  %i.iq = or <2 x i64> %i.io, %i.ii
  %i.ir = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ip)
  %i.is = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.iq)
  %i.it = trunc nuw nsw <2 x i64> %i.ir to <2 x i32>
  %i.iu = trunc nuw nsw <2 x i64> %i.is to <2 x i32>
  %i.iv = add <2 x i32> %vec.phi, %i.it           ; 2 uses
  %i.iw = add <2 x i32> %vec.phi149, %i.iu        ; 2 uses
  %index.next158 = add nuw i64 %index148, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next158, %n.vec146
  br i1 %i.ix, label %middle.block159, label %vector.body147, !llvm.loop !108

middle.block159:                                  ; preds = %vector.body147
  %bin.rdx = add <2 x i32> %i.iw, %i.iv
  %i.iy = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n160 = icmp eq i64 %n.vec146, %wide.trip.count.i65
  br i1 %cmp.n160, label %Res6_FindGetCost.exit, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.lr.ph.i64, %middle.block159
  %indvars.iv.i66.ph = phi i64 [ 0, %.lr.ph.i64 ], [ %n.vec146, %middle.block159 ]
  %.016.i.ph = phi i32 [ 0, %.lr.ph.i64 ], [ %i.iy, %middle.block159 ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv.i66 = phi i64 [ %indvars.iv.next.i67, %scalar.ph143 ], [ %indvars.iv.i66.ph, %scalar.ph143.preheader ] ; 5 uses
  %.016.i = phi i32 [ %i.jm, %scalar.ph143 ], [ %.016.i.ph, %scalar.ph143.preheader ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.i66
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !46
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.i66
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !46
  %i.jd = and i64 %i.jc, %i.ja
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i66
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !46
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i66
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !46
  %i.ji = and i64 %i.jh, %i.jf
  %i.jj = or i64 %i.ji, %i.jd
  %i.jk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jj)
  %i.jl = trunc nuw nsw i64 %i.jk to i32
  %i.jm = add nuw nsw i32 %.016.i, %i.jl          ; 2 uses
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, %wide.trip.count.i65
  br i1 %exitcond.not.i68, label %Res6_FindGetCost.exit, label %scalar.ph143, !llvm.loop !109

Res6_FindGetCost.exit:                            ; preds = %scalar.ph143, %middle.block159, %._crit_edge
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.iy, %middle.block159 ], [ %i.jm, %scalar.ph143 ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: nofree nounwind uwtable
define void @Res6_ManResubVerify(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @Res6_FindBestEval(ptr noundef %0, ptr noundef %1, i32 noundef 0) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.a, i32 noundef %i.d) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @Res6_ManResubCheck(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [1000 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %1) #22 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %0) #22 ; 0 uses
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.24, i64 5, i1 false) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = call ptr @Res6_ManRead(ptr noundef %0)   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.i = call noalias ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str) ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Res6_ManReadSol.exit.thread, label %.preheader.i

Res6_ManReadSol.exit.thread:                      ; preds = %bb.d
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.s

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.l = call i32 @fgetc(ptr noundef nonnull %i.i)
  %.not.i = icmp eq i32 %i.l, 10
  br i1 %.not.i, label %bb.e, label %.preheader.i, !llvm.loop !110

bb.e:                                             ; preds = %.preheader.i
  %i.m = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !27
  store i32 16, ptr %i.m, align 8, !tbaa !30
  %i.o = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !31
  %i.q = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a) #22
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %.lr.ph.i, label %Res6_ManReadSol.exit

.lr.ph.i:                                         ; preds = %bb.e, %Vec_IntPush.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Vec_IntPush.exit.i ], [ 0, %bb.e ] ; 6 uses
  %storemerge12.i = phi ptr [ %storemerge13.i, %Vec_IntPush.exit.i ], [ %i.o, %bb.e ] ; 6 uses
  %spec.select.sink.i10.i = phi i32 [ %spec.select.sink.i9.i, %Vec_IntPush.exit.i ], [ 16, %bb.e ] ; 4 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !8
  %i.t = trunc nsw i64 %indvars.iv.i to i32
  %i.u = icmp eq i32 %spec.select.sink.i10.i, %i.t
  br i1 %i.u, label %bb.f, label %Vec_IntPush.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = icmp samesign ult i64 %indvars.iv.i, 16
  br i1 %i.v, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i.i = icmp eq ptr %storemerge12.i, null
  br i1 %.not9.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge12.i, i64 noundef 64) #24
  br label %Vec_IntPush.exit.i

bb.i:                                             ; preds = %bb.g
  %i.x = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit.i

bb.j:                                             ; preds = %bb.f
  %i.y = icmp samesign ult i64 %indvars.iv.i, 1073741823
  %i.z = shl nuw nsw i32 %spec.select.sink.i10.i, 1
  %spec.select.i.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %3 = zext nneg i32 %spec.select.i.i to i64
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv.i, %3
  br i1 %.not.i9.i.i, label %bb.k, label %Vec_IntPush.exit.i

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i.i = icmp eq ptr %storemerge12.i, null
  %i.aa = zext nneg i32 %spec.select.i.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = call ptr @realloc(ptr noundef nonnull %storemerge12.i, i64 noundef %i.ab) #24
  br label %Vec_IntPush.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ad = call noalias ptr @malloc(i64 noundef %i.ab) #21
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %.lr.ph.i
  %storemerge13.i = phi ptr [ %storemerge12.i, %.lr.ph.i ], [ %storemerge12.i, %bb.j ], [ %i.x, %bb.i ], [ %i.w, %bb.h ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ] ; 4 uses
  %spec.select.sink.i9.i = phi i32 [ %spec.select.sink.i10.i, %.lr.ph.i ], [ %spec.select.sink.i10.i, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i.i, %bb.l ], [ %spec.select.i.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %storemerge13.i, i64 %indvars.iv.i
  store i32 %i.s, ptr %i.ae, align 4, !tbaa !8
  %i.af = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a) #22
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !111

._crit_edge.i:                                    ; preds = %Vec_IntPush.exit.i
  %i.ah = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.ah, ptr %i.n, align 4, !tbaa !27
  store i32 %spec.select.sink.i9.i, ptr %i.m, align 8
  store ptr %storemerge13.i, ptr %i.p, align 8
  br label %Res6_ManReadSol.exit

Res6_ManReadSol.exit:                             ; preds = %bb.e, %._crit_edge.i
  %i.ai = phi ptr [ %i.o, %bb.e ], [ %storemerge13.i, %._crit_edge.i ] ; 2 uses
  %i.aj = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ak = icmp eq ptr %i.h, null
  br i1 %i.ak, label %bb.s, label %bb.n

bb.n:                                             ; preds = %Res6_ManReadSol.exit
  %.not19 = icmp eq i32 %2, 0
  br i1 %.not19, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %i.h, align 8, !tbaa !66  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !40 ; 2 uses
  %i.ao = xor i32 %i.al, -1
  %i.ap = add i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !68
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.al, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.at) ; 0 uses
  call void @Res6_PrintSolution(ptr noundef nonnull %i.m, i32 noundef %i.an)
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o
  %i.av = call i32 @Res6_FindBestEval(ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.m, i32 noundef 0) ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %Res6_ManResubVerify.exit

bb.q:                                             ; preds = %.critedge
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !68
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.av, i32 noundef %i.ay) ; 0 uses
  br label %Res6_ManResubVerify.exit

Res6_ManResubVerify.exit:                         ; preds = %bb.p, %bb.q
  %.not.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i20, label %Vec_IntFree.exit, label %bb.r

bb.r:                                             ; preds = %Res6_ManResubVerify.exit
  call void @free(ptr noundef nonnull %i.ai) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Res6_ManResubVerify.exit, %bb.r
  call void @free(ptr noundef nonnull %i.m) #22
  call fastcc void @Res6_ManStop(ptr noundef nonnull %i.h)
  br label %bb.s

bb.s:                                             ; preds = %Res6_ManReadSol.exit.thread, %Res6_ManReadSol.exit, %Vec_IntFree.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Res6_FindBestEvalPla(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 124
  %.val66 = load i32, ptr %i.a, align 4, !tbaa !27 ; 3 uses
  %i.b = shl i32 %.val66, 1
  %i.c = add i32 %i.b, 2
  %i.d = icmp sgt i32 %.val66, 0
  br i1 %i.d, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 128
  %.val69 = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  %wide.trip.count24.i = zext i32 %i.i to i64     ; 10 uses
  br i1 %i.j, label %.split.preheader, label %.critedge.preheader

.split.preheader:                                 ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val66 to i64
  %min.iters.check116 = icmp ult i32 %i.i, 4
  %n.vec118 = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  %cmp.n125 = icmp eq i64 %n.vec118, %wide.trip.count24.i
  %xtraiter = and i64 %wide.trip.count24.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count24.i
  %xtraiter230 = and i64 %wide.trip.count24.i, 3  ; 2 uses
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br label %.split

.critedge.preheader:                              ; preds = %Abc_TtCopy.exit.loopexit.1, %.lr.ph, %bb.a
  %i.k = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.k, align 4, !tbaa !27  ; 3 uses
  %i.l = icmp sgt i32 %.val, 1
  br i1 %i.l, label %.critedge2.lr.ph, label %.critedge.preheader..critedge._crit_edge_crit_edge

.critedge.preheader..critedge._crit_edge_crit_edge: ; preds = %.critedge.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !69
  br label %.critedge._crit_edge

.critedge2.lr.ph:                                 ; preds = %.critedge.preheader
  %i.m = getelementptr i8, ptr %1, i64 8
  %.val68 = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = sext i32 %i.c to i64
  %i.q = zext nneg i32 %.val to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !44   ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.r, i64 %i.p
  %i.s = load i32, ptr %i.o, align 4, !tbaa !69   ; 8 uses
  %i.t = icmp sgt i32 %i.s, 0                     ; 2 uses
  %wide.trip.count.i74 = zext nneg i32 %i.s to i64 ; 10 uses
  %min.iters.check185 = icmp ult i32 %i.s, 6
  %n.vec187 = and i64 %wide.trip.count.i74, 2147483644 ; 3 uses
  %cmp.n196 = icmp eq i64 %n.vec187, %wide.trip.count.i74
  %xtraiter233 = and i64 %wide.trip.count.i74, 3  ; 2 uses
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  %min.iters.check167 = icmp ult i32 %i.s, 6
  %n.vec169 = and i64 %wide.trip.count.i74, 2147483644 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec169, %wide.trip.count.i74
  %xtraiter236 = and i64 %wide.trip.count.i74, 3  ; 2 uses
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  %wide.trip.count28.i = zext nneg i32 %i.s to i64 ; 10 uses
  %min.iters.check149 = icmp ult i32 %i.s, 6
  %n.vec151 = and i64 %wide.trip.count28.i, 2147483644 ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec151, %wide.trip.count28.i
  %xtraiter239 = and i64 %wide.trip.count28.i, 3  ; 2 uses
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  %min.iters.check131 = icmp ult i32 %i.s, 6
  %n.vec133 = and i64 %wide.trip.count28.i, 2147483644 ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec133, %wide.trip.count28.i
  %xtraiter242 = and i64 %wide.trip.count28.i, 1
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  %i.u = add nsw i64 %wide.trip.count28.i, -1
  br label %.critedge2

.split:                                           ; preds = %.split.preheader, %Abc_TtCopy.exit.loopexit.1
  %indvars.iv = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next, %Abc_TtCopy.exit.loopexit.1 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val69, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  %i.x = shl nsw i32 %i.w, 1
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.z = shl i32 %indvars.iv.tr, 1
  %i.aa = add i32 %i.z, 2
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 7 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.y
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 7 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %diff.check114 = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check116, i1 true, i1 %diff.check114
  br i1 %or.cond, label %.lr.ph18.i.preheader, label %vector.body119
end_hunk_1
