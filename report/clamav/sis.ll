Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/sis?download=true
inline.NumInlined: 38
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_scansis:bb.a

bb.be:                                            ; preds = %bb.bc
  %i.ez = trunc nuw nsw i64 %i.ex to i32
  %i.fa = add nuw i32 %i.en, %i.ez                ; 3 uses
  %i.fb = icmp ult i32 %i.fa, 4
  br i1 %i.fb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165) #9
  br label %.thread1059.i

bb.bg:                                            ; preds = %bb.be
  %i.fc = add i64 %i.ex, %.6490.i
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb
  %.8546.i = phi i32 [ %i.fa, %bb.bg ], [ %i.en, %bb.bb ] ; 3 uses
  %.8511.i = phi i32 [ %i.fa, %bb.bg ], [ %.6509.i, %bb.bb ] ; 3 uses
  %.8492.i = phi i64 [ %i.fc, %bb.bg ], [ %.6490.i, %bb.bb ] ; 3 uses
  %i.fd = sub i32 %.8511.i, %.8546.i
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 1, !tbaa !18
  %i.fh = add i32 %.8546.i, -4                    ; 4 uses
  %i.fi = icmp ult i32 %i.fh, 4
  br i1 %i.fi, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.fj = zext i32 %.8511.i to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fj
  %i.fl = zext nneg i32 %i.fh to i64              ; 3 uses
  %i.fm = sub nsw i64 0, %i.fl
  %i.fn = getelementptr inbounds i8, ptr %i.fk, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.fn, i64 %i.fl, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fl
  %i.fp = sub nuw nsw i32 8196, %.8546.i
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = call fastcc i64 @fmap_readn(ptr noundef nonnull %i.y, ptr noundef %i.fo, i64 noundef %.8492.i, i64 noundef %i.fq) ; 3 uses
  %i.fs = icmp eq i64 %i.fr, -1
  br i1 %i.fs, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164) #9
  br label %.thread1059.i

bb.bk:                                            ; preds = %bb.bi
  %i.ft = trunc nuw nsw i64 %i.fr to i32
  %i.fu = add nuw i32 %i.fh, %i.ft                ; 3 uses
  %i.fv = icmp ult i32 %i.fu, 4
  br i1 %i.fv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165) #9
  br label %.thread1059.i

bb.bm:                                            ; preds = %bb.bk
  %i.fw = add i64 %i.fr, %.8492.i
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  %.10548.i = phi i32 [ %i.fu, %bb.bm ], [ %i.fh, %bb.bh ] ; 3 uses
  %.10513.i = phi i32 [ %i.fu, %bb.bm ], [ %.8511.i, %bb.bh ] ; 3 uses
  %.10494.i = phi i64 [ %i.fw, %bb.bm ], [ %.8492.i, %bb.bh ] ; 3 uses
  %i.fx = sub i32 %.10513.i, %.10548.i
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 1, !tbaa !18
  %i.gb = add i32 %.10548.i, -4                   ; 4 uses
  %i.gc = icmp ult i32 %i.gb, 4
  br i1 %i.gc, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.gd = zext i32 %.10513.i to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gd
  %i.gf = zext nneg i32 %i.gb to i64              ; 3 uses
  %i.gg = sub nsw i64 0, %i.gf
  %i.gh = getelementptr inbounds i8, ptr %i.ge, i64 %i.gg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.gh, i64 %i.gf, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gf
  %i.gj = sub nuw nsw i32 8196, %.10548.i
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = call fastcc i64 @fmap_readn(ptr noundef nonnull %i.y, ptr noundef %i.gi, i64 noundef %.10494.i, i64 noundef %i.gk) ; 3 uses
  %i.gm = icmp eq i64 %i.gl, -1
  br i1 %i.gm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164) #9
  br label %.thread1059.i

bb.bq:                                            ; preds = %bb.bo
  %i.gn = trunc nuw nsw i64 %i.gl to i32
  %i.go = add nuw i32 %i.gb, %i.gn                ; 3 uses
  %i.gp = icmp ult i32 %i.go, 4
  br i1 %i.gp, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165) #9
  br label %.thread1059.i

bb.bs:                                            ; preds = %bb.bq
  %i.gq = add i64 %i.gl, %.10494.i
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bn
  %.12550.i = phi i32 [ %i.go, %bb.bs ], [ %i.gb, %bb.bn ] ; 3 uses
  %.12515.i = phi i32 [ %i.go, %bb.bs ], [ %.10513.i, %bb.bn ] ; 3 uses
  %.12496.i = phi i64 [ %i.gq, %bb.bs ], [ %.10494.i, %bb.bn ] ; 3 uses
  %i.gr = sub i32 %.12515.i, %.12550.i
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 1, !tbaa !18
  %i.gv = add i32 %.12550.i, -4                   ; 4 uses
  %i.gw = icmp ult i32 %i.gv, 4
  br i1 %i.gw, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  %i.gx = zext i32 %.12515.i to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gx
  %i.gz = zext nneg i32 %i.gv to i64              ; 3 uses
  %i.ha = sub nsw i64 0, %i.gz
  %i.hb = getelementptr inbounds i8, ptr %i.gy, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.hb, i64 %i.gz, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gz
  %i.hd = sub nuw nsw i32 8196, %.12550.i
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = call fastcc i64 @fmap_readn(ptr noundef nonnull %i.y, ptr noundef %i.hc, i64 noundef %.12496.i, i64 noundef %i.he) ; 3 uses
  %i.hg = icmp eq i64 %i.hf, -1
  br i1 %i.hg, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164) #9
  br label %.thread1059.i

bb.bw:                                            ; preds = %bb.bu
  %i.hh = trunc nuw nsw i64 %i.hf to i32
  %i.hi = add nuw i32 %i.gv, %i.hh                ; 3 uses
  %i.hj = icmp ult i32 %i.hi, 4
  br i1 %i.hj, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165) #9
  br label %.thread1059.i

bb.by:                                            ; preds = %bb.bw
  %i.hk = add i64 %i.hf, %.12496.i
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bt
  %.14552.i = phi i32 [ %i.hi, %bb.by ], [ %i.gv, %bb.bt ] ; 3 uses
  %.14517.i = phi i32 [ %i.hi, %bb.by ], [ %.12515.i, %bb.bt ] ; 2 uses
  %.14498.i = phi i64 [ %i.hk, %bb.by ], [ %.12496.i, %bb.bt ]
  %i.hl = sub i32 %.14517.i, %.14552.i
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 1, !tbaa !18
  %i.hp = icmp ult i32 %i.ds, 100
  br i1 %i.hp, label %switch.lookup, label %bb.ca

switch.lookup:                                    ; preds = %bb.bz
  %i.hq = zext nneg i32 %i.ds to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.cli_scansis, i64 %i.hq
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %switch.lookup
  %.0443.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.177, %bb.bz ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.178, i32 noundef %i.em, ptr noundef nonnull %.0443.i) #9
  %i.hr = call fastcc ptr @getsistring(ptr noundef nonnull %i.y, i32 noundef %i.ga, i32 noundef %i.fg) ; 5 uses
  %.not699.i = icmp eq ptr %i.hr, null            ; 3 uses
  br i1 %.not699.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.179, ptr noundef nonnull %i.hr) #9
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.hs = call fastcc ptr @getsistring(ptr noundef nonnull %i.y, i32 noundef %i.ho, i32 noundef %i.gu) ; 3 uses
  %.not700.i = icmp eq ptr %i.hs, null
  br i1 %.not700.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.180, ptr noundef nonnull %i.hs) #9
  call void @free(ptr noundef nonnull %i.hs) #9
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.ht = call ptr @cli_max_malloc(i64 noundef %i.bx) #9 ; 7 uses
  %.not701.i = icmp eq ptr %i.ht, null            ; 2 uses
  br i1 %.not701.i, label %bb.cf, label %.lr.ph1136.i.preheader

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.181) #9
  br label %.thread988.thread.i

.lr.ph1136.i.preheader:                           ; preds = %bb.ce
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %wide.trip.count.i ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ai ; 2 uses
  %.155531129.i = add i32 %.14552.i, -4
  br label %.lr.ph1136.i

.lr.ph1136.i:                                     ; preds = %bb.cn, %.lr.ph1136.i.preheader
  %indvars.iv1207.i = phi i64 [ 0, %.lr.ph1136.i.preheader ], [ %indvars.iv.next1208.i, %bb.cn ] ; 2 uses
  %.155531134.i = phi i32 [ %.155531129.i, %.lr.ph1136.i.preheader ], [ %.15553.i, %bb.cn ] ; 4 uses
  %.154991132.i = phi i64 [ %.14498.i, %.lr.ph1136.i.preheader ], [ %.17501.i, %bb.cn ] ; 6 uses
  %.155181131.i = phi i32 [ %.14517.i, %.lr.ph1136.i.preheader ], [ %.17520.i, %bb.cn ] ; 2 uses
  %.15553.in1130.i = phi i32 [ %.14552.i, %.lr.ph1136.i.preheader ], [ %.17555.i, %bb.cn ]
  %i.hw = icmp ult i32 %.155531134.i, 4
  br i1 %i.hw, label %bb.cg, label %bb.cn

bb.cg:                                            ; preds = %.lr.ph1136.i
  %i.hx = zext i32 %.155181131.i to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hx
  %i.hz = zext nneg i32 %.155531134.i to i64      ; 3 uses
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = getelementptr inbounds i8, ptr %i.hy, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.ib, i64 %i.hz, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hz
  %i.id = sub nuw nsw i32 8196, %.15553.in1130.i
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = load i64, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  %.not1078.i = icmp eq i64 %.154991132.i, %i.if
  br i1 %.not1078.i, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ig = icmp ugt i64 %.154991132.i, %i.if
  br i1 %i.ig, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ih = sub nuw i64 %i.if, %.154991132.i
  %spec.select.i735.i = call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.ie, i64 %i.ih) ; 3 uses
  %i.ii = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.ij = call ptr %i.ii(ptr noundef nonnull %i.y, i64 noundef %.154991132.i, i64 noundef %spec.select.i735.i, i32 noundef 0) #9, !inline_history !31 ; 2 uses
  %.not.i736.i = icmp eq ptr %i.ij, null
  br i1 %.not.i736.i, label %bb.cj, label %select.unfold857.i

select.unfold857.i:                               ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull align 1 %i.ij, i64 %spec.select.i735.i, i1 false)
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164) #9
  br label %.thread988.thread.i

bb.ck:                                            ; preds = %select.unfold857.i, %bb.cg
  %.020.i734.i = phi i64 [ 0, %bb.cg ], [ %spec.select.i735.i, %select.unfold857.i ] ; 2 uses
  %i.ik = trunc nuw nsw i64 %.020.i734.i to i32
  %i.il = add nuw nsw i32 %.155531134.i, %i.ik    ; 3 uses
  %i.im = icmp samesign ult i32 %i.il, 4
  br i1 %i.im, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165) #9
  br label %.thread988.thread.i

bb.cm:                                            ; preds = %bb.ck
  %i.in = add i64 %.020.i734.i, %.154991132.i
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph1136.i
  %.17555.i = phi i32 [ %i.il, %bb.cm ], [ %.155531134.i, %.lr.ph1136.i ] ; 3 uses
  %.17520.i = phi i32 [ %i.il, %bb.cm ], [ %.155181131.i, %.lr.ph1136.i ] ; 3 uses
  %.17501.i = phi i64 [ %i.in, %bb.cm ], [ %.154991132.i, %.lr.ph1136.i ] ; 2 uses
  %i.io = sub i32 %.17520.i, %.17555.i
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 1, !tbaa !18
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv1207.i
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !20
  %indvars.iv.next1208.i = add nuw nsw i64 %indvars.iv1207.i, 1 ; 2 uses
  %.15553.i = add nsw i32 %.17555.i, -4           ; 2 uses
  %exitcond1211.not.i = icmp eq i64 %indvars.iv.next1208.i, %wide.trip.count.i
  br i1 %exitcond1211.not.i, label %.lr.ph1143.i, label %.lr.ph1136.i

.lr.ph1143.i:                                     ; preds = %bb.cn, %bb.cv
  %indvars.iv1212.i = phi i64 [ %indvars.iv.next1213.i, %bb.cv ], [ 0, %bb.cn ] ; 2 uses
  %.185021141.i = phi i64 [ %.20.i, %bb.cv ], [ %.17501.i, %bb.cn ] ; 6 uses
  %.185211140.i = phi i32 [ %.20523.i, %bb.cv ], [ %.17520.i, %bb.cn ] ; 2 uses
  %.185561139.i = phi i32 [ %i.jq, %bb.cv ], [ %.15553.i, %bb.cn ] ; 5 uses
  %i.it = icmp ult i32 %.185561139.i, 4
  br i1 %i.it, label %bb.co, label %bb.cv

bb.co:                                            ; preds = %.lr.ph1143.i
  %i.iu = zext i32 %.185211140.i to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.iu
  %i.iw = zext nneg i32 %.185561139.i to i64      ; 3 uses
  %i.ix = sub nsw i64 0, %i.iw
  %i.iy = getelementptr inbounds i8, ptr %i.iv, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.iy, i64 %i.iw, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.iw
  %i.ja = sub nuw nsw i32 8192, %.185561139.i
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = load i64, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  %.not1077.i = icmp eq i64 %.185021141.i, %i.jc
  br i1 %.not1077.i, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jd = icmp ugt i64 %.185021141.i, %i.jc
  br i1 %i.jd, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.je = sub nuw i64 %i.jc, %.185021141.i
  %spec.select.i740.i = call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.jb, i64 %i.je) ; 3 uses
  %i.jf = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.jg = call ptr %i.jf(ptr noundef nonnull %i.y, i64 noundef %.185021141.i, i64 noundef %spec.select.i740.i, i32 noundef 0) #9, !inline_history !31 ; 2 uses
  %.not.i741.i = icmp eq ptr %i.jg, null
  br i1 %.not.i741.i, label %bb.cr, label %select.unfold867.i

select.unfold867.i:                               ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr nonnull align 1 %i.jg, i64 %spec.select.i740.i, i1 false)
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164) #9
  br label %.thread988.thread.i

bb.cs:                                            ; preds = %select.unfold867.i, %bb.co
  %.020.i739.i = phi i64 [ 0, %bb.co ], [ %spec.select.i740.i, %select.unfold867.i ] ; 2 uses
  %i.jh = trunc nuw nsw i64 %.020.i739.i to i32
  %i.ji = add nuw nsw i32 %.185561139.i, %i.jh    ; 3 uses
  %i.jj = icmp samesign ult i32 %i.ji, 4
  br i1 %i.jj, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165) #9
  br label %.thread988.thread.i

bb.cu:                                            ; preds = %bb.cs
  %i.jk = add i64 %.020.i739.i, %.185021141.i
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.lr.ph1143.i
  %.20558.i = phi i32 [ %i.ji, %bb.cu ], [ %.185561139.i, %.lr.ph1143.i ] ; 2 uses
  %.20523.i = phi i32 [ %i.ji, %bb.cu ], [ %.185211140.i, %.lr.ph1143.i ] ; 3 uses
  %.20.i = phi i64 [ %i.jk, %bb.cu ], [ %.185021141.i, %.lr.ph1143.i ] ; 2 uses
  %i.jl = sub i32 %.20523.i, %.20558.i
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 1, !tbaa !18
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv1212.i
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !20
  %i.jq = add nsw i32 %.20558.i, -4               ; 2 uses
  %indvars.iv.next1213.i = add nuw nsw i64 %indvars.iv1212.i, 1 ; 2 uses
  %exitcond1216.not.i = icmp eq i64 %indvars.iv.next1213.i, %wide.trip.count.i
  br i1 %exitcond1216.not.i, label %.lr.ph1151.i, label %.lr.ph1143.i

.lr.ph1151.i:                                     ; preds = %bb.cv, %bb.dd
  %indvars.iv1217.i = phi i64 [ %indvars.iv.next1218.i, %bb.dd ], [ 0, %bb.cv ] ; 2 uses
  %.211149.i = phi i64 [ %.23.i, %bb.dd ], [ %.20.i, %bb.cv ] ; 6 uses
  %.215241148.i = phi i32 [ %.23526.i, %bb.dd ], [ %.20523.i, %bb.cv ] ; 2 uses
  %.215591147.i = phi i32 [ %i.ko, %bb.dd ], [ %i.jq, %bb.cv ] ; 5 uses
  %i.jr = icmp ult i32 %.215591147.i, 4
  br i1 %i.jr, label %bb.cw, label %bb.dd

bb.cw:                                            ; preds = %.lr.ph1151.i
  %i.js = zext i32 %.215241148.i to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.js
  %i.ju = zext nneg i32 %.215591147.i to i64      ; 3 uses
  %i.jv = sub nsw i64 0, %i.ju
  %i.jw = getelementptr inbounds i8, ptr %i.jt, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jw, i64 %i.ju, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ju
  %i.jy = sub nuw nsw i32 8192, %.215591147.i
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = load i64, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  %.not1076.i = icmp eq i64 %.211149.i, %i.ka
  br i1 %.not1076.i, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kb = icmp ugt i64 %.211149.i, %i.ka
  br i1 %i.kb, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kc = sub nuw i64 %i.ka, %.211149.i
  %spec.select.i745.i = call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.jz, i64 %i.kc) ; 3 uses
  %i.kd = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.ke = call ptr %i.kd(ptr noundef nonnull %i.y, i64 noundef %.211149.i, i64 noundef %spec.select.i745.i, i32 noundef 0) #9, !inline_history !31 ; 2 uses
  %.not.i746.i = icmp eq ptr %i.ke, null
  br i1 %.not.i746.i, label %bb.cz, label %select.unfold877.i

select.unfold877.i:                               ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jx, ptr nonnull align 1 %i.ke, i64 %spec.select.i745.i, i1 false)
  br label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164) #9
  br label %.thread988.thread.i

bb.da:                                            ; preds = %select.unfold877.i, %bb.cw
  %.020.i744.i = phi i64 [ 0, %bb.cw ], [ %spec.select.i745.i, %select.unfold877.i ] ; 2 uses
  %i.kf = trunc nuw nsw i64 %.020.i744.i to i32
  %i.kg = add nuw nsw i32 %.215591147.i, %i.kf    ; 3 uses
  %i.kh = icmp samesign ult i32 %i.kg, 4
  br i1 %i.kh, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165) #9
  br label %.thread988.thread.i

bb.dc:                                            ; preds = %bb.da
  %i.ki = add i64 %.020.i744.i, %.211149.i
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.lr.ph1151.i
  %.23561.i = phi i32 [ %i.kg, %bb.dc ], [ %.215591147.i, %.lr.ph1151.i ] ; 2 uses
  %.23526.i = phi i32 [ %i.kg, %bb.dc ], [ %.215241148.i, %.lr.ph1151.i ] ; 3 uses
  %.23.i = phi i64 [ %i.ki, %bb.dc ], [ %.211149.i, %.lr.ph1151.i ] ; 2 uses
  %i.kj = sub i32 %.23526.i, %.23561.i
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 1, !tbaa !18
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv1217.i
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !20
  %i.ko = add nsw i32 %.23561.i, -4               ; 2 uses
  %indvars.iv.next1218.i = add nuw nsw i64 %indvars.iv1217.i, 1 ; 2 uses
  %exitcond1221.not.i = icmp eq i64 %indvars.iv.next1218.i, %wide.trip.count.i
  br i1 %exitcond1221.not.i, label %._crit_edge1152.i, label %.lr.ph1151.i

._crit_edge1152.i:                                ; preds = %bb.dd
  %.not702.i = icmp eq i32 %i.ds, 4
  br i1 %.not702.i, label %bb.ee, label %bb.de

bb.de:                                            ; preds = %._crit_edge1152.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  br label %.lr.ph1159.i

.thread898.i.loopexit:                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %bb.ee

.lr.ph1159.i:                                     ; preds = %bb.ed, %bb.de
  %indvars.iv1222.i = phi i64 [ 0, %bb.de ], [ %indvars.iv.next1223.i, %bb.ed ] ; 5 uses
  %.15741156.i = phi i32 [ %.05731163.i, %bb.de ], [ %.2575.ph.i, %bb.ed ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv1222.i ; 7 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !20 ; 2 uses
  %.not703.i = icmp eq i32 %i.kq, 0
  br i1 %.not703.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %.lr.ph1159.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.182) #9
  br label %bb.ed

bb.dg:                                            ; preds = %.lr.ph1159.i
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv1222.i ; 3 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !20 ; 2 uses
  %i.kt = icmp ult i32 %i.ks, 84
  br i1 %i.kt, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.183, i32 noundef %i.ks) #9
  br label %bb.ed

bb.di:                                            ; preds = %bb.dg
  %i.ku = zext i32 %i.kq to i64
  %i.kv = call i32 @cli_checklimits(ptr noundef nonnull @.str.184, ptr noundef %0, i64 noundef %i.ku, i64 noundef 0, i64 noundef 0) #9
  %.not704.i = icmp eq i32 %i.kv, 0
  br i1 %.not704.i, label %bb.dj, label %bb.ed

bb.dj:                                            ; preds = %bb.di
  %i.kw = load i32, ptr %i.kr, align 4, !tbaa !20
  %i.kx = load i32, ptr %i.kp, align 4, !tbaa !20
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv1222.i ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !20
  %i.la = trunc nuw nsw i64 %indvars.iv1222.i to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.185, i32 noundef %i.la, i32 noundef %i.kw, i32 noundef %i.kx, i32 noundef %i.kz) #9
  %i.lb = load i32, ptr %i.kr, align 4, !tbaa !20
  %i.lc = zext i32 %i.lb to i64
  %i.ld = load i32, ptr %i.kp, align 4, !tbaa !20
  %i.le = zext i32 %i.ld to i64
  %i.lf = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.lg = call ptr %i.lf(ptr noundef nonnull %i.y, i64 noundef %i.lc, i64 noundef %i.le, i32 noundef 0) #9, !inline_history !32 ; 3 uses
  %.not705.i = icmp eq ptr %i.lg, null
  br i1 %.not705.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.186) #9
  br label %bb.ed

bb.dl:                                            ; preds = %bb.dj
  br i1 %.not698.i, label %bb.dm, label %bb.dv

bb.dm:                                            ; preds = %bb.dl
  %i.lh = load i32, ptr %i.ky, align 4, !tbaa !20 ; 2 uses
  %i.li = load i32, ptr %i.kp, align 4, !tbaa !20
  %i.lj = mul i32 %i.li, 3                        ; 2 uses
  %.not706.i = icmp ugt i32 %i.lh, %i.lj
  br i1 %.not706.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lk = zext i32 %i.lj to i64
  %i.ll = call i32 @cli_checklimits(ptr noundef nonnull @.str.184, ptr noundef %0, i64 noundef %i.lk, i64 noundef 0, i64 noundef 0) #9
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.do, label %._crit_edge1241.i

._crit_edge1241.i:                                ; preds = %bb.dn
  %.pre.i = load i32, ptr %i.ky, align 4, !tbaa !20
  br label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ln = load i32, ptr %i.kp, align 4, !tbaa !20
  %i.lo = mul i32 %i.ln, 3
  br label %bb.dr

bb.dp:                                            ; preds = %._crit_edge1241.i, %bb.dm
  %i.lp = phi i32 [ %.pre.i, %._crit_edge1241.i ], [ %i.lh, %bb.dm ]
  %i.lq = zext i32 %i.lp to i64
  %i.lr = call i32 @cli_checklimits(ptr noundef nonnull @.str.184, ptr noundef %0, i64 noundef %i.lq, i64 noundef 0, i64 noundef 0) #9
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.dq, label %bb.ed

bb.dq:                                            ; preds = %bb.dp
  %i.lt = load i32, ptr %i.ky, align 4, !tbaa !20
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %storemerge.in.i = phi i32 [ %i.lt, %bb.dq ], [ %i.lo, %bb.do ]
  %storemerge.i = zext i32 %storemerge.in.i to i64 ; 2 uses
  store i64 %storemerge.i, ptr %i.f, align 8, !tbaa !21
  %i.lu = call ptr @cli_max_malloc(i64 noundef %storemerge.i) #9 ; 5 uses
  %.not707.i = icmp eq ptr %i.lu, null
  br i1 %.not707.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.181) #9
  br label %.thread988.thread1327.i

bb.dt:                                            ; preds = %bb.dr
  %i.lv = load i32, ptr %i.kp, align 4, !tbaa !20
  %i.lw = zext i32 %i.lv to i64
  %i.lx = call i32 @uncompress(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.f, ptr noundef nonnull %i.lg, i64 noundef %i.lw) #9
  %.not708.i = icmp eq i32 %i.lx, 0
  br i1 %.not708.i, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.187) #9
  call void @free(ptr noundef nonnull %i.lu) #9
  br label %bb.ed

bb.dv:                                            ; preds = %bb.dl
  %i.ly = load i32, ptr %i.kp, align 4, !tbaa !20
  %i.lz = zext i32 %i.ly to i64
  store i64 %i.lz, ptr %i.f, align 8, !tbaa !21
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %.3469.i = phi ptr [ null, %bb.dv ], [ %i.lu, %bb.dt ] ; 4 uses
  %.0.i = phi ptr [ %i.lg, %bb.dv ], [ %i.lu, %bb.dt ]
  %i.ma = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.188, ptr noundef nonnull %i.l, i32 noundef %.15741156.i) #9 ; 0 uses
  store i8 0, ptr %i.bw, align 1, !tbaa !18
  %i.mb = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.e, i32 noundef 578, i32 noundef 384) #9 ; 5 uses
  %i.mc = icmp eq i32 %i.mb, -1
  br i1 %i.mc, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.189, ptr noundef nonnull %i.e) #9
  br label %.thread988.thread1327.i

bb.dy:                                            ; preds = %bb.dw
  %i.md = load i64, ptr %i.f, align 8, !tbaa !21
  %i.me = call i64 @cli_writen(i32 noundef %i.mb, ptr noundef nonnull %.0.i, i64 noundef %i.md) #9
  %i.mf = load i64, ptr %i.f, align 8, !tbaa !21
  %.not709.i = icmp eq i64 %i.me, %i.mf
  br i1 %.not709.i, label %bb.dz, label %bb.fs

bb.dz:                                            ; preds = %bb.dy
  %.not710.i = icmp eq ptr %.3469.i, null
  br i1 %.not710.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @free(ptr noundef nonnull %.3469.i) #9
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.mg = call i32 @cli_magic_scan_desc(i32 noundef %i.mb, ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef %i.hr, i32 noundef 0) #9 ; 2 uses
  %.not711.i = icmp eq i32 %i.mg, 0
  br i1 %.not711.i, label %bb.ec, label %bb.fs

bb.ec:                                            ; preds = %bb.eb
  %i.mh = call i32 @close(i32 noundef %i.mb) #9   ; 0 uses
  %i.mi = add i32 %.15741156.i, 1
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.du, %bb.dp, %bb.dk, %bb.di, %bb.dh, %bb.df
  %.2575.ph.i = phi i32 [ %.15741156.i, %bb.dk ], [ %.15741156.i, %bb.di ], [ %i.mi, %bb.ec ], [ %.15741156.i, %bb.dp ], [ %.15741156.i, %bb.du ], [ %.15741156.i, %bb.df ], [ %.15741156.i, %bb.dh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %indvars.iv.next1223.i = add nuw nsw i64 %indvars.iv1222.i, 1 ; 2 uses
  %exitcond1226.not.i = icmp eq i64 %indvars.iv.next1223.i, %wide.trip.count.i
  br i1 %exitcond1226.not.i, label %.thread898.i.loopexit, label %.lr.ph1159.i

bb.ee:                                            ; preds = %.thread898.i.loopexit, %._crit_edge1152.i
  %.4577.i = phi i32 [ %.2575.ph.i, %.thread898.i.loopexit ], [ %.05731163.i, %._crit_edge1152.i ]
  br i1 %.not699.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @free(ptr noundef nonnull %i.hr) #9
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  call void @free(ptr noundef %i.ht) #9
  br label %bb.fk

bb.eh:                                            ; preds = %bb.am
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.190) #9
  %i.mj = icmp ult i32 %i.cw, 4
  br i1 %i.mj, label %bb.ei, label %bb.ep

bb.ei:                                            ; preds = %bb.eh
  %i.mk = zext i32 %.2505.i to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mk
  %i.mm = zext nneg i32 %i.cw to i64              ; 3 uses
  %i.mn = sub nsw i64 0, %i.mm
  %i.mo = getelementptr inbounds i8, ptr %i.ml, i64 %i.mn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.mo, i64 %i.mm, i1 false)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mm
  %i.mq = sub nuw nsw i32 8196, %.2540.i
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = load i64, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  %.not1074.i = icmp eq i64 %.2486.i, %i.ms
  br i1 %.not1074.i, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.mt = icmp ugt i64 %.2486.i, %i.ms
  br i1 %i.mt, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.mu = sub nuw i64 %i.ms, %.2486.i
  %spec.select.i750.i = call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.mr, i64 %i.mu) ; 3 uses
  %i.mv = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.mw = call ptr %i.mv(ptr noundef nonnull %i.y, i64 noundef %.2486.i, i64 noundef %spec.select.i750.i, i32 noundef 0) #9, !inline_history !31 ; 2 uses
  %.not.i751.i = icmp eq ptr %i.mw, null
  br i1 %.not.i751.i, label %bb.el, label %select.unfold919.i

end_hunk_0
