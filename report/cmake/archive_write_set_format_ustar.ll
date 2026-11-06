Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_ustar?download=true
inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@__archive_write_format_header_ustar:bb.a
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.bn = call ptr @archive_string_conversion_charset_name(ptr noundef %5) #10
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.15, ptr noundef %i.bm, ptr noundef %i.bn) #10
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.11 = phi i32 [ -20, %bb.aq ], [ %.10, %bb.an ] ; 3 uses
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  %.not130 = icmp eq i64 %i.bo, 0
  br i1 %.not130, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bp = icmp ugt i64 %i.bo, 32
  br i1 %i.bp, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %.not131 = icmp eq i32 %3, 120
  br i1 %.not131, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.16) #10
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.12 = phi i32 [ -25, %bb.au ], [ %.11, %bb.at ]
  store i64 32, ptr %i.a, align 8, !tbaa !41
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.bq = phi i64 [ 32, %bb.av ], [ %i.bo, %bb.as ]
  %.13 = phi i32 [ %.12, %bb.av ], [ %.11, %bb.as ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 297
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bs, i64 %i.bq, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ar
  %.14 = phi i32 [ %.13, %bb.aw ], [ %.11, %bb.ar ] ; 3 uses
  %i.bt = call i32 @archive_entry_mode(ptr noundef %2) #10 ; 3 uses
  %i.bu = and i32 %i.bt, 4095
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %.not.i = icmp eq i32 %4, 0                     ; 6 uses
  %i.bw = trunc i32 %i.bt to i8
  %i.bx = trunc i32 %i.bt to i8
  %i.by = lshr i8 %i.bx, 3
  %i.bz = lshr i64 %i.bv, 6
  %i.ca = trunc nuw nsw i64 %i.bz to i8
  %i.cb = lshr i64 %i.bv, 9
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.cd = trunc nuw nsw i64 %i.cb to i8
  %i.ce = insertelement <4 x i8> poison, i8 %i.cd, i64 0
  %i.cf = insertelement <4 x i8> %i.ce, i8 %i.ca, i64 1
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.by, i64 2
  %i.ch = insertelement <4 x i8> %i.cg, i8 %i.bw, i64 3
  %i.ci = and <4 x i8> %i.ch, <i8 -1, i8 7, i8 7, i8 7>
  %i.cj = or disjoint <4 x i8> %i.ci, splat (i8 48)
  store <4 x i8> %i.cj, ptr %i.cc, align 1, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 48, ptr %i.ck, align 1, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 48, ptr %i.cl, align 1, !tbaa !20
  %i.cm = call i64 @archive_entry_uid(ptr noundef %2) #10 ; 21 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.co = icmp slt i64 %i.cm, 0                   ; 2 uses
  br i1 %.not.i, label %bb.ay, label %format_number.exit.thread.thread

format_number.exit.thread.thread:                 ; preds = %bb.ax
  br i1 %i.co, label %.preheader.i.i, label %.lr.ph.i.i140

.preheader.i.i:                                   ; preds = %format_number.exit.thread.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cn, i8 48, i64 range(i64 0, 13) 6, i1 false), !tbaa !20
  br label %format_number.exit164.thread

.lr.ph.i.i140:                                    ; preds = %format_number.exit.thread.thread
  %i.cp = trunc i64 %i.cm to i8
  %i.cq = and i8 %i.cp, 7
  %i.cr = or disjoint i8 %i.cq, 48
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 113
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !20
  %i.ct = trunc i64 %i.cm to i8
  %i.cu = lshr i8 %i.ct, 3
  %i.cv = and i8 %i.cu, 7
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !20
  %i.cy = lshr i64 %i.cm, 6
  %i.cz = lshr i64 %i.cm, 9
  %i.da = lshr i64 %i.cm, 12
  %i.db = lshr i64 %i.cm, 15
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.dd = trunc i64 %i.cy to i8
  %i.de = trunc i64 %i.cz to i8
  %i.df = trunc i64 %i.da to i8
  %i.dg = trunc i64 %i.db to i8
  %i.dh = insertelement <4 x i8> poison, i8 %i.dg, i64 0
  %i.di = insertelement <4 x i8> %i.dh, i8 %i.df, i64 1
  %i.dj = insertelement <4 x i8> %i.di, i8 %i.de, i64 2
  %i.dk = insertelement <4 x i8> %i.dj, i8 %i.dd, i64 3
  %i.dl = and <4 x i8> %i.dk, splat (i8 7)
  %i.dm = or disjoint <4 x i8> %i.dl, splat (i8 48)
  store <4 x i8> %i.dm, ptr %i.dc, align 1, !tbaa !20
  %.not32.i145 = icmp samesign ult i64 %i.cm, 262144
  br i1 %.not32.i145, label %format_number.exit164.thread.thread, label %.lr.ph27.preheader.i.i146

format_number.exit164.thread.thread:              ; preds = %.lr.ph.i.i140
  %i.dn = call i64 @archive_entry_gid(ptr noundef %2) #10 ; 2 uses
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %.preheader.i.i174, label %.lr.ph.i.i166

.lr.ph27.preheader.i.i146:                        ; preds = %.lr.ph.i.i140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dc, i8 55, i64 range(i64 0, 13) 6, i1 false), !tbaa !20
  br label %format_number.exit164.thread

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.co, label %.loopexit.i152, label %.lr.ph.i148.preheader

.lr.ph.i148.preheader:                            ; preds = %bb.ay
  %i.dp = icmp samesign ugt i64 %i.cm, 262143     ; 2 uses
  br i1 %i.dp, label %.lr.ph.i148.1, label %.lr.ph.i23.i157

.lr.ph.i23.i157:                                  ; preds = %.lr.ph.i148.preheader, %.lr.ph.i148.1, %.lr.ph.i148.2
  %i.dq = phi i1 [ false, %.lr.ph.i148.preheader ], [ false, %.lr.ph.i148.1 ], [ true, %.lr.ph.i148.2 ]
  %.01941.i150.lcssa = phi i64 [ 6, %.lr.ph.i148.preheader ], [ 7, %.lr.ph.i148.1 ], [ 8, %.lr.ph.i148.2 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.01941.i150.lcssa ; 8 uses
  %i.ds = trunc i64 %i.cm to i8
  %i.dt = and i8 %i.ds, 7
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 -1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !20
  %i.dw = lshr i64 %i.cm, 3
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = and i8 %i.dx, 7
  %i.dz = or disjoint i8 %i.dy, 48
  %i.ea = getelementptr inbounds i8, ptr %i.dr, i64 -2
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !20
  %i.eb = lshr i64 %i.cm, 6
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = and i8 %i.ec, 7
  %i.ee = or disjoint i8 %i.ed, 48
  %i.ef = getelementptr inbounds i8, ptr %i.dr, i64 -3
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !20
  %i.eg = lshr i64 %i.cm, 9
  %i.eh = trunc i64 %i.eg to i8
  %i.ei = and i8 %i.eh, 7
  %i.ej = or disjoint i8 %i.ei, 48
  %i.ek = getelementptr inbounds i8, ptr %i.dr, i64 -4
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !20
  %i.el = lshr i64 %i.cm, 12
  %i.em = trunc i64 %i.el to i8
  %i.en = and i8 %i.em, 7
  %i.eo = or disjoint i8 %i.en, 48
  %i.ep = getelementptr inbounds i8, ptr %i.dr, i64 -5
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !20
  %i.eq = lshr i64 %i.cm, 15
  %i.er = trunc i64 %i.eq to i8
  %i.es = and i8 %i.er, 7
  %i.et = or disjoint i8 %i.es, 48
  %i.eu = getelementptr inbounds i8, ptr %i.dr, i64 -6 ; 2 uses
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !20
  %i.ev = lshr i64 %i.cm, 18                      ; 2 uses
  br i1 %i.dp, label %.lr.ph.i23.i157.6, label %._crit_edge.i27.i161

.lr.ph.i23.i157.6:                                ; preds = %.lr.ph.i23.i157
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = and i8 %i.ew, 7
  %i.ey = or disjoint i8 %i.ex, 48
  %i.ez = getelementptr inbounds i8, ptr %i.dr, i64 -7 ; 2 uses
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !20
  %i.fa = lshr i64 %i.cm, 21                      ; 2 uses
  br i1 %i.dq, label %.lr.ph.i23.i157.7, label %._crit_edge.i27.i161

.lr.ph.i23.i157.7:                                ; preds = %.lr.ph.i23.i157.6
  %i.fb = trunc i64 %i.fa to i8
  %i.fc = and i8 %i.fb, 7
  %i.fd = or disjoint i8 %i.fc, 48
  %i.fe = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !20
  %i.ff = lshr i64 %i.cm, 24
  br label %._crit_edge.i27.i161

._crit_edge.i27.i161:                             ; preds = %.lr.ph.i23.i157.7, %.lr.ph.i23.i157.6, %.lr.ph.i23.i157
  %.lcssa551.a = phi ptr [ %i.fe, %.lr.ph.i23.i157.7 ], [ %i.ez, %.lr.ph.i23.i157.6 ], [ %i.eu, %.lr.ph.i23.i157 ]
  %.lcssa550 = phi i64 [ %i.ff, %.lr.ph.i23.i157.7 ], [ %i.fa, %.lr.ph.i23.i157.6 ], [ %i.ev, %.lr.ph.i23.i157 ]
  %.not33.i162 = icmp eq i64 %.lcssa550, 0
  br i1 %.not33.i162, label %format_number.exit164.thread.thread492, label %.lr.ph27.preheader.i29.i163

.lr.ph27.preheader.i29.i163:                      ; preds = %._crit_edge.i27.i161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa551.a, i8 55, i64 range(i64 0, 13) %.01941.i150.lcssa, i1 false), !tbaa !20
  br label %format_number.exit164.thread

.lr.ph.i148.1:                                    ; preds = %.lr.ph.i148.preheader
  %i.fg = icmp samesign ult i64 %i.cm, 2097152
  br i1 %i.fg, label %.lr.ph.i23.i157, label %.lr.ph.i148.2

.lr.ph.i148.2:                                    ; preds = %.lr.ph.i148.1
  %i.fh = icmp samesign ult i64 %i.cm, 16777216
  br i1 %i.fh, label %.lr.ph.i23.i157, label %.loopexit.i152

.loopexit.i152:                                   ; preds = %.lr.ph.i148.2, %bb.ay
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 108
  %6 = or i64 %i.cm, -9223372036854775808
  %.inner = call i64 @llvm.bswap.i64(i64 %6)
  store i64 %.inner, ptr %i.fi, align 1, !tbaa !20
  br label %format_number.exit164.thread.thread492

format_number.exit164.thread.thread492:           ; preds = %._crit_edge.i27.i161, %.loopexit.i152
  %i.fj = call i64 @archive_entry_gid(ptr noundef %2) #10 ; 3 uses
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %.loopexit.i180, label %.lr.ph.i176.preheader

format_number.exit164.thread:                     ; preds = %.preheader.i.i, %.lr.ph27.preheader.i.i146, %.lr.ph27.preheader.i29.i163
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 34, ptr noundef nonnull @.str.18) #10
  %i.fl = call i64 @archive_entry_gid(ptr noundef %2) #10 ; 4 uses
  %i.fm = icmp slt i64 %i.fl, 0                   ; 2 uses
  br i1 %.not.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %format_number.exit164.thread
  br i1 %i.fm, label %.preheader.i.i174, label %.lr.ph.i.i166

.preheader.i.i174:                                ; preds = %format_number.exit164.thread.thread, %bb.az
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fn, i8 48, i64 range(i64 0, 13) 6, i1 false), !tbaa !20
  br label %format_number.exit192.thread

.lr.ph.i.i166:                                    ; preds = %format_number.exit164.thread.thread, %bb.az
  %.16339342 = phi i32 [ %.14, %format_number.exit164.thread.thread ], [ -25, %bb.az ]
  %i.fo = phi i64 [ %i.dn, %format_number.exit164.thread.thread ], [ %i.fl, %bb.az ] ; 7 uses
  %i.fp = trunc i64 %i.fo to i8
  %i.fq = and i8 %i.fp, 7
  %i.fr = or disjoint i8 %i.fq, 48
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 121
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !20
  %i.ft = trunc i64 %i.fo to i8
  %i.fu = lshr i8 %i.ft, 3
  %i.fv = and i8 %i.fu, 7
  %i.fw = or disjoint i8 %i.fv, 48
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !20
  %i.fy = lshr i64 %i.fo, 6
  %i.fz = lshr i64 %i.fo, 9
  %i.ga = lshr i64 %i.fo, 12
  %i.gb = lshr i64 %i.fo, 15
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.gd = trunc i64 %i.fy to i8
  %i.ge = trunc i64 %i.fz to i8
  %i.gf = trunc i64 %i.ga to i8
  %i.gg = trunc i64 %i.gb to i8
  %i.gh = insertelement <4 x i8> poison, i8 %i.gg, i64 0
  %i.gi = insertelement <4 x i8> %i.gh, i8 %i.gf, i64 1
  %i.gj = insertelement <4 x i8> %i.gi, i8 %i.ge, i64 2
  %i.gk = insertelement <4 x i8> %i.gj, i8 %i.gd, i64 3
  %i.gl = and <4 x i8> %i.gk, splat (i8 7)
  %i.gm = or disjoint <4 x i8> %i.gl, splat (i8 48)
  store <4 x i8> %i.gm, ptr %i.gc, align 1, !tbaa !20
  %.not32.i171 = icmp samesign ult i64 %i.fo, 262144
  br i1 %.not32.i171, label %format_number.exit192.thread.thread, label %.lr.ph27.preheader.i.i172

format_number.exit192.thread.thread:              ; preds = %.lr.ph.i.i166
  %i.gn = call i64 @archive_entry_size(ptr noundef %2) #10 ; 2 uses
  %i.go = icmp slt i64 %i.gn, 0
  br i1 %i.go, label %.preheader.i.i202, label %.lr.ph.i.i194

.lr.ph27.preheader.i.i172:                        ; preds = %.lr.ph.i.i166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gc, i8 55, i64 range(i64 0, 13) 6, i1 false), !tbaa !20
  br label %format_number.exit192.thread

bb.ba:                                            ; preds = %format_number.exit164.thread
  br i1 %i.fm, label %.loopexit.i180, label %.lr.ph.i176.preheader

.lr.ph.i176.preheader:                            ; preds = %format_number.exit164.thread.thread492, %bb.ba
  %.16494497 = phi i32 [ %.14, %format_number.exit164.thread.thread492 ], [ -25, %bb.ba ] ; 2 uses
  %i.gp = phi i64 [ %i.fj, %format_number.exit164.thread.thread492 ], [ %i.fl, %bb.ba ] ; 13 uses
  %i.gq = icmp samesign ugt i64 %i.gp, 262143     ; 2 uses
  br i1 %i.gq, label %.lr.ph.i176.1, label %.lr.ph.i23.i185

.lr.ph.i23.i185:                                  ; preds = %.lr.ph.i176.preheader, %.lr.ph.i176.1, %.lr.ph.i176.2
  %i.gr = phi i1 [ false, %.lr.ph.i176.preheader ], [ false, %.lr.ph.i176.1 ], [ true, %.lr.ph.i176.2 ]
  %.01941.i178.lcssa = phi i64 [ 6, %.lr.ph.i176.preheader ], [ 7, %.lr.ph.i176.1 ], [ 8, %.lr.ph.i176.2 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 %.01941.i178.lcssa ; 8 uses
  %i.gt = trunc i64 %i.gp to i8
  %i.gu = and i8 %i.gt, 7
  %i.gv = or disjoint i8 %i.gu, 48
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 115
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !20
  %i.gx = lshr i64 %i.gp, 3
  %i.gy = trunc i64 %i.gx to i8
  %i.gz = and i8 %i.gy, 7
  %i.ha = or disjoint i8 %i.gz, 48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 114
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !20
  %i.hc = lshr i64 %i.gp, 6
  %i.hd = trunc i64 %i.hc to i8
  %i.he = and i8 %i.hd, 7
  %i.hf = or disjoint i8 %i.he, 48
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gs, i64 113
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !20
  %i.hh = lshr i64 %i.gp, 9
  %i.hi = trunc i64 %i.hh to i8
  %i.hj = and i8 %i.hi, 7
  %i.hk = or disjoint i8 %i.hj, 48
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gs, i64 112
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !20
  %i.hm = lshr i64 %i.gp, 12
  %i.hn = trunc i64 %i.hm to i8
  %i.ho = and i8 %i.hn, 7
  %i.hp = or disjoint i8 %i.ho, 48
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gs, i64 111
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !20
  %i.hr = lshr i64 %i.gp, 15
  %i.hs = trunc i64 %i.hr to i8
  %i.ht = and i8 %i.hs, 7
  %i.hu = or disjoint i8 %i.ht, 48
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gs, i64 110 ; 2 uses
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !20
  %i.hw = lshr i64 %i.gp, 18                      ; 2 uses
  br i1 %i.gq, label %.lr.ph.i23.i185.6, label %._crit_edge.i27.i189

.lr.ph.i23.i185.6:                                ; preds = %.lr.ph.i23.i185
  %i.hx = trunc i64 %i.hw to i8
  %i.hy = and i8 %i.hx, 7
  %i.hz = or disjoint i8 %i.hy, 48
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gs, i64 109 ; 2 uses
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !20
  %i.ib = lshr i64 %i.gp, 21                      ; 2 uses
  br i1 %i.gr, label %.lr.ph.i23.i185.7, label %._crit_edge.i27.i189

.lr.ph.i23.i185.7:                                ; preds = %.lr.ph.i23.i185.6
  %i.ic = trunc i64 %i.ib to i8
  %i.id = and i8 %i.ic, 7
  %i.ie = or disjoint i8 %i.id, 48
  %i.if = getelementptr inbounds nuw i8, ptr %i.gs, i64 108 ; 2 uses
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !20
  %i.ig = lshr i64 %i.gp, 24
  br label %._crit_edge.i27.i189

._crit_edge.i27.i189:                             ; preds = %.lr.ph.i23.i185.7, %.lr.ph.i23.i185.6, %.lr.ph.i23.i185
  %.lcssa549 = phi ptr [ %i.if, %.lr.ph.i23.i185.7 ], [ %i.ia, %.lr.ph.i23.i185.6 ], [ %i.hv, %.lr.ph.i23.i185 ]
  %.lcssa548.a = phi i64 [ %i.ig, %.lr.ph.i23.i185.7 ], [ %i.ib, %.lr.ph.i23.i185.6 ], [ %i.hw, %.lr.ph.i23.i185 ]
  %.not33.i190 = icmp eq i64 %.lcssa548.a, 0
  br i1 %.not33.i190, label %format_number.exit192.thread.thread499, label %.lr.ph27.preheader.i29.i191

.lr.ph27.preheader.i29.i191:                      ; preds = %._crit_edge.i27.i189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa549, i8 55, i64 range(i64 0, 13) %.01941.i178.lcssa, i1 false), !tbaa !20
  br label %format_number.exit192.thread

.lr.ph.i176.1:                                    ; preds = %.lr.ph.i176.preheader
  %i.ih = icmp samesign ult i64 %i.gp, 2097152
  br i1 %i.ih, label %.lr.ph.i23.i185, label %.lr.ph.i176.2

.lr.ph.i176.2:                                    ; preds = %.lr.ph.i176.1
  %i.ii = icmp samesign ult i64 %i.gp, 16777216
  br i1 %i.ii, label %.lr.ph.i23.i185, label %.loopexit.i180

.loopexit.i180:                                   ; preds = %.lr.ph.i176.2, %format_number.exit164.thread.thread492, %bb.ba
  %.16494498 = phi i32 [ %.14, %format_number.exit164.thread.thread492 ], [ -25, %bb.ba ], [ %.16494497, %.lr.ph.i176.2 ]
  %i.ij = phi i64 [ %i.fj, %format_number.exit164.thread.thread492 ], [ %i.fl, %bb.ba ], [ %i.gp, %.lr.ph.i176.2 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 116
  %7 = or i64 %i.ij, -9223372036854775808
  %.inner541 = call i64 @llvm.bswap.i64(i64 %7)
  store i64 %.inner541, ptr %i.ik, align 1, !tbaa !20
  br label %format_number.exit192.thread.thread499

format_number.exit192.thread.thread499:           ; preds = %._crit_edge.i27.i189, %.loopexit.i180
  %.17.ph = phi i32 [ %.16494498, %.loopexit.i180 ], [ %.16494497, %._crit_edge.i27.i189 ] ; 2 uses
  %i.il = call i64 @archive_entry_size(ptr noundef %2) #10 ; 3 uses
  %i.im = icmp slt i64 %i.il, 0
  br i1 %i.im, label %.loopexit.i208, label %.lr.ph.i204.preheader

format_number.exit192.thread:                     ; preds = %.preheader.i.i174, %.lr.ph27.preheader.i.i172, %.lr.ph27.preheader.i29.i191
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 34, ptr noundef nonnull @.str.19) #10
  %i.in = call i64 @archive_entry_size(ptr noundef %2) #10 ; 4 uses
  %i.io = icmp slt i64 %i.in, 0                   ; 2 uses
  br i1 %.not.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %format_number.exit192.thread
  br i1 %i.io, label %.preheader.i.i202, label %.lr.ph.i.i194

.preheader.i.i202:                                ; preds = %format_number.exit192.thread.thread, %bb.bb
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ip, i8 48, i64 range(i64 0, 13) 11, i1 false), !tbaa !20
  br label %format_number.exit220.thread

.lr.ph.i.i194:                                    ; preds = %format_number.exit192.thread.thread, %bb.bb
  %.17345348 = phi i32 [ %.16339342, %format_number.exit192.thread.thread ], [ -25, %bb.bb ]
  %i.iq = phi i64 [ %i.gn, %format_number.exit192.thread.thread ], [ %i.in, %bb.bb ] ; 9 uses
  %i.ir = trunc i64 %i.iq to i8
  %i.is = and i8 %i.ir, 7
  %i.it = or disjoint i8 %i.is, 48
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 134
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !20
  %i.iv = trunc i64 %i.iq to i8
  %i.iw = lshr i8 %i.iv, 3
  %i.ix = and i8 %i.iw, 7
  %i.iy = or disjoint i8 %i.ix, 48
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 133
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !20
  %i.ja = lshr i64 %i.iq, 6
  %i.jb = trunc i64 %i.ja to i8
  %i.jc = and i8 %i.jb, 7
  %i.jd = or disjoint i8 %i.jc, 48
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !20
  %i.jf = insertelement <4 x i64> poison, i64 %i.iq, i64 0
  %i.jg = shufflevector <4 x i64> %i.jf, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jh = lshr <4 x i64> %i.jg, <i64 18, i64 15, i64 12, i64 9>
  %i.ji = lshr i64 %i.iq, 21
  %i.jj = lshr i64 %i.iq, 24
  %i.jk = lshr i64 %i.iq, 27
  %i.jl = lshr i64 %i.iq, 30
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.jn = trunc <4 x i64> %i.jh to <4 x i8>
  %i.jo = trunc i64 %i.ji to i8
  %i.jp = trunc i64 %i.jj to i8
  %i.jq = trunc i64 %i.jk to i8
  %i.jr = trunc i64 %i.jl to i8
  %i.js = insertelement <8 x i8> poison, i8 %i.jr, i64 0
  %i.jt = insertelement <8 x i8> %i.js, i8 %i.jq, i64 1
  %i.ju = insertelement <8 x i8> %i.jt, i8 %i.jp, i64 2
  %i.jv = insertelement <8 x i8> %i.ju, i8 %i.jo, i64 3
  %i.jw = shufflevector <4 x i8> %i.jn, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jx = shufflevector <8 x i8> %i.jv, <8 x i8> %i.jw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jy = and <8 x i8> %i.jx, splat (i8 7)
  %i.jz = or disjoint <8 x i8> %i.jy, splat (i8 48)
  store <8 x i8> %i.jz, ptr %i.jm, align 1, !tbaa !20
  %.not32.i199 = icmp samesign ult i64 %i.iq, 8589934592
  br i1 %.not32.i199, label %format_number.exit220.thread.thread, label %.lr.ph27.preheader.i.i200

format_number.exit220.thread.thread:              ; preds = %.lr.ph.i.i194
  %i.ka = call i64 @archive_entry_mtime(ptr noundef %2) #10 ; 2 uses
  %i.kb = icmp slt i64 %i.ka, 0
  br i1 %i.kb, label %.preheader.i.i230, label %.lr.ph.i.i222

.lr.ph27.preheader.i.i200:                        ; preds = %.lr.ph.i.i194
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.jm, i8 55, i64 range(i64 0, 13) 11, i1 false), !tbaa !20
  br label %format_number.exit220.thread

bb.bc:                                            ; preds = %format_number.exit192.thread
  br i1 %i.io, label %.loopexit.i208, label %.lr.ph.i204.preheader

.lr.ph.i204.preheader:                            ; preds = %format_number.exit192.thread.thread499, %bb.bc
  %.17501504 = phi i32 [ %.17.ph, %format_number.exit192.thread.thread499 ], [ -25, %bb.bc ] ; 2 uses
  %i.kc = phi i64 [ %i.il, %format_number.exit192.thread.thread499 ], [ %i.in, %bb.bc ] ; 5 uses
  %i.kd = icmp samesign ult i64 %i.kc, 8589934592
  br i1 %i.kd, label %bb.bd, label %.lr.ph.i204.1

bb.bd:                                            ; preds = %.lr.ph.i204.1, %.lr.ph.i204.preheader
  %.01941.i206.lcssa = phi i32 [ 11, %.lr.ph.i204.preheader ], [ 12, %.lr.ph.i204.1 ] ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.kf = zext nneg i32 %.01941.i206.lcssa to i64 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kf ; 2 uses
  %xtraiter = and i32 %.01941.i206.lcssa, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.new, label %.lr.ph.i23.i213.prol

.lr.ph.i23.i213.prol:                             ; preds = %bb.bd, %.lr.ph.i23.i213.prol
  %.01323.i24.i214.prol = phi i32 [ %i.kh, %.lr.ph.i23.i213.prol ], [ %.01941.i206.lcssa, %bb.bd ]
  %.11522.i25.i215.prol = phi ptr [ %i.kl, %.lr.ph.i23.i213.prol ], [ %i.kg, %bb.bd ]
  %.01621.i26.i216.prol = phi i64 [ %i.km, %.lr.ph.i23.i213.prol ], [ %i.kc, %bb.bd ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i23.i213.prol ], [ 0, %bb.bd ]
  %i.kh = add nsw i32 %.01323.i24.i214.prol, -1   ; 2 uses
  %i.ki = trunc i64 %.01621.i26.i216.prol to i8
  %i.kj = and i8 %i.ki, 7
  %i.kk = or disjoint i8 %i.kj, 48
  %i.kl = getelementptr inbounds i8, ptr %.11522.i25.i215.prol, i64 -1 ; 3 uses
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !20
  %i.km = lshr i64 %.01621.i26.i216.prol, 3       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.new, label %.lr.ph.i23.i213.prol, !llvm.loop !37

.new:                                             ; preds = %bb.bd, %.lr.ph.i23.i213.prol
  %.01323.i24.i214.unr = phi i32 [ %.01941.i206.lcssa, %bb.bd ], [ %i.kh, %.lr.ph.i23.i213.prol ]
  %.11522.i25.i215.unr = phi ptr [ %i.kg, %bb.bd ], [ %i.kl, %.lr.ph.i23.i213.prol ]
  %.01621.i26.i216.unr = phi i64 [ %i.kc, %bb.bd ], [ %i.km, %.lr.ph.i23.i213.prol ]
  br label %.lr.ph.i23.i213

.lr.ph.i23.i213:                                  ; preds = %.lr.ph.i23.i213, %.new
  %.01323.i24.i214 = phi i32 [ %.01323.i24.i214.unr, %.new ], [ %i.lc, %.lr.ph.i23.i213 ] ; 2 uses
  %.11522.i25.i215 = phi ptr [ %.11522.i25.i215.unr, %.new ], [ %i.lg, %.lr.ph.i23.i213 ] ; 4 uses
  %.01621.i26.i216 = phi i64 [ %.01621.i26.i216.unr, %.new ], [ %i.lh, %.lr.ph.i23.i213 ] ; 5 uses
  %i.kn = trunc i64 %.01621.i26.i216 to i8
  %i.ko = and i8 %i.kn, 7
  %i.kp = or disjoint i8 %i.ko, 48
  %i.kq = getelementptr inbounds i8, ptr %.11522.i25.i215, i64 -1
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !20
  %i.kr = lshr i64 %.01621.i26.i216, 3
  %i.ks = trunc i64 %i.kr to i8
  %i.kt = and i8 %i.ks, 7
  %i.ku = or disjoint i8 %i.kt, 48
  %i.kv = getelementptr inbounds i8, ptr %.11522.i25.i215, i64 -2
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !20
  %i.kw = lshr i64 %.01621.i26.i216, 6
  %i.kx = trunc i64 %i.kw to i8
  %i.ky = and i8 %i.kx, 7
  %i.kz = or disjoint i8 %i.ky, 48
  %i.la = getelementptr inbounds i8, ptr %.11522.i25.i215, i64 -3
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !20
  %i.lb = lshr i64 %.01621.i26.i216, 9
  %i.lc = add nsw i32 %.01323.i24.i214, -4
  %i.ld = trunc i64 %i.lb to i8
  %i.le = and i8 %i.ld, 7
  %i.lf = or disjoint i8 %i.le, 48
  %i.lg = getelementptr inbounds i8, ptr %.11522.i25.i215, i64 -4 ; 3 uses
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !20
  %i.lh = lshr i64 %.01621.i26.i216, 12           ; 2 uses
  %i.li = icmp sgt i32 %.01323.i24.i214, 4
  br i1 %i.li, label %.lr.ph.i23.i213, label %._crit_edge.i27.i217.unr-lcssa, !llvm.loop !38

._crit_edge.i27.i217.unr-lcssa:                   ; preds = %.lr.ph.i23.i213
  %i.lj = icmp eq i64 %i.lh, 0
  br i1 %i.lj, label %format_number.exit220.thread.thread506, label %.lr.ph27.preheader.i29.i219

.lr.ph27.preheader.i29.i219:                      ; preds = %._crit_edge.i27.i217.unr-lcssa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lg, i8 55, i64 range(i64 0, 13) %i.kf, i1 false), !tbaa !20
  br label %format_number.exit220.thread

.lr.ph.i204.1:                                    ; preds = %.lr.ph.i204.preheader
  %i.lk = icmp samesign ult i64 %i.kc, 68719476736
  br i1 %i.lk, label %bb.bd, label %.loopexit.i208

.loopexit.i208:                                   ; preds = %.lr.ph.i204.1, %format_number.exit192.thread.thread499, %bb.bc
  %.17501505 = phi i32 [ %.17.ph, %format_number.exit192.thread.thread499 ], [ -25, %bb.bc ], [ %.17501504, %.lr.ph.i204.1 ]
  %i.ll = phi i64 [ %i.il, %format_number.exit192.thread.thread499 ], [ %i.in, %bb.bc ], [ %i.kc, %.lr.ph.i204.1 ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %8 = call i64 @llvm.bswap.i64(i64 %i.ll)
  store i64 %8, ptr %i.lm, align 1, !tbaa !20
  %i.ln = ashr i64 %i.ll, 63
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.lp = trunc nsw i64 %i.ln to i8
  %i.lq = insertelement <4 x i8> poison, i8 %i.lp, i64 0
  %i.lr = shufflevector <4 x i8> %i.lq, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ls = or <4 x i8> %i.lr, <i8 -128, i8 0, i8 0, i8 0>
  store <4 x i8> %i.ls, ptr %i.lo, align 1, !tbaa !20
  br label %format_number.exit220.thread.thread506

format_number.exit220.thread.thread506:           ; preds = %._crit_edge.i27.i217.unr-lcssa, %.loopexit.i208
  %.18.ph = phi i32 [ %.17501505, %.loopexit.i208 ], [ %.17501504, %._crit_edge.i27.i217.unr-lcssa ] ; 2 uses
  %i.lt = call i64 @archive_entry_mtime(ptr noundef %2) #10 ; 3 uses
  %i.lu = icmp slt i64 %i.lt, 0
  br i1 %i.lu, label %.loopexit.i236, label %.lr.ph.i232

format_number.exit220.thread:                     ; preds = %.preheader.i.i202, %.lr.ph27.preheader.i.i200, %.lr.ph27.preheader.i29.i219
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 34, ptr noundef nonnull @.str.20) #10
  %i.lv = call i64 @archive_entry_mtime(ptr noundef %2) #10 ; 4 uses
  %i.lw = icmp slt i64 %i.lv, 0                   ; 2 uses
  br i1 %.not.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %format_number.exit220.thread
  br i1 %i.lw, label %.preheader.i.i230, label %.lr.ph.i.i222

.preheader.i.i230:                                ; preds = %format_number.exit220.thread.thread, %bb.be
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.lx, i8 48, i64 range(i64 0, 13) 11, i1 false), !tbaa !20
  br label %format_number.exit248

.lr.ph.i.i222:                                    ; preds = %format_number.exit220.thread.thread, %bb.be
  %.18351354 = phi i32 [ %.17345348, %format_number.exit220.thread.thread ], [ -25, %bb.be ]
  %i.ly = phi i64 [ %i.ka, %format_number.exit220.thread.thread ], [ %i.lv, %bb.be ] ; 9 uses
  %i.lz = trunc i64 %i.ly to i8
  %i.ma = and i8 %i.lz, 7
  %i.mb = or disjoint i8 %i.ma, 48
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 146
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !20
  %i.md = trunc i64 %i.ly to i8
  %i.me = lshr i8 %i.md, 3
  %i.mf = and i8 %i.me, 7
  %i.mg = or disjoint i8 %i.mf, 48
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 145
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !20
  %i.mi = lshr i64 %i.ly, 6
  %i.mj = trunc i64 %i.mi to i8
  %i.mk = and i8 %i.mj, 7
  %i.ml = or disjoint i8 %i.mk, 48
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !20
  %i.mn = insertelement <4 x i64> poison, i64 %i.ly, i64 0
  %i.mo = shufflevector <4 x i64> %i.mn, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.mp = lshr <4 x i64> %i.mo, <i64 18, i64 15, i64 12, i64 9>
  %i.mq = lshr i64 %i.ly, 21
  %i.mr = lshr i64 %i.ly, 24
  %i.ms = lshr i64 %i.ly, 27
  %i.mt = lshr i64 %i.ly, 30
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.mv = trunc <4 x i64> %i.mp to <4 x i8>
  %i.mw = trunc i64 %i.mq to i8
  %i.mx = trunc i64 %i.mr to i8
  %i.my = trunc i64 %i.ms to i8
  %i.mz = trunc i64 %i.mt to i8
  %i.na = insertelement <8 x i8> poison, i8 %i.mz, i64 0
  %i.nb = insertelement <8 x i8> %i.na, i8 %i.my, i64 1
  %i.nc = insertelement <8 x i8> %i.nb, i8 %i.mx, i64 2
  %i.nd = insertelement <8 x i8> %i.nc, i8 %i.mw, i64 3
  %i.ne = shufflevector <4 x i8> %i.mv, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nf = shufflevector <8 x i8> %i.nd, <8 x i8> %i.ne, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ng = and <8 x i8> %i.nf, splat (i8 7)
  %i.nh = or disjoint <8 x i8> %i.ng, splat (i8 48)
  store <8 x i8> %i.nh, ptr %i.mu, align 1, !tbaa !20
  %.not32.i227 = icmp samesign ult i64 %i.ly, 8589934592
  br i1 %.not32.i227, label %format_number.exit248.thread, label %.lr.ph27.preheader.i.i228

.lr.ph27.preheader.i.i228:                        ; preds = %.lr.ph.i.i222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.mu, i8 55, i64 range(i64 0, 13) 11, i1 false), !tbaa !20
  br label %format_number.exit248

bb.bf:                                            ; preds = %format_number.exit220.thread
  br i1 %i.lw, label %.loopexit.i236, label %.lr.ph.i232

.lr.ph.i232:                                      ; preds = %format_number.exit220.thread.thread506, %bb.bf
  %.18508510 = phi i32 [ %.18.ph, %format_number.exit220.thread.thread506 ], [ -25, %bb.bf ] ; 2 uses
  %i.ni = phi i64 [ %i.lt, %format_number.exit220.thread.thread506 ], [ %i.lv, %bb.bf ] ; 10 uses
  %i.nj = icmp samesign ult i64 %i.ni, 8589934592
  br i1 %i.nj, label %.lr.ph.i23.i241, label %.loopexit.i236

.lr.ph.i23.i241:                                  ; preds = %.lr.ph.i232
  %i.nk = trunc i64 %i.ni to i8
  %i.nl = and i8 %i.nk, 7
  %i.nm = or disjoint i8 %i.nl, 48
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 146
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !20
  %i.no = trunc i64 %i.ni to i8
  %i.np = lshr i8 %i.no, 3
  %i.nq = and i8 %i.np, 7
  %i.nr = or disjoint i8 %i.nq, 48
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 145
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !20
  %i.nt = lshr i64 %i.ni, 6
  %i.nu = trunc i64 %i.nt to i8
  %i.nv = and i8 %i.nu, 7
  %i.nw = or disjoint i8 %i.nv, 48
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !20
  %i.ny = insertelement <4 x i64> poison, i64 %i.ni, i64 0
  %i.nz = shufflevector <4 x i64> %i.ny, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.oa = lshr <4 x i64> %i.nz, <i64 18, i64 15, i64 12, i64 9>
  %i.ob = lshr i64 %i.ni, 21
  %i.oc = lshr i64 %i.ni, 24
  %i.od = lshr i64 %i.ni, 27
  %i.oe = lshr i64 %i.ni, 30
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.og = trunc <4 x i64> %i.oa to <4 x i8>
  %i.oh = trunc i64 %i.ob to i8
  %i.oi = trunc i64 %i.oc to i8
  %i.oj = trunc nuw nsw i64 %i.od to i8
  %i.ok = trunc nuw nsw i64 %i.oe to i8
  %i.ol = insertelement <8 x i8> poison, i8 %i.ok, i64 0
  %i.om = insertelement <8 x i8> %i.ol, i8 %i.oj, i64 1
  %i.on = insertelement <8 x i8> %i.om, i8 %i.oi, i64 2
  %i.oo = insertelement <8 x i8> %i.on, i8 %i.oh, i64 3
  %i.op = shufflevector <4 x i8> %i.og, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oq = shufflevector <8 x i8> %i.oo, <8 x i8> %i.op, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.or = and <8 x i8> %i.oq, <i8 -1, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
  %i.os = or disjoint <8 x i8> %i.or, splat (i8 48)
  store <8 x i8> %i.os, ptr %i.of, align 1, !tbaa !20
  br label %format_number.exit248.thread

.loopexit.i236:                                   ; preds = %.lr.ph.i232, %format_number.exit220.thread.thread506, %bb.bf
  %.18508511 = phi i32 [ %.18.ph, %format_number.exit220.thread.thread506 ], [ -25, %bb.bf ], [ %.18508510, %.lr.ph.i232 ]
  %i.ot = phi i64 [ %i.lt, %format_number.exit220.thread.thread506 ], [ %i.lv, %bb.bf ], [ %i.ni, %.lr.ph.i232 ] ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 139
  %9 = call i64 @llvm.bswap.i64(i64 %i.ot)
  store i64 %9, ptr %i.ou, align 1, !tbaa !20
  %i.ov = ashr i64 %i.ot, 63                      ; 3 uses
  %i.ow = trunc nsw i64 %i.ov to i8
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 138
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !20
  %i.oy = trunc nsw i64 %i.ov to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !20
  %i.pa = trunc nsw i64 %i.ov to i8
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.pc = or i8 %i.pa, -128
  store i8 %i.pc, ptr %i.pb, align 1, !tbaa !20
  br label %format_number.exit248.thread

format_number.exit248:                            ; preds = %.lr.ph27.preheader.i.i228, %.preheader.i.i230
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 34, ptr noundef nonnull @.str.21) #10
  br label %format_number.exit248.thread

format_number.exit248.thread:                     ; preds = %.lr.ph.i23.i241, %.lr.ph.i.i222, %.loopexit.i236, %format_number.exit248
  %.19 = phi i32 [ -25, %format_number.exit248 ], [ %.18508510, %.lr.ph.i23.i241 ], [ %.18351354, %.lr.ph.i.i222 ], [ %.18508511, %.loopexit.i236 ] ; 4 uses
  %i.pd = call i32 @archive_entry_filetype(ptr noundef %2) #10
  %i.pe = icmp eq i32 %i.pd, 24576
  br i1 %i.pe, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %format_number.exit248.thread
  %i.pf = call i32 @archive_entry_filetype(ptr noundef %2) #10
  %i.pg = icmp eq i32 %i.pf, 8192
  br i1 %i.pg, label %bb.bh, label %format_number.exit304.thread

bb.bh:                                            ; preds = %bb.bg, %format_number.exit248.thread
  %i.ph = call i64 @archive_entry_rdevmajor(ptr noundef %2) #10 ; 21 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 329 ; 2 uses
  %i.pj = icmp slt i64 %i.ph, 0                   ; 2 uses
  br i1 %.not.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.pj, label %.preheader.i.i258, label %.lr.ph.i.i250

.preheader.i.i258:                                ; preds = %bb.bi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.pi, i8 48, i64 range(i64 0, 13) 6, i1 false), !tbaa !20
  br label %format_number.exit276.thread

.lr.ph.i.i250:                                    ; preds = %bb.bi
  %i.pk = trunc i64 %i.ph to i8
  %i.pl = and i8 %i.pk, 7
  %i.pm = or disjoint i8 %i.pl, 48
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 334
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !20
  %i.po = trunc i64 %i.ph to i8
  %i.pp = lshr i8 %i.po, 3
  %i.pq = and i8 %i.pp, 7
  %i.pr = or disjoint i8 %i.pq, 48
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 333
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !20
  %i.pt = lshr i64 %i.ph, 6
  %i.pu = lshr i64 %i.ph, 9
  %i.pv = lshr i64 %i.ph, 12
  %i.pw = lshr i64 %i.ph, 15
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 329 ; 2 uses
  %i.py = trunc i64 %i.pt to i8
  %i.pz = trunc i64 %i.pu to i8
  %i.qa = trunc i64 %i.pv to i8
  %i.qb = trunc i64 %i.pw to i8
  %i.qc = insertelement <4 x i8> poison, i8 %i.qb, i64 0
  %i.qd = insertelement <4 x i8> %i.qc, i8 %i.qa, i64 1
  %i.qe = insertelement <4 x i8> %i.qd, i8 %i.pz, i64 2
  %i.qf = insertelement <4 x i8> %i.qe, i8 %i.py, i64 3
  %i.qg = and <4 x i8> %i.qf, splat (i8 7)
  %i.qh = or disjoint <4 x i8> %i.qg, splat (i8 48)
  store <4 x i8> %i.qh, ptr %i.px, align 1, !tbaa !20
  %.not32.i255 = icmp samesign ult i64 %i.ph, 262144
  br i1 %.not32.i255, label %format_number.exit276.thread.thread, label %.lr.ph27.preheader.i.i256

format_number.exit276.thread.thread:              ; preds = %.lr.ph.i.i250
  %i.qi = call i64 @archive_entry_rdevminor(ptr noundef %2) #10 ; 2 uses
  %i.qj = icmp slt i64 %i.qi, 0
  br i1 %i.qj, label %.preheader.i.i286, label %.lr.ph.i.i278

.lr.ph27.preheader.i.i256:                        ; preds = %.lr.ph.i.i250
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.px, i8 55, i64 range(i64 0, 13) 6, i1 false), !tbaa !20
  br label %format_number.exit276.thread

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.pj, label %.loopexit.i264, label %.lr.ph.i260.preheader

.lr.ph.i260.preheader:                            ; preds = %bb.bj
  %i.qk = icmp samesign ugt i64 %i.ph, 262143     ; 2 uses
  br i1 %i.qk, label %.lr.ph.i260.1, label %.lr.ph.i23.i269

.lr.ph.i23.i269:                                  ; preds = %.lr.ph.i260.preheader, %.lr.ph.i260.1, %.lr.ph.i260.2
  %i.ql = phi i1 [ false, %.lr.ph.i260.preheader ], [ false, %.lr.ph.i260.1 ], [ true, %.lr.ph.i260.2 ]
  %.01941.i262.lcssa = phi i64 [ 6, %.lr.ph.i260.preheader ], [ 7, %.lr.ph.i260.1 ], [ 8, %.lr.ph.i260.2 ] ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.01941.i262.lcssa ; 8 uses
  %i.qn = trunc i64 %i.ph to i8
  %i.qo = and i8 %i.qn, 7
  %i.qp = or disjoint i8 %i.qo, 48
  %i.qq = getelementptr inbounds i8, ptr %i.qm, i64 -1
  store i8 %i.qp, ptr %i.qq, align 1, !tbaa !20
  %i.qr = lshr i64 %i.ph, 3
  %i.qs = trunc i64 %i.qr to i8
  %i.qt = and i8 %i.qs, 7
  %i.qu = or disjoint i8 %i.qt, 48
  %i.qv = getelementptr inbounds i8, ptr %i.qm, i64 -2
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !20
  %i.qw = lshr i64 %i.ph, 6
  %i.qx = trunc i64 %i.qw to i8
  %i.qy = and i8 %i.qx, 7
  %i.qz = or disjoint i8 %i.qy, 48
  %i.ra = getelementptr inbounds i8, ptr %i.qm, i64 -3
  store i8 %i.qz, ptr %i.ra, align 1, !tbaa !20
  %i.rb = lshr i64 %i.ph, 9
  %i.rc = trunc i64 %i.rb to i8
  %i.rd = and i8 %i.rc, 7
  %i.re = or disjoint i8 %i.rd, 48
  %i.rf = getelementptr inbounds i8, ptr %i.qm, i64 -4
  store i8 %i.re, ptr %i.rf, align 1, !tbaa !20
  %i.rg = lshr i64 %i.ph, 12
  %i.rh = trunc i64 %i.rg to i8
  %i.ri = and i8 %i.rh, 7
  %i.rj = or disjoint i8 %i.ri, 48
  %i.rk = getelementptr inbounds i8, ptr %i.qm, i64 -5
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !20
  %i.rl = lshr i64 %i.ph, 15
  %i.rm = trunc i64 %i.rl to i8
  %i.rn = and i8 %i.rm, 7
  %i.ro = or disjoint i8 %i.rn, 48
  %i.rp = getelementptr inbounds i8, ptr %i.qm, i64 -6 ; 2 uses
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !20
  %i.rq = lshr i64 %i.ph, 18                      ; 2 uses
  br i1 %i.qk, label %.lr.ph.i23.i269.6, label %._crit_edge.i27.i273

.lr.ph.i23.i269.6:                                ; preds = %.lr.ph.i23.i269
  %i.rr = trunc i64 %i.rq to i8
  %i.rs = and i8 %i.rr, 7
  %i.rt = or disjoint i8 %i.rs, 48
  %i.ru = getelementptr inbounds i8, ptr %i.qm, i64 -7 ; 2 uses
  store i8 %i.rt, ptr %i.ru, align 1, !tbaa !20
  %i.rv = lshr i64 %i.ph, 21                      ; 2 uses
  br i1 %i.ql, label %.lr.ph.i23.i269.7, label %._crit_edge.i27.i273

.lr.ph.i23.i269.7:                                ; preds = %.lr.ph.i23.i269.6
  %i.rw = trunc i64 %i.rv to i8
  %i.rx = and i8 %i.rw, 7
  %i.ry = or disjoint i8 %i.rx, 48
  %i.rz = getelementptr inbounds i8, ptr %i.qm, i64 -8 ; 2 uses
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !20
  %i.sa = lshr i64 %i.ph, 24
  br label %._crit_edge.i27.i273

._crit_edge.i27.i273:                             ; preds = %.lr.ph.i23.i269.7, %.lr.ph.i23.i269.6, %.lr.ph.i23.i269
  %.lcssa545.a = phi ptr [ %i.rz, %.lr.ph.i23.i269.7 ], [ %i.ru, %.lr.ph.i23.i269.6 ], [ %i.rp, %.lr.ph.i23.i269 ]
  %.lcssa544 = phi i64 [ %i.sa, %.lr.ph.i23.i269.7 ], [ %i.rv, %.lr.ph.i23.i269.6 ], [ %i.rq, %.lr.ph.i23.i269 ]
  %.not33.i274 = icmp eq i64 %.lcssa544, 0
  br i1 %.not33.i274, label %format_number.exit276.thread.thread512, label %.lr.ph27.preheader.i29.i275

.lr.ph27.preheader.i29.i275:                      ; preds = %._crit_edge.i27.i273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa545.a, i8 55, i64 range(i64 0, 13) %.01941.i262.lcssa, i1 false), !tbaa !20
  br label %format_number.exit276.thread

.lr.ph.i260.1:                                    ; preds = %.lr.ph.i260.preheader
  %i.sb = icmp samesign ult i64 %i.ph, 2097152
  br i1 %i.sb, label %.lr.ph.i23.i269, label %.lr.ph.i260.2

.lr.ph.i260.2:                                    ; preds = %.lr.ph.i260.1
  %i.sc = icmp samesign ult i64 %i.ph, 16777216
  br i1 %i.sc, label %.lr.ph.i23.i269, label %.loopexit.i264

.loopexit.i264:                                   ; preds = %.lr.ph.i260.2, %bb.bj
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 329
  %10 = or i64 %i.ph, -9223372036854775808
  %.inner542 = call i64 @llvm.bswap.i64(i64 %10)
  store i64 %.inner542, ptr %i.sd, align 1, !tbaa !20
  br label %format_number.exit276.thread.thread512

format_number.exit276.thread.thread512:           ; preds = %._crit_edge.i27.i273, %.loopexit.i264
  %i.se = call i64 @archive_entry_rdevminor(ptr noundef %2) #10 ; 3 uses
  %i.sf = icmp slt i64 %i.se, 0
  br i1 %i.sf, label %.loopexit.i292, label %.lr.ph.i288.preheader

format_number.exit276.thread:                     ; preds = %.preheader.i.i258, %.lr.ph27.preheader.i.i256, %.lr.ph27.preheader.i29.i275
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 34, ptr noundef nonnull @.str.22) #10
  %i.sg = call i64 @archive_entry_rdevminor(ptr noundef %2) #10 ; 4 uses
  %i.sh = icmp slt i64 %i.sg, 0                   ; 2 uses
  br i1 %.not.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %format_number.exit276.thread
  br i1 %i.sh, label %.preheader.i.i286, label %.lr.ph.i.i278

.preheader.i.i286:                                ; preds = %format_number.exit276.thread.thread, %bb.bk
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.si, i8 48, i64 range(i64 0, 13) 6, i1 false), !tbaa !20
  br label %format_number.exit304

.lr.ph.i.i278:                                    ; preds = %format_number.exit276.thread.thread, %bb.bk
  %.20357360 = phi i32 [ %.19, %format_number.exit276.thread.thread ], [ -25, %bb.bk ]
  %i.sj = phi i64 [ %i.qi, %format_number.exit276.thread.thread ], [ %i.sg, %bb.bk ] ; 7 uses
  %i.sk = trunc i64 %i.sj to i8
  %i.sl = and i8 %i.sk, 7
  %i.sm = or disjoint i8 %i.sl, 48
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 342
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !20
  %i.so = trunc i64 %i.sj to i8
  %i.sp = lshr i8 %i.so, 3
  %i.sq = and i8 %i.sp, 7
  %i.sr = or disjoint i8 %i.sq, 48
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 341
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !20
  %i.st = lshr i64 %i.sj, 6
  %i.su = lshr i64 %i.sj, 9
  %i.sv = lshr i64 %i.sj, 12
  %i.sw = lshr i64 %i.sj, 15
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 337 ; 2 uses
  %i.sy = trunc i64 %i.st to i8
  %i.sz = trunc i64 %i.su to i8
  %i.ta = trunc i64 %i.sv to i8
  %i.tb = trunc i64 %i.sw to i8
  %i.tc = insertelement <4 x i8> poison, i8 %i.tb, i64 0
  %i.td = insertelement <4 x i8> %i.tc, i8 %i.ta, i64 1
  %i.te = insertelement <4 x i8> %i.td, i8 %i.sz, i64 2
  %i.tf = insertelement <4 x i8> %i.te, i8 %i.sy, i64 3
  %i.tg = and <4 x i8> %i.tf, splat (i8 7)
  %i.th = or disjoint <4 x i8> %i.tg, splat (i8 48)
  store <4 x i8> %i.th, ptr %i.sx, align 1, !tbaa !20
  %.not32.i283 = icmp samesign ult i64 %i.sj, 262144
  br i1 %.not32.i283, label %format_number.exit304.thread, label %.lr.ph27.preheader.i.i284

.lr.ph27.preheader.i.i284:                        ; preds = %.lr.ph.i.i278
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.sx, i8 55, i64 range(i64 0, 13) 6, i1 false), !tbaa !20
  br label %format_number.exit304

bb.bl:                                            ; preds = %format_number.exit276.thread
  br i1 %i.sh, label %.loopexit.i292, label %.lr.ph.i288.preheader

.lr.ph.i288.preheader:                            ; preds = %format_number.exit276.thread.thread512, %bb.bl
  %.20514517 = phi i32 [ %.19, %format_number.exit276.thread.thread512 ], [ -25, %bb.bl ] ; 2 uses
  %i.ti = phi i64 [ %i.se, %format_number.exit276.thread.thread512 ], [ %i.sg, %bb.bl ] ; 13 uses
  %i.tj = icmp samesign ugt i64 %i.ti, 262143     ; 2 uses
  br i1 %i.tj, label %.lr.ph.i288.1, label %.lr.ph.i23.i297

.lr.ph.i23.i297:                                  ; preds = %.lr.ph.i288.preheader, %.lr.ph.i288.1, %.lr.ph.i288.2
  %i.tk = phi i1 [ false, %.lr.ph.i288.preheader ], [ false, %.lr.ph.i288.1 ], [ true, %.lr.ph.i288.2 ]
  %.01941.i290.lcssa = phi i64 [ 6, %.lr.ph.i288.preheader ], [ 7, %.lr.ph.i288.1 ], [ 8, %.lr.ph.i288.2 ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 %.01941.i290.lcssa ; 8 uses
  %i.tm = trunc i64 %i.ti to i8
  %i.tn = and i8 %i.tm, 7
  %i.to = or disjoint i8 %i.tn, 48
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 336
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !20
  %i.tq = lshr i64 %i.ti, 3
  %i.tr = trunc i64 %i.tq to i8
  %i.ts = and i8 %i.tr, 7
  %i.tt = or disjoint i8 %i.ts, 48
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tl, i64 335
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !20
  %i.tv = lshr i64 %i.ti, 6
  %i.tw = trunc i64 %i.tv to i8
  %i.tx = and i8 %i.tw, 7
  %i.ty = or disjoint i8 %i.tx, 48
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tl, i64 334
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !20
  %i.ua = lshr i64 %i.ti, 9
  %i.ub = trunc i64 %i.ua to i8
  %i.uc = and i8 %i.ub, 7
  %i.ud = or disjoint i8 %i.uc, 48
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tl, i64 333
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !20
  %i.uf = lshr i64 %i.ti, 12
  %i.ug = trunc i64 %i.uf to i8
  %i.uh = and i8 %i.ug, 7
  %i.ui = or disjoint i8 %i.uh, 48
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tl, i64 332
  store i8 %i.ui, ptr %i.uj, align 1, !tbaa !20
  %i.uk = lshr i64 %i.ti, 15
  %i.ul = trunc i64 %i.uk to i8
  %i.um = and i8 %i.ul, 7
  %i.un = or disjoint i8 %i.um, 48
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tl, i64 331 ; 2 uses
  store i8 %i.un, ptr %i.uo, align 1, !tbaa !20
  %i.up = lshr i64 %i.ti, 18                      ; 2 uses
  br i1 %i.tj, label %.lr.ph.i23.i297.6, label %._crit_edge.i27.i301

.lr.ph.i23.i297.6:                                ; preds = %.lr.ph.i23.i297
  %i.uq = trunc i64 %i.up to i8
  %i.ur = and i8 %i.uq, 7
  %i.us = or disjoint i8 %i.ur, 48
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tl, i64 330 ; 2 uses
  store i8 %i.us, ptr %i.ut, align 1, !tbaa !20
  %i.uu = lshr i64 %i.ti, 21                      ; 2 uses
  br i1 %i.tk, label %.lr.ph.i23.i297.7, label %._crit_edge.i27.i301

.lr.ph.i23.i297.7:                                ; preds = %.lr.ph.i23.i297.6
  %i.uv = trunc i64 %i.uu to i8
  %i.uw = and i8 %i.uv, 7
  %i.ux = or disjoint i8 %i.uw, 48
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tl, i64 329 ; 2 uses
  store i8 %i.ux, ptr %i.uy, align 1, !tbaa !20
  %i.uz = lshr i64 %i.ti, 24
  br label %._crit_edge.i27.i301

._crit_edge.i27.i301:                             ; preds = %.lr.ph.i23.i297.7, %.lr.ph.i23.i297.6, %.lr.ph.i23.i297
  %.lcssa543 = phi ptr [ %i.uy, %.lr.ph.i23.i297.7 ], [ %i.ut, %.lr.ph.i23.i297.6 ], [ %i.uo, %.lr.ph.i23.i297 ]
  %.lcssa542 = phi i64 [ %i.uz, %.lr.ph.i23.i297.7 ], [ %i.uu, %.lr.ph.i23.i297.6 ], [ %i.up, %.lr.ph.i23.i297 ]
  %.not33.i302 = icmp eq i64 %.lcssa542, 0
  br i1 %.not33.i302, label %format_number.exit304.thread, label %.lr.ph27.preheader.i29.i303

.lr.ph27.preheader.i29.i303:                      ; preds = %._crit_edge.i27.i301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa543, i8 55, i64 range(i64 0, 13) %.01941.i290.lcssa, i1 false), !tbaa !20
  br label %format_number.exit304

.lr.ph.i288.1:                                    ; preds = %.lr.ph.i288.preheader
  %i.va = icmp samesign ult i64 %i.ti, 2097152
  br i1 %i.va, label %.lr.ph.i23.i297, label %.lr.ph.i288.2

.lr.ph.i288.2:                                    ; preds = %.lr.ph.i288.1
  %i.vb = icmp samesign ult i64 %i.ti, 16777216
  br i1 %i.vb, label %.lr.ph.i23.i297, label %.loopexit.i292

.loopexit.i292:                                   ; preds = %.lr.ph.i288.2, %format_number.exit276.thread.thread512, %bb.bl
  %.20514518 = phi i32 [ %.19, %format_number.exit276.thread.thread512 ], [ -25, %bb.bl ], [ %.20514517, %.lr.ph.i288.2 ]
  %i.vc = phi i64 [ %i.se, %format_number.exit276.thread.thread512 ], [ %i.sg, %bb.bl ], [ %i.ti, %.lr.ph.i288.2 ]
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 337
  %11 = or i64 %i.vc, -9223372036854775808
  %.inner543 = call i64 @llvm.bswap.i64(i64 %11)
  store i64 %.inner543, ptr %i.vd, align 1, !tbaa !20
  br label %format_number.exit304.thread

format_number.exit304:                            ; preds = %.lr.ph27.preheader.i29.i303, %.lr.ph27.preheader.i.i284, %.preheader.i.i286
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 34, ptr noundef nonnull @.str.23) #10
  br label %format_number.exit304.thread

format_number.exit304.thread:                     ; preds = %._crit_edge.i27.i301, %.lr.ph.i.i278, %.loopexit.i292, %format_number.exit304, %bb.bg
  %.21 = phi i32 [ -25, %format_number.exit304 ], [ %.19, %bb.bg ], [ %.20514517, %._crit_edge.i27.i301 ], [ %.20357360, %.lr.ph.i.i278 ], [ %.20514518, %.loopexit.i292 ] ; 8 uses
  %i.ve = icmp sgt i32 %3, -1
  br i1 %i.ve, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %format_number.exit304.thread
  %i.vf = trunc i32 %3 to i8
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i8 %i.vf, ptr %i.vg, align 1, !tbaa !20
  br label %vector.ph

bb.bn:                                            ; preds = %format_number.exit304.thread
  br i1 %.not123.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i8 %.0105316, ptr %i.vh, align 1, !tbaa !20
  br label %vector.ph

bb.bp:                                            ; preds = %bb.bn
  %i.vi = call i32 @archive_entry_filetype(ptr noundef %2) #10 ; 2 uses
  %i.vj = call i32 @llvm.fshl.i32(i32 %i.vi, i32 %i.vi, i32 20)
  switch i32 %i.vj, label %bb.bw [
    i32 8, label %bb.bq
    i32 10, label %bb.br
    i32 2, label %bb.bs
    i32 6, label %bb.bt
    i32 4, label %bb.bu
    i32 1, label %bb.bv
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i8 48, ptr %i.vk, align 1, !tbaa !20
  br label %vector.ph

bb.br:                                            ; preds = %bb.bp
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i8 50, ptr %i.vl, align 1, !tbaa !20
  br label %vector.ph

bb.bs:                                            ; preds = %bb.bp
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i8 51, ptr %i.vm, align 1, !tbaa !20
  br label %vector.ph

bb.bt:                                            ; preds = %bb.bp
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i8 52, ptr %i.vn, align 1, !tbaa !20
  br label %vector.ph

bb.bu:                                            ; preds = %bb.bp
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i8 53, ptr %i.vo, align 1, !tbaa !20
  br label %vector.ph

bb.bv:                                            ; preds = %bb.bp
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i8 54, ptr %i.vp, align 1, !tbaa !20
  br label %vector.ph

bb.bw:                                            ; preds = %bb.bp
  call void @__archive_write_entry_filetype_unsupported(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.2) #10
  br label %vector.ph

vector.ph:                                        ; preds = %bb.bm, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bo
  %.22 = phi i32 [ %.21, %bb.bm ], [ %.21, %bb.bo ], [ -25, %bb.bw ], [ %.21, %bb.bq ], [ %.21, %bb.br ], [ %.21, %bb.bs ], [ %.21, %bb.bt ], [ %.21, %bb.bu ], [ %.21, %bb.bv ] ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.wb, %vector.body ]
  %vec.phi539 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.wc, %vector.body ]
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %wide.load = load <4 x i8>, ptr %i.vq, align 1, !tbaa !20
  %wide.load540 = load <4 x i8>, ptr %i.vr, align 1, !tbaa !20
  %i.vs = zext <4 x i8> %wide.load to <4 x i32>
  %i.vt = zext <4 x i8> %wide.load540 to <4 x i32>
  %i.vu = add <4 x i32> %vec.phi, %i.vs
  %i.vv = add <4 x i32> %vec.phi539, %i.vt
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.vx, align 1, !tbaa !20
  %wide.load540.1 = load <4 x i8>, ptr %i.vy, align 1, !tbaa !20
  %i.vz = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.wa = zext <4 x i8> %wide.load540.1 to <4 x i32>
  %i.wb = add <4 x i32> %i.vu, %i.vz              ; 2 uses
  %i.wc = add <4 x i32> %i.vv, %i.wa              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.wd = icmp eq i64 %index.next.1, 512
  br i1 %i.wd, label %.lr.ph.i305, label %vector.body, !llvm.loop !39

.lr.ph.i305:                                      ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.wc, %i.wb
  %i.we = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 7 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 154
  store i8 0, ptr %i.wf, align 1, !tbaa !20
  %i.wg = trunc i32 %i.we to i8
  %i.wh = and i8 %i.wg, 7
  %i.wi = or disjoint i8 %i.wh, 48
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 153
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !20
  %i.wk = trunc i32 %i.we to i8
  %i.wl = lshr i8 %i.wk, 3
  %i.wm = and i8 %i.wl, 7
  %i.wn = or disjoint i8 %i.wm, 48
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 %i.wn, ptr %i.wo, align 1, !tbaa !20
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.wq = lshr i32 %i.we, 6
  %i.wr = trunc i32 %i.wq to i8
  %i.ws = lshr i32 %i.we, 9
  %i.wt = trunc i32 %i.ws to i8
  %i.wu = lshr i32 %i.we, 12
  %i.wv = trunc i32 %i.wu to i8
  %i.ww = lshr i32 %i.we, 15
  %i.wx = trunc i32 %i.ww to i8
  %i.wy = insertelement <4 x i8> poison, i8 %i.wx, i64 0
  %i.wz = insertelement <4 x i8> %i.wy, i8 %i.wv, i64 1
  %i.xa = insertelement <4 x i8> %i.wz, i8 %i.wt, i64 2
  %i.xb = insertelement <4 x i8> %i.xa, i8 %i.wr, i64 3
  %i.xc = and <4 x i8> %i.xb, splat (i8 7)
  %i.xd = or disjoint <4 x i8> %i.xc, splat (i8 48)
  store <4 x i8> %i.xd, ptr %i.wp, align 1, !tbaa !20
  %.not361 = icmp ult i32 %i.we, 262144
  br i1 %.not361, label %format_octal.exit, label %.lr.ph27.preheader.i

.lr.ph27.preheader.i:                             ; preds = %.lr.ph.i305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.wp, i8 55, i64 range(i64 0, 13) 6, i1 false), !tbaa !20
  br label %format_octal.exit

format_octal.exit:                                ; preds = %bb.e, %bb.c, %.lr.ph27.preheader.i, %.lr.ph.i305, %bb.ap, %bb.af, %bb.y, %bb.t
  %.1110 = phi i32 [ -30, %bb.t ], [ -30, %bb.af ], [ -30, %bb.ap ], [ %.22, %.lr.ph27.preheader.i ], [ -30, %bb.y ], [ %.22, %.lr.ph.i305 ], [ -25, %bb.e ], [ -30, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @_archive_entry_pathname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare ptr @archive_entry_pathname(ptr noundef) local_unnamed_addr #2

declare ptr @archive_string_conversion_charset_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @_archive_entry_hardlink_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_symlink_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_uname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_gname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_mode(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_uid(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_gid(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_size(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_mtime(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_filetype(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_rdevmajor(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_rdevminor(ptr noundef) local_unnamed_addr #2

declare void @__archive_write_entry_filetype_unsupported(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @archive_string_conversion_to_charset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @archive_string_default_conversion_for_write(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_hardlink(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_symlink(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @archive_string_ensure(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_string_free(ptr noundef) local_unnamed_addr #2

declare ptr @archive_strncat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @archive_strappend_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare void @archive_entry_copy_pathname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_free(ptr noundef) local_unnamed_addr #2

declare i32 @__archive_write_output(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__archive_write_nulls(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14archive_vtable", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"archive_string", !11, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"p1 _ZTS19archive_string_conv", !9, i64 0}
!15 = !{!"archive", !6, i64 0, !6, i64 4, !10, i64 8, !6, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !11, i64 40, !13, i64 48, !11, i64 72, !6, i64 80, !6, i64 84, !14, i64 88, !11, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !5, i64 128, !12, i64 136}
!16 = !{!"p1 _ZTS20archive_write_filter", !9, i64 0}
!17 = !{!"archive_write", !15, i64 0, !6, i64 144, !12, i64 152, !12, i64 160, !11, i64 168, !12, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !6, i64 224, !6, i64 228, !16, i64 232, !16, i64 240, !9, i64 248, !11, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !11, i64 320, !9, i64 328, !9, i64 336}
!18 = !{!17, !9, i64 248}
!19 = !{!17, !11, i64 256}
!20 = !{!5, !5, i64 0}
!21 = !{!"ustar", !12, i64 0, !12, i64 8, !14, i64 16, !14, i64 24, !6, i64 32}
!22 = !{!21, !14, i64 16}
!23 = !{!21, !12, i64 0}
!24 = !{!21, !12, i64 8}
!25 = !{!17, !9, i64 312}
!26 = !{!17, !9, i64 272}
!27 = !{!17, !9, i64 288}
!28 = !{!17, !9, i64 296}
!29 = !{!17, !9, i64 304}
!30 = !{!17, !9, i64 280}
!31 = !{!17, !6, i64 16}
!32 = !{!17, !11, i64 24}
!33 = !{!21, !6, i64 32}
!34 = !{!21, !14, i64 24}
!35 = !{!13, !12, i64 8}
!36 = !{!13, !11, i64 0}
!37 = distinct !{!37, !43}
!38 = distinct !{!38, !44}
!39 = distinct !{!39, !44, !45, !46}
!40 = !{!6, !6, i64 0}
!41 = !{!12, !12, i64 0}
!42 = !{!11, !11, i64 0}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
