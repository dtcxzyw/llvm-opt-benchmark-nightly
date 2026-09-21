Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN2OT13tuple_delta_t17compile_point_setERK11hb_vector_tIbLb0EERS1_IhLb0EE:bb.a
  %.not9.i.i.i.i125 = icmp eq ptr %i.at, null
  br i1 %.not9.i.i.i.i125, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i118, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = zext i32 %i.aq to i64
  %i.av = tail call ptr @hb_malloc(i64 noundef %i.au) #18 ; 4 uses
  %.not10.i.i.i.i126 = icmp eq ptr %i.av, null
  br i1 %.not10.i.i.i.i126, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i122, label %bb.o, !prof !103

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !348 ; 2 uses
  %.not.i.i.i.i.i127 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i127, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i120, label %bb.p, !prof !103

bb.p:                                             ; preds = %bb.o
  %i.ay = zext i32 %i.ax to i64
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr readonly align 1 %i.az, i64 %i.ay, i1 false), !alias.scope !1449
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i120

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i118: ; preds = %bb.m, %.thread39.i.i
  %i.ba = phi ptr [ null, %bb.m ], [ %i.at, %.thread39.i.i ]
  %i.bb = zext i32 %i.aq to i64
  %i.bc = tail call ptr @hb_realloc(ptr noundef %i.ba, i64 noundef %i.bb) #18 ; 2 uses
  %.not22.i.i119 = icmp eq ptr %i.bc, null
  br i1 %.not22.i.i119, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i122, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i120, !prof !165

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i122: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i118, %bb.n
  %i.bd = load i32, ptr %1, align 8, !tbaa !347   ; 2 uses
  %.not23.i.i123 = icmp ugt i32 %i.aq, %i.bd
  br i1 %.not23.i.i123, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i124, label %bb.q, !prof !243

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i120: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i118, %bb.p, %bb.o
  %.1.i.i52.i.i121 = phi ptr [ %i.bc, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i118 ], [ %i.av, %bb.o ], [ %i.av, %bb.p ]
  store ptr %.1.i.i52.i.i121, ptr %i.as, align 8, !tbaa !349
  store i32 %i.aq, ptr %1, align 8, !tbaa !347
  br label %bb.q

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i124:       ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i122
  %i.be = xor i32 %i.bd, -1
  store i32 %i.be, ptr %1, align 8, !tbaa !347
  br label %_ZN11hb_vector_tIhLb0EE6resizeEi.exit

bb.q:                                             ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i120, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i122, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i32 %i.ak, ptr %i.bf, align 4, !tbaa !348
  %i.bg = icmp ult i32 %spec.select.lcssa, 128
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = trunc nuw nsw i32 %spec.select.lcssa to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !349
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !277
  br label %.lr.ph213

bb.s:                                             ; preds = %bb.q
  %i.bk = lshr i32 %spec.select.lcssa, 8
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = or i8 %i.bl, -128
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !349
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !277
  %i.bp = trunc i32 %spec.select.lcssa to i8
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !349
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !277
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.r, %bb.s
  %.098 = phi i32 [ 1, %bb.r ], [ 2, %bb.s ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph213, %bb.ac
  %.087211 = phi i32 [ 0, %.lr.ph213 ], [ %.188168, %bb.ac ]
  %.090210 = phi i32 [ 0, %.lr.ph213 ], [ %.191173, %bb.ac ]
  %.094209 = phi i32 [ 0, %.lr.ph213 ], [ %.4155, %bb.ac ]
  %.199208 = phi i32 [ %.098, %.lr.ph213 ], [ %.2100180, %bb.ac ] ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !349
  %i.bu = add i32 %.199208, 1
  %i.bv = zext i32 %.199208 to i64                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  store i8 0, ptr %i.bw, align 1, !tbaa !277
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.aa
  %.0207 = phi i1 [ true, %bb.t ], [ false, %bb.aa ]
  %.082206 = phi i8 [ 0, %bb.t ], [ %.183, %bb.aa ] ; 3 uses
  %.084205 = phi i32 [ 0, %bb.t ], [ %i.cz, %bb.aa ] ; 5 uses
  %.188204 = phi i32 [ %.087211, %bb.t ], [ %i.da, %bb.aa ] ; 5 uses
  %.191203 = phi i32 [ %.090210, %bb.t ], [ %i.ch, %bb.aa ] ; 4 uses
  %.195202 = phi i32 [ %.094209, %bb.t ], [ %i.cy, %bb.aa ] ; 3 uses
  %.2100201 = phi i32 [ %i.bu, %bb.t ], [ %i.cv, %bb.aa ] ; 7 uses
  %i.bx = icmp ult i32 %.188204, %spec.select.lcssa
  %i.by = icmp samesign ult i32 %.084205, 128
  %or.cond5 = select i1 %i.bx, i1 %i.by, i1 false
  %i.bz = icmp ult i32 %.195202, %i.d
  %or.cond216 = and i1 %or.cond5, %i.bz
  br i1 %or.cond216, label %.lr.ph188, label %.critedge

.lr.ph188:                                        ; preds = %bb.u
  %i.ca = load i32, ptr %i.c, align 4, !tbaa !473
  %i.cb = load ptr, ptr %i.a, align 8
  %i.cc = zext i32 %.195202 to i64
  %i.cd = zext i32 %i.ca to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph188, %bb.w
  %indvars.iv = phi i64 [ %i.cc, %.lr.ph188 ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.cd
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %.0.i = select i1 %.not.i, ptr %i.ce, ptr @_hb_NullPool, !prof !207
  %i.cf = load i8, ptr %.0.i, align 1, !tbaa !212, !range !201, !noundef !210
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %bb.v, !llvm.loop !1443

bb.x:                                             ; preds = %bb.v
  %i.ch = trunc nuw i64 %indvars.iv to i32        ; 5 uses
  %i.ci = sub i32 %i.ch, %.191203                 ; 4 uses
  %i.cj = icmp ult i32 %i.ci, 256
  %i.ck = zext i1 %i.cj to i8
  %.183 = select i1 %.0207, i8 %i.ck, i8 %.082206 ; 3 uses
  %i.cl = trunc nuw i8 %.183 to i1                ; 2 uses
  %i.cm = icmp ugt i32 %i.ci, 255
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %.critedge.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.cl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = lshr i32 %i.ci, 8
  %i.co = trunc i32 %i.cn to i8
  %i.cp = load ptr, ptr %i.bs, align 8, !tbaa !349
  %i.cq = add i32 %.2100201, 1
  %i.cr = zext i32 %.2100201 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !277
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sink271 = phi i32 [ 2, %bb.z ], [ 1, %bb.y ]
  %.2100201.sink = phi i32 [ %i.cq, %bb.z ], [ %.2100201, %bb.y ]
  %i.ct = trunc i32 %i.ci to i8
  %i.cu = load ptr, ptr %i.bs, align 8, !tbaa !349
  %i.cv = add i32 %.2100201, %.sink271            ; 2 uses
  %i.cw = zext i32 %.2100201.sink to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  store i8 %i.ct, ptr %i.cx, align 1, !tbaa !277
  %i.cy = add nuw i32 %i.ch, 1                    ; 3 uses
  %i.cz = add nuw nsw i32 %.084205, 1             ; 2 uses
  %i.da = add nuw i32 %.188204, 1                 ; 2 uses
  %i.db = icmp ult i32 %i.cy, %i.d
  br i1 %i.db, label %bb.u, label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.aa, %bb.w
  %.2100182 = phi i32 [ %.2100201, %bb.w ], [ %.2100201, %bb.u ], [ %i.cv, %bb.aa ] ; 2 uses
  %.191175 = phi i32 [ %.191203, %bb.w ], [ %.191203, %bb.u ], [ %i.ch, %bb.aa ] ; 2 uses
  %.188170 = phi i32 [ %.188204, %bb.w ], [ %.188204, %bb.u ], [ %i.da, %bb.aa ] ; 2 uses
  %.084164 = phi i32 [ %.084205, %bb.w ], [ %.084205, %bb.u ], [ %i.cz, %bb.aa ] ; 2 uses
  %.082161 = phi i8 [ %.082206, %bb.w ], [ %.082206, %bb.u ], [ %.183, %bb.aa ]
  %.4 = phi i32 [ %i.d, %bb.w ], [ %.195202, %bb.u ], [ %i.cy, %bb.aa ] ; 2 uses
  %i.dc = trunc nuw i8 %.082161 to i1
  br i1 %i.dc, label %.critedge.thread, label %bb.ab

.critedge.thread:                                 ; preds = %bb.x, %.critedge
  %.2100181 = phi i32 [ %.2100182, %.critedge ], [ %.2100201, %bb.x ]
  %.191174 = phi i32 [ %.191175, %.critedge ], [ %.191203, %bb.x ]
  %.188169 = phi i32 [ %.188170, %.critedge ], [ %.188204, %bb.x ]
  %.084165 = phi i32 [ %.084164, %.critedge ], [ %.084205, %bb.x ]
  %.4156 = phi i32 [ %.4, %.critedge ], [ %i.ch, %bb.x ]
  %i.dd = trunc i32 %.084165 to i8
  %i.de = add i8 %i.dd, -1
  br label %bb.ac

bb.ab:                                            ; preds = %.critedge
  %i.df = trunc i32 %.084164 to i8
  %i.dg = add i8 %i.df, 127
  %i.dh = or i8 %i.dg, -128
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge.thread
  %.sink = phi i8 [ %i.dh, %bb.ab ], [ %i.de, %.critedge.thread ]
  %.2100180 = phi i32 [ %.2100182, %bb.ab ], [ %.2100181, %.critedge.thread ] ; 5 uses
  %.191173 = phi i32 [ %.191175, %bb.ab ], [ %.191174, %.critedge.thread ]
  %.188168 = phi i32 [ %.188170, %bb.ab ], [ %.188169, %.critedge.thread ] ; 2 uses
  %.4155 = phi i32 [ %.4, %bb.ab ], [ %.4156, %.critedge.thread ] ; 2 uses
  %i.di = load ptr, ptr %i.bs, align 8, !tbaa !349
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.bv
  store i8 %.sink, ptr %i.dj, align 1, !tbaa !277
  %i.dk = icmp ult i32 %.4155, %i.d
  %i.dl = icmp ult i32 %.188168, %spec.select.lcssa
  %2 = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %2, label %bb.t, label %._crit_edge214, !llvm.loop !1444

._crit_edge214:                                   ; preds = %bb.ac
  %i.dm = icmp slt i32 %.2100180, 0
  br i1 %i.dm, label %_ZN11hb_vector_tIhLb0EE6resizeEi.exit, label %bb.ad, !prof !103

bb.ad:                                            ; preds = %._crit_edge214
  %i.dn = load i32, ptr %1, align 8, !tbaa !347   ; 4 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %_ZN11hb_vector_tIhLb0EE6resizeEi.exit, label %bb.ae, !prof !103

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i128 = icmp samesign ugt i32 %.2100180, %i.dn
  br i1 %.not.i.i128, label %.preheader.i.i131, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129, !prof !103

.preheader.i.i131:                                ; preds = %bb.ae, %.preheader.i.i131
  %.053.i.i132 = phi i32 [ %i.dr, %.preheader.i.i131 ], [ %i.dn, %bb.ae ] ; 2 uses
  %i.dp = lshr i32 %.053.i.i132, 1
  %i.dq = add nuw i32 %.053.i.i132, 8
  %i.dr = add nuw i32 %i.dq, %i.dp                ; 6 uses
  %i.ds = icmp ugt i32 %.2100180, %i.dr
  br i1 %i.ds, label %.preheader.i.i131, label %.thread39.i.i133, !llvm.loop !28

.thread39.i.i133:                                 ; preds = %.preheader.i.i131
  %.not8.i.i.i.i134 = icmp eq i32 %i.dn, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !349 ; 2 uses
  br i1 %.not8.i.i.i.i134, label %bb.af, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135

bb.af:                                            ; preds = %.thread39.i.i133
  %.not9.i.i.i.i142 = icmp eq ptr %i.du, null
  br i1 %.not9.i.i.i.i142, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = zext i32 %i.dr to i64
  %i.dw = tail call ptr @hb_malloc(i64 noundef %i.dv) #18 ; 4 uses
  %.not10.i.i.i.i143 = icmp eq ptr %i.dw, null
  br i1 %.not10.i.i.i.i143, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139, label %bb.ah, !prof !103

bb.ah:                                            ; preds = %bb.ag
  %i.dx = load i32, ptr %i.bf, align 4, !tbaa !348 ; 2 uses
  %.not.i.i.i.i.i144 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i.i.i.i144, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137, label %bb.ai, !prof !103

bb.ai:                                            ; preds = %bb.ah
  %i.dy = zext i32 %i.dx to i64
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr readonly align 1 %i.dz, i64 %i.dy, i1 false), !alias.scope !1450
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135: ; preds = %bb.af, %.thread39.i.i133
  %i.ea = phi ptr [ null, %bb.af ], [ %i.du, %.thread39.i.i133 ]
  %i.eb = zext i32 %i.dr to i64
  %i.ec = tail call ptr @hb_realloc(ptr noundef %i.ea, i64 noundef %i.eb) #18 ; 2 uses
  %.not22.i.i136 = icmp eq ptr %i.ec, null
  br i1 %.not22.i.i136, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137, !prof !165

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135, %bb.ag
  %i.ed = load i32, ptr %1, align 8, !tbaa !347   ; 2 uses
  %.not23.i.i140 = icmp ugt i32 %i.dr, %i.ed
  br i1 %.not23.i.i140, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i141, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135, %bb.ai, %bb.ah
  %.1.i.i52.i.i138 = phi ptr [ %i.ec, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135 ], [ %i.dw, %bb.ah ], [ %i.dw, %bb.ai ]
  store ptr %.1.i.i52.i.i138, ptr %i.dt, align 8, !tbaa !349
  store i32 %i.dr, ptr %1, align 8, !tbaa !347
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i141:       ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139
  %i.ee = xor i32 %i.ed, -1
  store i32 %i.ee, ptr %1, align 8, !tbaa !347
  br label %_ZN11hb_vector_tIhLb0EE6resizeEi.exit

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129: ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139, %bb.ae
  store i32 %.2100180, ptr %i.bf, align 4, !tbaa !348
  br label %_ZN11hb_vector_tIhLb0EE6resizeEi.exit

_ZN11hb_vector_tIhLb0EE6resizeEi.exit:            ; preds = %bb.a, %bb.k, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i124, %bb.j, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i141, %bb.ad, %._crit_edge214, %bb.i, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, %bb.c, %._crit_edge
  %.2109 = phi i1 [ true, %._crit_edge ], [ false, %bb.ad ], [ true, %bb.i ], [ false, %bb.c ], [ false, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i ], [ false, %._crit_edge214 ], [ false, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i141 ], [ true, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129 ], [ false, %bb.j ], [ false, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i124 ], [ false, %bb.k ], [ true, %bb.a ]
  ret i1 %.2109
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT13tuple_delta_t14compile_deltasE10hb_array_tIKbES1_IKfES5_R11hb_vector_tIhLb0EERS6_IiLb0EEP15hb_alloc_pool_t(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.3.8.extract.trunc = trunc i64 %1 to i32  ; 4 uses
  %i.a = icmp slt i32 %.sroa.3.8.extract.trunc, 0
  br i1 %i.a, label %.critedge, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %.sroa.3.8.extract.trunc, i1 noundef zeroext false)
  br i1 %i.b, label %_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit, label %.critedge, !prof !333

_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit:     ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 7 uses
  store i32 %.sroa.3.8.extract.trunc, ptr %i.c, align 4, !tbaa !211
  %.not103 = icmp eq i32 %.sroa.3.8.extract.trunc, 0 ; 2 uses
  br i1 %.not103, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %wide.trip.count = and i64 %1, 2147483647
  %xtraiter = and i64 %1, 1
  %i.e = icmp eq i64 %wide.trip.count, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 2147483646
  br label %bb.g

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.04996.epil.init = phi i32 [ 0, %.lr.ph ], [ %.150.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod121 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod121)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.g = load i8, ptr %i.f, align 1, !tbaa !212, !range !201, !noundef !210
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.epil.preheader
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.j = load float, ptr %i.i, align 4, !tbaa !448
  %i.k = fadd float %i.j, 5.000000e-01
  %i.l = tail call noundef float @llvm.floor.f32(float %i.k)
  %i.m = fptosi float %i.l to i32
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !354
  %i.o = add i32 %.04996.epil.init, 1
  %i.p = zext i32 %.04996.epil.init to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p
  store i32 %i.m, ptr %i.q, align 4, !tbaa !206
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.c, %._crit_edge.unr-lcssa
  %.150.lcssa = phi i32 [ %.150.1, %._crit_edge.unr-lcssa ], [ %i.o, %bb.c ], [ %.04996.epil.init, %.epil.preheader ] ; 2 uses
  %i.r = icmp slt i32 %.150.lcssa, 0
  br i1 %i.r, label %._crit_edge._ZN11hb_vector_tIiLb0EE6resizeEi.exit_crit_edge, label %._crit_edge.thread, !prof !425

._crit_edge._ZN11hb_vector_tIiLb0EE6resizeEi.exit_crit_edge: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.c, align 4, !tbaa !211
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

._crit_edge.thread:                               ; preds = %_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit, %._crit_edge
  %.049.lcssa119 = phi i32 [ %.150.lcssa, %._crit_edge ], [ 0, %_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit ] ; 5 uses
  %i.s = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %.049.lcssa119, i1 noundef zeroext false)
  %.pre110 = load i32, ptr %i.c, align 4, !tbaa !211 ; 4 uses
  br i1 %i.s, label %bb.d, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

bb.d:                                             ; preds = %._crit_edge.thread
  %i.t = icmp ugt i32 %.049.lcssa119, %.pre110
  br i1 %i.t, label %bb.e, label %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw nsw i32 %.049.lcssa119, %.pre110
  %i.v = shl i32 %i.u, 2                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.f, !prof !103

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !354
  %i.y = zext nneg i32 %.pre110 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = zext i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.aa, i1 false)
  br label %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  store i32 %.049.lcssa119, ptr %i.c, align 4, !tbaa !211
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

_ZN11hb_vector_tIiLb0EE6resizeEi.exit:            ; preds = %._crit_edge._ZN11hb_vector_tIiLb0EE6resizeEi.exit_crit_edge, %._crit_edge.thread, %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.ab = phi i32 [ %.pre, %._crit_edge._ZN11hb_vector_tIiLb0EE6resizeEi.exit_crit_edge ], [ %.pre110, %._crit_edge.thread ], [ %.049.lcssa119, %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 3 uses
  %.not91 = icmp eq i32 %i.ab, 0
  br i1 %.not91, label %.critedge, label %bb.l

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %.04996 = phi i32 [ 0, %.lr.ph.new ], [ %.150.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !212, !range !201, !noundef !210
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4, !tbaa !448
  %i.ah = fadd float %i.ag, 5.000000e-01
  %i.ai = tail call noundef float @llvm.floor.f32(float %i.ah)
  %i.aj = fptosi float %i.ai to i32
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !354
  %i.al = add i32 %.04996, 1
  %i.am = zext i32 %.04996 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  store i32 %i.aj, ptr %i.an, align 4, !tbaa !206
end_hunk_0
begin_hunk_1_@_ZN2OT13tuple_delta_t14compile_deltasE10hb_array_tIKbES1_IKfES5_R11hb_vector_tIhLb0EERS6_IiLb0EEP15hb_alloc_pool_t:bb.a
  %i.cm = load i32, ptr %6, align 8, !tbaa !347
  %i.cn = add i32 %i.cm, -1
  %spec.select.i.i = icmp ult i32 %i.cn, -2
  br i1 %spec.select.i.i, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !349
  %i.cp = zext nneg i32 %i.cl to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  %i.cr = sub i32 %i.cj, %i.cl                    ; 4 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !523 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cw = icmp ne ptr %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not.i4.i = icmp ugt i32 %i.cr, %i.cy
  %or.cond.i.i = select i1 %i.cw, i1 true, i1 %.not.i4.i
  br i1 %or.cond.i.i, label %.critedge, label %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i:   ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !525
  %i.db = add i32 %i.da, %i.cr
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !525
  %i.dc = sub nuw i32 %i.cy, %i.cr
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !524
  %i.dd = sub nsw i64 0, %i.cs
  %i.de = getelementptr inbounds i8, ptr %i.cu, i64 %i.dd
  store ptr %i.de, ptr %i.ct, align 8, !tbaa !526
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.b, %bb.a, %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i, %bb.s, %bb.r, %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, %._crit_edge101, %bb.l
  %.8 = phi i1 [ true, %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i ], [ true, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ false, %bb.l ], [ false, %bb.b ], [ false, %._crit_edge101 ], [ true, %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i ], [ true, %bb.r ], [ true, %bb.s ], [ false, %bb.a ], [ false, %bb.n ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !353    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !103

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !43

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !103

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !354
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !354  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !103

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !211  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !103

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !354
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1456
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, !prof !190

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !353   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !354
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !353
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2OT11TupleValues14compile_unsafeE10hb_array_tIKiEPh(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.6.8.extract.trunc = trunc i64 %1 to i32  ; 10 uses
  %.not = icmp eq i32 %.sroa.6.8.extract.trunc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.a
  %i.a = and i64 %1, 4294967295                   ; 4 uses
  %scevgep240 = getelementptr i8, ptr %2, i64 1
  %scevgep242.a = getelementptr i8, ptr %2, i64 65
  %scevgep245 = getelementptr i8, ptr %0, i64 256
  %scevgep287 = getelementptr i8, ptr %0, i64 256
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph127, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit
  %.0126 = phi i32 [ 0, %.lr.ph127 ], [ %.1, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit ] ; 4 uses
  %.083125 = phi i32 [ 0, %.lr.ph127 ], [ %.184, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit ] ; 12 uses
  %i.b = zext i32 %.083125 to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.lr.ph120.preheader, label %bb.d

.lr.ph120.preheader:                              ; preds = %bb.b
  %i.f = zext i32 %.0126 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 3 uses
  %i.h = sub nuw i32 %.sroa.6.8.extract.trunc, %.083125 ; 3 uses
  %exitcond.not.i232 = icmp eq i32 %i.h, 1
  br i1 %exitcond.not.i232, label %..critedge.i_crit_edge, label %.lr.ph.i.lr.ph, !llvm.loop !1457

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph120.preheader
  br label %.lr.ph.i, !llvm.loop !1457

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph120
  %i.i = phi i32 [ 1, %.lr.ph.i.lr.ph ], [ %i.m, %.lr.ph120 ] ; 2 uses
  %indvars.iv.i118233 = phi i64 [ %i.b, %.lr.ph.i.lr.ph ], [ %indvars.iv.next.i, %.lr.ph120 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i118233, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !206
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.lr.ph120, label %.critedge.i.loopexit, !llvm.loop !1457

.lr.ph120:                                        ; preds = %.lr.ph.i
  %i.m = add nuw i32 %i.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.m, %i.h
  br i1 %exitcond.not.i, label %.lr.ph120...critedge.i_crit_edge_crit_edge, label %.lr.ph.i, !llvm.loop !1457

.lr.ph120...critedge.i_crit_edge_crit_edge:       ; preds = %.lr.ph120
  br label %..critedge.i_crit_edge, !llvm.loop !1457

..critedge.i_crit_edge:                           ; preds = %.lr.ph120...critedge.i_crit_edge_crit_edge, %.lr.ph120.preheader
  br label %.critedge.i, !llvm.loop !1457

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  %i.n = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %..critedge.i_crit_edge
  %.3 = phi i32 [ %.sroa.6.8.extract.trunc, %..critedge.i_crit_edge ], [ %i.n, %.critedge.i.loopexit ] ; 2 uses
  %.013.lcssa.i = phi i32 [ %i.h, %..critedge.i_crit_edge ], [ %i.i, %.critedge.i.loopexit ] ; 4 uses
  %i.o = icmp ugt i32 %.013.lcssa.i, 63
  br i1 %i.o, label %.lr.ph23.preheader.i, label %bb.c

.lr.ph23.preheader.i:                             ; preds = %.critedge.i
  %i.p = add i32 %.013.lcssa.i, -64
  %i.q = lshr i32 %i.p, 6
  %narrow.i = add nuw nsw i32 %i.q, 1             ; 3 uses
  %i.r = zext nneg i32 %narrow.i to i64           ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 -65, i64 %i.r, i1 false), !tbaa !277
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.r
  %i.s = and i32 %.013.lcssa.i, 63                ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.lr.ph23.preheader.i
  %.0.lcssa.i178 = phi i32 [ %narrow.i, %.lr.ph23.preheader.i ], [ 0, %.critedge.i ]
  %.114.lcssa.i177 = phi i32 [ %i.s, %.lr.ph23.preheader.i ], [ %.013.lcssa.i, %.critedge.i ]
  %.015.lcssa.i176 = phi ptr [ %scevgep.i, %.lr.ph23.preheader.i ], [ %i.g, %.critedge.i ]
  %i.t = trunc nuw nsw i32 %.114.lcssa.i177 to i8
  %i.u = add nuw i8 %i.t, 127
  %i.v = or i8 %i.u, -128
  store i8 %i.v, ptr %.015.lcssa.i176, align 1, !tbaa !277
  %i.w = add nuw nsw i32 %.0.lcssa.i178, 1
  br label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit

bb.d:                                             ; preds = %bb.b
  %i.x = add i32 %i.d, 128
  %i.y = icmp ult i32 %i.x, 256
  br i1 %i.y, label %.lr.ph114.preheader, label %bb.g

.lr.ph114.preheader:                              ; preds = %bb.d
  %i.z = zext i32 %.0126 to i64                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.z ; 2 uses
  br label %.lr.ph114

.lr.ph.i51:                                       ; preds = %._crit_edge79.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !206 ; 2 uses
  %i.ad = add i32 %i.ac, 128
  %.not.i53 = icmp ult i32 %i.ad, 256
  br i1 %.not.i53, label %.lr.ph114, label %.thread.i.split.loop.exit

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph.i51
  %i.ae = phi i32 [ %i.ac, %.lr.ph.i51 ], [ 1, %.lr.ph114.preheader ]
  %indvars.iv.i52113 = phi i64 [ %i.ag, %.lr.ph.i51 ], [ %i.b, %.lr.ph114.preheader ] ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = add nuw i64 %indvars.iv.i52113, 1       ; 6 uses
  %i.ah = icmp samesign ult i64 %i.ag, %i.a
  %or.cond.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %bb.e, label %._crit_edge79.i

bb.e:                                             ; preds = %.lr.ph114
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !206
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.thread.i.split.loop.exit196, label %._crit_edge79.i

._crit_edge79.i:                                  ; preds = %bb.e, %.lr.ph114
  %exitcond.not.i54 = icmp eq i64 %i.ag, %i.a
  br i1 %exitcond.not.i54, label %.thread.i, label %.lr.ph.i51

.thread.i.split.loop.exit:                        ; preds = %.lr.ph.i51
  %indvars150.le = trunc i64 %i.ag to i32
  br label %.thread.i

.thread.i.split.loop.exit196:                     ; preds = %bb.e
  %indvars151.le = trunc i64 %indvars.iv.i52113 to i32
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge79.i, %.thread.i.split.loop.exit196, %.thread.i.split.loop.exit
  %.5.ph = phi i32 [ %indvars151.le, %.thread.i.split.loop.exit196 ], [ %indvars150.le, %.thread.i.split.loop.exit ], [ %.sroa.6.8.extract.trunc, %._crit_edge79.i ] ; 4 uses
  %i.al = sub i32 %.5.ph, %.083125                ; 3 uses
  %i.am = icmp ugt i32 %i.al, 63
  br i1 %i.am, label %.lr.ph61.i.preheader, label %._crit_edge.i48

.lr.ph61.i.preheader:                             ; preds = %.thread.i
  %scevgep241.a = getelementptr i8, ptr %scevgep240, i64 %i.z
  %i.an = add i32 %.5.ph, -64
  %i.ao = sub i32 %i.an, %.083125
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 65
  %i.as = getelementptr i8, ptr %scevgep242.a, i64 %i.ar
  %scevgep243.a = getelementptr i8, ptr %i.as, i64 %i.z
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %middle.block257
  %.04460.i = phi i32 [ %i.di, %middle.block257 ], [ 0, %.lr.ph61.i.preheader ]
  %.04559.i = phi i32 [ %i.dk, %middle.block257 ], [ %i.al, %.lr.ph61.i.preheader ]
  %.04758.i = phi i32 [ %i.dj, %middle.block257 ], [ %.083125, %.lr.ph61.i.preheader ] ; 15 uses
  %.04857.i = phi ptr [ %i.dh, %middle.block257 ], [ %i.aa, %.lr.ph61.i.preheader ] ; 18 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04857.i, i64 1 ; 5 uses
  store i8 63, ptr %.04857.i, align 1, !tbaa !277
  %i.au = icmp ugt i32 %.04758.i, -64
  br i1 %i.au, label %scalar.ph250.preheader, label %vector.memcheck239

scalar.ph250.preheader:                           ; preds = %vector.memcheck239, %.lr.ph61.i
  br label %scalar.ph250

vector.memcheck239:                               ; preds = %.lr.ph61.i
  %i.av = zext i32 %.04758.i to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.aw
  %scevgep244 = getelementptr i8, ptr %0, i64 %i.aw
  %bound0247 = icmp ult ptr %scevgep241.a, %scevgep246
  %bound1248 = icmp ult ptr %scevgep244, %scevgep243.a
  %found.conflict249 = and i1 %bound0247, %bound1248
  br i1 %found.conflict249, label %scalar.ph250.preheader, label %vector.body252

vector.body252:                                   ; preds = %vector.memcheck239
  %i.ax = zext i32 %.04758.i to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load254 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255 = load <4 x i32>, ptr %i.az, align 4, !tbaa !206, !alias.scope !1484
  %i.ba = trunc <4 x i32> %wide.load254 to <4 x i8>
  %i.bb = trunc <4 x i32> %wide.load255 to <4 x i8>
  %i.bc = getelementptr inbounds nuw i8, ptr %.04857.i, i64 5
  store <4 x i8> %i.ba, ptr %i.at, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.bd = add i32 %.04758.i, 8
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load254.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.1 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !206, !alias.scope !1484
  %i.bh = trunc <4 x i32> %wide.load254.1 to <4 x i8>
  %i.bi = trunc <4 x i32> %wide.load255.1 to <4 x i8>
  %i.bj = getelementptr inbounds nuw i8, ptr %.04857.i, i64 9
  %i.bk = getelementptr inbounds nuw i8, ptr %.04857.i, i64 13
  store <4 x i8> %i.bh, ptr %i.bj, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.bi, ptr %i.bk, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.bl = add i32 %.04758.i, 16
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load254.2 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.2 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !206, !alias.scope !1484
  %i.bp = trunc <4 x i32> %wide.load254.2 to <4 x i8>
  %i.bq = trunc <4 x i32> %wide.load255.2 to <4 x i8>
  %i.br = getelementptr inbounds nuw i8, ptr %.04857.i, i64 17
  %i.bs = getelementptr inbounds nuw i8, ptr %.04857.i, i64 21
  store <4 x i8> %i.bp, ptr %i.br, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.bq, ptr %i.bs, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.bt = add i32 %.04758.i, 24
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load254.3 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.3 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !206, !alias.scope !1484
  %i.bx = trunc <4 x i32> %wide.load254.3 to <4 x i8>
  %i.by = trunc <4 x i32> %wide.load255.3 to <4 x i8>
  %i.bz = getelementptr inbounds nuw i8, ptr %.04857.i, i64 25
  %i.ca = getelementptr inbounds nuw i8, ptr %.04857.i, i64 29
  store <4 x i8> %i.bx, ptr %i.bz, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.by, ptr %i.ca, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.cb = add i32 %.04758.i, 32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load254.4 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.4 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !206, !alias.scope !1484
  %i.cf = trunc <4 x i32> %wide.load254.4 to <4 x i8>
  %i.cg = trunc <4 x i32> %wide.load255.4 to <4 x i8>
  %i.ch = getelementptr inbounds nuw i8, ptr %.04857.i, i64 33
  %i.ci = getelementptr inbounds nuw i8, ptr %.04857.i, i64 37
  store <4 x i8> %i.cf, ptr %i.ch, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.cg, ptr %i.ci, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.cj = add i32 %.04758.i, 40
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load254.5 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.5 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !206, !alias.scope !1484
  %i.cn = trunc <4 x i32> %wide.load254.5 to <4 x i8>
  %i.co = trunc <4 x i32> %wide.load255.5 to <4 x i8>
  %i.cp = getelementptr inbounds nuw i8, ptr %.04857.i, i64 41
  %i.cq = getelementptr inbounds nuw i8, ptr %.04857.i, i64 45
  store <4 x i8> %i.cn, ptr %i.cp, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.co, ptr %i.cq, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.cr = add i32 %.04758.i, 48
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load254.6 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.6 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !206, !alias.scope !1484
  %i.cv = trunc <4 x i32> %wide.load254.6 to <4 x i8>
  %i.cw = trunc <4 x i32> %wide.load255.6 to <4 x i8>
  %i.cx = getelementptr inbounds nuw i8, ptr %.04857.i, i64 49
  %i.cy = getelementptr inbounds nuw i8, ptr %.04857.i, i64 53
  store <4 x i8> %i.cv, ptr %i.cx, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.cw, ptr %i.cy, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.cz = add i32 %.04758.i, 56
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load254.7 = load <4 x i32>, ptr %i.db, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.7 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !206, !alias.scope !1484
  %i.dd = trunc <4 x i32> %wide.load254.7 to <4 x i8>
  %i.de = trunc <4 x i32> %wide.load255.7 to <4 x i8>
  %i.df = getelementptr inbounds nuw i8, ptr %.04857.i, i64 57
  %i.dg = getelementptr inbounds nuw i8, ptr %.04857.i, i64 61
  store <4 x i8> %i.dd, ptr %i.df, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.de, ptr %i.dg, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  br label %middle.block257

middle.block257:                                  ; preds = %scalar.ph250, %vector.body252
  %i.dh = getelementptr inbounds nuw i8, ptr %.04857.i, i64 65 ; 2 uses
  %i.di = add i32 %.04460.i, 65                   ; 2 uses
  %i.dj = add i32 %.04758.i, 64                   ; 2 uses
  %i.dk = add i32 %.04559.i, -64                  ; 3 uses
  %i.dl = icmp ugt i32 %i.dk, 63
  br i1 %i.dl, label %.lr.ph61.i, label %._crit_edge.i48, !llvm.loop !1461

scalar.ph250:                                     ; preds = %scalar.ph250, %scalar.ph250.preheader
  %indvars.iv70.i = phi i64 [ 0, %scalar.ph250.preheader ], [ %indvars.iv.next71.i.3, %scalar.ph250 ] ; 6 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv70.i to i32
  %i.dn = add i32 %.04758.i, %i.dm
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !206
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv70.i
end_hunk_1
begin_hunk_2_@_ZN2OT11TupleValues14compile_unsafeE10hb_array_tIKiEPh:bb.a
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv88.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !206 ; 2 uses
  %i.oq = lshr i32 %i.op, 8
  %i.or = trunc i32 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %.275.i, i64 7
  store i8 %i.or, ptr %i.om, align 1, !tbaa !277
  %i.ot = trunc i32 %i.op to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  store i8 %i.ot, ptr %i.os, align 1, !tbaa !277
  %i.ov = add i32 %.25273.i, 8                    ; 2 uses
  %exitcond149.not.3 = icmp eq i64 %indvars.iv.next89.i.3, %i.mk
  br i1 %exitcond149.not.3, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph77.i, !llvm.loop !1479

.lr.ph.i71:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ow = phi i32 [ %i.pb, %.lr.ph ], [ %i.hc, %.lr.ph.preheader ]
  %indvars.iv.next.i73230 = phi i64 [ %indvars.iv.next.i73, %.lr.ph ], [ %indvars.iv.next.i73228, %.lr.ph.preheader ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i73230
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !206
  %i.oz = add i32 %i.oy, 32768
  %i.pa = icmp ult i32 %i.oz, 65536
  br i1 %i.pa, label %.thread.i65, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i71
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.next.i73230, 1 ; 2 uses
  %i.pb = trunc i64 %indvars.iv.next.i73 to i32   ; 2 uses
  %exitcond.not.i74 = icmp eq i32 %i.pb, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not.i74, label %.thread.i65, label %.lr.ph.i71

.thread.i65:                                      ; preds = %.lr.ph, %.lr.ph.i71, %.lr.ph.preheader
  %.lcssa = phi i32 [ %.sroa.6.8.extract.trunc, %.lr.ph.preheader ], [ %.sroa.6.8.extract.trunc, %.lr.ph ], [ %i.ow, %.lr.ph.i71 ] ; 7 uses
  %i.pc = sub i32 %.lcssa, %.083125               ; 3 uses
  %i.pd = icmp ugt i32 %i.pc, 63
  br i1 %i.pd, label %.lr.ph64.i, label %._crit_edge.i66

.lr.ph64.i:                                       ; preds = %.thread.i65, %bb.j
  %.063.i = phi ptr [ %i.qp, %bb.j ], [ %i.hb, %.thread.i65 ] ; 2 uses
  %.04662.i = phi i32 [ %i.pg, %bb.j ], [ %.083125, %.thread.i65 ] ; 3 uses
  %.04961.i = phi i32 [ %i.pf, %bb.j ], [ 0, %.thread.i65 ]
  %.05260.i = phi i32 [ %i.ph, %bb.j ], [ %i.pc, %.thread.i65 ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.063.i, i64 1
  store i8 -1, ptr %.063.i, align 1, !tbaa !277
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.pf = add i32 %.04961.i, 257                  ; 2 uses
  %i.pg = add i32 %.04662.i, 64                   ; 2 uses
  %i.ph = add i32 %.05260.i, -64                  ; 3 uses
  %i.pi = icmp ugt i32 %i.ph, 63
  br i1 %i.pi, label %.lr.ph64.i, label %._crit_edge.i66, !llvm.loop !1480

bb.k:                                             ; preds = %bb.k, %.lr.ph64.i
  %indvars.iv79.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next80.i.1, %bb.k ] ; 3 uses
  %.159.i = phi ptr [ %i.pe, %.lr.ph64.i ], [ %i.qp, %bb.k ] ; 9 uses
  %i.pj = trunc nuw nsw i64 %indvars.iv79.i to i32
  %i.pk = add i32 %.04662.i, %i.pj
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !206 ; 4 uses
  %i.po = lshr i32 %i.pn, 24
  %i.pp = trunc nuw i32 %i.po to i8
  %i.pq = getelementptr inbounds nuw i8, ptr %.159.i, i64 1
  store i8 %i.pp, ptr %.159.i, align 1, !tbaa !277
  %i.pr = lshr i32 %i.pn, 16
  %i.ps = trunc i32 %i.pr to i8
  %i.pt = getelementptr inbounds nuw i8, ptr %.159.i, i64 2
  store i8 %i.ps, ptr %i.pq, align 1, !tbaa !277
  %i.pu = lshr i32 %i.pn, 8
  %i.pv = trunc i32 %i.pu to i8
  %i.pw = getelementptr inbounds nuw i8, ptr %.159.i, i64 3
  store i8 %i.pv, ptr %i.pt, align 1, !tbaa !277
  %i.px = trunc i32 %i.pn to i8
  %i.py = getelementptr inbounds nuw i8, ptr %.159.i, i64 4
  store i8 %i.px, ptr %i.pw, align 1, !tbaa !277
  %i.pz = trunc i64 %indvars.iv79.i to i32
  %i.qa = or disjoint i32 %i.pz, 1
  %i.qb = add i32 %.04662.i, %i.qa
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !206 ; 4 uses
  %i.qf = lshr i32 %i.qe, 24
  %i.qg = trunc nuw i32 %i.qf to i8
  %i.qh = getelementptr inbounds nuw i8, ptr %.159.i, i64 5
  store i8 %i.qg, ptr %i.py, align 1, !tbaa !277
  %i.qi = lshr i32 %i.qe, 16
  %i.qj = trunc i32 %i.qi to i8
  %i.qk = getelementptr inbounds nuw i8, ptr %.159.i, i64 6
  store i8 %i.qj, ptr %i.qh, align 1, !tbaa !277
  %i.ql = lshr i32 %i.qe, 8
  %i.qm = trunc i32 %i.ql to i8
  %i.qn = getelementptr inbounds nuw i8, ptr %.159.i, i64 7
  store i8 %i.qm, ptr %i.qk, align 1, !tbaa !277
  %i.qo = trunc i32 %i.qe to i8
  %i.qp = getelementptr inbounds nuw i8, ptr %.159.i, i64 8 ; 3 uses
  store i8 %i.qo, ptr %i.qn, align 1, !tbaa !277
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %exitcond82.not.i.1 = icmp eq i64 %indvars.iv.next80.i.1, 64
  br i1 %exitcond82.not.i.1, label %bb.j, label %bb.k, !llvm.loop !1481

._crit_edge.i66:                                  ; preds = %bb.j, %.thread.i65
  %.052.lcssa.i = phi i32 [ %i.pc, %.thread.i65 ], [ %i.ph, %bb.j ] ; 2 uses
  %.049.lcssa.i = phi i32 [ 0, %.thread.i65 ], [ %i.pf, %bb.j ] ; 3 uses
  %.046.lcssa.i = phi i32 [ %.083125, %.thread.i65 ], [ %i.pg, %bb.j ] ; 2 uses
  %.0.lcssa.i67 = phi ptr [ %i.hb, %.thread.i65 ], [ %i.qp, %bb.j ] ; 6 uses
  %.not.i68 = icmp eq i32 %.052.lcssa.i, 0
  br i1 %.not.i68, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i66
  %i.qq = trunc nuw nsw i32 %.052.lcssa.i to i8
  %i.qr = add nuw nsw i8 %i.qq, 63
  %i.qs = or i8 %i.qr, -64
  store i8 %i.qs, ptr %.0.lcssa.i67, align 1, !tbaa !277
  %i.qt = add i32 %.049.lcssa.i, 1                ; 2 uses
  %i.qu = icmp ult i32 %.046.lcssa.i, %.lcssa
  br i1 %i.qu, label %.lr.ph72.preheader.i, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit

.lr.ph72.preheader.i:                             ; preds = %bb.l
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 1 ; 2 uses
  %i.qw = zext i32 %.046.lcssa.i to i64           ; 5 uses
  %i.qx = zext i32 %.lcssa to i64                 ; 3 uses
  %i.qy = sub nsw i64 %i.qx, %i.qw
  %xtraiter = and i64 %i.qy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.i.prol.loopexit, label %.lr.ph72.i.prol

.lr.ph72.i.prol:                                  ; preds = %.lr.ph72.preheader.i
  %indvars.iv.next84.i.prol = add nuw nsw i64 %i.qw, 1
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qw
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !206 ; 4 uses
  %i.rb = lshr i32 %i.ra, 24
  %i.rc = trunc nuw i32 %i.rb to i8
  %i.rd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 2
  store i8 %i.rc, ptr %i.qv, align 1, !tbaa !277
  %i.re = lshr i32 %i.ra, 16
  %i.rf = trunc i32 %i.re to i8
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 3
  store i8 %i.rf, ptr %i.rd, align 1, !tbaa !277
  %i.rh = lshr i32 %i.ra, 8
  %i.ri = trunc i32 %i.rh to i8
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 4
  store i8 %i.ri, ptr %i.rg, align 1, !tbaa !277
  %i.rk = trunc i32 %i.ra to i8
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 5
  store i8 %i.rk, ptr %i.rj, align 1, !tbaa !277
  %i.rm = add i32 %.049.lcssa.i, 5                ; 2 uses
  br label %.lr.ph72.i.prol.loopexit

.lr.ph72.i.prol.loopexit:                         ; preds = %.lr.ph72.i.prol, %.lr.ph72.preheader.i
  %.lcssa315.unr = phi i32 [ poison, %.lr.ph72.preheader.i ], [ %i.rm, %.lr.ph72.i.prol ]
  %indvars.iv83.i.unr = phi i64 [ %i.qw, %.lr.ph72.preheader.i ], [ %indvars.iv.next84.i.prol, %.lr.ph72.i.prol ]
  %.270.i.unr = phi ptr [ %i.qv, %.lr.ph72.preheader.i ], [ %i.rl, %.lr.ph72.i.prol ]
  %.25168.i.unr = phi i32 [ %i.qt, %.lr.ph72.preheader.i ], [ %i.rm, %.lr.ph72.i.prol ]
  %i.rn = add nsw i64 %i.qx, -1
  %i.ro = icmp eq i64 %i.rn, %i.qw
  br i1 %i.ro, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.lr.ph72.i.prol.loopexit, %.lr.ph72.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i.1, %.lr.ph72.i ], [ %indvars.iv83.i.unr, %.lr.ph72.i.prol.loopexit ] ; 3 uses
  %.270.i = phi ptr [ %i.sp, %.lr.ph72.i ], [ %.270.i.unr, %.lr.ph72.i.prol.loopexit ] ; 9 uses
  %.25168.i = phi i32 [ %i.sq, %.lr.ph72.i ], [ %.25168.i.unr, %.lr.ph72.i.prol.loopexit ]
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv83.i
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !206 ; 4 uses
  %i.rr = lshr i32 %i.rq, 24
  %i.rs = trunc nuw i32 %i.rr to i8
  %i.rt = getelementptr inbounds nuw i8, ptr %.270.i, i64 1
  store i8 %i.rs, ptr %.270.i, align 1, !tbaa !277
  %i.ru = lshr i32 %i.rq, 16
  %i.rv = trunc i32 %i.ru to i8
  %i.rw = getelementptr inbounds nuw i8, ptr %.270.i, i64 2
  store i8 %i.rv, ptr %i.rt, align 1, !tbaa !277
  %i.rx = lshr i32 %i.rq, 8
  %i.ry = trunc i32 %i.rx to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %.270.i, i64 3
  store i8 %i.ry, ptr %i.rw, align 1, !tbaa !277
  %i.sa = trunc i32 %i.rq to i8
  %i.sb = getelementptr inbounds nuw i8, ptr %.270.i, i64 4
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !277
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv83.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !206 ; 4 uses
  %i.sf = lshr i32 %i.se, 24
  %i.sg = trunc nuw i32 %i.sf to i8
  %i.sh = getelementptr inbounds nuw i8, ptr %.270.i, i64 5
  store i8 %i.sg, ptr %i.sb, align 1, !tbaa !277
  %i.si = lshr i32 %i.se, 16
  %i.sj = trunc i32 %i.si to i8
  %i.sk = getelementptr inbounds nuw i8, ptr %.270.i, i64 6
  store i8 %i.sj, ptr %i.sh, align 1, !tbaa !277
  %i.sl = lshr i32 %i.se, 8
  %i.sm = trunc i32 %i.sl to i8
  %i.sn = getelementptr inbounds nuw i8, ptr %.270.i, i64 7
  store i8 %i.sm, ptr %i.sk, align 1, !tbaa !277
  %i.so = trunc i32 %i.se to i8
  %i.sp = getelementptr inbounds nuw i8, ptr %.270.i, i64 8
  store i8 %i.so, ptr %i.sn, align 1, !tbaa !277
  %i.sq = add i32 %.25168.i, 8                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next84.i.1, %i.qx
  br i1 %exitcond.not.1, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph72.i, !llvm.loop !1482

_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit: ; preds = %.lr.ph72.i.prol.loopexit, %.lr.ph72.i, %.lr.ph77.i.prol.loopexit, %.lr.ph77.i, %middle.block279, %bb.l, %._crit_edge.i66, %bb.i, %._crit_edge.i56, %.loopexit307, %._crit_edge.i48, %bb.c, %.lr.ph23.preheader.i
  %.184 = phi i32 [ %.7, %middle.block279 ], [ %.3, %bb.c ], [ %.5.ph, %.loopexit307 ], [ %.3, %.lr.ph23.preheader.i ], [ %.5.ph, %._crit_edge.i48 ], [ %.7, %._crit_edge.i56 ], [ %.7, %bb.i ], [ %.lcssa, %._crit_edge.i66 ], [ %.lcssa, %bb.l ], [ %.7, %.lr.ph77.i.prol.loopexit ], [ %.7, %.lr.ph77.i ], [ %.lcssa, %.lr.ph72.i ], [ %.lcssa, %.lr.ph72.i.prol.loopexit ] ; 2 uses
  %.pn = phi i32 [ %i.ne, %middle.block279 ], [ %i.w, %bb.c ], [ %i.fv, %.loopexit307 ], [ %narrow.i, %.lr.ph23.preheader.i ], [ %.044.lcssa.i, %._crit_edge.i48 ], [ %.050.lcssa.i, %._crit_edge.i56 ], [ %i.mg, %bb.i ], [ %.049.lcssa.i, %._crit_edge.i66 ], [ %i.qt, %bb.l ], [ %i.ov, %.lr.ph77.i ], [ %.lcssa327.unr, %.lr.ph77.i.prol.loopexit ], [ %.lcssa315.unr, %.lr.ph72.i.prol.loopexit ], [ %i.sq, %.lr.ph72.i ]
  %.1 = add i32 %.pn, %.0126                      ; 2 uses
  %i.sr = icmp ult i32 %.184, %.sroa.6.8.extract.trunc
  br i1 %i.sr, label %bb.b, label %._crit_edge, !llvm.loop !1483

._crit_edge:                                      ; preds = %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !356    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !103

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !39

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !103

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !358
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !358  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !103

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !357  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !103

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1495
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, !prof !190

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !356   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !358
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !356
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE13set_with_hashIS3_RjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !280, !range !201, !noundef !210
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !207

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !502  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !445
  %.not36 = icmp ult i32 %i.g, %i.i
  br i1 %.not36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !207

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !442
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !355  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.f
  %i.v = phi ptr [ %i.ae, %bb.f ], [ %i.p, %.critedge ]
  %i.w = phi i32 [ %i.ar, %bb.f ], [ %i.t, %.critedge ]
  %i.x = phi ptr [ %i.ap, %bb.f ], [ %i.r, %.critedge ]
  %i.y = phi i64 [ %i.ao, %bb.f ], [ %i.q, %.critedge ]
  %.050 = phi i32 [ %i.ak, %bb.f ], [ 0, %.critedge ] ; 2 uses
  %.03148 = phi i32 [ %i.an, %bb.f ], [ %i.n, %.critedge ] ; 3 uses
  %.03247 = phi i32 [ %spec.select, %bb.f ], [ -1, %.critedge ] ; 3 uses
  %i.z = lshr i32 %i.w, 2
  %i.aa = icmp eq i32 %i.z, %i.k
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !444
  %i.ac = load ptr, ptr %1, align 8, !tbaa !506
  %i.ad = tail call noundef zeroext i1 @_ZNK12hb_hashmap_tIj6TripleLb0EE8is_equalERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.ac)
  br i1 %i.ad, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !355
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %..loopexit_crit_edge, label %bb.k

..loopexit_crit_edge:                             ; preds = %bb.e
  %.pre58 = load ptr, ptr %i.o, align 8, !tbaa !355
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge, %.lr.ph
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.v, %.lr.ph ] ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = trunc i32 %i.ah to i1
  %i.aj = icmp ne i32 %.03247, -1
end_hunk_2
begin_hunk_3_@_Z26hb_resolve_graph_overflowsjjbRN5graph7graph_tE:bb.a
.split.thread:                                    ; preds = %.critedge.i.thread
  call void @hb_free(ptr noundef %.sroa.21.0.lcssa322.i) #18
  br label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit

.split:                                           ; preds = %.critedge.i
  call void @hb_free(ptr noundef %.sroa.21.0.lcssa322.i) #18
  br label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread

_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread: ; preds = %.critedge.i, %.split, %.loopexit
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.na = load i8, ptr %i.mz, align 2, !tbaa !608, !range !201, !noundef !210
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %bb.ax, label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit

bb.ax:                                            ; preds = %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread
  call void @_ZN5graph7graph_t22sort_shortest_distanceEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  br label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit

_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit: ; preds = %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread, %bb.ax
  %i.nc = load i8, ptr %i.m, align 1, !tbaa !574, !range !201, !noundef !210
  %i.nd = trunc nuw i8 %i.nc to i1
  %.not.i75 = xor i1 %i.nd, true
  %i.ne = load i32, ptr %3, align 8
  %i.nf = icmp slt i32 %i.ne, 0
  %or.cond.i76 = select i1 %.not.i75, i1 true, i1 %i.nf
  %i.ng = load i32, ptr %i.r, align 8
  %i.nh = icmp slt i32 %i.ng, 0
  %or.cond4.i77 = select i1 %or.cond.i76, i1 true, i1 %i.nh
  %i.ni = load i32, ptr %i.u, align 8
  %i.nj = icmp slt i32 %i.ni, 0
  %i.nk = select i1 %or.cond4.i77, i1 true, i1 %i.nj
  br i1 %i.nk, label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit
  %i.nl = call noundef zeroext i1 @_ZN5graph13will_overflowERNS_7graph_tEP11hb_vector_tINS_17overflow_record_tELb0EE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef null)
  br i1 %i.nl, label %bb.az, label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit

bb.az:                                            ; preds = %bb.ay, %bb.d
  %i.nm = call noundef zeroext i1 @_ZN5graph7graph_t13assign_spacesEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  br i1 %i.nm, label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.no = load i8, ptr %i.nn, align 2, !tbaa !608, !range !201, !noundef !210
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78.sink.split, label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78

_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78.sink.split: ; preds = %bb.ba, %bb.az
  call void @_ZN5graph7graph_t22sort_shortest_distanceEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  br label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78

_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78: ; preds = %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78.sink.split, %bb.ba, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.nq = load i8, ptr %i.m, align 1, !tbaa !574, !range !201, !noundef !210
  %i.nr = trunc nuw i8 %i.nq to i1
  %.not.i79203 = xor i1 %i.nr, true
  %i.ns = load i32, ptr %3, align 8
  %i.nt = icmp slt i32 %i.ns, 0
  %or.cond.i80204 = select i1 %.not.i79203, i1 true, i1 %i.nt
  %i.nu = load i32, ptr %i.r, align 8
  %i.nv = icmp slt i32 %i.nu, 0
  %or.cond4.i81205 = select i1 %or.cond.i80204, i1 true, i1 %i.nv
  %i.nw = load i32, ptr %i.u, align 8
  %i.nx = icmp slt i32 %i.nw, 0
  %i.ny = select i1 %or.cond4.i81205, i1 true, i1 %i.nx
  br i1 %i.ny, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78
  %i.nz = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.oa = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.od = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.of = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ol = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 6 uses
  %i.om = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ov = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sink.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ox = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.pg = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %17, i64 36
  %i.pi = getelementptr inbounds nuw i8, ptr %17, i64 40
  %.sink.in.i.i.i.i.i.i.i95 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.pj = getelementptr inbounds nuw i8, ptr %17, i64 64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.et
  %.0207 = phi i32 [ 0, %.lr.ph ], [ %i.pn, %bb.et ] ; 2 uses
  %.046206 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.et ] ; 3 uses
  %i.pk = call noundef zeroext i1 @_ZN5graph13will_overflowERNS_7graph_tEP11hb_vector_tINS_17overflow_record_tELb0EE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %16)
  br i1 %i.pk, label %bb.bc, label %.critedge

bb.bc:                                            ; preds = %bb.bb
  %i.pl = icmp ult i32 %.046206, %1
  %i.pm = icmp samesign ult i32 %.0207, 500
  %or.cond5 = select i1 %i.pl, i1 %i.pm, i1 false
  br i1 %or.cond5, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %bb.bc
  %i.pn = add nuw nsw i32 %.0207, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store atomic i32 1, ptr %17 monotonic, align 8
  store atomic i8 1, ptr %i.nz monotonic, align 4
  store atomic ptr null, ptr %i.oa monotonic, align 8
  store i8 1, ptr %i.ob, align 8, !tbaa !306
  store i32 0, ptr %i.oc, align 4, !tbaa !251
  store atomic i32 0, ptr %i.od monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.oe, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store atomic i32 1, ptr %5 monotonic, align 8
  store atomic i8 1, ptr %i.of monotonic, align 4
  store atomic ptr null, ptr %i.og monotonic, align 8
  store i8 1, ptr %i.oh, align 8, !tbaa !306
  store i32 0, ptr %i.oi, align 4, !tbaa !251
  store atomic i32 0, ptr %i.oj monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ok, i8 0, i64 33, i1 false)
  %i.po = load i32, ptr %i.ol, align 4, !tbaa !611
  %.03878.i = add i32 %i.po, -1                   ; 2 uses
  %i.pp = icmp sgt i32 %.03878.i, -1
  br i1 %i.pp, label %.lr.ph.i85, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i32 -1, ptr %i.f, align 4, !tbaa !206
  br label %bb.be

.lr.ph.i85:                                       ; preds = %bb.bd
  %i.pq = zext nneg i32 %.03878.i to i64
  br label %bb.bi

._crit_edge.i88:                                  ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i
  %.pre.i89 = load i8, ptr %i.om, align 8, !tbaa !250, !range !201
  %i.pr = trunc nuw i8 %.pre.i89 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i32 -1, ptr %i.f, align 4, !tbaa !206
  br i1 %i.pr, label %bb.bf, label %bb.be, !prof !1744

bb.be:                                            ; preds = %._crit_edge.i88, %._crit_edge.thread.i
  %.039.lcssa117.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.241.i, %._crit_edge.i88 ]
  %i.ps = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, ptr noundef nonnull %i.f) ; 0 uses
  %.pre.i.i.i.i = load i32, ptr %i.f, align 4, !tbaa !206
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i

bb.bf:                                            ; preds = %._crit_edge.i88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 -1, ptr %i.d, align 4, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 -1, ptr %i.e, align 4, !tbaa !206
  %i.pt = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, ptr noundef nonnull %i.e) ; 0 uses
  %i.pu = load i32, ptr %i.e, align 4, !tbaa !206
  %.not.i.i.i.i90 = icmp eq i32 %i.pu, 0
  br i1 %.not.i.i.i.i90, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 -1, ptr %i.e, align 4, !tbaa !206
  %i.pv = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.pw = load i32, ptr %i.e, align 4, !tbaa !206
  %i.px = add i32 %i.pw, 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sink.i.i.i.i.i = phi i32 [ %i.px, %bb.bg ], [ 0, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i: ; preds = %bb.bh, %bb.be
  %.039.lcssa116.i = phi i32 [ %.039.lcssa117.i, %bb.be ], [ %.241.i, %bb.bh ] ; 2 uses
  %i.py = phi i32 [ %.pre.i.i.i.i, %bb.be ], [ %.sink.i.i.i.i.i, %bb.bh ]
  %.not = icmp eq i32 %i.py, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br i1 %.not, label %_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit.thread, label %bb.bo

_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit.thread: ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.pz = add nuw i32 %.046206, 1                 ; 2 uses
  %i.qa = load i32, ptr %i.ol, align 4, !tbaa !611
  %.02180.i = add i32 %i.qa, -1                   ; 2 uses
  %i.qb = icmp sgt i32 %.02180.i, -1
  br i1 %i.qb, label %.lr.ph.i94, label %.thread

bb.bi:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, %.lr.ph.i85
  %indvars.iv.i = phi i64 [ %i.pq, %.lr.ph.i85 ], [ %indvars.iv.next.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i ] ; 4 uses
  %.03979.i = phi i32 [ 0, %.lr.ph.i85 ], [ %.241.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i ] ; 5 uses
  %i.qc = load i32, ptr %i.ol, align 4, !tbaa !611
  %i.qd = zext i32 %i.qc to i64
  %.not.i.i86 = icmp samesign ult i64 %indvars.iv.i, %i.qd
  %i.qe = load ptr, ptr %i.on, align 8
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.i
  %.0.i.i87 = select i1 %.not.i.i86, ptr %i.qf, ptr @_hb_NullPool, !prof !207
  %i.qg = load i32, ptr %.0.i.i87, align 4, !tbaa !613 ; 3 uses
  %i.qh = load i32, ptr %i.oo, align 4, !tbaa !575 ; 3 uses
  %.not.i29.i.i = icmp ult i32 %i.qg, %i.qh
  %i.qi = load ptr, ptr %i.op, align 8            ; 3 uses
  %i.qj = zext i32 %i.qg to i64
  %i.qk = getelementptr inbounds nuw [216 x i8], ptr %i.qi, i64 %i.qj
  %.0.i30.i.i = select i1 %.not.i29.i.i, ptr %i.qk, ptr @_hb_NullPool, !prof !207 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i30.i.i, i64 64
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !614 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.qm, 0
  br i1 %.not31.i.i, label %.lr.ph.preheader.i.i, label %_ZNK5graph7graph_t9space_forEjPj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bi
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i30.i.i, i64 80
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !579
  %.not1867.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not1867.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, label %.lr.ph69.i.i

.lr.ph.i.i:                                       ; preds = %bb.bj
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !579
  %.not18.i.i = icmp eq i32 %i.qq, 0
  br i1 %.not18.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, label %.lr.ph69.i.i

.lr.ph69.i.i:                                     ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %.pre3979.i.i = phi ptr [ %.pre3980.i.i, %.lr.ph.i.i ], [ %i.qi, %.lr.ph.preheader.i.i ] ; 4 uses
  %.pre3876.i.i = phi i32 [ %.pre3877.i.i, %.lr.ph.i.i ], [ %i.qh, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0.i3368.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i ], [ %.0.i30.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.qr = phi i32 [ %i.rf, %.lr.ph.i.i ], [ %i.qh, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.qs = phi ptr [ %i.re, %.lr.ph.i.i ], [ %i.qi, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i3368.i.i, i64 84
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !615, !noalias !1745 ; 6 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i3368.i.i, i64 124
  %.val.i.i.i = load i32, ptr %i.qv, align 4, !tbaa !616, !noalias !1745
  %i.qw = add i32 %.val.i.i.i, 1                  ; 2 uses
  %.not15.i.i.i.i.i.i.i.i = icmp ult i32 %i.qw, 2
  br i1 %.not15.i.i.i.i.i.i.i.i, label %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i: ; preds = %.lr.ph69.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %.0.i3368.i.i, i64 136
  %.val1.i.i.i91 = load ptr, ptr %i.qx, align 8, !tbaa !617, !noalias !1745
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i = phi i32 [ %i.rb, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i ], [ %i.qw, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i ]
  %.sroa.02.0.i.i.i.i = phi ptr [ %i.rc, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i ], [ %.val1.i.i.i91, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i ] ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !noalias !1746
  %i.ra = trunc i32 %i.qz to i1
  br i1 %i.ra, label %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i
  %i.rb = add i32 %.sroa.5.sroa.0.0.i.i.i.i, -1   ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 12
  %i.rd = icmp eq i32 %i.rb, 0
  br i1 %i.rd, label %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i, !llvm.loop !47

_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i
  %.not25.i.i = icmp eq i32 %i.qu, -1
  br i1 %.not25.i.i, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i", label %bb.bj

_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i
  %.not2559.i.i = icmp eq i32 %i.qu, -1
  br i1 %.not2559.i.i, label %.thread.i.i93, label %bb.bj

_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i: ; preds = %.lr.ph69.i.i
  %.not2548.i.i = icmp eq i32 %i.qu, -1
  br i1 %.not2548.i.i, label %.thread.i.i93, label %bb.bj

.thread.i.i93:                                    ; preds = %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  %.pre38.pre.i.i = load i32, ptr %i.oo, align 4, !tbaa !575
  %.pre39.pre.i.i = load ptr, ptr %i.op, align 8
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i"

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i": ; preds = %.thread.i.i93, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i
  %.pre39.i.i = phi ptr [ %.pre39.pre.i.i, %.thread.i.i93 ], [ %.pre3979.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ] ; 2 uses
  %.pre38.i.i = phi i32 [ %.pre38.pre.i.i, %.thread.i.i93 ], [ %.pre3876.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %.thread.i.i93 ], [ %.sroa.02.0.i.i.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ]
  %.pre.i.i = load i32, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !206
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i", %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i
  %.pre3980.i.i = phi ptr [ %.pre39.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %.pre3979.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %.pre3979.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %.pre3979.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ]
  %.pre3877.i.i = phi i32 [ %.pre38.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %.pre3876.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %.pre3876.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %.pre3876.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ]
  %i.re = phi ptr [ %.pre39.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %i.qs, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %i.qs, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %i.qs, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ] ; 2 uses
  %i.rf = phi i32 [ %.pre38.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %i.qr, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %i.qr, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %i.qr, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ] ; 2 uses
  %i.rg = phi i32 [ %.pre.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %i.qu, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %i.qu, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %i.qu, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ] ; 3 uses
  %.not.i.i.i92 = icmp ult i32 %i.rg, %i.rf
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [216 x i8], ptr %i.re, i64 %i.rh
  %.0.i.i.i = select i1 %.not.i.i.i92, ptr %i.ri, ptr @_hb_NullPool, !prof !207 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !614 ; 2 uses
  %.not.i48.i = icmp eq i32 %i.rk, 0
  br i1 %.not.i48.i, label %.lr.ph.i.i, label %_ZNK5graph7graph_t9space_forEjPj.exit.i

_ZNK5graph7graph_t9space_forEjPj.exit.i:          ; preds = %bb.bj, %bb.bi
  %.pre40.i.i = phi i32 [ %i.qm, %bb.bi ], [ %i.rk, %bb.bj ] ; 6 uses
  %.014.lcssa.i.i = phi i32 [ %i.qg, %bb.bi ], [ %i.rg, %bb.bj ] ; 2 uses
  %i.rl = load i32, ptr %i.oq, align 4, !tbaa !360
  %.not.i.i49.i = icmp ult i32 %.pre40.i.i, %i.rl
  %i.rm = load ptr, ptr %i.or, align 8
  %i.rn = zext i32 %.pre40.i.i to i64
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.rn
  %.0.i.i50.i = select i1 %.not.i.i49.i, ptr %i.ro, ptr @_hb_NullPool, !prof !207
  %i.rp = load i32, ptr %.0.i.i50.i, align 4, !tbaa !206
  %i.rq = icmp ult i32 %i.rp, 2
  br i1 %i.rq, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZNK5graph7graph_t9space_forEjPj.exit.i
  %.not47.i = icmp eq i32 %.03979.i, 0
  %spec.select.i = select i1 %.not47.i, i32 %.pre40.i.i, i32 %.03979.i ; 2 uses
  %i.rr = icmp eq i32 %spec.select.i, %.pre40.i.i
  br i1 %i.rr, label %bb.bl, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.rs = load i8, ptr %i.om, align 8, !tbaa !250, !range !201, !noundef !210
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %bb.bm, label %bb.bn, !prof !103

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, i32 noundef %.014.lcssa.i.i)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

bb.bn:                                            ; preds = %bb.bl
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, i32 noundef %.014.lcssa.i.i)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i: ; preds = %.lr.ph.i.i, %bb.bn, %bb.bm, %bb.bk, %_ZNK5graph7graph_t9space_forEjPj.exit.i, %.lr.ph.preheader.i.i
  %.241.i = phi i32 [ %.03979.i, %.lr.ph.preheader.i.i ], [ %.03979.i, %_ZNK5graph7graph_t9space_forEjPj.exit.i ], [ %.pre40.i.i, %bb.bn ], [ %spec.select.i, %bb.bk ], [ %.pre40.i.i, %bb.bm ], [ %.03979.i, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ru = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ru, label %bb.bi, label %._crit_edge.i88, !llvm.loop !1735

bb.bo:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i
  %i.rv = load i32, ptr %i.oq, align 4, !tbaa !360
  %.not.i.i51.i = icmp ult i32 %.039.lcssa116.i, %i.rv
  %i.rw = load ptr, ptr %i.or, align 8
  %i.rx = zext i32 %.039.lcssa116.i to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.rx
  %.0.i.i52.i = select i1 %.not.i.i51.i, ptr %i.ry, ptr @_hb_NullPool, !prof !207
  %i.rz = load i32, ptr %.0.i.i52.i, align 4, !tbaa !206
  %i.sa = lshr i32 %i.rz, 1
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.sa, i32 1) ; 2 uses
  %i.sb = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.oh)
  %i.sc = icmp ugt i32 %i.sb, %.sroa.speculated.i
  br i1 %i.sc, label %bb.bp, label %_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit

bb.bp:                                            ; preds = %bb.bo
  %i.sd = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.oh)
  %i.se = load ptr, ptr %i.os, align 8, !tbaa !361 ; 2 uses
  %i.sf = load i32, ptr %i.ot, align 4, !tbaa !360 ; 2 uses
  %i.sg = zext i32 %i.sf to i64
  %.idx.i = shl nuw nsw i64 %i.sg, 2
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 %.idx.i
  %.not81.i = icmp eq i32 %i.sf, 0
  br i1 %.not81.i, label %_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %bb.bp
  %i.si = sub i32 %i.sd, %.sroa.speculated.i
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ci, %.lr.ph85.i
  %.083.i = phi ptr [ %i.se, %.lr.ph85.i ], [ %i.ve, %bb.ci ] ; 2 uses
  %.03682.i = phi i32 [ %i.si, %.lr.ph85.i ], [ %.2.i, %bb.ci ] ; 3 uses
  %i.sj = load i32, ptr %.083.i, align 4, !tbaa !206 ; 6 uses
  %.not45.not.i = icmp eq i32 %.03682.i, 0
  br i1 %.not45.not.i, label %_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.sk = lshr i32 %i.sj, 9                       ; 6 uses
  %i.sl = load atomic i32, ptr %i.oj monotonic, align 8 ; 2 uses
  %i.sm = load i32, ptr %i.ou, align 4, !tbaa !399 ; 6 uses
  %i.sn = icmp ult i32 %i.sl, %i.sm
  %i.so = load ptr, ptr %i.ov, align 8, !tbaa !368 ; 6 uses
  br i1 %i.sn, label %bb.bs, label %._crit_edge.i.i.i.i.i.i.i, !prof !207

bb.bs:                                            ; preds = %bb.br
  %i.sp = zext i32 %i.sl to i64                   ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !401
  %.not.i.i.i.i.i.i.i84 = icmp eq i32 %i.sr, %i.sk
  br i1 %.not.i.i.i.i.i.i.i84, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.bs, %bb.br
end_hunk_3
begin_hunk_4_@_ZNK5graph14PairPosFormat211clone_rangeERNS0_15split_context_tEjj:bb.a
  %i.bjl = getelementptr inbounds nuw i8, ptr %.0.i.i.i162, i64 24
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !661
  %wide.trip.count.i168 = zext i32 %i.bjk to i64
  br label %bb.lk

bb.lj:                                            ; preds = %bb.lk
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %indvars.iv.next.i171, %wide.trip.count.i168
  br i1 %exitcond.not.i172, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174, label %bb.lk, !llvm.loop !52

bb.lk:                                            ; preds = %bb.lj, %.lr.ph.i167
  %indvars.iv.i169 = phi i64 [ 0, %.lr.ph.i167 ], [ %indvars.iv.next.i171, %bb.lj ] ; 2 uses
  %i.bjn = getelementptr inbounds nuw [12 x i8], ptr %i.bjm, i64 %indvars.iv.i169 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 4
  %i.bjp = load i32, ptr %i.bjo, align 4, !tbaa !337
  %i.bjq = zext i32 %i.bjp to i64
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjf, i64 %i.bjq
  %.not23.not.i170 = icmp eq ptr %i.bja, %i.bjr
  br i1 %.not23.not.i170, label %.thread.i173, label %bb.lj

.thread.i173:                                     ; preds = %bb.lk
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjn, i64 8
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !335
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174: ; preds = %bb.lj, %bb.lh, %bb.li, %.thread.i173
  %.4.i165 = phi i32 [ -1, %bb.lh ], [ %i.bjt, %.thread.i173 ], [ -1, %bb.li ], [ -1, %bb.lj ] ; 3 uses
  %.not.i175 = icmp ult i32 %i.m, %i.bjb
  br i1 %.not.i175, label %bb.lm, label %bb.ll, !prof !207

bb.ll:                                            ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177

bb.lm:                                            ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174
  %i.bju = getelementptr inbounds nuw [216 x i8], ptr %i.bjc, i64 %i.s
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177: ; preds = %bb.ll, %bb.lm
  %.0.i176 = phi ptr [ @_hb_CrapPool, %bb.ll ], [ %i.bju, %bb.lm ] ; 4 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %.0.i176, i64 20 ; 3 uses
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !263 ; 2 uses
  %i.bjx = add i32 %i.bjw, 1                      ; 5 uses
  %i.bjy = icmp slt i32 %i.bjx, 0
  br i1 %i.bjy, label %bb.lr, label %bb.ln, !prof !103

bb.ln:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177
  %i.bjz = getelementptr inbounds nuw i8, ptr %.0.i176, i64 16
  %i.bka = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bjz, i32 noundef %i.bjx, i1 noundef zeroext false)
  br i1 %i.bka, label %bb.lo, label %bb.lr, !prof !333

bb.lo:                                            ; preds = %bb.ln
  %i.bkb = load i32, ptr %i.bjv, align 4, !tbaa !263 ; 3 uses
  %i.bkc = icmp ugt i32 %i.bjx, %i.bkb
  br i1 %i.bkc, label %bb.lp, label %bb.ls

bb.lp:                                            ; preds = %bb.lo
  %i.bkd = sub nuw nsw i32 %i.bjx, %i.bkb
  %i.bke = mul i32 %i.bkd, 12                     ; 2 uses
  %.not.i.i.i.i.i179 = icmp eq i32 %i.bke, 0
  br i1 %.not.i.i.i.i.i179, label %bb.ls, label %bb.lq, !prof !103

bb.lq:                                            ; preds = %bb.lp
  %i.bkf = getelementptr inbounds nuw i8, ptr %.0.i176, i64 24
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !264
  %i.bkh = zext nneg i32 %i.bkb to i64
  %i.bki = getelementptr inbounds nuw [12 x i8], ptr %i.bkg, i64 %i.bkh
  %i.bkj = zext i32 %i.bke to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bki, i8 0, i64 %i.bkj, i1 false)
  br label %bb.ls

bb.lr:                                            ; preds = %bb.ln, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

bb.ls:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  store i32 %i.bjx, ptr %i.bjv, align 4, !tbaa !263
  %i.bkk = getelementptr inbounds nuw i8, ptr %.0.i176, i64 24
  %i.bkl = load ptr, ptr %i.bkk, align 8, !tbaa !264
  %i.bkm = zext i32 %i.bjw to i64
  %i.bkn = getelementptr inbounds nuw [12 x i8], ptr %i.bkl, i64 %i.bkm
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit: ; preds = %bb.lr, %bb.ls
  %.0.i178 = phi ptr [ @_hb_CrapPool, %bb.lr ], [ %i.bkn, %bb.ls ] ; 4 uses
  %i.bko = load i32, ptr %.0.i178, align 4
  %i.bkp = and i32 %i.bko, -8
  %i.bkq = or disjoint i32 %i.bkp, 2
  store i32 %i.bkq, ptr %.0.i178, align 4
  %i.bkr = getelementptr inbounds nuw i8, ptr %.0.i178, i64 8
  store i32 %.4.i165, ptr %i.bkr, align 4, !tbaa !335
  %i.bks = getelementptr inbounds nuw i8, ptr %.0.i178, i64 4
  store i32 10, ptr %i.bks, align 4, !tbaa !337
  %i.bkt = load i32, ptr %i.o, align 4, !tbaa !575
  %.not.i180 = icmp ult i32 %.4.i165, %i.bkt
  br i1 %.not.i180, label %bb.lu, label %bb.lt, !prof !207

bb.lt:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182

bb.lu:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  %i.bku = load ptr, ptr %i.q, align 8, !tbaa !581
  %i.bkv = zext i32 %.4.i165 to i64
  %i.bkw = getelementptr inbounds nuw [216 x i8], ptr %i.bku, i64 %i.bkv
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182: ; preds = %bb.lt, %bb.lu
  %.0.i181 = phi ptr [ @_hb_CrapPool, %bb.lt ], [ %i.bkw, %bb.lu ]
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i181, i32 noundef %i.m, i1 noundef zeroext false)
  br label %bb.lv

bb.lv:                                            ; preds = %"_ZN5graph8ClassDef13add_class_defI13hb_map_iter_tI16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EEEEbRNS_24gsubgpos_graph_context_tEjjT_j.exit.thread", %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread", %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit", %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182
  %.0 = phi i32 [ %i.m, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182 ], [ -1, %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit" ], [ -1, %"_ZN5graph8ClassDef13add_class_defI13hb_map_iter_tI16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EEEEbRNS_24gsubgpos_graph_context_tEjjT_j.exit.thread" ], [ -1, %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0206)
  br label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread

_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread: ; preds = %bb.v, %bb.t, %bb.s, %bb.u, %bb.q, %bb.n, %bb.m, %bb.o, %.split, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit, %_ZNK5graph8ClassDef8sanitizeERKNS_7graph_t8vertex_tE.exit, %bb.lv
  %.1 = phi i32 [ %.0, %bb.lv ], [ -1, %_ZNK5graph8ClassDef8sanitizeERKNS_7graph_t8vertex_tE.exit ], [ -1, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit ], [ -1, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79 ], [ -1, %.split ], [ -1, %bb.q ], [ -1, %bb.o ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.u ], [ -1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.lw

bb.lw:                                            ; preds = %bb.a, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread
  %.2 = phi i32 [ %.1, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread ], [ -1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5graph14PairPosFormat220clone_class1_recordsERNS0_15split_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !683  ; 2 uses
  %i.e = sub i32 %4, %3
  %i.f = mul i32 %i.d, %i.e                       ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !725, !nonnull !210, !align !600
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !599, !nonnull !210, !align !600 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !575
  %.not.i.i = icmp ult i32 %2, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %i.a
  %.0.i.i = select i1 %.not.i.i, ptr %i.o, ptr @_hb_NullPool, !prof !207
  %i.p = load ptr, ptr %.0.i.i, align 8, !tbaa !336
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = mul i32 %i.d, %3
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.t, i64 %i.g, i1 false), !alias.scope !2356
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2357, !nonnull !210, !align !600
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !360
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2358, !nonnull !210, !align !600
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !360
  %.not66 = icmp eq i32 %i.ab, 0
  br i1 %.not66, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL9hb_memcpyPvPKvm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !240 ; 2 uses
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32                   ; 3 uses
  %i.ag = icmp ult i32 %3, %4
  br i1 %i.ag, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %.not71 = icmp eq i16 %i.ad, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04270 = phi i32 [ %i.ap, %._crit_edge ], [ %3, %.preheader.lr.ph ] ; 3 uses
  %i.am = mul i32 %.04270, %i.af
  %i.an = sub nuw i32 %.04270, %3
  %i.ao = mul i32 %i.an, %i.af
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65
  %i.ap = add i32 %.04270, 1                      ; 2 uses
  %exitcond74.not = icmp eq i32 %i.ap, %4
  br i1 %exitcond74.not, label %.loopexit, label %.preheader, !llvm.loop !2353

bb.e:                                             ; preds = %.preheader, %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65
  %.069 = phi i32 [ 0, %.preheader ], [ %i.fu, %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65 ] ; 3 uses
  %i.aq = load i32, ptr %i.ah, align 8, !tbaa !684 ; 2 uses
  %i.ar = add i32 %.069, %i.am
  %i.as = mul i32 %i.aq, %i.ar                    ; 2 uses
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !685 ; 2 uses
  %i.au = add i32 %i.as, %i.at
  %i.av = add i32 %.069, %i.ao
  %i.aw = mul i32 %i.aq, %i.av                    ; 2 uses
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = load ptr, ptr %i.u, align 8, !tbaa !2357, !nonnull !210, !align !600 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !361 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !360 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %.idx26.i = shl nuw nsw i64 %i.bd, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx26.i
  %.not24.i = icmp eq i32 %i.bc, 0
  br i1 %.not24.i, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bf = load ptr, ptr %1, align 8, !tbaa !725, !nonnull !210, !align !600
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !599, !nonnull !210, !align !600 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !575
  %.not.i.i.i = icmp ult i32 %2, %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [216 x i8], ptr %i.bl, i64 %i.a
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.bm, ptr @_hb_NullPool, !prof !207
  %i.bn = load ptr, ptr %.0.i.i.i, align 8, !tbaa !336
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !2359, !nonnull !210, !align !600
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !617
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i
  %.02125.i = phi ptr [ %i.di, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %i.bt = load i32, ptr %.02125.i, align 4, !tbaa !206 ; 2 uses
  %i.bu = add i32 %i.bt, %i.as                    ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bv
  %.idx.i = shl i32 %i.bu, 1
  %i.bx = add i32 %.idx.i, 16                     ; 3 uses
  %i.by = load ptr, ptr %i.aj, align 8, !tbaa !2359, !nonnull !210, !align !600 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !617 ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i44, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.cb = mul i32 %i.bx, 506952113
  %i.cc = and i32 %i.cb, 1073741822
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !634
  %i.cf = urem i32 %i.cc, %i.ce                   ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = and i32 %i.cj, 2
  %.not15.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = load i32, ptr %i.ch, align 4, !tbaa !206
  %i.co = icmp eq i32 %i.cn, %i.bx
  br i1 %i.co, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = load i32, ptr %i.cv, align 4, !tbaa !206
  %i.cq = icmp eq i32 %i.cp, %i.bx
  br i1 %i.cq, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !50

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.01016.i20.i.i.i = phi i32 [ %i.ct, %bb.g ], [ %i.cf, %.lr.ph.i.i.i.i ]
  %.017.i19.i.i.i = phi i32 [ %i.cr, %bb.g ], [ 0, %.lr.ph.i.i.i.i ]
  %i.cr = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.cs = add i32 %i.cr, %.01016.i20.i.i.i
  %i.ct = and i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = and i32 %i.cx, 2
  %.not.i.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, label %bb.g, !llvm.loop !50

_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.lcssa17.i.i.i = phi i32 [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.cx, %bb.g ]
  %i.cz = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.cz, label %bb.h, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i

bb.h:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i
  %i.da = load ptr, ptr %1, align 8, !tbaa !725, !nonnull !210, !align !600
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !599, !nonnull !210, !align !600
  %i.dd = load i32, ptr %i.ak, align 8, !tbaa !682
  %i.de = add i32 %i.bt, %i.aw
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.df
  %i.dh = tail call noundef i32 @_ZN5graph7graph_t10move_childIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEjjPKT_jS9_(ptr noundef nonnull align 8 dereferenceable(88) %i.dc, i32 noundef %i.dd, ptr noundef nonnull %i.bw, i32 noundef %2, ptr noundef nonnull %i.dg) ; 0 uses
  br label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i

_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i: ; preds = %.lr.ph.i.i.i, %bb.h, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i, %bb.f, %.lr.ph.split.i
  %i.di = getelementptr inbounds nuw i8, ptr %.02125.i, i64 4 ; 2 uses
  %.not.i45 = icmp eq ptr %i.di, %i.be
  br i1 %.not.i45, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit, label %.lr.ph.split.i, !llvm.loop !2354

_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit: ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, %bb.e, %.lr.ph.i
  %i.dj = load ptr, ptr %i.al, align 8, !tbaa !2358, !nonnull !210, !align !600 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !361 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !360 ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %.idx26.i46 = shl nuw nsw i64 %i.do, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx26.i46
  %.not24.i47 = icmp eq i32 %i.dn, 0
  br i1 %.not24.i47, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit
  %i.dq = load ptr, ptr %1, align 8, !tbaa !725, !nonnull !210, !align !600
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !599, !nonnull !210, !align !600 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !575
  %.not.i.i.i49 = icmp ult i32 %2, %i.du
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw [216 x i8], ptr %i.dw, i64 %i.a
  %.0.i.i.i50 = select i1 %.not.i.i.i49, ptr %i.dx, ptr @_hb_NullPool, !prof !207
  %i.dy = load ptr, ptr %.0.i.i.i50, align 8, !tbaa !336
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !2359, !nonnull !210, !align !600
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !617
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65, label %.lr.ph.split.i51

.lr.ph.split.i51:                                 ; preds = %.lr.ph.i48, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i63
  %.02125.i52 = phi ptr [ %i.ft, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i63 ], [ %i.dl, %.lr.ph.i48 ] ; 2 uses
  %i.ee = load i32, ptr %.02125.i52, align 4, !tbaa !206 ; 2 uses
  %i.ef = add i32 %i.au, %i.ee                    ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.eg
  %.idx.i53 = shl i32 %i.ef, 1
  %i.ei = add i32 %.idx.i53, 16                   ; 3 uses
  %i.ej = load ptr, ptr %i.aj, align 8, !tbaa !2359, !nonnull !210, !align !600 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !617 ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.el, null
  br i1 %.not.i.i54, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i63, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i51
  %i.em = mul i32 %i.ei, 506952113
  %i.en = and i32 %i.em, 1073741822
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !634
  %i.eq = urem i32 %i.en, %i.ep                   ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4            ; 2 uses
  %i.ev = and i32 %i.eu, 2
  %.not15.i.i.i.i55 = icmp eq i32 %i.ev, 0
  br i1 %.not15.i.i.i.i55, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i63, label %.lr.ph.i.i.i.i56

.lr.ph.i.i.i.i56:                                 ; preds = %bb.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = load i32, ptr %i.es, align 4, !tbaa !206
  %i.ez = icmp eq i32 %i.ey, %i.ei
  br i1 %i.ez, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i61, label %.lr.ph.i.i.i57

bb.j:                                             ; preds = %.lr.ph.i.i.i57
  %i.fa = load i32, ptr %i.fg, align 4, !tbaa !206
  %i.fb = icmp eq i32 %i.fa, %i.ei
  br i1 %i.fb, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i61, label %.lr.ph.i.i.i57, !llvm.loop !50

.lr.ph.i.i.i57:                                   ; preds = %.lr.ph.i.i.i.i56, %bb.j
  %.01016.i20.i.i.i58 = phi i32 [ %i.fe, %bb.j ], [ %i.eq, %.lr.ph.i.i.i.i56 ]
  %.017.i19.i.i.i59 = phi i32 [ %i.fc, %bb.j ], [ 0, %.lr.ph.i.i.i.i56 ]
  %i.fc = add i32 %.017.i19.i.i.i59, 1            ; 2 uses
  %i.fd = add i32 %i.fc, %.01016.i20.i.i.i58
  %i.fe = and i32 %i.fd, %i.ex                    ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4            ; 2 uses
  %i.fj = and i32 %i.fi, 2
end_hunk_4
begin_hunk_5_@_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t26create_from_tuple_var_dataENS3_16tuple_iterator_tEjjbPK8hb_map_tRK11hb_vector_tIjLb0EE10hb_array_tIKNS_7HBFixedINS1_ILb1EsLj2EEELj14EEEEP15hb_alloc_pool_tb:bb.a
  %.not22.i146 = icmp eq ptr %i.vk, null
  br i1 %.not22.i146, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i152, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit158, !prof !190

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i152: ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i145, %bb.bm
  %i.vl = load i32, ptr %i.ae, align 8, !tbaa !469 ; 2 uses
  %.not23.i153 = icmp ugt i32 %.sroa.speculated.i137, %i.vl
  br i1 %.not23.i153, label %_ZN11hb_vector_tIfLb0EE5allocEjb.exit158.thread268, label %_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit74.sink.split

_ZN11hb_vector_tIfLb0EE5allocEjb.exit158.thread268: ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i152, %.thread.i142
  %.sink.i150.ph.in = phi i32 [ %i.ur, %.thread.i142 ], [ %i.vl, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i152 ]
  %.sink.i150.ph = xor i32 %.sink.i150.ph.in, -1
  store i32 %.sink.i150.ph, ptr %i.ae, align 8, !tbaa !469
  br label %.critedge52

_ZN11hb_vector_tIfLb0EE5allocEjb.exit158:         ; preds = %bb.bi, %bb.bj, %bb.bn, %bb.bo, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i145
  %.1.i.i42.i148 = phi ptr [ %i.vk, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i145 ], [ null, %bb.bi ], [ null, %bb.bj ], [ %i.vc, %bb.bn ], [ %i.vc, %bb.bo ]
  store ptr %.1.i.i42.i148, ptr %i.af, align 8, !tbaa !470
  store i32 %.sroa.speculated.i137, ptr %i.ae, align 8, !tbaa !469
  br label %_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit74.sink.split

_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit74.sink.split: ; preds = %_ZN11hb_vector_tIfLb0EE5allocEjb.exit158, %bb.bg, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.thread53.i152, %.thread
  store i32 %3, ptr %i.ag, align 4, !tbaa !446
  br label %_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit74

_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit74: ; preds = %_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit74.sink.split, %_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit.thread262, %_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit
  br i1 %.not383513, label %._crit_edge, label %.lr.ph378

.lr.ph378:                                        ; preds = %_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit74
  %i.vm = load i32, ptr %i.ai, align 4
  %i.vn = load ptr, ptr %i.ak, align 8
  %i.vo = load i32, ptr %i.ad, align 4
  %i.vp = load ptr, ptr %i.ac, align 8
  %i.vq = load i32, ptr %i.ag, align 4
  %i.vr = load ptr, ptr %i.af, align 8
  %i.vs = zext nneg i32 %.sroa.7.1 to i64
  %wide.trip.count457 = zext nneg i32 %. to i64
  br label %bb.bs

._crit_edge:                                      ; preds = %bb.cf, %_ZN11hb_vector_tIfLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj.exit74
  %i.vt = load i32, ptr %i.am, align 4, !tbaa !331 ; 3 uses
  %i.vu = load i32, ptr %0, align 8, !tbaa !332
  %.not.i75 = icmp slt i32 %i.vt, %i.vu
  br i1 %.not.i75, label %.critedge.i77, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge
  %i.vv = add i32 %i.vt, 1
  %i.vw = call noundef zeroext i1 @_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.vv, i1 noundef zeroext false)
  br i1 %i.vw, label %..critedge_crit_edge.i, label %bb.bq, !prof !207

..critedge_crit_edge.i:                           ; preds = %bb.bp
  %.pre.i = load i32, ptr %i.am, align 4, !tbaa !331
  br label %.critedge.i77

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(160) @_hb_NullPool, i64 160, i1 false)
  br label %.critedge52

.critedge.i77:                                    ; preds = %..critedge_crit_edge.i, %._crit_edge
  %i.vx = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.vt, %._crit_edge ] ; 2 uses
  %i.vy = load ptr, ptr %i.an, align 8, !tbaa !416
  %i.vz = add i32 %i.vx, 1
  store i32 %i.vz, ptr %i.am, align 4, !tbaa !331
  %i.wa = zext i32 %i.vx to i64
  %i.wb = getelementptr inbounds nuw [160 x i8], ptr %i.vy, i64 %i.wa ; 29 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store atomic i32 1, ptr %i.wb monotonic, align 4
  store atomic i8 1, ptr %i.wc monotonic, align 4
  store atomic ptr null, ptr %i.wd monotonic, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  store i8 1, ptr %i.we, align 8, !tbaa !363
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wb, i64 18 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.wf, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.wg, i8 0, i64 120, i1 false)
  %i.wh = load i8, ptr %i.r, align 8, !range !201
  %i.wi = trunc nuw i8 %i.wh to i1
  br i1 %i.wi, label %bb.br, label %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit, !prof !207

bb.br:                                            ; preds = %.critedge.i77
  %i.wj = load i16, ptr %i.s, align 2, !tbaa !393
  store i16 %i.wj, ptr %i.wf, align 2, !tbaa !393
  store i16 0, ptr %i.s, align 2, !tbaa !393
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wb, i64 20
  %i.wl = load i32, ptr %i.u, align 4, !tbaa !206
  store i32 %i.wl, ptr %i.wk, align 4, !tbaa !206
  store i32 0, ptr %i.u, align 4, !tbaa !206
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wb, i64 24 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !206
  %i.wo = load i32, ptr %i.v, align 8, !tbaa !206
  store i32 %i.wo, ptr %i.wm, align 8, !tbaa !206
  store i32 %i.wn, ptr %i.v, align 8, !tbaa !206
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wb, i64 28 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !206
  %i.wr = load i32, ptr %i.w, align 4, !tbaa !206
  store i32 %i.wr, ptr %i.wp, align 4, !tbaa !206
  store i32 %i.wq, ptr %i.w, align 4, !tbaa !206
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wb, i64 32 ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !206
  %i.wu = load i32, ptr %i.x, align 8, !tbaa !206
  store i32 %i.wu, ptr %i.ws, align 8, !tbaa !206
  store i32 %i.wt, ptr %i.x, align 8, !tbaa !206
  %i.wv = load ptr, ptr %i.t, align 8, !tbaa !468
  store ptr %i.wv, ptr %i.wg, align 8, !tbaa !468
  store ptr null, ptr %i.t, align 8, !tbaa !468
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  %.pre466 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !206
  br label %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit

_ZN2OT4swapERNS_13tuple_delta_tES1_.exit:         ; preds = %.critedge.i77, %bb.br
  %i.ww = phi i32 [ 0, %.critedge.i77 ], [ %.pre466, %bb.br ]
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  %i.wy = load i32, ptr %i.y, align 8, !tbaa !206
  store i32 %i.wy, ptr %i.wx, align 8, !tbaa !206
  store i32 %i.ww, ptr %i.y, align 8, !tbaa !206
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wb, i64 52 ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !206
  %i.xb = load i32, ptr %i.ai, align 4, !tbaa !206
  store i32 %i.xb, ptr %i.wz, align 4, !tbaa !206
  store i32 %i.xa, ptr %i.ai, align 4, !tbaa !206
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wb, i64 56
  %i.xd = load ptr, ptr %i.ak, align 8, !tbaa !478
  store ptr %i.xd, ptr %i.xc, align 8, !tbaa !478
  store ptr null, ptr %i.ak, align 8, !tbaa !478
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wb, i64 64 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !206
  %i.xg = load i32, ptr %i.z, align 8, !tbaa !206
  store i32 %i.xg, ptr %i.xe, align 8, !tbaa !206
  store i32 %i.xf, ptr %i.z, align 8, !tbaa !206
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wb, i64 68 ; 2 uses
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !206
  %i.xj = load i32, ptr %i.ad, align 4, !tbaa !206
  store i32 %i.xj, ptr %i.xh, align 4, !tbaa !206
  store i32 %i.xi, ptr %i.ad, align 4, !tbaa !206
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wb, i64 72
  %i.xl = load ptr, ptr %i.ac, align 8, !tbaa !479
  store ptr %i.xl, ptr %i.xk, align 8, !tbaa !479
  store ptr null, ptr %i.ac, align 8, !tbaa !479
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wb, i64 80 ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !206
  %i.xo = load i32, ptr %i.ae, align 8, !tbaa !206
  store i32 %i.xo, ptr %i.xm, align 8, !tbaa !206
  store i32 %i.xn, ptr %i.ae, align 8, !tbaa !206
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wb, i64 84 ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !206
  %i.xr = load i32, ptr %i.ag, align 4, !tbaa !206
  store i32 %i.xr, ptr %i.xp, align 4, !tbaa !206
  store i32 %i.xq, ptr %i.ag, align 4, !tbaa !206
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wb, i64 88 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !479
  %i.xu = load ptr, ptr %i.af, align 8, !tbaa !479
  store ptr %i.xu, ptr %i.xs, align 8, !tbaa !479
  store ptr %i.xt, ptr %i.af, align 8, !tbaa !479
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wb, i64 96 ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !206
  %i.xx = load i32, ptr %i.ao, align 8, !tbaa !206
  store i32 %i.xx, ptr %i.xv, align 8, !tbaa !206
  store i32 %i.xw, ptr %i.ao, align 8, !tbaa !206
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wb, i64 100 ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !206
  %i.ya = load i32, ptr %i.ap, align 4, !tbaa !206
  store i32 %i.ya, ptr %i.xy, align 4, !tbaa !206
  store i32 %i.xz, ptr %i.ap, align 4, !tbaa !206
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wb, i64 104
  %i.yc = load ptr, ptr %i.aq, align 8, !tbaa !269
  store ptr %i.yc, ptr %i.yb, align 8, !tbaa !269
  store ptr null, ptr %i.aq, align 8, !tbaa !269
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wb, i64 112 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !206
  %i.yf = load i32, ptr %i.ar, align 8, !tbaa !206
  store i32 %i.yf, ptr %i.yd, align 8, !tbaa !206
  store i32 %i.ye, ptr %i.ar, align 8, !tbaa !206
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wb, i64 116 ; 2 uses
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !206
  %i.yi = load i32, ptr %i.as, align 4, !tbaa !206
  store i32 %i.yi, ptr %i.yg, align 4, !tbaa !206
  store i32 %i.yh, ptr %i.as, align 4, !tbaa !206
  %i.yj = getelementptr inbounds nuw i8, ptr %i.wb, i64 120 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !269
  %i.yl = load ptr, ptr %i.at, align 8, !tbaa !269
  store ptr %i.yl, ptr %i.yj, align 8, !tbaa !269
  store ptr %i.yk, ptr %i.at, align 8, !tbaa !269
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wb, i64 128 ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !206
  %i.yo = load i32, ptr %i.au, align 8, !tbaa !206
  store i32 %i.yo, ptr %i.ym, align 8, !tbaa !206
  store i32 %i.yn, ptr %i.au, align 8, !tbaa !206
  %i.yp = getelementptr inbounds nuw i8, ptr %i.wb, i64 132 ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !206
  %i.yr = load i32, ptr %i.av, align 4, !tbaa !206
  store i32 %i.yr, ptr %i.yp, align 4, !tbaa !206
  store i32 %i.yq, ptr %i.av, align 4, !tbaa !206
  %i.ys = getelementptr inbounds nuw i8, ptr %i.wb, i64 136
  %i.yt = load ptr, ptr %i.aw, align 8, !tbaa !480
  store ptr %i.yt, ptr %i.ys, align 8, !tbaa !480
  store ptr null, ptr %i.aw, align 8, !tbaa !480
  br label %.critedge52

bb.bs:                                            ; preds = %.lr.ph378, %bb.cf
  %indvars.iv454 = phi i64 [ 0, %.lr.ph378 ], [ %indvars.iv.next455, %bb.cf ] ; 7 uses
  %i.yu = trunc nuw nsw i64 %indvars.iv454 to i32
  br i1 %i.cm, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.yv = load i32, ptr %.sroa.phi, align 4, !tbaa !360
  %i.yw = zext i32 %i.yv to i64
  %.not.i78 = icmp samesign ult i64 %indvars.iv454, %i.yw
  %i.yx = load ptr, ptr %.sroa.phi214, align 8
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv454
  %.0.i79 = select i1 %.not.i78, ptr %i.yy, ptr @_hb_NullPool, !prof !207
  %i.yz = load i32, ptr %.0.i79, align 4, !tbaa !206
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.za = phi i32 [ %i.yz, %bb.bt ], [ %i.yu, %bb.bs ] ; 7 uses
  %.not = icmp ult i32 %i.za, %3
  br i1 %.not, label %bb.bv, label %bb.cf

bb.bv:                                            ; preds = %bb.bu
  %.not.i80 = icmp ult i32 %i.za, %i.vm
  br i1 %.not.i80, label %bb.bx, label %bb.bw, !prof !207

bb.bw:                                            ; preds = %bb.bv
  store i8 %i.aj, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

bb.bx:                                            ; preds = %bb.bv
  %i.zb = zext i32 %i.za to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.zb
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

_ZN11hb_vector_tIbLb0EEixEi.exit:                 ; preds = %bb.bw, %bb.bx
  %.0.i81 = phi ptr [ @_hb_CrapPool, %bb.bw ], [ %i.zc, %bb.bx ]
  store i8 1, ptr %.0.i81, align 1, !tbaa !212
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph510, i64 %indvars.iv454
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !206
  %i.zf = sitofp i32 %i.ze to float
  %.not.i84 = icmp ult i32 %i.za, %i.vo
  br i1 %.not.i84, label %bb.bz, label %bb.by, !prof !207

bb.by:                                            ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit
  store i32 %i.al, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit

bb.bz:                                            ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit
  %i.zg = zext i32 %i.za to i64
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.zg
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit

_ZN11hb_vector_tIfLb0EEixEi.exit:                 ; preds = %bb.by, %bb.bz
  %.0.i85 = phi ptr [ @_hb_CrapPool, %bb.by ], [ %i.zh, %bb.bz ]
  store float %i.zf, ptr %.0.i85, align 4, !tbaa !448
  br i1 %4, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit
  %.not.i86 = icmp samesign ult i64 %indvars.iv454, %i.vs
  br i1 %.not.i86, label %bb.cc, label %bb.cb, !prof !207

bb.cb:                                            ; preds = %bb.ca
  store i32 %i.al, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit88

bb.cc:                                            ; preds = %bb.ca
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.1, i64 %indvars.iv454
  %.pre465 = load i32, ptr %i.zi, align 4, !tbaa !206
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit88

_ZN11hb_vector_tIiLb0EEixEi.exit88:               ; preds = %bb.cb, %bb.cc
  %i.zj = phi i32 [ %i.al, %bb.cb ], [ %.pre465, %bb.cc ]
  %i.zk = sitofp i32 %i.zj to float
  %.not.i89 = icmp ult i32 %i.za, %i.vq
  br i1 %.not.i89, label %bb.ce, label %bb.cd, !prof !207

bb.cd:                                            ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit88
  store i32 %i.al, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit91

bb.ce:                                            ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit88
  %i.zl = zext i32 %i.za to i64
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %i.zl
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit91

_ZN11hb_vector_tIfLb0EEixEi.exit91:               ; preds = %bb.cd, %bb.ce
  %.0.i90 = phi ptr [ @_hb_CrapPool, %bb.cd ], [ %i.zm, %bb.ce ]
  store float %i.zk, ptr %.0.i90, align 4, !tbaa !448
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit, %_ZN11hb_vector_tIfLb0EEixEi.exit91, %bb.bu
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1 ; 2 uses
  %exitcond458.not = icmp eq i64 %indvars.iv.next455, %wide.trip.count457
  br i1 %exitcond458.not, label %._crit_edge, label %bb.bs, !llvm.loop !3174

.critedge52:                                      ; preds = %bb.be, %_ZN11hb_vector_tIfLb0EE5allocEjb.exit158.thread268, %bb.bf, %bb.au, %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread258, %bb.at, %bb.as, %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit, %bb.bq, %_ZN12hb_hashmap_tIj6TripleLb0EEaSEOS1_.exit
  %i.zn = phi i1 [ false, %_ZN12hb_hashmap_tIj6TripleLb0EEaSEOS1_.exit ], [ true, %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit ], [ false, %bb.au ], [ true, %bb.bq ], [ false, %bb.as ], [ false, %bb.at ], [ false, %_ZN11hb_vector_tIfLb0EE5allocEjb.exit.thread258 ], [ false, %bb.bf ], [ false, %_ZN11hb_vector_tIfLb0EE5allocEjb.exit158.thread268 ], [ false, %bb.be ]
  call void @_ZN2OT13tuple_delta_tD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.r, %bb.u, %bb.v, %.lr.ph348, %bb.ag, %bb.ai, %bb.al, %bb.am, %.lr.ph375, %bb.y, %.critedge.i121, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116, %bb.h, %.critedge.i101, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i, %bb.g, %.critedge52, %bb.d
  %.sroa.0183.1 = phi i32 [ %.sroa.0183.3.ph508, %bb.ag ], [ %.sroa.0183.3.ph508, %bb.y ], [ %.sroa.0183.3.ph508, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116 ], [ %.sroa.0183.3.ph508, %.critedge52 ], [ %i.de, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i ], [ %.sroa.0183.0, %bb.d ], [ %.sroa.0183.0, %bb.g ], [ %.sroa.0183.0, %bb.h ], [ %i.cu, %.critedge.i101 ], [ %.sroa.0183.3.ph508, %.critedge.i121 ], [ %.sroa.0183.3.ph508, %.lr.ph375 ], [ %.sroa.0183.3.ph508, %bb.am ], [ %.sroa.0183.3.ph508, %bb.al ], [ %.sroa.0183.3.ph508, %bb.ai ], [ %.sroa.0183.3.ph507, %.lr.ph348 ], [ %.sroa.0183.3.ph507, %bb.v ], [ %.sroa.0183.3.ph507, %bb.u ], [ %.sroa.0183.3.ph507, %bb.r ], [ %.sroa.0183.3.ph507, %bb.p ] ; 3 uses
  %.sroa.7186.1 = phi i32 [ %., %bb.ag ], [ %., %bb.y ], [ %., %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116 ], [ %., %.critedge52 ], [ %.sroa.7186.0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i ], [ %.sroa.7186.0, %bb.d ], [ %.sroa.7186.0, %bb.g ], [ %.sroa.7186.0, %bb.h ], [ %.sroa.7186.0, %.critedge.i101 ], [ %., %.critedge.i121 ], [ %., %.lr.ph375 ], [ %., %bb.am ], [ %., %bb.al ], [ %., %bb.ai ], [ %., %.lr.ph348 ], [ %., %bb.v ], [ %., %bb.u ], [ %., %bb.r ], [ %., %bb.p ]
  %.sroa.12189.1 = phi ptr [ %.sroa.12189.3.ph510, %bb.ag ], [ %.sroa.12189.3.ph510, %bb.y ], [ %.sroa.12189.3.ph510, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116 ], [ %.sroa.12189.3.ph510, %.critedge52 ], [ %.sroa.12189.0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i ], [ %.sroa.12189.0, %bb.d ], [ %.sroa.12189.0, %bb.g ], [ %.sroa.12189.0, %bb.h ], [ %.sroa.12189.0, %.critedge.i101 ], [ %.sroa.12189.3.ph510, %.critedge.i121 ], [ %.sroa.12189.3.ph510, %.lr.ph375 ], [ %.sroa.12189.3.ph510, %bb.am ], [ %.sroa.12189.3.ph510, %bb.al ], [ %.sroa.12189.3.ph510, %bb.ai ], [ %.sroa.12189.3.ph509, %.lr.ph348 ], [ %.sroa.12189.3.ph509, %bb.v ], [ %.sroa.12189.3.ph509, %bb.u ], [ %.sroa.12189.3.ph509, %bb.r ], [ %.sroa.12189.3.ph509, %bb.p ] ; 3 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.4.ph, %bb.ag ], [ %.sroa.0.0, %bb.y ], [ %i.lr, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116 ], [ %.sroa.0.1, %.critedge52 ], [ %.sroa.0.0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i ], [ %.sroa.0.0, %bb.d ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.0, %.critedge.i101 ], [ %i.lh, %.critedge.i121 ], [ %.sroa.0.4.ph, %.lr.ph375 ], [ %.sroa.0.4.ph, %bb.am ], [ %.sroa.0.4.ph, %bb.al ], [ %.sroa.0.4.ph, %bb.ai ], [ %.sroa.0.0, %.lr.ph348 ], [ %.sroa.0.0, %bb.v ], [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.p ] ; 3 uses
  %.sroa.7.2 = phi i32 [ %., %bb.ag ], [ %.sroa.7.0, %bb.y ], [ %.sroa.7.0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116 ], [ %.sroa.7.1, %.critedge52 ], [ %.sroa.7.0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i ], [ %.sroa.7.0, %bb.d ], [ %.sroa.7.0, %bb.g ], [ %.sroa.7.0, %bb.h ], [ %.sroa.7.0, %.critedge.i101 ], [ %.sroa.7.0, %.critedge.i121 ], [ %., %.lr.ph375 ], [ %., %bb.am ], [ %., %bb.al ], [ %., %bb.ai ], [ %.sroa.7.0, %.lr.ph348 ], [ %.sroa.7.0, %bb.v ], [ %.sroa.7.0, %bb.u ], [ %.sroa.7.0, %bb.r ], [ %.sroa.7.0, %bb.p ]
  %.sroa.12.2 = phi ptr [ %.sroa.12.4.ph, %bb.ag ], [ %.sroa.12.0, %bb.y ], [ %.sroa.12.0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116 ], [ %.sroa.12.1, %.critedge52 ], [ %.sroa.12.0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i ], [ %.sroa.12.0, %bb.d ], [ %.sroa.12.0, %bb.g ], [ %.sroa.12.0, %bb.h ], [ %.sroa.12.0, %.critedge.i101 ], [ %.sroa.12.0, %.critedge.i121 ], [ %.sroa.12.4.ph, %.lr.ph375 ], [ %.sroa.12.4.ph, %bb.am ], [ %.sroa.12.4.ph, %bb.al ], [ %.sroa.12.4.ph, %bb.ai ], [ %.sroa.12.0, %.lr.ph348 ], [ %.sroa.12.0, %bb.v ], [ %.sroa.12.0, %bb.u ], [ %.sroa.12.0, %bb.r ], [ %.sroa.12.0, %bb.p ] ; 3 uses
  %.345 = phi i1 [ false, %bb.ag ], [ false, %bb.y ], [ false, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116 ], [ %i.zn, %.critedge52 ], [ false, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.h ], [ false, %.critedge.i101 ], [ false, %.critedge.i121 ], [ false, %.lr.ph375 ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ai ], [ false, %.lr.ph348 ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ]
  store atomic i32 -57005, ptr %11 monotonic, align 8
  %i.zo = load atomic ptr, ptr %i.j acquire, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.zo, null
  br i1 %.not.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIj6TripleLb0EEEvPT_.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %.critedge
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.zp, ptr noundef nonnull align 8 dereferenceable(56) %i.zo)
  %i.zq = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.zo) #18 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.zo) #18
  store atomic ptr null, ptr %i.j monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIj6TripleLb0EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIj6TripleLb0EEEvPT_.exit.i.i: ; preds = %bb.cg, %.critedge
  %i.zr = load ptr, ptr %i.m, align 8, !tbaa !364 ; 2 uses
  %.not.i.i = icmp eq ptr %i.zr, null
  br i1 %.not.i.i, label %bb.ci, label %bb.ch, !prof !103

bb.ch:                                            ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIj6TripleLb0EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.zr) #18
  br label %bb.ci

.thread272:                                       ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit303

bb.ci:                                            ; preds = %bb.ch, %_ZL14hb_object_finiI12hb_hashmap_tIj6TripleLb0EEEvPT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.345, label %bb.cj, label %.loopexit303

bb.cj:                                            ; preds = %bb.ci
  %i.zs = load ptr, ptr %i.f, align 8, !tbaa !3180 ; 2 uses
  %i.zt = load i16, ptr %i.zs, align 1, !tbaa !240
  %i.zu = call noundef i16 @llvm.bswap.i16(i16 %i.zt)
  %i.zv = zext i16 %i.zu to i32
  %i.zw = load i32, ptr %i.e, align 8, !tbaa !3179
  %i.zx = add i32 %i.zw, %i.zv                    ; 2 uses
  store i32 %i.zx, ptr %i.e, align 8, !tbaa !3179
  %i.zy = load i32, ptr %i.ax, align 4, !tbaa !3188
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zz ; 5 uses
  store ptr %i.aaa, ptr %i.f, align 8, !tbaa !3180
  %i.aab = load i32, ptr %1, align 8, !tbaa !3189 ; 2 uses
  %i.aac = add nsw i32 %i.aab, -1
  store i32 %i.aac, ptr %1, align 8, !tbaa !3189
  %i.aad = icmp slt i32 %i.aab, 2
  br i1 %i.aad, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %bb.ck, !prof !103

bb.ck:                                            ; preds = %bb.cj
  store i32 4, ptr %i.ax, align 4, !tbaa !3188
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %i.aaf = load ptr, ptr %i.g, align 8, !tbaa !550 ; 2 uses
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = ptrtoint ptr %i.aaf to i64             ; 2 uses
  %i.aai = sub i64 %i.aag, %i.aah
  %i.aaj = load i32, ptr %i.h, align 8, !tbaa !551
  %i.aak = zext i32 %i.aaj to i64                 ; 2 uses
  %.not.i92 = icmp ugt i64 %i.aai, %i.aak
  br i1 %.not.i92, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %bb.cl, !prof !103

bb.cl:                                            ; preds = %bb.ck
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2
  %i.aam = load i16, ptr %i.aal, align 1, !tbaa !240
  %i.aan = call noundef i16 @llvm.bswap.i16(i16 %i.aam) ; 2 uses
  %.not.i.i93 = icmp ult i16 %i.aan, 16384
  br i1 %.not.i.i93, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, label %bb.cm, !prof !207

bb.cm:                                            ; preds = %bb.cl
  %i.aao = load i32, ptr %i.ay, align 4, !tbaa !3190
  %i.aap = zext i16 %i.aan to i32                 ; 2 uses
  %i.aaq = lshr i32 %i.aap, 15
  %i.aar = lshr i32 %i.aap, 13
  %i.aas = and i32 %i.aar, 2
  %i.aat = or disjoint i32 %i.aas, %i.aaq
  %i.aau = zext nneg i32 %i.aat to i64
  %i.aav = zext i32 %i.aao to i64
  %i.aaw = mul nuw nsw i64 %i.aav, %i.aau
  %i.aax = add nuw nsw i64 %i.aaw, 4
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit: ; preds = %bb.cl, %bb.cm
  %.0.i.i = phi i64 [ %i.aax, %bb.cm ], [ 4, %bb.cl ] ; 2 uses
  %i.aay = trunc i64 %.0.i.i to i32
  store i32 %i.aay, ptr %i.ax, align 4, !tbaa !3188
  %i.aaz = and i64 %.0.i.i, 4294967295
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %i.aaz
  %i.abb = ptrtoint ptr %i.aba to i64
  %i.abc = sub i64 %i.abb, %i.aah
  %.not293 = icmp ugt i64 %i.abc, %i.aak
  br i1 %.not293, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %bb.b, !llvm.loop !3175

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread: ; preds = %bb.cj, %bb.ck, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 125
  store i8 %i.b, ptr %i.abd, align 1, !tbaa !499
end_hunk_5
begin_hunk_6_@_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd:bb.a
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ao = fdiv double %i.an, %i.ah
  %i.ap = fadd double %i.ao, %i.aj
  br label %.thread3

bb.h:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.i, label %.preheader, !llvm.loop !81

bb.i:                                             ; preds = %bb.h
  %i.aq = add i32 %.4.val, -1
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %i.ar
  %i.at = load <2 x i16>, ptr %i.as, align 1, !tbaa !240
  %i.au = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.at)
  %i.av = sitofp <2 x i16> %i.au to <2 x float>
  %i.aw = fmul nnan <2 x float> %i.av, splat (float f0x38800000)
  %i.ax = fpext <2 x float> %i.aw to <2 x double> ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  %i.az = fsub double %0, %i.ay
  %i.ba = extractelement <2 x double> %i.ax, i64 1
  %i.bb = fadd double %i.az, %i.ba
  br label %.thread3

.thread3:                                         ; preds = %bb.b, %bb.e, %bb.g, %bb.f, %bb.a, %bb.i
  %.5 = phi double [ %i.bb, %bb.i ], [ %0, %bb.a ], [ %i.ap, %bb.g ], [ %i.x, %bb.e ], [ %i.aj, %bb.f ], [ %i.n, %bb.b ]
  ret double %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN2OT19avar2_offset_knot_tELb0EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !857
  %i.c = tail call noundef zeroext i1 @_ZN11hb_vector_tIN2OT19avar2_offset_knot_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.b, i1 noundef zeroext true) ; 0 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !856
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !857  ; 2 uses
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.h = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 4
  %i.i = and i64 %i.h, 4294967280                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN11hb_vector_tIN2OT19avar2_offset_knot_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !858
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !858
  %i.n = load i32, ptr %i.g, align 4, !tbaa !857
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr readonly align 1 %i.k, i64 %i.i, i1 false), !alias.scope !3426
  br label %_ZN11hb_vector_tIN2OT19avar2_offset_knot_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit

_ZN11hb_vector_tIN2OT19avar2_offset_knot_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit: ; preds = %bb.b, %bb.c
  %i.q = load i32, ptr %i.g, align 4, !tbaa !857
  %i.r = add i32 %i.q, %i.f
  store i32 %i.r, ptr %i.g, align 4, !tbaa !857
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN11hb_vector_tIN2OT19avar2_offset_knot_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZN2OTL28_avar2_estimate_offset_errorERKNS_11SegmentMapsERK11hb_vector_tINS_12AxisValueMapELb0EEddddddRKS3_INS_19avar2_offset_knot_tELb0EE(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %8) unnamed_addr #7 {
bb.a:
  %i.a = fsub double %7, %5
  %i.b = fcmp oeq double %3, %4
  %i.c = fsub double %4, %3
  %i.d = fcmp oeq double %3, %2
  %i.e = fsub double %3, %2
  %i.f = fcmp oeq double %6, %7
  %i.g = fsub double %7, %6
  %i.h = fcmp oeq double %6, %5
  %i.i = fsub double %6, %5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit
  ret i32 %spec.select

bb.c:                                             ; preds = %bb.a, %_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit
  %.055 = phi i32 [ 0, %bb.a ], [ %i.ec, %_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit ] ; 2 uses
  %.02654 = phi i32 [ 0, %bb.a ], [ %spec.select, %_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit ]
  %i.n = uitofp nneg i32 %.055 to double
  %i.o = fmul double %i.a, %i.n
  %i.p = fmul double %i.o, 3.906250e-03
  %i.q = fadd double %5, %i.p                     ; 4 uses
  %i.r = fcmp oge double %i.q, %2
  %i.s = select i1 %i.r, double %i.q, double %2   ; 2 uses
  %i.t = fcmp ole double %i.s, %4
  %.sroa.speculated.i = select i1 %i.t, double %i.s, double %4 ; 3 uses
  %i.u = fcmp oeq double %.sroa.speculated.i, %3
  br i1 %i.u, label %_ZN2OTL22_avar2_normalize_valueEdddd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = fcmp olt double %.sroa.speculated.i, %3
  %i.w = fsub double %.sroa.speculated.i, %3      ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = fdiv double %i.w, %i.e
  %i.y = select i1 %i.d, double 0.000000e+00, double %i.x
  br label %_ZN2OTL22_avar2_normalize_valueEdddd.exit

bb.f:                                             ; preds = %bb.d
  %i.z = fdiv double %i.w, %i.c
  %i.aa = select i1 %i.b, double 0.000000e+00, double %i.z
  br label %_ZN2OTL22_avar2_normalize_valueEdddd.exit

_ZN2OTL22_avar2_normalize_valueEdddd.exit:        ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi double [ %i.aa, %bb.f ], [ %i.y, %bb.e ], [ 0.000000e+00, %bb.c ]
  %i.ab = fptrunc double %.0.i to float
  %i.ac = tail call noundef float @_ZNK2OT11SegmentMaps9map_floatEfjj(ptr noundef nonnull align 1 dereferenceable(6) %0, float noundef %i.ab, i32 noundef 0, i32 noundef 1)
  %i.ad = fcmp oge double %i.q, %5
  %i.ae = select i1 %i.ad, double %i.q, double %5 ; 2 uses
  %i.af = fcmp ole double %i.ae, %7
  %.sroa.speculated.i31 = select i1 %i.af, double %i.ae, double %7 ; 3 uses
  %i.ag = fcmp oeq double %.sroa.speculated.i31, %6
  br i1 %i.ag, label %_ZN2OTL22_avar2_normalize_valueEdddd.exit33, label %bb.g

bb.g:                                             ; preds = %_ZN2OTL22_avar2_normalize_valueEdddd.exit
  %i.ah = fcmp olt double %.sroa.speculated.i31, %6
  %i.ai = fsub double %.sroa.speculated.i31, %6   ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = fdiv double %i.ai, %i.i
  %i.ak = select i1 %i.h, double 0.000000e+00, double %i.aj
  br label %_ZN2OTL22_avar2_normalize_valueEdddd.exit33

bb.i:                                             ; preds = %bb.g
  %i.al = fdiv double %i.ai, %i.g
  %i.am = select i1 %i.f, double 0.000000e+00, double %i.al
  br label %_ZN2OTL22_avar2_normalize_valueEdddd.exit33

_ZN2OTL22_avar2_normalize_valueEdddd.exit33:      ; preds = %_ZN2OTL22_avar2_normalize_valueEdddd.exit, %bb.h, %bb.i
  %.0.i32 = phi double [ %i.am, %bb.i ], [ %i.ak, %bb.h ], [ 0.000000e+00, %_ZN2OTL22_avar2_normalize_valueEdddd.exit ] ; 6 uses
  %.val = load i32, ptr %i.j, align 4, !tbaa !849 ; 3 uses
  %.val28 = load ptr, ptr %i.k, align 8           ; 5 uses
  %.not.i = icmp eq i32 %.val, 0
  br i1 %.not.i, label %_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN2OTL22_avar2_normalize_valueEdddd.exit33
  %wide.trip.count.i = zext i32 %.val to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.p ] ; 6 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv.i
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !240
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = sitofp i16 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x38800000
  %i.as = fpext float %i.ar to double             ; 4 uses
  %i.at = fcmp oeq double %.0.i32, %i.as
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !240
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = sitofp i16 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x38800000
  %i.ba = fpext float %i.az to double
  br label %_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit

bb.k:                                             ; preds = %.preheader.i
  %i.bb = fcmp olt double %.0.i32, %i.as
  br i1 %i.bb, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load i16, ptr %i.bd, align 1, !tbaa !240
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %i.be)
  %i.bg = sitofp i16 %i.bf to float
  %i.bh = fmul nnan float %i.bg, f0x38800000
  %i.bi = fpext float %i.bh to double             ; 2 uses
  %.not51.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not51.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = fsub double %.0.i32, %i.as
  %i.bk = fadd double %i.bj, %i.bi
  br label %_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit

bb.n:                                             ; preds = %bb.l
  %i.bl = add nuw nsw i64 %indvars.iv.i, 4294967295
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %i.bm
  %i.bo = load <2 x i16>, ptr %i.bn, align 1, !tbaa !240
  %i.bp = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.bo)
  %i.bq = sitofp <2 x i16> %i.bp to <2 x float>
  %i.br = fmul nnan <2 x float> %i.bq, splat (float f0x38800000)
  %i.bs = fpext <2 x float> %i.br to <2 x double> ; 3 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0
  %i.bu = fsub double %i.as, %i.bt                ; 2 uses
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00
  %i.bw = extractelement <2 x double> %i.bs, i64 1 ; 2 uses
  br i1 %i.bv, label %_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = insertelement <2 x double> poison, double %.0.i32, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bi, i64 1
  %i.bz = fsub <2 x double> %i.by, %i.bs          ; 2 uses
  %shift = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bz, %shift
  %i.ca = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cb = fdiv double %i.ca, %i.bu
  %i.cc = fadd double %i.cb, %i.bw
  br label %_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit

bb.p:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.q, label %.preheader.i, !llvm.loop !81

bb.q:                                             ; preds = %bb.p
  %i.cd = add i32 %.val, -1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %i.ce
  %i.cg = load <2 x i16>, ptr %i.cf, align 1, !tbaa !240
  %i.ch = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.cg)
  %i.ci = sitofp <2 x i16> %i.ch to <2 x float>
  %i.cj = fmul nnan <2 x float> %i.ci, splat (float f0x38800000)
  %i.ck = fpext <2 x float> %i.cj to <2 x double> ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = fsub double %.0.i32, %i.cl
  %i.cn = extractelement <2 x double> %i.ck, i64 1
  %i.co = fadd double %i.cm, %i.cn
  br label %_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit

_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit: ; preds = %_ZN2OTL22_avar2_normalize_valueEdddd.exit33, %bb.j, %bb.m, %bb.n, %bb.o, %bb.q
  %.5.i = phi double [ %i.co, %bb.q ], [ %.0.i32, %_ZN2OTL22_avar2_normalize_valueEdddd.exit33 ], [ %i.cc, %bb.o ], [ %i.bk, %bb.m ], [ %i.bw, %bb.n ], [ %i.ba, %bb.j ] ; 4 uses
  %.val29 = load i32, ptr %i.l, align 4, !tbaa !857 ; 3 uses
  %.val30 = load ptr, ptr %i.m, align 8           ; 4 uses
  %.not357.not.i = icmp eq i32 %.val29, 0
  br i1 %.not357.not.i, label %_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit
  %wide.trip.count.i34 = zext i32 %.val29 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i36, %bb.w ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.val30, i64 %indvars.iv.i35 ; 3 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !860 ; 3 uses
  %i.cr = fcmp oeq double %.5.i, %i.cq
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !862
  br label %_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit

bb.s:                                             ; preds = %.lr.ph.i
  %i.cu = fcmp olt double %.5.i, %i.cq
  br i1 %i.cu, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not.i38 = icmp eq i64 %indvars.iv.i35, 0
  br i1 %.not.i38, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !862
  br label %_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit

bb.v:                                             ; preds = %bb.t
  %i.cx = add nuw nsw i64 %indvars.iv.i35, 4294967295
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.val30, i64 %i.cy ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !860 ; 2 uses
  %i.db = fsub double %i.cq, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !862 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.df = load double, ptr %i.de, align 8, !tbaa !862
  %i.dg = fsub double %i.df, %i.dd
  %i.dh = fsub double %.5.i, %i.da
  %i.di = fmul double %i.dh, %i.dg
  %i.dj = fdiv double %i.di, %i.db
  %i.dk = fadd double %i.dd, %i.dj
  br label %_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit

bb.w:                                             ; preds = %bb.s
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %wide.trip.count.i34
  br i1 %exitcond.not.i37, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3427

._crit_edge.i:                                    ; preds = %bb.w
  %i.dl = add i32 %.val29, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %.val30, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !862
  br label %_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit

_ZN2OTL18_avar2_eval_offsetERK11hb_vector_tINS_19avar2_offset_knot_tELb0EEd.exit: ; preds = %_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit, %bb.r, %bb.u, %bb.v, %._crit_edge.i
  %.1.i = phi double [ 0.000000e+00, %_ZN2OTL22_avar2_map_new_mappingERK11hb_vector_tINS_12AxisValueMapELb0EEd.exit ], [ %i.dp, %._crit_edge.i ], [ %i.cw, %bb.u ], [ %i.dk, %bb.v ], [ %i.ct, %bb.r ]
  %i.dq = fadd double %.5.i, %.1.i
  %i.dr = fmul float %i.ac, 1.638400e+04
  %i.ds = fadd float %i.dr, 5.000000e-01
  %i.dt = tail call noundef float @llvm.floor.f32(float %i.ds)
  %i.du = fptosi float %i.dt to i32
  %i.dv = fmul double %i.dq, 1.638400e+04
  %i.dw = fptrunc double %i.dv to float
  %i.dx = fadd float %i.dw, 5.000000e-01
  %i.dy = tail call noundef float @llvm.floor.f32(float %i.dx)
  %i.dz = fptosi float %i.dy to i32
  %i.ea = sub nsw i32 %i.du, %i.dz
  %i.eb = tail call i32 @llvm.abs.i32(i32 %i.ea, i1 true)
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.eb, i32 %.02654) ; 2 uses
  %i.ec = add nuw nsw i32 %.055, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ec, 257
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !3428
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4avar22avar2_index_map_plan_t4initERK11hb_vector_tIjLb0EERK8hb_map_tj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !387
  %i.d = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.c, i1 noundef zeroext false)
  br i1 %i.d, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.a
  %.not74 = icmp eq i32 %3, 0
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.k = load i32, ptr @_hb_NullPool, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !281  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %3 to i64
  br label %.lr.ph.split

._crit_edge.loopexit75:                           ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.262, i1 false)
  %i.p = sub nuw nsw i32 32, %i.o
  %i.q = tail call i32 @llvm.umax.i32(i32 %i.p, i32 1)
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.259, i1 false)
  %i.s = sub nuw nsw i32 32, %i.r
  %i.t = tail call i32 @llvm.umax.i32(i32 %i.s, i32 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit75, %.preheader
  %.060.lcssa = phi i32 [ 1, %.preheader ], [ %i.q, %._crit_edge.loopexit75 ], [ 1, %.lr.ph ] ; 2 uses
  %.057.lcssa = phi i32 [ 1, %.preheader ], [ %i.t, %._crit_edge.loopexit75 ], [ 1, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i1 [ false, %.preheader ], [ %.2, %._crit_edge.loopexit75 ], [ false, %.lr.ph ]
  %i.u = load i32, ptr %i.a, align 8, !tbaa !359
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.h

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !281
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %i.w = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.m, %.lr.ph.split.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ] ; 6 uses
  %.069 = phi i1 [ %.2, %.lr.ph.splitthread-pre-split ], [ false, %.lr.ph.split.preheader ] ; 5 uses
  %.05766 = phi i32 [ %.259, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ] ; 6 uses
  %.06065 = phi i32 [ %.262, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ] ; 6 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.x = trunc nuw i64 %indvars.iv to i32
  %i.y = mul i32 %i.x, 506952113
  %i.z = and i32 %i.y, 1073741823
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !385
  %i.ab = urem i32 %i.z, %i.aa                    ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = and i32 %i.af, 2
  %.not15.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.ah = load i32, ptr %i.g, align 4
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !206
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp eq i64 %indvars.iv, %i.aj
  br i1 %i.ak, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.al = load i32, ptr %i.as, align 4, !tbaa !206
  %i.am = zext i32 %i.al to i64
  %i.an = icmp eq i64 %indvars.iv, %i.am
  br i1 %i.an, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !10

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.c
  %.01016.i20.i.i = phi i32 [ %i.aq, %bb.c ], [ %i.ab, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.ao, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %i.ao = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ap = add i32 %i.ao, %.01016.i20.i.i
  %i.aq = and i32 %i.ap, %i.ah                    ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = and i32 %i.au, 2
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.c, !llvm.loop !10

_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit:  ; preds = %bb.c, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.af, %.lr.ph.i.i.i ], [ %i.au, %bb.c ]
  %i.aw = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.aw, label %bb.d, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !360
  %i.ay = zext i32 %i.ax to i64
  %.not.i13 = icmp samesign ult i64 %indvars.iv, %i.ay
  %i.az = load ptr, ptr %i.i, align 8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %.0.i14 = select i1 %.not.i13, ptr %i.ba, ptr @_hb_NullPool, !prof !207
  %i.bb = load i32, ptr %.0.i14, align 4, !tbaa !206 ; 4 uses
  %i.bc = load i32, ptr %i.j, align 4, !tbaa !360 ; 3 uses
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !359
  %.not.i15 = icmp slt i32 %i.bc, %i.bd
  br i1 %.not.i15, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = add i32 %i.bc, 1
  %i.bf = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.be, i1 noundef zeroext false)
  br i1 %i.bf, label %..critedge_crit_edge.i, label %bb.f, !prof !207

..critedge_crit_edge.i:                           ; preds = %bb.e
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !360
  br label %.critedge.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.k, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.d
  %i.bg = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.bc, %bb.d ] ; 2 uses
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !361
  %i.bi = add i32 %i.bg, 1
  store i32 %i.bi, ptr %i.j, align 4, !tbaa !360
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj
  store i32 %i.bb, ptr %i.bk, align 4, !tbaa !206
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %bb.f, %.critedge.i
  %i.bl = icmp eq i32 %i.bb, -1
  br i1 %i.bl, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %i.bm = lshr i32 %i.bb, 16
  %.sroa.speculated41 = tail call i32 @llvm.umax.i32(i32 %.05766, i32 %i.bm)
  %i.bn = and i32 %i.bb, 65535
  %.sroa.speculated37 = tail call i32 @llvm.umax.i32(i32 %.06065, i32 %i.bn)
  br label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread
end_hunk_6
