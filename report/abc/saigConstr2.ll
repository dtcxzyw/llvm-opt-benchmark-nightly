inline.NumInlined: 563
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 36
begin_hunk_0_@Saig_ManDupUnfoldConstrsFunc:bb.a
  %.promoted164 = phi ptr [ %.promoted164222, %.critedge4 ], [ %i.cw, %.critedge ] ; 2 uses
  %.promoted158 = phi i32 [ %.promoted158220, %.critedge4 ], [ 100, %.critedge ] ; 2 uses
  %.promoted = phi i32 [ %.promoted218, %.critedge4 ], [ 0, %.critedge ] ; 2 uses
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %.critedge4 ], [ 0, %.critedge ] ; 4 uses
  %.val98 = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val98, i64 %indvars.iv204
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !31 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 4      ; 2 uses
  %.val86153 = load i32, ptr %i.de, align 4, !tbaa !29
  %i.df = icmp sgt i32 %.val86153, 0
  br i1 %i.df, label %.lr.ph156, label %.critedge4

.lr.ph156:                                        ; preds = %.lr.ph173
  %i.dg = getelementptr i8, ptr %i.dd, i64 8
  %.not190 = icmp eq i64 %indvars.iv204, 0
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph156, %._crit_edge
  %indvars.iv201 = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next202, %._crit_edge ] ; 2 uses
  %storemerge145165 = phi ptr [ %.promoted164, %.lr.ph156 ], [ %storemerge145166, %._crit_edge ] ; 6 uses
  %spec.select.sink.i115160 = phi i32 [ %.promoted158, %.lr.ph156 ], [ %spec.select.sink.i115161, %._crit_edge ] ; 7 uses
  %i.dh = phi i32 [ %.promoted, %.lr.ph156 ], [ %i.et, %._crit_edge ] ; 3 uses
  %.val90 = load ptr, ptr %i.dg, align 8, !tbaa !46
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val90, i64 %indvars.iv201
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31
  %i.dk = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dl = and i64 %i.dk, -2
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !170
  %i.dp = and i64 %i.dk, 1
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = xor i64 %i.dp, %i.dq
  %i.ds = inttoptr i64 %i.dr to ptr               ; 2 uses
  %i.dt = icmp eq i32 %i.dh, %spec.select.sink.i115160
  br i1 %i.dt, label %bb.r, label %Vec_PtrPush.exit

bb.r:                                             ; preds = %bb.q
  %i.du = icmp slt i32 %spec.select.sink.i115160, 16
  br i1 %i.du, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i = icmp eq ptr %storemerge145165, null
  br i1 %.not9.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge145165, i64 noundef 128) #23
  br label %Vec_PtrPush.exit

bb.u:                                             ; preds = %bb.s
  %i.dw = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #20
  br label %Vec_PtrPush.exit

bb.v:                                             ; preds = %bb.r
  %i.dx = icmp samesign ult i32 %spec.select.sink.i115160, 1073741823
  %i.dy = shl nuw nsw i32 %spec.select.sink.i115160, 1
  %spec.select.i = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %spec.select.sink.i115160, %spec.select.i
  br i1 %.not.i10.i, label %bb.w, label %Vec_PtrPush.exit

bb.w:                                             ; preds = %bb.v
  %.not9.i11.i = icmp eq ptr %storemerge145165, null
  %i.dz = zext nneg i32 %spec.select.i to i64
  %i.ea = shl nuw nsw i64 %i.dz, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eb = tail call ptr @realloc(ptr noundef nonnull %storemerge145165, i64 noundef %i.ea) #23
  br label %Vec_PtrPush.exit

bb.y:                                             ; preds = %bb.w
  %i.ec = tail call noalias ptr @malloc(i64 noundef %i.ea) #20
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.u, %bb.t, %bb.y, %bb.x, %bb.q, %bb.v
  %storemerge145169 = phi ptr [ %storemerge145165, %bb.q ], [ %storemerge145165, %bb.v ], [ %i.dw, %bb.u ], [ %i.dv, %bb.t ], [ %i.eb, %bb.x ], [ %i.ec, %bb.y ] ; 3 uses
  %spec.select.sink.i115159 = phi i32 [ %spec.select.sink.i115160, %bb.q ], [ %spec.select.sink.i115160, %bb.v ], [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i, %bb.x ], [ %spec.select.i, %bb.y ] ; 2 uses
  %i.ed = sext i32 %i.dh to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %storemerge145169, i64 %i.ed
  store ptr %i.ds, ptr %i.ee, align 8, !tbaa !31
  br i1 %.not190, label %._crit_edge, label %.lr.ph152

.lr.ph152:                                        ; preds = %Vec_PtrPush.exit, %Vec_PtrPush.exit118
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %Vec_PtrPush.exit118 ], [ %i.ed, %Vec_PtrPush.exit ] ; 3 uses
  %storemerge145168 = phi ptr [ %storemerge145167, %Vec_PtrPush.exit118 ], [ %storemerge145169, %Vec_PtrPush.exit ] ; 3 uses
  %spec.select.sink.i115162 = phi i32 [ %spec.select.sink.i115163, %Vec_PtrPush.exit118 ], [ %spec.select.sink.i115159, %Vec_PtrPush.exit ] ; 3 uses
  %.078151 = phi i32 [ %i.eq, %Vec_PtrPush.exit118 ], [ 0, %Vec_PtrPush.exit ]
  %indvars.iv.next199 = add nsw i64 %indvars.iv198, 1 ; 5 uses
  %i.ef = tail call ptr @Aig_ObjCreateCi(ptr noundef %i.as) #19 ; 2 uses
  %i.eg = trunc nsw i64 %indvars.iv.next199 to i32 ; 2 uses
  %i.eh = icmp eq i32 %spec.select.sink.i115162, %i.eg
  br i1 %i.eh, label %bb.z, label %Vec_PtrPush.exit118

bb.z:                                             ; preds = %.lr.ph152
  %i.ei = icmp slt i64 %indvars.iv198, 15
  br i1 %i.ei, label %Vec_PtrPush.exit118.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = icmp samesign ult i64 %indvars.iv198, 1073741822
  %indvars.iv.next199.tr = trunc i64 %indvars.iv.next199 to i32
  %i.ek = shl i32 %indvars.iv.next199.tr, 1
  %spec.select.i111 = select i1 %i.ej, i32 %i.ek, i32 2147483647 ; 3 uses
  %i.el = sext i32 %spec.select.i111 to i64
  %.not.i10.i112 = icmp samesign ult i64 %indvars.iv.next199, %i.el
  br i1 %.not.i10.i112, label %bb.ab, label %Vec_PtrPush.exit118

bb.ab:                                            ; preds = %bb.aa
  %i.em = zext nneg i32 %spec.select.i111 to i64
  %i.en = shl nuw nsw i64 %i.em, 3
  br label %Vec_PtrPush.exit118.sink.split

Vec_PtrPush.exit118.sink.split:                   ; preds = %bb.z, %bb.ab
  %.sink = phi i64 [ %i.en, %bb.ab ], [ 128, %bb.z ]
  %spec.select.sink.i115163.ph = phi i32 [ %spec.select.i111, %bb.ab ], [ 16, %bb.z ]
  %i.eo = tail call ptr @realloc(ptr noundef nonnull %storemerge145168, i64 noundef %.sink) #23
  br label %Vec_PtrPush.exit118

Vec_PtrPush.exit118:                              ; preds = %Vec_PtrPush.exit118.sink.split, %.lr.ph152, %bb.aa
  %storemerge145167 = phi ptr [ %storemerge145168, %.lr.ph152 ], [ %storemerge145168, %bb.aa ], [ %i.eo, %Vec_PtrPush.exit118.sink.split ] ; 3 uses
  %spec.select.sink.i115163 = phi i32 [ %spec.select.sink.i115162, %.lr.ph152 ], [ %spec.select.sink.i115162, %bb.aa ], [ %spec.select.sink.i115163.ph, %Vec_PtrPush.exit118.sink.split ] ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %storemerge145167, i64 %indvars.iv.next199
  store ptr %i.ef, ptr %i.ep, align 8, !tbaa !31
  %i.eq = add nuw nsw i32 %.078151, 1             ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %exitcond.not = icmp eq i64 %indvars.iv204, %i.er
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !203

._crit_edge:                                      ; preds = %Vec_PtrPush.exit118, %Vec_PtrPush.exit
  %i.es = phi ptr [ %i.ds, %Vec_PtrPush.exit ], [ %i.ef, %Vec_PtrPush.exit118 ]
  %storemerge145166 = phi ptr [ %storemerge145169, %Vec_PtrPush.exit ], [ %storemerge145167, %Vec_PtrPush.exit118 ] ; 2 uses
  %spec.select.sink.i115161 = phi i32 [ %spec.select.sink.i115159, %Vec_PtrPush.exit ], [ %spec.select.sink.i115163, %Vec_PtrPush.exit118 ] ; 2 uses
  %i.et = phi i32 [ %i.dh, %Vec_PtrPush.exit ], [ %i.eg, %Vec_PtrPush.exit118 ] ; 2 uses
  %i.eu = tail call ptr @Aig_ObjCreateCo(ptr noundef %i.as, ptr noundef %i.es) #19 ; 0 uses
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %.val86 = load i32, ptr %i.de, align 4, !tbaa !29
  %i.ev = sext i32 %.val86 to i64
  %i.ew = icmp slt i64 %indvars.iv.next202, %i.ev
  br i1 %i.ew, label %bb.q, label %..critedge4_crit_edge, !llvm.loop !204

..critedge4_crit_edge:                            ; preds = %._crit_edge
  %.val96.pre = load i32, ptr %i.d, align 4, !tbaa !132
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %.lr.ph173
  %.val96 = phi i32 [ %.val96.pre, %..critedge4_crit_edge ], [ %.val96223, %.lr.ph173 ] ; 3 uses
  %.promoted164222 = phi ptr [ %storemerge145166, %..critedge4_crit_edge ], [ %.promoted164, %.lr.ph173 ] ; 2 uses
  %.promoted158220 = phi i32 [ %spec.select.sink.i115161, %..critedge4_crit_edge ], [ %.promoted158, %.lr.ph173 ]
  %.promoted218 = phi i32 [ %i.et, %..critedge4_crit_edge ], [ %.promoted, %.lr.ph173 ]
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %i.ex = sext i32 %.val96 to i64
  %i.ey = icmp slt i64 %indvars.iv.next205, %i.ex
  br i1 %i.ey, label %.lr.ph173, label %.critedge2.preheader, !llvm.loop !205

.critedge6.preheader.loopexit:                    ; preds = %Aig_ObjChild0Copy.exit120
  %.val95185.pre = load i32, ptr %i.d, align 4, !tbaa !132
  br label %.critedge6.preheader

.critedge6.preheader:                             ; preds = %.critedge6.preheader.loopexit, %.critedge2.preheader
  %.val231 = phi i32 [ %.val94, %.critedge6.preheader.loopexit ], [ %.val94174, %.critedge2.preheader ]
  %.val95185 = phi i32 [ %.val95185.pre, %.critedge6.preheader.loopexit ], [ %.val95185226, %.critedge2.preheader ] ; 2 uses
  %i.ez = icmp sgt i32 %.val95185, 0
  br i1 %i.ez, label %.lr.ph189, label %.critedge6._crit_edge

bb.ac:                                            ; preds = %.lr.ph176, %Aig_ObjChild0Copy.exit120
  %.282175 = phi i32 [ 0, %.lr.ph176 ], [ %i.fs, %Aig_ObjChild0Copy.exit120 ] ; 2 uses
  %i.fa = load ptr, ptr %i.db, align 8, !tbaa !45
  %.val92 = load i32, ptr %i.cb, align 8, !tbaa !38
  %i.fb = add nsw i32 %.val92, %.282175
  %i.fc = getelementptr i8, ptr %i.fa, i64 8
  %.val89 = load ptr, ptr %i.fc, align 8, !tbaa !46
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %.val89, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !31
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %.val99 = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fh = ptrtoint ptr %.val99 to i64             ; 2 uses
  %i.fi = and i64 %i.fh, -2                       ; 2 uses
  %.not.i119 = icmp eq i64 %i.fi, 0
  br i1 %.not.i119, label %Aig_ObjChild0Copy.exit120, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !170
  %i.fm = and i64 %i.fh, 1
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = xor i64 %i.fm, %i.fn
  %i.fp = inttoptr i64 %i.fo to ptr
  br label %Aig_ObjChild0Copy.exit120

Aig_ObjChild0Copy.exit120:                        ; preds = %bb.ac, %bb.ad
  %i.fq = phi ptr [ %i.fp, %bb.ad ], [ null, %bb.ac ]
  %i.fr = tail call ptr @Aig_ObjCreateCo(ptr noundef %i.as, ptr noundef %i.fq) #19 ; 0 uses
  %i.fs = add nuw nsw i32 %.282175, 1             ; 2 uses
  %.val94 = load i32, ptr %i.cz, align 8, !tbaa !13 ; 2 uses
  %i.ft = icmp slt i32 %i.fs, %.val94
  br i1 %i.ft, label %bb.ac, label %.critedge6.preheader.loopexit, !llvm.loop !206

.lr.ph189:                                        ; preds = %.critedge6.preheader, %.critedge10
  %.val95228 = phi i32 [ %.val95, %.critedge10 ], [ %.val95185, %.critedge6.preheader ]
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %.critedge10 ], [ 0, %.critedge6.preheader ] ; 5 uses
  %.0188 = phi i32 [ %.1.lcssa, %.critedge10 ], [ 0, %.critedge6.preheader ] ; 2 uses
  %.val97 = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.val97, i64 %indvars.iv211
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !31
  %i.fw = getelementptr i8, ptr %i.fv, i64 4      ; 2 uses
  %.val85181 = load i32, ptr %i.fw, align 4, !tbaa !29
  %i.fx = icmp slt i32 %.val85181, 1
  %.not191 = icmp eq i64 %indvars.iv211, 0
  %or.cond = or i1 %i.fx, %.not191
  br i1 %or.cond, label %.critedge10, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.lr.ph189
  %6 = trunc nuw nsw i64 %indvars.iv211 to i32
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge180.us, %.preheader.lr.ph.split.us
  %indvars.iv207 = phi i32 [ %indvars.iv.next208, %._crit_edge180.us ], [ %.0188, %.preheader.lr.ph.split.us ] ; 2 uses
  %.177182.us = phi i32 [ %i.gd, %._crit_edge180.us ], [ 0, %.preheader.lr.ph.split.us ]
  %7 = sext i32 %indvars.iv207 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader.us, %bb.ae
  %indvars.iv207.a = phi i64 [ %7, %.preheader.us ], [ %indvars.iv.next208.a, %bb.ae ] ; 2 uses
  %.179177.us = phi i32 [ 0, %.preheader.us ], [ %i.gb, %bb.ae ]
  %indvars.iv.next208.a = add nsw i64 %indvars.iv207.a, 1 ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %indvars.iv207.a
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !31
  %i.ga = tail call ptr @Aig_ObjCreateCo(ptr noundef %i.as, ptr noundef %i.fz) #19 ; 0 uses
  %i.gb = add nuw nsw i32 %.179177.us, 1          ; 2 uses
  %i.gc = zext nneg i32 %i.gb to i64
  %exitcond210.not = icmp eq i64 %indvars.iv211, %i.gc
  br i1 %exitcond210.not, label %._crit_edge180.us, label %bb.ae, !llvm.loop !207

._crit_edge180.us:                                ; preds = %bb.ae
  %i.gd = add nuw nsw i32 %.177182.us, 1          ; 2 uses
  %.val85.us = load i32, ptr %i.fw, align 4, !tbaa !29
  %i.ge = icmp slt i32 %i.gd, %.val85.us
  %indvars.iv.next208 = add i32 %indvars.iv207, %6
  br i1 %i.ge, label %.preheader.us, label %.critedge10.loopexit192, !llvm.loop !208

.critedge10.loopexit192:                          ; preds = %._crit_edge180.us
  %i.gf = trunc nsw i64 %indvars.iv.next208.a to i32
  %.val95.pre = load i32, ptr %i.d, align 4, !tbaa !132
  br label %.critedge10

.critedge10:                                      ; preds = %.critedge10.loopexit192, %.lr.ph189
  %.val95 = phi i32 [ %.val95228, %.lr.ph189 ], [ %.val95.pre, %.critedge10.loopexit192 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0188, %.lr.ph189 ], [ %i.gf, %.critedge10.loopexit192 ] ; 2 uses
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %i.gg = sext i32 %.val95 to i64
  %i.gh = icmp slt i64 %indvars.iv.next212, %i.gg
  br i1 %i.gh, label %.lr.ph189, label %.critedge6._crit_edge.loopexit, !llvm.loop !209

.critedge6._crit_edge.loopexit:                   ; preds = %.critedge10
  %.val.pre = load i32, ptr %i.cz, align 8, !tbaa !13
  br label %.critedge6._crit_edge

.critedge6._crit_edge:                            ; preds = %.critedge6._crit_edge.loopexit, %.critedge6.preheader
  %.val = phi i32 [ %.val231, %.critedge6.preheader ], [ %.val.pre, %.critedge6._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %.critedge6.preheader ], [ %.1.lcssa, %.critedge6._crit_edge.loopexit ]
  %i.gi = add nsw i32 %.val, %.0.lcssa
  tail call void @Aig_ManSetRegNum(ptr noundef %i.as, i32 noundef %i.gi) #19
  %.val11.i.i121 = load i32, ptr %i.d, align 4, !tbaa !132 ; 2 uses
  %i.gj = icmp sgt i32 %.val11.i.i121, 0
  %.pre232 = load ptr, ptr %i.f, align 8, !tbaa !198 ; 3 uses
  br i1 %i.gj, label %.lr.ph.i.i125, label %.critedge.i.i122

.lr.ph.i.i125:                                    ; preds = %.critedge6._crit_edge
  %i.gk = zext nneg i32 %.val11.i.i121 to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.lr.ph.i.i125
  %indvars.iv.i.i127 = phi i64 [ 0, %.lr.ph.i.i125 ], [ %indvars.iv.next.i.i134, %bb.ai ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.pre232, i64 %indvars.iv.i.i127
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !31 ; 3 uses
  %.not.i.i129 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i129, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i130, label %Vec_PtrFree.exit.i.i131, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @free(ptr noundef nonnull %i.go) #19
  br label %Vec_PtrFree.exit.i.i131

Vec_PtrFree.exit.i.i131:                          ; preds = %bb.ah, %bb.ag
  tail call void @free(ptr noundef nonnull %i.gm) #19
  br label %bb.ai

bb.ai:                                            ; preds = %Vec_PtrFree.exit.i.i131, %bb.af
  %indvars.iv.next.i.i134 = add nuw nsw i64 %indvars.iv.i.i127, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next.i.i134, %i.gk
  br i1 %exitcond214.not, label %.critedge.i.i122.thread, label %bb.af, !llvm.loop !199

.critedge.i.i122:                                 ; preds = %.critedge6._crit_edge
  %.not.i9.i.i123 = icmp eq ptr %.pre232, null
  br i1 %.not.i9.i.i123, label %Vec_VecFreeP.exit135, label %.critedge.i.i122.thread

.critedge.i.i122.thread:                          ; preds = %bb.ai, %.critedge.i.i122
  tail call void @free(ptr noundef nonnull %.pre232) #19
  br label %Vec_VecFreeP.exit135

Vec_VecFreeP.exit135:                             ; preds = %.critedge.i.i122, %.critedge.i.i122.thread
  tail call void @free(ptr noundef nonnull %storemerge) #19
  %.not.i136 = icmp eq ptr %i.cy, null
  br i1 %.not.i136, label %Vec_PtrFree.exit, label %bb.aj

bb.aj:                                            ; preds = %Vec_VecFreeP.exit135
  tail call void @free(ptr noundef nonnull %i.cy) #19
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %bb.aj, %Vec_VecFreeP.exit135, %Vec_VecFreeP.exit
  %.083 = phi ptr [ %i.ar, %Vec_VecFreeP.exit ], [ %i.as, %Vec_VecFreeP.exit135 ], [ %i.as, %bb.aj ]
  ret ptr %.083
}

declare ptr @Aig_ManDupDfs(ptr noundef) local_unnamed_addr #3

declare ptr @Aig_ManDupWithoutPos(ptr noundef) local_unnamed_addr #3

declare void @Aig_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Saig_ManDupFoldConstrsFunc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 3 uses
  %.val117 = load i32, ptr %i.a, align 8, !tbaa !70
  %i.b = icmp eq i32 %.val117, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @Aig_ManDupDfs(ptr noundef nonnull %0) #19
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 148
  %.val = load i32, ptr %i.d, align 4, !tbaa !12
  %i.e = getelementptr i8, ptr %0, i64 152
  %.val91 = load i32, ptr %i.e, align 8, !tbaa !12
  %i.f = add nsw i32 %.val91, %.val
  %i.g = tail call ptr @Aig_ManStart(i32 noundef %i.f) #19 ; 17 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.h) #22
  %i.j = add i64 %i.i, 1
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #20 ; 2 uses
  %i.l = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull readonly dereferenceable(1) %i.h) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ]
  store ptr %i.m, ptr %i.g, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126  ; 3 uses
  %.not.i120 = icmp eq ptr %i.o, null
  br i1 %.not.i120, label %Abc_UtilStrsav.exit121, label %bb.e

bb.e:                                             ; preds = %Abc_UtilStrsav.exit
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #22
  %i.q = add i64 %i.p, 1
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #20 ; 2 uses
  %i.s = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %i.o) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit121

Abc_UtilStrsav.exit121:                           ; preds = %Abc_UtilStrsav.exit, %bb.e
  %i.t = phi ptr [ %i.r, %bb.e ], [ null, %Abc_UtilStrsav.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !126
  %i.v = getelementptr i8, ptr %i.g, i64 48       ; 2 uses
  %.val106 = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.w = getelementptr i8, ptr %0, i64 48
  %.val105 = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %.val105, i64 40
  store ptr %.val106, ptr %i.x, align 8, !tbaa !170
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val94130 = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ab = icmp sgt i32 %.val94130, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %Abc_UtilStrsav.exit121
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val93132 = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.af = icmp sgt i32 %.val93132, 0
  br i1 %i.af, label %.lr.ph134, label %.critedge2

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit121, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %Abc_UtilStrsav.exit121 ] ; 2 uses
  %i.ag = phi ptr [ %i.am, %.lr.ph ], [ %i.z, %Abc_UtilStrsav.exit121 ]
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val99 = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val99, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ak = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.g) #19
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !170
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !49  ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val94 = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ao = sext i32 %.val94 to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.lr.ph, label %.critedge.preheader, !llvm.loop !210

.lr.ph134:                                        ; preds = %.critedge.preheader, %.critedge
  %i.aq = phi ptr [ %i.bx, %.critedge ], [ %i.ad, %.critedge.preheader ] ; 3 uses
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val98 = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val98, i64 %indvars.iv150
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph134
  %i.av = getelementptr i8, ptr %i.at, i64 24
  %.val110 = load i64, ptr %i.av, align 8
  %i.aw = trunc i64 %.val110 to i32
  %i.ax = and i32 %i.aw, 7
  %i.ay = add nsw i32 %i.ax, -7
  %narrow.i = icmp ult i32 %i.ay, -2
  br i1 %narrow.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr i8, ptr %i.at, i64 8
  %.val114 = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.ba = ptrtoint ptr %.val114 to i64            ; 2 uses
  %i.bb = and i64 %i.ba, -2                       ; 2 uses
  %.not.i122 = icmp eq i64 %i.bb, 0
end_hunk_0
