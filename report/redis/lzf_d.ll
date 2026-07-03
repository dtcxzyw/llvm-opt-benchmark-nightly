loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lzf_decompress:bb.a
  %.19177 = phi ptr [ %i.bs, %bb.y ], [ %.0158217, %bb.f ] ; 2 uses
  %.19 = phi ptr [ %i.bq, %bb.y ], [ %i.c, %bb.f ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.19, i64 1
  %i.bu = load i8, ptr %.19, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.19177, i64 1
  store i8 %i.bu, ptr %.19177, align 1, !tbaa !13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.f
  %.20178 = phi ptr [ %i.bv, %bb.z ], [ %.0158217, %bb.f ] ; 2 uses
  %.20 = phi ptr [ %i.bt, %bb.z ], [ %i.c, %bb.f ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.20, i64 1
  %i.bx = load i8, ptr %.20, align 1, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.20178, i64 1
  store i8 %i.bx, ptr %.20178, align 1, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.f
  %.21179 = phi ptr [ %i.by, %bb.aa ], [ %.0158217, %bb.f ] ; 2 uses
  %.21 = phi ptr [ %i.bw, %bb.aa ], [ %i.c, %bb.f ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.21, i64 1
  %i.ca = load i8, ptr %.21, align 1, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.21179, i64 1
  store i8 %i.ca, ptr %.21179, align 1, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.f
  %.22180 = phi ptr [ %i.cb, %bb.ab ], [ %.0158217, %bb.f ] ; 2 uses
  %.22 = phi ptr [ %i.bz, %bb.ab ], [ %i.c, %bb.f ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.22, i64 1
  %i.cd = load i8, ptr %.22, align 1, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.22180, i64 1
  store i8 %i.cd, ptr %.22180, align 1, !tbaa !13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.f
  %.23181 = phi ptr [ %i.ce, %bb.ac ], [ %.0158217, %bb.f ] ; 2 uses
  %.23 = phi ptr [ %i.cc, %bb.ac ], [ %i.c, %bb.f ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.23, i64 1
  %i.cg = load i8, ptr %.23, align 1, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.23181, i64 1
  store i8 %i.cg, ptr %.23181, align 1, !tbaa !13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.f
  %.24182 = phi ptr [ %i.ch, %bb.ad ], [ %.0158217, %bb.f ] ; 2 uses
  %.24 = phi ptr [ %i.cf, %bb.ad ], [ %i.c, %bb.f ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.24, i64 1
  %i.cj = load i8, ptr %.24, align 1, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.24182, i64 1
  store i8 %i.cj, ptr %.24182, align 1, !tbaa !13
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.f
  %.25183 = phi ptr [ %i.ck, %bb.ae ], [ %.0158217, %bb.f ] ; 2 uses
  %.25 = phi ptr [ %i.ci, %bb.ae ], [ %i.c, %bb.f ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.25, i64 1
  %i.cm = load i8, ptr %.25, align 1, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.25183, i64 1
  store i8 %i.cm, ptr %.25183, align 1, !tbaa !13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.f
  %.26184 = phi ptr [ %i.cn, %bb.af ], [ %.0158217, %bb.f ] ; 2 uses
  %.26 = phi ptr [ %i.cl, %bb.af ], [ %i.c, %bb.f ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.26, i64 1
  %i.cp = load i8, ptr %.26, align 1, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.26184, i64 1
  store i8 %i.cp, ptr %.26184, align 1, !tbaa !13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.f
  %.27185 = phi ptr [ %i.cq, %bb.ag ], [ %.0158217, %bb.f ] ; 2 uses
  %.27 = phi ptr [ %i.co, %bb.ag ], [ %i.c, %bb.f ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.27, i64 1
  %i.cs = load i8, ptr %.27, align 1, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.27185, i64 1
  store i8 %i.cs, ptr %.27185, align 1, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.f
  %.28186 = phi ptr [ %i.ct, %bb.ah ], [ %.0158217, %bb.f ] ; 2 uses
  %.28 = phi ptr [ %i.cr, %bb.ah ], [ %i.c, %bb.f ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.28, i64 1
  %i.cv = load i8, ptr %.28, align 1, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.28186, i64 1
  store i8 %i.cv, ptr %.28186, align 1, !tbaa !13
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.f
  %.29187 = phi ptr [ %i.cw, %bb.ai ], [ %.0158217, %bb.f ] ; 2 uses
  %.29 = phi ptr [ %i.cu, %bb.ai ], [ %i.c, %bb.f ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.29, i64 1
  %i.cy = load i8, ptr %.29, align 1, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.29187, i64 1
  store i8 %i.cy, ptr %.29187, align 1, !tbaa !13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.f
  %.30188 = phi ptr [ %i.cz, %bb.aj ], [ %.0158217, %bb.f ] ; 2 uses
  %.30 = phi ptr [ %i.cx, %bb.aj ], [ %i.c, %bb.f ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.30, i64 1
  %i.db = load i8, ptr %.30, align 1, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.30188, i64 1
  store i8 %i.db, ptr %.30188, align 1, !tbaa !13
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.f
  %.31189 = phi ptr [ %i.dc, %bb.ak ], [ %.0158217, %bb.f ] ; 2 uses
  %.31 = phi ptr [ %i.da, %bb.ak ], [ %i.c, %bb.f ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.31, i64 1
  %i.de = load i8, ptr %.31, align 1, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %.31189, i64 1
  store i8 %i.de, ptr %.31189, align 1, !tbaa !13
  br label %.loopexit

bb.am:                                            ; preds = %.lr.ph
  %i.dg = shl nuw nsw i32 %i.e, 8
  %i.dh = and i32 %i.dg, 7936
  %i.di = xor i32 %i.dh, -1
  %i.dj = sext i32 %i.di to i64
  %.not = icmp ult ptr %i.c, %i.a
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = tail call ptr @__errno_location() #3
  store i32 22, ptr %i.dk, align 4, !tbaa !9
  br label %.critedge

bb.ao:                                            ; preds = %bb.am
  %i.dl = lshr i32 %i.e, 5                        ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 7
  br i1 %i.dm, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %.0148218, i64 2 ; 2 uses
  %i.do = load i8, ptr %i.c, align 1, !tbaa !13
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dp, 7
  %.not204 = icmp ult ptr %i.dn, %i.a
  br i1 %.not204, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = tail call ptr @__errno_location() #3
  store i32 22, ptr %i.dr, align 4, !tbaa !9
  br label %.critedge

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.32 = phi ptr [ %i.dn, %bb.ap ], [ %i.c, %bb.ao ] ; 2 uses
  %.0139 = phi i32 [ %i.dq, %bb.ap ], [ %i.dl, %bb.ao ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.32, i64 1 ; 6 uses
  %i.dt = load i8, ptr %.32, align 1, !tbaa !13
  %i.du = zext i8 %i.dt to i64                    ; 2 uses
  %i.dv = sub nuw nsw i64 %i.dj, %i.du            ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.0158217, i64 %i.dv ; 33 uses
  %i.dx = zext nneg i32 %.0139 to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %.0158217, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ea = icmp ugt ptr %i.dz, %i.b
  br i1 %i.ea, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eb = tail call ptr @__errno_location() #3
  store i32 7, ptr %i.eb, align 4, !tbaa !9
  br label %.critedge

bb.at:                                            ; preds = %bb.ar
  %i.ec = icmp ult ptr %i.dw, %2
  br i1 %i.ec, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ed = tail call ptr @__errno_location() #3
  store i32 22, ptr %i.ed, align 4, !tbaa !9
  br label %.critedge

bb.av:                                            ; preds = %bb.at
  switch i32 %.0139, label %bb.aw [
    i32 9, label %bb.ay
    i32 8, label %bb.az
    i32 7, label %bb.ba
    i32 6, label %bb.bb
    i32 5, label %bb.bc
    i32 4, label %bb.bd
    i32 3, label %bb.be
    i32 2, label %bb.bf
    i32 1, label %bb.bg
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ee = add nuw nsw i32 %.0139, 2               ; 5 uses
  %i.ef = zext nneg i32 %i.ee to i64              ; 8 uses
  %i.eg = add nsw i64 %i.dv, %i.ef
  %.not205 = icmp sgt i64 %i.eg, 0
  br i1 %.not205, label %iter.check, label %bb.ax

iter.check:                                       ; preds = %bb.aw
  %min.iters.check = icmp ult i32 %.0139, 2
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = add nuw nsw i64 %i.du, 1
  %i.eh = and i8 %i.d, 31
  %i.ei = zext nneg i8 %i.eh to i64
  %.neg = shl nuw nsw i64 %i.ei, 8
  %5 = add nuw nsw i64 %.neg, %4
  %diff.check = icmp samesign ult i64 %5, 32
  br i1 %diff.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check225 = icmp ult i32 %.0139, 30
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ef, 28
  %n.vec = and i64 %i.ef, 2147483616              ; 12 uses
  %i.ej = getelementptr i8, ptr %.0158217, i64 %n.vec ; 2 uses
  %i.ek = trunc nuw nsw i64 %n.vec to i32
  %i.el = sub i32 %i.ee, %i.ek
  %i.em = getelementptr i8, ptr %i.dw, i64 %n.vec
  %i.en = getelementptr i8, ptr %i.dw, i64 16
  %wide.load = load <16 x i8>, ptr %i.dw, align 1, !tbaa !13
  %wide.load227 = load <16 x i8>, ptr %i.en, align 1, !tbaa !13
  %i.eo = getelementptr i8, ptr %.0158217, i64 16
  store <16 x i8> %wide.load, ptr %.0158217, align 1, !tbaa !13
  store <16 x i8> %wide.load227, ptr %i.eo, align 1, !tbaa !13
  %i.ep = icmp eq i64 %n.vec, 32
  br i1 %i.ep, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %.0158217, i64 32
  %next.gep226.1 = getelementptr i8, ptr %i.dw, i64 32
  %i.eq = getelementptr i8, ptr %i.dw, i64 48
  %wide.load.1 = load <16 x i8>, ptr %next.gep226.1, align 1, !tbaa !13
  %wide.load227.1 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !13
  %i.er = getelementptr i8, ptr %.0158217, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1, !tbaa !13
  store <16 x i8> %wide.load227.1, ptr %i.er, align 1, !tbaa !13
  %i.es = icmp eq i64 %n.vec, 64
  br i1 %i.es, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %.0158217, i64 64
  %next.gep226.2 = getelementptr i8, ptr %i.dw, i64 64
  %i.et = getelementptr i8, ptr %i.dw, i64 80
  %wide.load.2 = load <16 x i8>, ptr %next.gep226.2, align 1, !tbaa !13
  %wide.load227.2 = load <16 x i8>, ptr %i.et, align 1, !tbaa !13
  %i.eu = getelementptr i8, ptr %.0158217, i64 80
  store <16 x i8> %wide.load.2, ptr %next.gep.2, align 1, !tbaa !13
  store <16 x i8> %wide.load227.2, ptr %i.eu, align 1, !tbaa !13
  %i.ev = icmp eq i64 %n.vec, 96
  br i1 %i.ev, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %.0158217, i64 96
  %next.gep226.3 = getelementptr i8, ptr %i.dw, i64 96
  %i.ew = getelementptr i8, ptr %i.dw, i64 112
  %wide.load.3 = load <16 x i8>, ptr %next.gep226.3, align 1, !tbaa !13
  %wide.load227.3 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !13
  %i.ex = getelementptr i8, ptr %.0158217, i64 112
  store <16 x i8> %wide.load.3, ptr %next.gep.3, align 1, !tbaa !13
  store <16 x i8> %wide.load227.3, ptr %i.ex, align 1, !tbaa !13
  %i.ey = icmp eq i64 %n.vec, 128
  br i1 %i.ey, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %.0158217, i64 128
  %next.gep226.4 = getelementptr i8, ptr %i.dw, i64 128
  %i.ez = getelementptr i8, ptr %i.dw, i64 144
  %wide.load.4 = load <16 x i8>, ptr %next.gep226.4, align 1, !tbaa !13
  %wide.load227.4 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !13
  %i.fa = getelementptr i8, ptr %.0158217, i64 144
  store <16 x i8> %wide.load.4, ptr %next.gep.4, align 1, !tbaa !13
  store <16 x i8> %wide.load227.4, ptr %i.fa, align 1, !tbaa !13
  %i.fb = icmp eq i64 %n.vec, 160
  br i1 %i.fb, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %.0158217, i64 160
  %next.gep226.5 = getelementptr i8, ptr %i.dw, i64 160
  %i.fc = getelementptr i8, ptr %i.dw, i64 176
  %wide.load.5 = load <16 x i8>, ptr %next.gep226.5, align 1, !tbaa !13
  %wide.load227.5 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !13
  %i.fd = getelementptr i8, ptr %.0158217, i64 176
  store <16 x i8> %wide.load.5, ptr %next.gep.5, align 1, !tbaa !13
  store <16 x i8> %wide.load227.5, ptr %i.fd, align 1, !tbaa !13
  %i.fe = icmp eq i64 %n.vec, 192
  br i1 %i.fe, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %.0158217, i64 192
  %next.gep226.6 = getelementptr i8, ptr %i.dw, i64 192
  %i.ff = getelementptr i8, ptr %i.dw, i64 208
  %wide.load.6 = load <16 x i8>, ptr %next.gep226.6, align 1, !tbaa !13
  %wide.load227.6 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !13
  %i.fg = getelementptr i8, ptr %.0158217, i64 208
  store <16 x i8> %wide.load.6, ptr %next.gep.6, align 1, !tbaa !13
  store <16 x i8> %wide.load227.6, ptr %i.fg, align 1, !tbaa !13
  %i.fh = icmp eq i64 %n.vec, 224
  br i1 %i.fh, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %next.gep.7 = getelementptr i8, ptr %.0158217, i64 224
  %next.gep226.7 = getelementptr i8, ptr %i.dw, i64 224
  %i.fi = getelementptr i8, ptr %i.dw, i64 240
  %wide.load.7 = load <16 x i8>, ptr %next.gep226.7, align 1, !tbaa !13
  %wide.load227.7 = load <16 x i8>, ptr %i.fi, align 1, !tbaa !13
  %i.fj = getelementptr i8, ptr %.0158217, i64 240
  store <16 x i8> %wide.load.7, ptr %next.gep.7, align 1, !tbaa !13
  store <16 x i8> %wide.load227.7, ptr %i.fj, align 1, !tbaa !13
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ef
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec231 = and i64 %i.ef, 2147483644           ; 5 uses
  %i.fk = getelementptr i8, ptr %.0158217, i64 %n.vec231 ; 2 uses
  %i.fl = trunc nuw nsw i64 %n.vec231 to i32
  %i.fm = sub i32 %i.ee, %i.fl
  %i.fn = getelementptr i8, ptr %i.dw, i64 %n.vec231
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 3 uses
  %next.gep233 = getelementptr i8, ptr %.0158217, i64 %index232
  %next.gep234 = getelementptr i8, ptr %i.dw, i64 %index232
  %wide.load235 = load <4 x i8>, ptr %next.gep234, align 1, !tbaa !13
  store <4 x i8> %wide.load235, ptr %next.gep233, align 1, !tbaa !13
  %index.next236 = add nuw i64 %index232, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next236, %n.vec231
  br i1 %i.fo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n237 = icmp eq i64 %n.vec231, %i.ef
  br i1 %cmp.n237, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.32190.ph = phi ptr [ %.0158217, %iter.check ], [ %.0158217, %vector.memcheck ], [ %i.ej, %vec.epilog.iter.check ], [ %i.fk, %vec.epilog.middle.block ] ; 2 uses
  %.1140.ph = phi i32 [ %i.ee, %iter.check ], [ %i.ee, %vector.memcheck ], [ %i.el, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ] ; 4 uses
  %.0.ph = phi ptr [ %i.dw, %iter.check ], [ %i.dw, %vector.memcheck ], [ %i.em, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ] ; 2 uses
  %i.fp = add nsw i32 %.1140.ph, -1
  %xtraiter = and i32 %.1140.ph, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.32190.prol = phi ptr [ %i.fs, %.preheader.prol ], [ %.32190.ph, %.preheader.preheader ] ; 2 uses
  %.1140.prol = phi i32 [ %i.ft, %.preheader.prol ], [ %.1140.ph, %.preheader.preheader ]
  %.0.prol = phi ptr [ %i.fq, %.preheader.prol ], [ %.0.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.prol, i64 1 ; 2 uses
  %i.fr = load i8, ptr %.0.prol, align 1, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %.32190.prol, i64 1 ; 3 uses
  store i8 %i.fr, ptr %.32190.prol, align 1, !tbaa !13
  %i.ft = add nsw i32 %.1140.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !19

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.fs, %.preheader.prol ]
  %.32190.unr = phi ptr [ %.32190.ph, %.preheader.preheader ], [ %i.fs, %.preheader.prol ]
  %.1140.unr = phi i32 [ %.1140.ph, %.preheader.preheader ], [ %i.ft, %.preheader.prol ]
  %.0.unr = phi ptr [ %.0.ph, %.preheader.preheader ], [ %i.fq, %.preheader.prol ]
  %i.fu = icmp ult i32 %i.fp, 7
  br i1 %i.fu, label %.loopexit, label %.preheader

bb.ax:                                            ; preds = %bb.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0158217, ptr noundef nonnull align 1 dereferenceable(1) %i.dw, i64 %i.ef, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %.0158217, i64 %i.ef
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.32190 = phi ptr [ %i.gt, %.preheader ], [ %.32190.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.1140 = phi i32 [ %i.gu, %.preheader ], [ %.1140.unr, %.preheader.prol.loopexit ]
  %.0 = phi ptr [ %i.gr, %.preheader ], [ %.0.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.fx = load i8, ptr %.0, align 1, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.32190, i64 1
  store i8 %i.fx, ptr %.32190, align 1, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %.32190, i64 2
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.gd = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.32190, i64 3
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.gg = load i8, ptr %i.gc, align 1, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.32190, i64 4
  store i8 %i.gg, ptr %i.ge, align 1, !tbaa !13
  %i.gi = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.gj = load i8, ptr %i.gf, align 1, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %.32190, i64 5
  store i8 %i.gj, ptr %i.gh, align 1, !tbaa !13
  %i.gl = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.gm = load i8, ptr %i.gi, align 1, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %.32190, i64 6
  store i8 %i.gm, ptr %i.gk, align 1, !tbaa !13
end_hunk_0
