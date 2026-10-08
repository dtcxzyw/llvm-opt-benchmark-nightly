Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/av1dec?download=true
inline.NumInlined: 60
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@av1_receive_frame:bb.a

read_global_param.exit72.i.i.i:                   ; preds = %inverse_recenter.exit12.i.i.i70.i.i.i, %bb.bp, %bb.bo, %bb.bm
  %.0.i.i.i68.i.i.i = phi i32 [ %i.mz, %inverse_recenter.exit12.i.i.i70.i.i.i ], [ %i.mp, %bb.bp ], [ %i.mn, %bb.bo ], [ %i.mg, %bb.bm ]
  %i.na = shl i32 %.0.i.i.i68.i.i.i, 1            ; 2 uses
  %i.nb = add i32 %i.na, -8192
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !68
  br i1 %.not60.i.i.i, label %bb.bu, label %bb.cp

bb.bu:                                            ; preds = %read_global_param.exit72.i.i.i
  br i1 %i.kj, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kg, i64 190
  %i.ne = zext i8 %i.ki to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !56
  %i.nh = sext i8 %i.ng to i64
  %i.ni = getelementptr [448 x i8], ptr %i.er, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.ni, i64 480
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.sink42.i73.i.i.i = phi ptr [ %i.nj, %bb.bv ], [ %i.je, %bb.bu ]
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %.sink42.i73.i.i.i, i64 %indvars.iv.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %.0.i74.i.i.i = load i32, ptr %i.nl, align 4, !tbaa !68
  %i.nm = ashr i32 %.0.i74.i.i.i, 1               ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !68 ; 10 uses
  %i.np = add nsw i32 %i.nm, 4096                 ; 3 uses
  %i.nq = shl i32 %i.np, 1                        ; 2 uses
  %.not.i.i.i75.i.i.i = icmp sgt i32 %i.nq, 8193
  br i1 %.not.i.i.i75.i.i.i, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nr = icmp ugt i32 %i.no, %i.nq
  br i1 %i.nr, label %read_global_param.exit81.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ns = and i32 %i.no, 1
  %.not.i.i.i.i76.i.i.i = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i.i.i76.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nt = add nuw i32 %i.no, 1
  %i.nu = lshr exact i32 %i.nt, 1
  %i.nv = sub i32 %i.np, %i.nu
  br label %read_global_param.exit81.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.nw = lshr exact i32 %i.no, 1
  %i.nx = add i32 %i.np, %i.nw
  br label %read_global_param.exit81.i.i.i

bb.cb:                                            ; preds = %bb.bw
  %i.ny = sub nsw i32 4096, %i.nm                 ; 3 uses
  %i.nz = shl nsw i32 %i.ny, 1
  %i.oa = icmp ugt i32 %i.no, %i.nz
  br i1 %i.oa, label %inverse_recenter.exit12.i.i.i79.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ob = and i32 %i.no, 1
  %.not.i10.i.i.i78.i.i.i = icmp eq i32 %i.ob, 0
  br i1 %.not.i10.i.i.i78.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oc = add i32 %i.no, 1
  %i.od = lshr exact i32 %i.oc, 1
  %i.oe = sub i32 %i.ny, %i.od
  br label %inverse_recenter.exit12.i.i.i79.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.of = lshr exact i32 %i.no, 1
  %i.og = add i32 %i.ny, %i.of
  br label %inverse_recenter.exit12.i.i.i79.i.i.i

inverse_recenter.exit12.i.i.i79.i.i.i:            ; preds = %bb.ce, %bb.cd, %bb.cb
  %.0.i11.i.i.i80.i.i.i = phi i32 [ %i.og, %bb.ce ], [ %i.oe, %bb.cd ], [ %i.no, %bb.cb ]
  %i.oh = sub i32 8192, %.0.i11.i.i.i80.i.i.i
  br label %read_global_param.exit81.i.i.i

read_global_param.exit81.i.i.i:                   ; preds = %inverse_recenter.exit12.i.i.i79.i.i.i, %bb.ca, %bb.bz, %bb.bx
  %.0.i.i.i77.i.i.i = phi i32 [ %i.oh, %inverse_recenter.exit12.i.i.i79.i.i.i ], [ %i.nx, %bb.ca ], [ %i.nv, %bb.bz ], [ %i.no, %bb.bx ]
  %i.oi = shl i32 %.0.i.i.i77.i.i.i, 1
  %i.oj = add i32 %i.oi, -8192
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store i32 %i.oj, ptr %i.ok, align 4, !tbaa !68
  br i1 %i.kj, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %read_global_param.exit81.i.i.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.kg, i64 190
  %i.om = zext i8 %i.ki to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !56
  %i.op = sext i8 %i.oo to i64
  %i.oq = getelementptr [448 x i8], ptr %i.er, i64 %i.op
  %i.or = getelementptr i8, ptr %i.oq, i64 480
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %read_global_param.exit81.i.i.i
  %.sink42.i82.i.i.i = phi ptr [ %i.or, %bb.cf ], [ %i.je, %read_global_param.exit81.i.i.i ]
  %i.os = getelementptr inbounds nuw [24 x i8], ptr %.sink42.i82.i.i.i, i64 %indvars.iv.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 20
  %.0.i83.i.i.i = load i32, ptr %i.ot, align 4, !tbaa !68
  %i.ou = ashr i32 %.0.i83.i.i.i, 1               ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.kv, i64 20
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !68 ; 10 uses
  %i.ox = add nsw i32 %i.ou, -28672               ; 3 uses
  %i.oy = shl i32 %i.ox, 1                        ; 2 uses
  %.not.i.i.i84.i.i.i = icmp sgt i32 %i.oy, 8193
  br i1 %.not.i.i.i84.i.i.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.oz = icmp ugt i32 %i.ow, %i.oy
  br i1 %i.oz, label %read_global_param.exit90.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pa = and i32 %i.ow, 1
  %.not.i.i.i.i85.i.i.i = icmp eq i32 %i.pa, 0
  br i1 %.not.i.i.i.i85.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pb = add nuw i32 %i.ow, 1
  %i.pc = lshr exact i32 %i.pb, 1
  %i.pd = sub i32 %i.ox, %i.pc
  br label %read_global_param.exit90.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.pe = lshr exact i32 %i.ow, 1
  %i.pf = add i32 %i.ox, %i.pe
  br label %read_global_param.exit90.i.i.i

bb.cl:                                            ; preds = %bb.cg
  %i.pg = sub nsw i32 36864, %i.ou                ; 3 uses
  %i.ph = shl nsw i32 %i.pg, 1
  %i.pi = icmp ugt i32 %i.ow, %i.ph
  br i1 %i.pi, label %inverse_recenter.exit12.i.i.i88.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pj = and i32 %i.ow, 1
  %.not.i10.i.i.i87.i.i.i = icmp eq i32 %i.pj, 0
  br i1 %.not.i10.i.i.i87.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pk = add i32 %i.ow, 1
  %i.pl = lshr exact i32 %i.pk, 1
  %i.pm = sub i32 %i.pg, %i.pl
  br label %inverse_recenter.exit12.i.i.i88.i.i.i

bb.co:                                            ; preds = %bb.cm
  %i.pn = lshr exact i32 %i.ow, 1
  %i.po = add i32 %i.pg, %i.pn
  br label %inverse_recenter.exit12.i.i.i88.i.i.i

inverse_recenter.exit12.i.i.i88.i.i.i:            ; preds = %bb.co, %bb.cn, %bb.cl
  %.0.i11.i.i.i89.i.i.i = phi i32 [ %i.po, %bb.co ], [ %i.pm, %bb.cn ], [ %i.ow, %bb.cl ]
  %i.pp = sub i32 8192, %.0.i11.i.i.i89.i.i.i
  br label %read_global_param.exit90.i.i.i

read_global_param.exit90.i.i.i:                   ; preds = %inverse_recenter.exit12.i.i.i88.i.i.i, %bb.ck, %bb.cj, %bb.ch
  %.0.i.i.i86.i.i.i = phi i32 [ %i.pp, %inverse_recenter.exit12.i.i.i88.i.i.i ], [ %i.pf, %bb.ck ], [ %i.pd, %bb.cj ], [ %i.ow, %bb.ch ]
  %i.pq = shl i32 %.0.i.i.i86.i.i.i, 1
  %i.pr = add i32 %i.pq, 57344
  %i.ps = getelementptr inbounds nuw i8, ptr %i.lt, i64 20
  store i32 %i.pr, ptr %i.ps, align 4, !tbaa !68
  br label %.thread97.i.i.i

bb.cp:                                            ; preds = %read_global_param.exit72.i.i.i
  %i.pt = sub i32 8192, %i.na
  %i.pu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store i32 %i.pt, ptr %i.pu, align 8, !tbaa !68
  %i.pv = getelementptr inbounds nuw i8, ptr %i.lt, i64 20
  store i32 %i.ls, ptr %i.pv, align 4, !tbaa !68
  br label %.thread97.i.i.i

bb.cq:                                            ; preds = %bb.az
  %i.pw = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv.i.i.i
  store i8 1, ptr %i.pw, align 1, !tbaa !56
  br label %.thread97.i.i.i

.thread97.i.i.i:                                  ; preds = %bb.cq, %bb.cp, %read_global_param.exit90.i.i.i
  %.05895100.i.i.i = phi i32 [ 1, %bb.cq ], [ 3, %read_global_param.exit90.i.i.i ], [ 2, %bb.cp ] ; 2 uses
  %i.px = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  call fastcc void @read_global_param(ptr noundef nonnull %i.er, i32 noundef %.05895100.i.i.i, i32 noundef %i.px, i32 noundef 0)
  call fastcc void @read_global_param(ptr noundef nonnull %i.er, i32 noundef %.05895100.i.i.i, i32 noundef %i.px, i32 noundef 1)
  br label %bb.cr

bb.cr:                                            ; preds = %.thread97.i.i.i, %.thread101.i.i.i
  %i.py = getelementptr inbounds nuw [24 x i8], ptr %i.je, i64 %indvars.iv.i.i.i ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !68 ; 6 uses
  %i.qb = icmp slt i32 %i.qa, 1
  br i1 %i.qb, label %get_shear_params_valid.exit.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qc = call i32 @llvm.umax.i32(i32 %i.qa, i32 32768)
  %.0.i3150.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.qc, i32 98303)
  %.0.i31.i.i.i.i = zext nneg i32 %.0.i3150.i.i.i.i to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 12
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !68 ; 2 uses
  %i.qf = call i32 @llvm.smax.i32(i32 %i.qe, i32 -32768)
  %i.qg = call i32 @llvm.smin.i32(i32 %i.qf, i32 32767)
  %.0.i29.i.i.i.i = zext i32 %i.qg to i64
  %i.qh = icmp samesign ugt i32 %i.qa, 65535      ; 2 uses
  %i.qi = lshr i32 %i.qa, 16
  %spec.select.i.i.i.i.i.i = select i1 %i.qh, i32 %i.qi, i32 %i.qa ; 3 uses
  %spec.select11.i.i.i.i.i.i = select i1 %i.qh, i32 16, i32 0 ; 2 uses
  %.not.i.i.i91.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i.i.i, 256 ; 2 uses
  %i.qj = lshr i32 %spec.select.i.i.i.i.i.i, 8
  %i.qk = or disjoint i32 %spec.select11.i.i.i.i.i.i, 8
  %.110.i.i.i.i.i.i = select i1 %.not.i.i.i91.i.i.i, i32 %spec.select.i.i.i.i.i.i, i32 %i.qj
  %.1.i.i.i.i.i.i = select i1 %.not.i.i.i91.i.i.i, i32 %spec.select11.i.i.i.i.i.i, i32 %i.qk
  %i.ql = zext nneg i32 %.110.i.i.i.i.i.i to i64
  %i.qm = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !56
  %i.qo = zext i8 %i.qn to i32
  %i.qp = add nuw nsw i32 %.1.i.i.i.i.i.i, %i.qo  ; 4 uses
  %i.qq = trunc nuw nsw i32 %i.qp to i16          ; 2 uses
  %.neg.i.i.i.i.i = shl nsw i32 -1, %i.qp
  %i.qr = add nsw i32 %.neg.i.i.i.i.i, %i.qa      ; 2 uses
  %i.qs = icmp samesign ugt i32 %i.qp, 8
  br i1 %i.qs, label %round_two.exit.i.i.i.i.i, label %bb.ct

round_two.exit.i.i.i.i.i:                         ; preds = %bb.cs
  %i.qt = sext i32 %i.qr to i64
  %i.qu = add nsw i16 %i.qq, -8
  %i.qv = zext nneg i16 %i.qu to i64              ; 2 uses
  %i.qw = add nsw i64 %i.qv, -1
  %i.qx = shl nuw i64 1, %i.qw
  %i.qy = add i64 %i.qx, %i.qt
  %i.qz = lshr i64 %i.qy, %i.qv
  %i.ra = trunc i64 %i.qz to i32
  br label %resolve_divisor.exit.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.rb = sub nuw nsw i32 8, %i.qp
  %i.rc = shl i32 %i.qr, %i.rb
  br label %resolve_divisor.exit.i.i.i.i

resolve_divisor.exit.i.i.i.i:                     ; preds = %bb.ct, %round_two.exit.i.i.i.i.i
  %.0.i32.i.i.i.i = phi i32 [ %i.ra, %round_two.exit.i.i.i.i.i ], [ %i.rc, %bb.ct ]
  %i.rd = add nuw nsw i16 %i.qq, 14
  %i.re = sext i32 %.0.i32.i.i.i.i to i64
  %i.rf = getelementptr inbounds [2 x i8], ptr @div_lut, i64 %i.re
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !59
  %i.rh = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !68
  %i.rj = sext i32 %i.ri to i64                   ; 2 uses
  %i.rk = shl nsw i64 %i.rj, 16
  %i.rl = sext i32 %i.qe to i64
  %i.rm = sext i16 %i.rg to i64                   ; 2 uses
  %i.rn = mul nsw i64 %i.rk, %i.rm                ; 3 uses
  %i.ro = icmp slt i64 %i.rn, 0
  %i.rp = zext nneg i16 %i.rd to i64              ; 5 uses
  %i.rq = add nsw i64 %i.rp, -1
  %i.rr = shl nuw i64 1, %i.rq                    ; 4 uses
  br i1 %i.ro, label %round_two.exit.i33.i.i.i.i, label %bb.cu

round_two.exit.i33.i.i.i.i:                       ; preds = %resolve_divisor.exit.i.i.i.i
  %i.rs = sub i64 %i.rr, %i.rn
  %i.rt = lshr i64 %i.rs, %i.rp
  %i.ru = sub nsw i64 0, %i.rt
  br label %round_two_signed.exit.i.i.i.i

bb.cu:                                            ; preds = %resolve_divisor.exit.i.i.i.i
  %i.rv = add nuw i64 %i.rn, %i.rr
  %i.rw = lshr i64 %i.rv, %i.rp
  br label %round_two_signed.exit.i.i.i.i

round_two_signed.exit.i.i.i.i:                    ; preds = %bb.cu, %round_two.exit.i33.i.i.i.i
  %i.rx = phi i64 [ %i.ru, %round_two.exit.i33.i.i.i.i ], [ %i.rw, %bb.cu ] ; 2 uses
  %i.ry = trunc i64 %i.rx to i32                  ; 2 uses
  %i.rz = add i32 %i.ry, 32768
  %.not.i26.i.i.i.i = icmp ult i32 %i.rz, 65536
  %i.sa = icmp sgt i32 %i.ry, -1
  %i.sb = select i1 %i.sa, i64 32767, i64 32768
  %.0.i27.i.i.i.i = select i1 %.not.i26.i.i.i.i, i64 %i.rx, i64 %i.sb
  %i.sc = getelementptr inbounds nuw i8, ptr %i.py, i64 20
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !68
  %i.se = mul nsw i64 %i.rm, %i.rl
  %i.sf = mul i64 %i.se, %i.rj                    ; 3 uses
  %i.sg = icmp slt i64 %i.sf, 0
  br i1 %i.sg, label %round_two.exit.i34.i.i.i.i, label %bb.cv

round_two.exit.i34.i.i.i.i:                       ; preds = %round_two_signed.exit.i.i.i.i
  %i.sh = sub i64 %i.rr, %i.sf
  %i.si = lshr i64 %i.sh, %i.rp
  %i.sj = sub nsw i64 0, %i.si
  br label %round_two_signed.exit36.i.i.i.i

bb.cv:                                            ; preds = %round_two_signed.exit.i.i.i.i
  %i.sk = add nuw i64 %i.sf, %i.rr
  %i.sl = lshr i64 %i.sk, %i.rp
  br label %round_two_signed.exit36.i.i.i.i

round_two_signed.exit36.i.i.i.i:                  ; preds = %bb.cv, %round_two.exit.i34.i.i.i.i
  %i.sm = phi i64 [ %i.sj, %round_two.exit.i34.i.i.i.i ], [ %i.sl, %bb.cv ]
  %i.sn = trunc i64 %i.sm to i32
  %i.so = sub nsw i32 %i.sd, %i.sn
  %i.sp = call i32 @llvm.smax.i32(i32 %i.so, i32 32768)
  %.0.i51.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.sp, i32 98303)
  %.0.i.i.i.i.i = zext nneg i32 %.0.i51.i.i.i.i to i64
  %sext.i.i.i.i = shl i64 %.0.i31.i.i.i.i, 48
  %i.sq = ashr exact i64 %sext.i.i.i.i, 48        ; 3 uses
  %i.sr = icmp slt i64 %i.sq, 0
  br i1 %i.sr, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %round_two_signed.exit36.i.i.i.i
  %i.ss = sub nsw i64 32, %i.sq
  %i.st = lshr i64 %i.ss, 6
  %i.su = sub nsw i64 0, %i.st
  br label %round_two_signed.exit39.i.i.i.i

bb.cx:                                            ; preds = %round_two_signed.exit36.i.i.i.i
  %i.sv = add nuw nsw i64 %i.sq, 32
  %i.sw = lshr i64 %i.sv, 6
  br label %round_two_signed.exit39.i.i.i.i

round_two_signed.exit39.i.i.i.i:                  ; preds = %bb.cx, %bb.cw
  %i.sx = phi i64 [ %i.su, %bb.cw ], [ %i.sw, %bb.cx ]
  %.tr.i.i.i.i = trunc nsw i64 %i.sx to i16
  %i.sy = shl i16 %.tr.i.i.i.i, 6
  %sext52.i.i.i.i = shl i64 %.0.i29.i.i.i.i, 48
  %4 = ashr exact i64 %sext52.i.i.i.i, 48         ; 3 uses
  %i.sz = icmp slt i64 %4, 0
  br i1 %i.sz, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %round_two_signed.exit39.i.i.i.i
  %i.ta = sub nsw i64 32, %4
  %i.tb = lshr i64 %i.ta, 6
  %i.tc = sub nsw i64 0, %i.tb
  br label %round_two_signed.exit42.i.i.i.i

bb.cz:                                            ; preds = %round_two_signed.exit39.i.i.i.i
  %i.td = add nuw nsw i64 %4, 32
  %i.te = lshr i64 %i.td, 6
  br label %round_two_signed.exit42.i.i.i.i

round_two_signed.exit42.i.i.i.i:                  ; preds = %bb.cz, %bb.cy
  %i.tf = phi i64 [ %i.tc, %bb.cy ], [ %i.te, %bb.cz ]
  %.tr23.i.i.i.i = trunc nsw i64 %i.tf to i16
  %i.tg = shl i16 %.tr23.i.i.i.i, 6
  %sext53.i.i.i.i.a = shl i64 %.0.i27.i.i.i.i, 48
  %i.th = ashr exact i64 %sext53.i.i.i.i.a, 48    ; 3 uses
  %i.ti = icmp slt i64 %i.th, 0
  br i1 %i.ti, label %bb.da, label %bb.db

bb.da:                                            ; preds = %round_two_signed.exit42.i.i.i.i
  %i.tj = sub nsw i64 32, %i.th
  %i.tk = lshr i64 %i.tj, 6
  %i.tl = sub nsw i64 0, %i.tk
  br label %round_two_signed.exit45.i.i.i.i

bb.db:                                            ; preds = %round_two_signed.exit42.i.i.i.i
  %i.tm = add nuw nsw i64 %i.th, 32
  %i.tn = lshr i64 %i.tm, 6
  br label %round_two_signed.exit45.i.i.i.i

round_two_signed.exit45.i.i.i.i:                  ; preds = %bb.db, %bb.da
  %i.to = phi i64 [ %i.tl, %bb.da ], [ %i.tn, %bb.db ]
  %sext54.i.i.i.i = shl i64 %.0.i.i.i.i.i, 48
  %i.tp = ashr exact i64 %sext54.i.i.i.i, 48      ; 3 uses
  %i.tq = icmp slt i64 %i.tp, 0
  br i1 %i.tq, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %round_two_signed.exit45.i.i.i.i
  %i.tr = sub nsw i64 32, %i.tp
  %i.ts = lshr i64 %i.tr, 6
  %i.tt = sub nsw i64 0, %i.ts
  br label %round_two_signed.exit48.i.i.i.i

bb.dd:                                            ; preds = %round_two_signed.exit45.i.i.i.i
  %i.tu = add nuw nsw i64 %i.tp, 32
  %i.tv = lshr i64 %i.tu, 6
  br label %round_two_signed.exit48.i.i.i.i

round_two_signed.exit48.i.i.i.i:                  ; preds = %bb.dd, %bb.dc
  %i.tw = phi i64 [ %i.tt, %bb.dc ], [ %i.tv, %bb.dd ]
  %i.tx = call i16 @llvm.abs.i16(i16 %i.sy, i1 false)
  %i.ty = zext i16 %i.tx to i32
  %i.tz = shl nuw nsw i32 %i.ty, 2
  %i.ua = call i16 @llvm.abs.i16(i16 %i.tg, i1 false)
  %i.ub = zext i16 %i.ua to i32
  %i.uc = mul nuw nsw i32 %i.ub, 7
  %i.ud = add nuw nsw i32 %i.uc, %i.tz
  %i.ue = icmp samesign ugt i32 %i.ud, 65535
  br i1 %i.ue, label %get_shear_params_valid.exit.i.i.i, label %bb.de

bb.de:                                            ; preds = %round_two_signed.exit48.i.i.i.i
  %.tr25.i.i.i.i = trunc nsw i64 %i.tw to i16
  %i.uf = shl i16 %.tr25.i.i.i.i, 6
  %.tr24.i.i.i.i = trunc nsw i64 %i.to to i16
  %i.ug = shl i16 %.tr24.i.i.i.i, 6
  %i.uh = call i16 @llvm.abs.i16(i16 %i.ug, i1 false)
  %i.ui = zext i16 %i.uh to i32
  %i.uj = call i16 @llvm.abs.i16(i16 %i.uf, i1 false)
  %i.uk = zext i16 %i.uj to i32
  %i.ul = add nuw nsw i32 %i.uk, %i.ui
  %i.um = icmp samesign ugt i32 %i.ul, 16383
  %i.un = zext i1 %i.um to i8
  br label %get_shear_params_valid.exit.i.i.i

get_shear_params_valid.exit.i.i.i:                ; preds = %bb.de, %round_two_signed.exit48.i.i.i.i, %bb.cr
  %.0.i92.i.i.i = phi i8 [ 1, %round_two_signed.exit48.i.i.i.i ], [ 1, %bb.cr ], [ %i.un, %bb.de ]
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ju, i64 %indvars.iv.i.i.i
  store i8 %.0.i92.i.i.i, ptr %i.uo, align 1, !tbaa !56
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 8
  br i1 %exitcond.not.i.i.i, label %global_motion_params.exit.loopexit.i.i, label %bb.ax, !llvm.loop !116

global_motion_params.exit.loopexit.i.i:           ; preds = %get_shear_params_valid.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.fa, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 12
  %.pre106.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !148
  br label %global_motion_params.exit.i.i

global_motion_params.exit.i.i:                    ; preds = %global_motion_params.exit.loopexit.i.i, %av1_frame_alloc.exit.i.i, %av1_frame_alloc.exit.i.i
  %i.up = phi i8 [ %.pre106.i.i, %global_motion_params.exit.loopexit.i.i ], [ %i.js, %av1_frame_alloc.exit.i.i ], [ %i.js, %av1_frame_alloc.exit.i.i ]
  %i.uq = phi ptr [ %.pre.i.i, %global_motion_params.exit.loopexit.i.i ], [ %i.jd, %av1_frame_alloc.exit.i.i ], [ %i.jd, %av1_frame_alloc.exit.i.i ] ; 45 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.er, i64 104
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !57 ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  switch i8 %i.up, label %bb.df [
    i8 0, label %skip_mode_params.exit.i.i
    i8 2, label %skip_mode_params.exit.i.i
  ]

bb.df:                                            ; preds = %global_motion_params.exit.i.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 782
  %i.uv = load i8, ptr %i.uu, align 2, !tbaa !155
  %.not.i62.i.i = icmp eq i8 %i.uv, 0
  br i1 %.not.i62.i.i, label %skip_mode_params.exit.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 564
  %i.ux = load i8, ptr %i.uw, align 4, !tbaa !156
  %.not82.i.i.i = icmp eq i8 %i.ux, 0
  br i1 %.not82.i.i.i, label %skip_mode_params.exit.i.i, label %.preheader89.i.i.i

.preheader89.i.i.i:                               ; preds = %bb.dg
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uq, i64 190
  %i.uz = load i8, ptr %i.uy, align 2, !tbaa !56
  %i.va = sext i8 %i.uz to i64
  %i.vb = getelementptr [448 x i8], ptr %i.er, i64 %i.va
  %i.vc = getelementptr i8, ptr %i.vb, i64 448
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !66 ; 2 uses
  %.not83.i.i.i = icmp eq ptr %i.vd, null
  br i1 %.not83.i.i.i, label %skip_mode_params.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %.preheader89.i.i.i
  %i.ve = getelementptr i8, ptr %i.us, i64 571
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uq, i64 25
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 25
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !157
  %i.vi = zext i8 %i.vh to i32                    ; 16 uses
  %i.vj = load i8, ptr %i.vf, align 1, !tbaa !157
  %i.vk = zext i8 %i.vj to i32                    ; 7 uses
  %.val88.i.i.i = load i8, ptr %i.ve, align 1, !tbaa !158
  %i.vl = sub nsw i32 %i.vi, %i.vk                ; 2 uses
  %i.vm = zext nneg i8 %.val88.i.i.i to i32
  %i.vn = shl nuw i32 1, %i.vm                    ; 39 uses
  %i.vo = add i32 %i.vn, -1                       ; 38 uses
  %i.vp = and i32 %i.vo, %i.vl                    ; 2 uses
  %i.vq = and i32 %i.vn, %i.vl                    ; 2 uses
  %i.vr = sub i32 %i.vp, %i.vq
  %i.vs = icmp sgt i32 %i.vr, -1                  ; 3 uses
  %.not84.i.i.i = icmp eq i32 %i.vp, %i.vq
  %.178.i.i.i = sext i1 %i.vs to i32              ; 3 uses
  %not..i.i.i = xor i1 %i.vs, true
  %i.vt = select i1 %not..i.i.i, i1 true, i1 %.not84.i.i.i ; 2 uses
  %.176.i.i.i = sext i1 %i.vt to i32              ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uq, i64 191
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !56
  %i.vw = sext i8 %i.vv to i64
  %i.vx = getelementptr [448 x i8], ptr %i.er, i64 %i.vw
  %i.vy = getelementptr i8, ptr %i.vx, i64 448
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !66 ; 2 uses
  %.not83.1.i.i.i = icmp eq ptr %i.vz, null
  br i1 %.not83.1.i.i.i, label %skip_mode_params.exit.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 25
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !157
  %i.wc = zext i8 %i.wb to i32                    ; 8 uses
  %i.wd = sub nsw i32 %i.wc, %i.vk                ; 2 uses
  %i.we = and i32 %i.wd, %i.vo                    ; 2 uses
  %i.wf = and i32 %i.wd, %i.vn                    ; 2 uses
  %i.wg = sub i32 %i.we, %i.wf
  %i.wh = icmp slt i32 %i.wg, 0
  br i1 %i.wh, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.not84.1.i.i.i = icmp eq i32 %i.we, %i.wf
  br i1 %.not84.1.i.i.i, label %bb.dq, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.vt, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.wi = sub nsw i32 %i.wc, %i.vi                ; 2 uses
  %i.wj = and i32 %i.wi, %i.vo
  %i.wk = and i32 %i.wi, %i.vn
  %i.wl = sub i32 %i.wj, %i.wk
  %i.wm = icmp slt i32 %i.wl, 0
  br i1 %i.wm, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  br label %bb.dq

bb.dn:                                            ; preds = %bb.di
  br i1 %i.vs, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wn = sub nsw i32 %i.wc, %i.vi                ; 2 uses
  %i.wo = and i32 %i.wn, %i.vo
  %i.wp = and i32 %i.wn, %i.vn
  %i.wq = sub i32 %i.wo, %i.wp
  %i.wr = icmp sgt i32 %i.wq, 0
  br i1 %i.wr, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do, %bb.dn
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dm, %bb.dl, %bb.dj
  %.178.1.i.i.i = phi i32 [ 1, %bb.dp ], [ 0, %bb.do ], [ %.178.i.i.i, %bb.dm ], [ %.178.i.i.i, %bb.dl ], [ %.178.i.i.i, %bb.dj ] ; 5 uses
  %.176.1.i.i.i = phi i32 [ %.176.i.i.i, %bb.dp ], [ %.176.i.i.i, %bb.do ], [ 1, %bb.dm ], [ 0, %bb.dl ], [ %.176.i.i.i, %bb.dj ] ; 5 uses
  %.174.1.i.i.i = phi i32 [ %i.wc, %bb.dp ], [ %i.vi, %bb.do ], [ %i.vi, %bb.dm ], [ %i.vi, %bb.dl ], [ %i.vi, %bb.dj ] ; 5 uses
  %.172.1.i.i.i = phi i32 [ %i.vi, %bb.dp ], [ %i.vi, %bb.do ], [ %i.wc, %bb.dm ], [ %i.vi, %bb.dl ], [ %i.vi, %bb.dj ] ; 5 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.uq, i64 192
  %i.wt = load i8, ptr %i.ws, align 2, !tbaa !56
  %i.wu = sext i8 %i.wt to i64
  %i.wv = getelementptr [448 x i8], ptr %i.er, i64 %i.wu
  %i.ww = getelementptr i8, ptr %i.wv, i64 448
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !66 ; 2 uses
  %.not83.2.i.i.i = icmp eq ptr %i.wx, null
  br i1 %.not83.2.i.i.i, label %skip_mode_params.exit.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 25
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !157
  %i.xa = zext i8 %i.wz to i32                    ; 10 uses
end_hunk_0
