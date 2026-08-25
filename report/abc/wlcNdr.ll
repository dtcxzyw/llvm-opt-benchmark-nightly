Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcNdr?download=true
inline.NumInlined: 328
inline.NumDeleted: 80
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Wlc_NtkCheckIntegrity:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bk = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.bj) #25
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.r:                                             ; preds = %bb.p
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.bj) #24
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.q, %bb.r, %bb.l, %bb.m
  %storemerge143 = phi ptr [ %i.bg, %bb.m ], [ %i.bf, %bb.l ], [ %i.bk, %bb.q ], [ %i.bl, %bb.r ] ; 3 uses
  %spec.select.sink.i.i = phi i32 [ %i.bb, %bb.m ], [ %i.bb, %bb.l ], [ %spec.select.i.i, %bb.q ], [ %spec.select.i.i, %bb.r ] ; 4 uses
  store ptr %storemerge143, ptr %i.d, align 8, !tbaa !23
  store i32 %spec.select.sink.i.i, ptr %i.a, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.o, %bb.n, %bb.j
  %.val.i97178 = phi ptr [ %storemerge143, %Vec_IntGrow.exit.sink.split.i.i ], [ %.val.i97183, %bb.o ], [ %.val.i97183, %bb.n ], [ %.val.i97183, %bb.j ]
  %i.bm = phi i32 [ %spec.select.sink.i.i, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.m, %bb.o ], [ %i.m, %bb.n ], [ %i.m, %bb.j ]
  %i.bn = phi i32 [ %spec.select.sink.i.i, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.o, %bb.o ], [ %i.o, %bb.n ], [ %i.o, %bb.j ]
  %i.bo = phi ptr [ %storemerge143, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.p, %bb.o ], [ %i.p, %bb.n ], [ %i.p, %bb.j ] ; 2 uses
  %i.bp = phi i32 [ %spec.select.sink.i.i, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.q, %bb.o ], [ %i.q, %bb.n ], [ %i.q, %bb.j ]
  %i.bq = sext i32 %i.r to i64
  %i.br = shl nsw i64 %i.bq, 2
  %scevgep.i.i = getelementptr i8, ptr %i.bo, i64 %i.br
  %i.bs = sub i32 %i.al, %i.r
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = add nuw nsw i64 %i.bu, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.bv, i1 false), !tbaa !8
  store i32 %i.bb, ptr %i.b, align 4, !tbaa !20
  br label %Vec_IntGetEntry.exit

Vec_IntGetEntry.exit:                             ; preds = %bb.h, %Vec_IntGrow.exit.i.i
  %.val.i97182 = phi ptr [ %.val.i97183, %bb.h ], [ %.val.i97178, %Vec_IntGrow.exit.i.i ] ; 5 uses
  %i.bw = phi i32 [ %i.m, %bb.h ], [ %i.bm, %Vec_IntGrow.exit.i.i ] ; 5 uses
  %i.bx = phi i32 [ %i.n, %bb.h ], [ %i.bb, %Vec_IntGrow.exit.i.i ] ; 2 uses
  %i.by = phi i32 [ %i.o, %bb.h ], [ %i.bn, %Vec_IntGrow.exit.i.i ] ; 9 uses
  %i.bz = phi i32 [ %i.r, %bb.h ], [ %i.bb, %Vec_IntGrow.exit.i.i ] ; 3 uses
  %.val.i = phi ptr [ %i.p, %bb.h ], [ %i.bo, %Vec_IntGrow.exit.i.i ] ; 7 uses
  %i.ca = phi i32 [ %i.q, %bb.h ], [ %i.bp, %Vec_IntGrow.exit.i.i ] ; 2 uses
  %i.cb = sext i32 %i.al to i64                   ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8  ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.s, label %bb.x

bb.s:                                             ; preds = %Vec_IntGetEntry.exit
  %.not.i.not.i69 = icmp slt i32 %i.al, %i.bz
  br i1 %.not.i.not.i69, label %Vec_IntGetEntry.exit85, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = shl nsw i32 %i.by, 1                    ; 2 uses
  %.not.i70 = icmp slt i32 %i.al, %i.cf
  %.not.i.i.not.i71 = icmp sgt i32 %i.by, %i.al   ; 2 uses
  br i1 %.not.i70, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i.i.not.i71, label %Vec_IntGrow.exit.i.i76, label %Vec_IntGrow.exit.sink.split.i.i73

bb.v:                                             ; preds = %bb.t
  br i1 %.not.i.i.not.i71, label %Vec_IntGrow.exit.i.i76, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = icmp slt i32 %i.by, 1073741823
  %spec.select.i.i82 = select i1 %i.cg, i32 %i.cf, i32 2147483647 ; 2 uses
  %.not.i22.i.i83 = icmp slt i32 %i.by, %spec.select.i.i82
  br i1 %.not.i22.i.i83, label %Vec_IntGrow.exit.sink.split.i.i73, label %Vec_IntGrow.exit.i.i76

Vec_IntGrow.exit.sink.split.i.i73:                ; preds = %bb.w, %bb.u
  %spec.select.i.i82.sink = phi i32 [ %i.bb, %bb.u ], [ %spec.select.i.i82, %bb.w ] ; 4 uses
  %i.ch = sext i32 %spec.select.i.i82.sink to i64
  %i.ci = shl nsw i64 %i.ch, 2
  %i.cj = tail call ptr @realloc(ptr noundef nonnull %.val.i, i64 noundef %i.ci) #25 ; 3 uses
  store ptr %i.cj, ptr %i.d, align 8, !tbaa !23
  store i32 %spec.select.i.i82.sink, ptr %i.a, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.i.i76

Vec_IntGrow.exit.i.i76:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i73, %bb.w, %bb.v, %bb.u
  %.val.i97180 = phi ptr [ %i.cj, %Vec_IntGrow.exit.sink.split.i.i73 ], [ %.val.i97182, %bb.w ], [ %.val.i97182, %bb.v ], [ %.val.i97182, %bb.u ]
  %i.ck = phi i32 [ %spec.select.i.i82.sink, %Vec_IntGrow.exit.sink.split.i.i73 ], [ %i.bw, %bb.w ], [ %i.bw, %bb.v ], [ %i.bw, %bb.u ]
  %i.cl = phi ptr [ %i.cj, %Vec_IntGrow.exit.sink.split.i.i73 ], [ %.val.i, %bb.w ], [ %.val.i, %bb.v ], [ %.val.i, %bb.u ] ; 3 uses
  %i.cm = phi i32 [ %spec.select.i.i82.sink, %Vec_IntGrow.exit.sink.split.i.i73 ], [ %i.by, %bb.w ], [ %i.by, %bb.v ], [ %i.by, %bb.u ] ; 2 uses
  %i.cn = sext i32 %i.bz to i64
  %i.co = shl nsw i64 %i.cn, 2
  %scevgep.i.i79 = getelementptr i8, ptr %i.cl, i64 %i.co
  %i.cp = sub i32 %i.al, %i.bz
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i79, i8 0, i64 %i.cs, i1 false), !tbaa !8
  store i32 %i.bb, ptr %i.b, align 4, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cb
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !8
  br label %Vec_IntGetEntry.exit85

Vec_IntGetEntry.exit85:                           ; preds = %bb.s, %Vec_IntGrow.exit.i.i76
  %.val.i97181 = phi ptr [ %.val.i97182, %bb.s ], [ %.val.i97180, %Vec_IntGrow.exit.i.i76 ]
  %i.ct = phi i32 [ %i.bw, %bb.s ], [ %i.ck, %Vec_IntGrow.exit.i.i76 ]
  %i.cu = phi i32 [ %i.bx, %bb.s ], [ %i.bb, %Vec_IntGrow.exit.i.i76 ]
  %i.cv = phi i32 [ %i.cd, %bb.s ], [ %.pre, %Vec_IntGrow.exit.i.i76 ]
  %.val.i81 = phi ptr [ %.val.i, %bb.s ], [ %i.cl, %Vec_IntGrow.exit.i.i76 ]
  %i.cw = phi i32 [ %i.by, %bb.s ], [ %i.cm, %Vec_IntGrow.exit.i.i76 ]
  %i.cx = phi i32 [ %i.ca, %bb.s ], [ %i.cm, %Vec_IntGrow.exit.i.i76 ]
  %i.cy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.al, i32 noundef %i.cv, i32 noundef %.054153) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %Vec_IntGetEntry.exit85, %Vec_IntGetEntry.exit
  %.val.i97179 = phi ptr [ %.val.i97181, %Vec_IntGetEntry.exit85 ], [ %.val.i97182, %Vec_IntGetEntry.exit ] ; 4 uses
  %i.cz = phi ptr [ %.val.i81, %Vec_IntGetEntry.exit85 ], [ %.val.i, %Vec_IntGetEntry.exit ] ; 4 uses
  %i.da = phi i32 [ %i.ct, %Vec_IntGetEntry.exit85 ], [ %i.bw, %Vec_IntGetEntry.exit ] ; 8 uses
  %i.db = phi i32 [ %i.cu, %Vec_IntGetEntry.exit85 ], [ %i.bx, %Vec_IntGetEntry.exit ] ; 4 uses
  %i.dc = phi i32 [ %i.cw, %Vec_IntGetEntry.exit85 ], [ %i.by, %Vec_IntGetEntry.exit ]
  %i.dd = phi i32 [ %i.cx, %Vec_IntGetEntry.exit85 ], [ %i.ca, %Vec_IntGetEntry.exit ]
  %.not.i.not.i86 = icmp slt i32 %i.al, %i.db
  br i1 %.not.i.not.i86, label %Vec_IntSetEntry.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = shl nsw i32 %i.da, 1                    ; 2 uses
  %.not.i87 = icmp slt i32 %i.al, %i.de
  %.not.i.i.not.i88 = icmp sgt i32 %i.da, %i.al   ; 2 uses
  br i1 %.not.i87, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i.i.not.i88, label %Vec_IntGrow.exit.i.i93, label %Vec_IntGrow.exit.sink.split.i.i90

bb.aa:                                            ; preds = %bb.y
  br i1 %.not.i.i.not.i88, label %Vec_IntGrow.exit.i.i93, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = icmp slt i32 %i.da, 1073741823
  %spec.select.i.i98 = select i1 %i.df, i32 %i.de, i32 2147483647 ; 2 uses
  %.not.i22.i.i99 = icmp slt i32 %i.da, %spec.select.i.i98
  br i1 %.not.i22.i.i99, label %Vec_IntGrow.exit.sink.split.i.i90, label %Vec_IntGrow.exit.i.i93

Vec_IntGrow.exit.sink.split.i.i90:                ; preds = %bb.ab, %bb.z
  %spec.select.i.i98.sink = phi i32 [ %i.bb, %bb.z ], [ %spec.select.i.i98, %bb.ab ] ; 3 uses
  %i.dg = sext i32 %spec.select.i.i98.sink to i64
  %i.dh = shl nsw i64 %i.dg, 2
  %i.di = tail call ptr @realloc(ptr noundef nonnull %i.cz, i64 noundef %i.dh) #25 ; 3 uses
  store ptr %i.di, ptr %i.d, align 8, !tbaa !23
  store i32 %spec.select.i.i98.sink, ptr %i.a, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.i.i93

Vec_IntGrow.exit.i.i93:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i90, %bb.ab, %bb.aa, %bb.z
  %.val.i97186 = phi ptr [ %i.di, %Vec_IntGrow.exit.sink.split.i.i90 ], [ %.val.i97179, %bb.ab ], [ %.val.i97179, %bb.aa ], [ %.val.i97179, %bb.z ]
  %i.dj = phi ptr [ %i.di, %Vec_IntGrow.exit.sink.split.i.i90 ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.aa ], [ %i.cz, %bb.z ]
  %i.dk = phi i32 [ %spec.select.i.i98.sink, %Vec_IntGrow.exit.sink.split.i.i90 ], [ %i.da, %bb.ab ], [ %i.da, %bb.aa ], [ %i.da, %bb.z ] ; 3 uses
  %i.dl = sext i32 %i.db to i64
  %i.dm = shl nsw i64 %i.dl, 2
  %scevgep.i.i95 = getelementptr i8, ptr %i.dj, i64 %i.dm
  %i.dn = sub i32 %i.al, %i.db
  %i.do = zext i32 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i95, i8 0, i64 %i.dq, i1 false), !tbaa !8
  store i32 %i.bb, ptr %i.b, align 4, !tbaa !20
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %bb.x, %Vec_IntGrow.exit.i.i93
  %.val.i97 = phi ptr [ %.val.i97179, %bb.x ], [ %.val.i97186, %Vec_IntGrow.exit.i.i93 ] ; 3 uses
  %i.dr = phi i32 [ %i.da, %bb.x ], [ %i.dk, %Vec_IntGrow.exit.i.i93 ]
  %i.ds = phi i32 [ %i.db, %bb.x ], [ %i.bb, %Vec_IntGrow.exit.i.i93 ] ; 2 uses
  %i.dt = phi i32 [ %i.dc, %bb.x ], [ %i.dk, %Vec_IntGrow.exit.i.i93 ]
  %i.du = phi i32 [ %i.dd, %bb.x ], [ %i.dk, %Vec_IntGrow.exit.i.i93 ]
  %i.dv = getelementptr inbounds [4 x i8], ptr %.val.i97, i64 %i.cb
  store i32 %.054153, ptr %i.dv, align 4, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %Vec_IntSetEntry.exit, %Ndr_ObjReadBody.exit68.thread, %Ndr_ObjReadBody.exit68, %bb.b
  %.val.i97184 = phi ptr [ %.val.i97, %Vec_IntSetEntry.exit ], [ %.val.i97183, %Ndr_ObjReadBody.exit68.thread ], [ %.val.i97183, %Ndr_ObjReadBody.exit68 ], [ %.val.i97183, %bb.b ] ; 3 uses
  %i.dw = phi i32 [ %i.dr, %Vec_IntSetEntry.exit ], [ %i.m, %Ndr_ObjReadBody.exit68.thread ], [ %i.m, %Ndr_ObjReadBody.exit68 ], [ %i.m, %bb.b ]
  %i.dx = phi i32 [ %i.ds, %Vec_IntSetEntry.exit ], [ %i.n, %Ndr_ObjReadBody.exit68.thread ], [ %i.n, %Ndr_ObjReadBody.exit68 ], [ %i.n, %bb.b ] ; 2 uses
  %i.dy = phi i32 [ %i.dt, %Vec_IntSetEntry.exit ], [ %i.o, %Ndr_ObjReadBody.exit68.thread ], [ %i.o, %Ndr_ObjReadBody.exit68 ], [ %i.o, %bb.b ]
  %i.dz = phi ptr [ %.val.i97, %Vec_IntSetEntry.exit ], [ %i.p, %Ndr_ObjReadBody.exit68.thread ], [ %i.p, %Ndr_ObjReadBody.exit68 ], [ %i.p, %bb.b ]
  %i.ea = phi i32 [ %i.du, %Vec_IntSetEntry.exit ], [ %i.q, %Ndr_ObjReadBody.exit68.thread ], [ %i.q, %Ndr_ObjReadBody.exit68 ], [ %i.q, %bb.b ]
  %i.eb = phi i32 [ %i.ds, %Vec_IntSetEntry.exit ], [ %i.r, %Ndr_ObjReadBody.exit68.thread ], [ %i.r, %Ndr_ObjReadBody.exit68 ], [ %i.r, %bb.b ]
  %.val.i101 = load ptr, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.val.i101, i64 %i.s
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !9
  %i.ee = icmp ugt i8 %i.ed, 3
  %.val61.pre = load ptr, ptr %i.e, align 8, !tbaa !18 ; 4 uses
  br i1 %i.ee, label %Ndr_DataSize.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds [4 x i8], ptr %.val61.pre, i64 %i.s
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8
  br label %Ndr_DataSize.exit

Ndr_DataSize.exit:                                ; preds = %bb.ac, %bb.ad
  %i.eh = phi i32 [ %i.eg, %bb.ad ], [ 1, %bb.ac ]
  %i.ei = add nsw i32 %i.eh, %.054153             ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val61.pre, i64 8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.el = add i32 %i.ek, 2                        ; 2 uses
  %i.em = icmp slt i32 %i.ei, %i.el
  br i1 %i.em, label %bb.b, label %.preheader, !llvm.loop !67

bb.ae:                                            ; preds = %.lr.ph168, %Ndr_DataSize.exit132
  %.val60.pre201 = phi ptr [ %.val61.pre, %.lr.ph168 ], [ %.val60.pre264, %Ndr_DataSize.exit132 ] ; 8 uses
  %.val.i131197 = phi ptr [ %.val.pre, %.lr.ph168 ], [ %.val.i131266, %Ndr_DataSize.exit132 ] ; 6 uses
  %.promoted159 = phi ptr [ %.val.i97184, %.lr.ph168 ], [ %.promoted159195268, %Ndr_DataSize.exit132 ] ; 5 uses
  %.promoted = phi i32 [ %i.dx, %.lr.ph168 ], [ %.promoted190270, %Ndr_DataSize.exit132 ] ; 5 uses
  %.1164 = phi i32 [ 3, %.lr.ph168 ], [ %i.hl, %Ndr_DataSize.exit132 ] ; 5 uses
  %i.en = sext i32 %.1164 to i64                  ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %.val.i131197, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !9   ; 2 uses
  %.not = icmp eq i8 %i.ep, 3
  br i1 %.not, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.eq = add nsw i32 %.1164, 1                   ; 3 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %.val60.pre201, i64 %i.en
  %i.es = load i32, ptr %i.er, align 4, !tbaa !8
  %i.et = add i32 %i.es, %.1164                   ; 3 uses
  %i.eu = icmp slt i32 %i.eq, %i.et
  br i1 %i.eu, label %.lr.ph.i104, label %.loopexit.thread

.lr.ph.i104:                                      ; preds = %bb.af, %Ndr_DataSize.exit.i107
  %.016.i106 = phi i32 [ %i.fg, %Ndr_DataSize.exit.i107 ], [ %i.eq, %bb.af ] ; 2 uses
  %i.ev = sext i32 %.016.i106 to i64              ; 3 uses
  %i.ew = getelementptr inbounds i8, ptr %.val.i131197, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !9   ; 2 uses
  %i.ey = icmp eq i8 %i.ex, 6
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i104
  %i.ez = getelementptr inbounds [4 x i8], ptr %.val60.pre201, i64 %i.ev
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = icmp eq i32 %i.fa, 89
  br label %Ndr_ObjReadBody.exit108

bb.ah:                                            ; preds = %.lr.ph.i104
  %i.fc = icmp ugt i8 %i.ex, 3
  br i1 %i.fc, label %Ndr_DataSize.exit.i107, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = getelementptr inbounds [4 x i8], ptr %.val60.pre201, i64 %i.ev
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8
  br label %Ndr_DataSize.exit.i107

Ndr_DataSize.exit.i107:                           ; preds = %bb.ai, %bb.ah
  %i.ff = phi i32 [ %i.fe, %bb.ai ], [ 1, %bb.ah ]
  %i.fg = add nsw i32 %i.ff, %.016.i106           ; 2 uses
  %i.fh = icmp slt i32 %i.fg, %i.et
  br i1 %i.fh, label %.lr.ph.i104, label %Ndr_ObjReadBody.exit108, !llvm.loop !48

Ndr_ObjReadBody.exit108:                          ; preds = %Ndr_DataSize.exit.i107, %bb.ag
  %.012.i103 = phi i1 [ %i.fb, %bb.ag ], [ false, %Ndr_DataSize.exit.i107 ]
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %Ndr_ObjReadBody.exit108, %Ndr_DataSize.exit.i112
  %.0135 = phi ptr [ %.1136254, %Ndr_DataSize.exit.i112 ], [ null, %Ndr_ObjReadBody.exit108 ] ; 4 uses
  %i.fi = phi ptr [ %i.fv, %Ndr_DataSize.exit.i112 ], [ null, %Ndr_ObjReadBody.exit108 ] ; 5 uses
  %i.fj = phi ptr [ %i.fu, %Ndr_DataSize.exit.i112 ], [ null, %Ndr_ObjReadBody.exit108 ]
  %.024.i = phi i32 [ %.1.i255, %Ndr_DataSize.exit.i112 ], [ 0, %Ndr_ObjReadBody.exit108 ] ; 4 uses
  %.01923.i = phi i32 [ %i.fx, %Ndr_DataSize.exit.i112 ], [ %i.eq, %Ndr_ObjReadBody.exit108 ] ; 2 uses
  %i.fk = sext i32 %.01923.i to i64               ; 3 uses
  %i.fl = getelementptr inbounds i8, ptr %.val.i131197, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9   ; 2 uses
  %i.fn = icmp eq i8 %i.fm, 4
  br i1 %i.fn, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph.i109
  %i.fo = add nsw i32 %.024.i, 1                  ; 2 uses
  %i.fp = icmp eq ptr %i.fi, null
  br i1 %i.fp, label %bb.ak, label %Ndr_DataSize.exit.i112

bb.ak:                                            ; preds = %bb.aj
  %i.fq = getelementptr inbounds [4 x i8], ptr %.val60.pre201, i64 %i.fk ; 3 uses
  br label %Ndr_DataSize.exit.i112

bb.al:                                            ; preds = %.lr.ph.i109
  %.not.i111 = icmp eq ptr %i.fj, null
  br i1 %.not.i111, label %bb.am, label %Ndr_ObjReadArray.exit

bb.am:                                            ; preds = %bb.al
  %i.fr = icmp ugt i8 %i.fm, 3
  br i1 %i.fr, label %Ndr_DataSize.exit.i112, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val60.pre201, i64 %i.fk
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !8
  br label %Ndr_DataSize.exit.i112

Ndr_DataSize.exit.i112:                           ; preds = %bb.aj, %bb.ak, %bb.an, %bb.am
  %.1.i255 = phi i32 [ %.024.i, %bb.an ], [ %.024.i, %bb.am ], [ %i.fo, %bb.ak ], [ %i.fo, %bb.aj ] ; 2 uses
  %i.fu = phi ptr [ null, %bb.an ], [ null, %bb.am ], [ %i.fq, %bb.ak ], [ %i.fi, %bb.aj ]
  %i.fv = phi ptr [ %i.fi, %bb.an ], [ %i.fi, %bb.am ], [ %i.fq, %bb.ak ], [ %i.fi, %bb.aj ]
  %.1136254 = phi ptr [ %.0135, %bb.an ], [ %.0135, %bb.am ], [ %i.fq, %bb.ak ], [ %.0135, %bb.aj ] ; 2 uses
  %i.fw = phi i32 [ %i.ft, %bb.an ], [ 1, %bb.am ], [ 1, %bb.ak ], [ 1, %bb.aj ]
  %i.fx = add nsw i32 %i.fw, %.01923.i            ; 2 uses
  %i.fy = icmp slt i32 %i.fx, %i.et
  br i1 %i.fy, label %.lr.ph.i109, label %Ndr_ObjReadArray.exit, !llvm.loop !51

Ndr_ObjReadArray.exit:                            ; preds = %bb.al, %Ndr_DataSize.exit.i112
  %.2 = phi ptr [ %.1136254, %Ndr_DataSize.exit.i112 ], [ %.0135, %bb.al ]
  %.0.lcssa.i = phi i32 [ %.1.i255, %Ndr_DataSize.exit.i112 ], [ %.024.i, %bb.al ] ; 2 uses
  %i.fz = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.fz, label %.lr.ph158, label %.loopexit.thread

.lr.ph158:                                        ; preds = %Ndr_ObjReadArray.exit
  %wide.trip.count = zext nneg i32 %.0.lcssa.i to i64
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph158, %bb.bb
  %.promoted159196 = phi ptr [ %.promoted159, %.lr.ph158 ], [ %.promoted159197, %bb.bb ] ; 4 uses
  %.promoted191 = phi i32 [ %.promoted, %.lr.ph158 ], [ %.promoted192, %bb.bb ]
  %indvars.iv = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next, %bb.bb ] ; 4 uses
  %storemerge162 = phi ptr [ %.promoted159, %.lr.ph158 ], [ %storemerge161, %bb.bb ] ; 8 uses
  %i.ga = phi i32 [ %.promoted, %.lr.ph158 ], [ %i.gv, %bb.bb ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8  ; 6 uses
  %i.gd = add nsw i32 %i.gc, 1                    ; 6 uses
  %.not.i.not.i114 = icmp slt i32 %i.gc, %i.ga
  br i1 %.not.i.not.i114, label %Vec_IntGetEntry.exit130, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ge = load i32, ptr %i.a, align 8, !tbaa !22  ; 4 uses
  %i.gf = shl nsw i32 %i.ge, 1                    ; 2 uses
  %.not.i115 = icmp slt i32 %i.gc, %i.gf
  %.not.i.i.not.i116 = icmp sgt i32 %i.ge, %i.gc  ; 2 uses
  br i1 %.not.i115, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not.i.i.not.i116, label %Vec_IntGrow.exit.i.i121, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not9.i.i.i117 = icmp eq ptr %storemerge162, null
  %i.gg = sext i32 %i.gd to i64
  %i.gh = shl nsw i64 %i.gg, 2                    ; 2 uses
  br i1 %.not9.i.i.i117, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gi = tail call ptr @realloc(ptr noundef nonnull %storemerge162, i64 noundef %i.gh) #25
  br label %Vec_IntGrow.exit.sink.split.i.i118

bb.at:                                            ; preds = %bb.ar
  %i.gj = tail call noalias ptr @malloc(i64 noundef %i.gh) #24
  br label %Vec_IntGrow.exit.sink.split.i.i118

bb.au:                                            ; preds = %bb.ap
  br i1 %.not.i.i.not.i116, label %Vec_IntGrow.exit.i.i121, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gk = icmp slt i32 %i.ge, 1073741823
  %spec.select.i.i127 = select i1 %i.gk, i32 %i.gf, i32 2147483647 ; 4 uses
  %.not.i22.i.i128 = icmp slt i32 %i.ge, %spec.select.i.i127
  br i1 %.not.i22.i.i128, label %bb.aw, label %Vec_IntGrow.exit.i.i121

bb.aw:                                            ; preds = %bb.av
  %.not9.i23.i.i129 = icmp eq ptr %storemerge162, null
  %i.gl = sext i32 %spec.select.i.i127 to i64
  %i.gm = shl nsw i64 %i.gl, 2                    ; 2 uses
  br i1 %.not9.i23.i.i129, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = tail call ptr @realloc(ptr noundef nonnull %storemerge162, i64 noundef %i.gm) #25
  br label %Vec_IntGrow.exit.sink.split.i.i118

bb.ay:                                            ; preds = %bb.aw
  %i.go = tail call noalias ptr @malloc(i64 noundef %i.gm) #24
  br label %Vec_IntGrow.exit.sink.split.i.i118

Vec_IntGrow.exit.sink.split.i.i118:               ; preds = %bb.ax, %bb.ay, %bb.as, %bb.at
  %storemerge = phi ptr [ %i.gj, %bb.at ], [ %i.gi, %bb.as ], [ %i.gn, %bb.ax ], [ %i.go, %bb.ay ] ; 3 uses
  %spec.select.sink.i.i119 = phi i32 [ %i.gd, %bb.at ], [ %i.gd, %bb.as ], [ %spec.select.i.i127, %bb.ax ], [ %spec.select.i.i127, %bb.ay ]
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !23
  store i32 %spec.select.sink.i.i119, ptr %i.a, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.i.i121

Vec_IntGrow.exit.i.i121:                          ; preds = %Vec_IntGrow.exit.sink.split.i.i118, %bb.av, %bb.au, %bb.aq
  %.promoted159198 = phi ptr [ %storemerge, %Vec_IntGrow.exit.sink.split.i.i118 ], [ %.promoted159196, %bb.av ], [ %.promoted159196, %bb.au ], [ %.promoted159196, %bb.aq ]
  %storemerge160 = phi ptr [ %storemerge, %Vec_IntGrow.exit.sink.split.i.i118 ], [ %storemerge162, %bb.av ], [ %storemerge162, %bb.au ], [ %storemerge162, %bb.aq ] ; 2 uses
  %i.gp = sext i32 %i.ga to i64
  %i.gq = shl nsw i64 %i.gp, 2
  %scevgep.i.i124 = getelementptr i8, ptr %storemerge160, i64 %i.gq
  %i.gr = sub i32 %i.gc, %i.ga
  %i.gs = zext i32 %i.gr to i64
  %i.gt = shl nuw nsw i64 %i.gs, 2
  %i.gu = add nuw nsw i64 %i.gt, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i124, i8 0, i64 %i.gu, i1 false), !tbaa !8
  store i32 %i.gd, ptr %i.b, align 4, !tbaa !20
  br label %Vec_IntGetEntry.exit130

Vec_IntGetEntry.exit130:                          ; preds = %bb.ao, %Vec_IntGrow.exit.i.i121
  %.promoted159197 = phi ptr [ %.promoted159196, %bb.ao ], [ %.promoted159198, %Vec_IntGrow.exit.i.i121 ] ; 2 uses
  %.promoted192 = phi i32 [ %.promoted191, %bb.ao ], [ %i.gd, %Vec_IntGrow.exit.i.i121 ] ; 2 uses
  %storemerge161 = phi ptr [ %storemerge162, %bb.ao ], [ %storemerge160, %Vec_IntGrow.exit.i.i121 ] ; 2 uses
  %i.gv = phi i32 [ %i.ga, %bb.ao ], [ %i.gd, %Vec_IntGrow.exit.i.i121 ]
  %i.gw = sext i32 %i.gc to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %storemerge161, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !8
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %Vec_IntGetEntry.exit130
  %i.ha = trunc i64 %indvars.iv to i32
  %i.hb = add i32 %i.ha, -5
  %i.hc = icmp ult i32 %i.hb, 3
  %or.cond3 = and i1 %.012.i103, %i.hc
  br i1 %or.cond3, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hd = load i32, ptr %i.gb, align 4, !tbaa !8
  %i.he = trunc nuw nsw i64 %indvars.iv to i32
  %i.hf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.hd, i32 noundef %i.he, i32 noundef %.1164) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %Vec_IntGetEntry.exit130, %bb.ba, %bb.az
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.ao, !llvm.loop !68

..loopexit_crit_edge:                             ; preds = %bb.bb
  %.val.i131.pre = load ptr, ptr %i.l, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert199 = getelementptr inbounds i8, ptr %.val.i131.pre, i64 %i.en
  %.pre200 = load i8, ptr %.phi.trans.insert199, align 1, !tbaa !9
  %.val60.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.ae
  %.val60.pre = phi ptr [ %.val60.pre.pre, %..loopexit_crit_edge ], [ %.val60.pre201, %bb.ae ] ; 2 uses
  %i.hg = phi i8 [ %.pre200, %..loopexit_crit_edge ], [ %i.ep, %bb.ae ]
  %.val.i131 = phi ptr [ %.val.i131.pre, %..loopexit_crit_edge ], [ %.val.i131197, %bb.ae ] ; 2 uses
  %.promoted159195 = phi ptr [ %.promoted159197, %..loopexit_crit_edge ], [ %.promoted159, %bb.ae ] ; 2 uses
  %.promoted190 = phi i32 [ %.promoted192, %..loopexit_crit_edge ], [ %.promoted, %bb.ae ] ; 2 uses
  %i.hh = icmp ugt i8 %i.hg, 3
  br i1 %i.hh, label %Ndr_DataSize.exit132, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.af, %Ndr_ObjReadArray.exit, %.loopexit
  %.promoted190269 = phi i32 [ %.promoted190, %.loopexit ], [ %.promoted, %Ndr_ObjReadArray.exit ], [ %.promoted, %bb.af ]
  %.promoted159195267 = phi ptr [ %.promoted159195, %.loopexit ], [ %.promoted159, %Ndr_ObjReadArray.exit ], [ %.promoted159, %bb.af ]
  %.val.i131265 = phi ptr [ %.val.i131, %.loopexit ], [ %.val.i131197, %Ndr_ObjReadArray.exit ], [ %.val.i131197, %bb.af ]
  %.val60.pre263 = phi ptr [ %.val60.pre, %.loopexit ], [ %.val60.pre201, %Ndr_ObjReadArray.exit ], [ %.val60.pre201, %bb.af ] ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %.val60.pre263, i64 %i.en
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !8
  br label %Ndr_DataSize.exit132

Ndr_DataSize.exit132:                             ; preds = %.loopexit, %.loopexit.thread
  %.promoted190270 = phi i32 [ %.promoted190269, %.loopexit.thread ], [ %.promoted190, %.loopexit ]
  %.promoted159195268 = phi ptr [ %.promoted159195267, %.loopexit.thread ], [ %.promoted159195, %.loopexit ] ; 2 uses
  %.val.i131266 = phi ptr [ %.val.i131265, %.loopexit.thread ], [ %.val.i131, %.loopexit ]
  %.val60.pre264 = phi ptr [ %.val60.pre263, %.loopexit.thread ], [ %.val60.pre, %.loopexit ] ; 2 uses
  %i.hk = phi i32 [ %i.hj, %.loopexit.thread ], [ 1, %.loopexit ]
  %i.hl = add nsw i32 %i.hk, %.1164               ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val60.pre264, i64 8
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !8
  %i.ho = add i32 %i.hn, 2
  %i.hp = icmp slt i32 %i.hl, %i.ho
  br i1 %i.hp, label %bb.ae, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %Ndr_DataSize.exit132, %bb.a, %.preheader
  %i.hq = phi ptr [ %i.c, %bb.a ], [ %.val.i97184, %.preheader ], [ %.promoted159195268, %Ndr_DataSize.exit132 ] ; 2 uses
  %.not.i133 = icmp eq ptr %i.hq, null
  br i1 %.not.i133, label %Vec_IntFree.exit, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.hq) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.bc
  tail call void @free(ptr noundef nonnull %i.a) #22
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @Ndr_ObjReadBody(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 4, 8) %2) unnamed_addr #12 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val14 = load ptr, ptr %i.b, align 8, !tbaa !18 ; 3 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %.val14, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = add i32 %i.e, %1                         ; 2 uses
  %i.g = icmp slt i32 %i.a, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val13 = load ptr, ptr %i.h, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Ndr_DataSize.exit
  %.016 = phi i32 [ %i.a, %.lr.ph ], [ %i.t, %Ndr_DataSize.exit ] ; 2 uses
  %i.i = sext i32 %.016 to i64                    ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.val13, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9     ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = icmp eq i32 %2, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds [4 x i8], ptr %.val14, i64 %i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i8 %i.k, 3
  br i1 %i.p, label %Ndr_DataSize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds [4 x i8], ptr %.val14, i64 %i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  br label %Ndr_DataSize.exit

Ndr_DataSize.exit:                                ; preds = %bb.d, %bb.e
  %i.s = phi i32 [ %i.r, %bb.e ], [ 1, %bb.d ]
  %i.t = add nsw i32 %i.s, %.016                  ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.f
  br i1 %i.u, label %bb.b, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %Ndr_DataSize.exit, %bb.a, %bb.c
  %.012 = phi i32 [ %i.o, %bb.c ], [ -1, %bb.a ], [ -1, %Ndr_DataSize.exit ]
  ret i32 %.012
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef ptr @Abc_OperName(i32 noundef %0) unnamed_addr #13 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 97
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Abc_OperName, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %switch.load, %switch.lookup ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @Wlc_NtkFromNdr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca [1000 x i8], align 16             ; 4 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 15 uses
  store i32 0, ptr %i.d, align 4, !tbaa !20
  store i32 100, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 16 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.g = getelementptr i8, ptr %0, i64 16         ; 9 uses
  %.val11.i = load ptr, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8
  %i.j = add i32 %i.i, 2                          ; 2 uses
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %.lr.ph.i, label %Ndr_DataObjNum.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %Ndr_DataSize.exit.i, %.lr.ph.i
  %.013.i = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i, %Ndr_DataSize.exit.i ]
  %.01012.i = phi i32 [ 3, %.lr.ph.i ], [ %i.u, %Ndr_DataSize.exit.i ] ; 2 uses
  %i.m = sext i32 %.01012.i to i64                ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.val.i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9     ; 2 uses
  %.not.i = icmp eq i8 %i.o, 3
  %i.p = zext i1 %.not.i to i32
  %spec.select.i = add nuw nsw i32 %.013.i, %i.p  ; 2 uses
  %i.q = icmp ugt i8 %i.o, 3
  br i1 %i.q, label %Ndr_DataSize.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds [4 x i8], ptr %.val11.i, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  br label %Ndr_DataSize.exit.i

Ndr_DataSize.exit.i:                              ; preds = %bb.c, %bb.b
  %i.t = phi i32 [ %i.s, %bb.c ], [ 1, %bb.b ]
  %i.u = add nsw i32 %i.t, %.01012.i              ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.j
  br i1 %i.v, label %bb.b, label %Ndr_DataObjNum.exit.loopexit, !llvm.loop !70

Ndr_DataObjNum.exit.loopexit:                     ; preds = %Ndr_DataSize.exit.i
  %i.w = add nuw nsw i32 %spec.select.i, 1
  br label %Ndr_DataObjNum.exit

Ndr_DataObjNum.exit:                              ; preds = %Ndr_DataObjNum.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.w, %Ndr_DataObjNum.exit.loopexit ]
  %i.x = tail call ptr @Wlc_NtkAlloc(ptr noundef nonnull @.str.16, i32 noundef %.0.lcssa.i) #22 ; 37 uses
  tail call void @Wlc_NtkCheckIntegrity(ptr noundef %0)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 84 ; 12 uses
  store i32 0, ptr %i.z, align 4, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 696 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 652
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71 ; 6 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !22
  %.not.i.i.i = icmp slt i32 %i.ad, %i.ac
  br i1 %.not.i.i.i, label %bb.d, label %Vec_IntGrow.exit.i.i

bb.d:                                             ; preds = %Ndr_DataObjNum.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 704 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.af, null
  %i.ag = sext i32 %i.ac to i64
  %i.ah = shl nsw i64 %i.ag, 2                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %i.af, i64 noundef %i.ah) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi ptr [ %i.ai, %bb.e ], [ %i.aj, %bb.f ]
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !23
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.g, %Ndr_DataObjNum.exit
  %i.al = icmp sgt i32 %i.ac, 0
end_hunk_0
