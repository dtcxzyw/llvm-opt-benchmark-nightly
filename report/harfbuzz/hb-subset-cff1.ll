Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff1?download=true
inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS8_jj:bb.a

._crit_edge174.loopexit.unr-lcssa:                ; preds = %.lr.ph173
  %lcmp.mod236.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod236.not, label %._crit_edge174.loopexit, label %.lr.ph173.epil.preheader

.lr.ph173.epil.preheader:                         ; preds = %._crit_edge174.loopexit.unr-lcssa, %.lr.ph173.preheader
  %.057171.epil.init = phi i32 [ 1, %.lr.ph173.preheader ], [ %i.cz, %._crit_edge174.loopexit.unr-lcssa ]
  %.060170.epil.init = phi ptr [ %i.z, %.lr.ph173.preheader ], [ %i.cx, %._crit_edge174.loopexit.unr-lcssa ]
  %.061169.epil.init = phi ptr [ %2, %.lr.ph173.preheader ], [ %i.da, %._crit_edge174.loopexit.unr-lcssa ]
  %lcmp.mod239 = icmp ne i64 %xtraiter234, 0
  tail call void @llvm.assume(i1 %lcmp.mod239)
  br label %.lr.ph173.epil

.lr.ph173.epil:                                   ; preds = %.lr.ph173.epil, %.lr.ph173.epil.preheader
  %.057171.epil = phi i32 [ %i.bk, %.lr.ph173.epil ], [ %.057171.epil.init, %.lr.ph173.epil.preheader ] ; 2 uses
  %.060170.epil = phi ptr [ %i.bi, %.lr.ph173.epil ], [ %.060170.epil.init, %.lr.ph173.epil.preheader ] ; 2 uses
  %.061169.epil = phi ptr [ %i.bl, %.lr.ph173.epil ], [ %.061169.epil.init, %.lr.ph173.epil.preheader ] ; 2 uses
  %epil.iter235 = phi i64 [ %epil.iter235.next, %.lr.ph173.epil ], [ 0, %.lr.ph173.epil.preheader ]
  %i.bh = trunc i32 %.057171.epil to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.060170.epil, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.060170.epil, align 1, !tbaa !97
  %i.bj = load i32, ptr %.061169.epil, align 4, !tbaa !116
  %i.bk = add i32 %i.bj, %.057171.epil            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.061169.epil, i64 4
  %epil.iter235.next = add i64 %epil.iter235, 1   ; 2 uses
  %epil.iter235.cmp.not = icmp eq i64 %epil.iter235.next, %xtraiter234
  br i1 %epil.iter235.cmp.not, label %._crit_edge174.loopexit, label %.lr.ph173.epil, !llvm.loop !518

._crit_edge174.loopexit:                          ; preds = %.lr.ph173.epil, %._crit_edge174.loopexit.unr-lcssa
  %.lcssa207 = phi ptr [ %i.cx, %._crit_edge174.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph173.epil ]
  %.lcssa = phi i32 [ %i.cz, %._crit_edge174.loopexit.unr-lcssa ], [ %i.bk, %.lr.ph173.epil ]
  %i.bm = trunc i32 %.lcssa to i8
  br label %._crit_edge174

._crit_edge174:                                   ; preds = %._crit_edge174.loopexit, %bb.n
  %.060.lcssa = phi ptr [ %i.z, %bb.n ], [ %.lcssa207, %._crit_edge174.loopexit ]
  %.057.lcssa = phi i8 [ 1, %bb.n ], [ %i.bm, %._crit_edge174.loopexit ]
  store i8 %.057.lcssa, ptr %.060.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph173:                                        ; preds = %.lr.ph173, %.lr.ph173.preheader.new
  %.057171 = phi i32 [ 1, %.lr.ph173.preheader.new ], [ %i.cz, %.lr.ph173 ] ; 2 uses
  %.060170 = phi ptr [ %i.z, %.lr.ph173.preheader.new ], [ %i.cx, %.lr.ph173 ] ; 9 uses
  %.061169 = phi ptr [ %2, %.lr.ph173.preheader.new ], [ %i.da, %.lr.ph173 ] ; 9 uses
  %niter241 = phi i64 [ 0, %.lr.ph173.preheader.new ], [ %niter241.next.7, %.lr.ph173 ]
  %i.bn = trunc i32 %.057171 to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.060170, i64 1
  store i8 %i.bn, ptr %.060170, align 1, !tbaa !97
  %i.bp = load i32, ptr %.061169, align 4, !tbaa !116
  %i.bq = add i32 %i.bp, %.057171                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.061169, i64 4
  %i.bs = trunc i32 %i.bq to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.060170, i64 2
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !97
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !116
  %i.bv = add i32 %i.bu, %i.bq                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.061169, i64 8
  %i.bx = trunc i32 %i.bv to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.060170, i64 3
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !97
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !116
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.061169, i64 12
  %i.cc = trunc i32 %i.ca to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.060170, i64 4
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !97
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !116
  %i.cf = add i32 %i.ce, %i.ca                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.061169, i64 16
  %i.ch = trunc i32 %i.cf to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.060170, i64 5
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !97
  %i.cj = load i32, ptr %i.cg, align 4, !tbaa !116
  %i.ck = add i32 %i.cj, %i.cf                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.061169, i64 20
  %i.cm = trunc i32 %i.ck to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.060170, i64 6
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !97
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !116
  %i.cp = add i32 %i.co, %i.ck                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.061169, i64 24
  %i.cr = trunc i32 %i.cp to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %.060170, i64 7
  store i8 %i.cr, ptr %i.cn, align 1, !tbaa !97
  %i.ct = load i32, ptr %i.cq, align 4, !tbaa !116
  %i.cu = add i32 %i.ct, %i.cp                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.061169, i64 28
  %i.cw = trunc i32 %i.cu to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.060170, i64 8 ; 3 uses
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !97
  %i.cy = load i32, ptr %i.cv, align 4, !tbaa !116
  %i.cz = add i32 %i.cy, %i.cu                    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.061169, i64 32 ; 2 uses
  %niter241.next.7 = add i64 %niter241, 8         ; 2 uses
  %niter241.ncmp.7 = icmp eq i64 %niter241.next.7, %unroll_iter240
  br i1 %niter241.ncmp.7, label %._crit_edge174.loopexit.unr-lcssa, label %.lr.ph173

bb.o:                                             ; preds = %bb.m
  %i.db = shl i64 %3, 2
  %.idx178 = and i64 %i.db, 17179869180           ; 2 uses
  %.not67159 = icmp samesign eq i64 %.idx178, 0
  br i1 %.not67159, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %bb.o
  %i.dc = add nsw i64 %.idx178, -4                ; 2 uses
  %i.dd = lshr exact i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %xtraiter226 = and i64 %i.de, 3                 ; 3 uses
  %i.df = icmp ult i64 %i.dc, 12
  br i1 %i.df, label %.lr.ph164.epil.preheader, label %.lr.ph164.preheader.new

.lr.ph164.preheader.new:                          ; preds = %.lr.ph164.preheader
  %unroll_iter232 = and i64 %i.de, 9223372036854775804
  br label %.lr.ph164

._crit_edge165.loopexit.unr-lcssa:                ; preds = %.lr.ph164
  %lcmp.mod228.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod228.not, label %._crit_edge165.loopexit, label %.lr.ph164.epil.preheader

.lr.ph164.epil.preheader:                         ; preds = %._crit_edge165.loopexit.unr-lcssa, %.lr.ph164.preheader
  %.1162.epil.init = phi i32 [ 1, %.lr.ph164.preheader ], [ %i.ek, %._crit_edge165.loopexit.unr-lcssa ]
  %.058161.epil.init = phi ptr [ %2, %.lr.ph164.preheader ], [ %i.el, %._crit_edge165.loopexit.unr-lcssa ]
  %.059160.epil.init = phi ptr [ %i.z, %.lr.ph164.preheader ], [ %i.eh, %._crit_edge165.loopexit.unr-lcssa ]
  %lcmp.mod231 = icmp ne i64 %xtraiter226, 0
  tail call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph164.epil

.lr.ph164.epil:                                   ; preds = %.lr.ph164.epil, %.lr.ph164.epil.preheader
  %.1162.epil = phi i32 [ %i.dk, %.lr.ph164.epil ], [ %.1162.epil.init, %.lr.ph164.epil.preheader ] ; 2 uses
  %.058161.epil = phi ptr [ %i.dl, %.lr.ph164.epil ], [ %.058161.epil.init, %.lr.ph164.epil.preheader ] ; 2 uses
  %.059160.epil = phi ptr [ %i.dh, %.lr.ph164.epil ], [ %.059160.epil.init, %.lr.ph164.epil.preheader ] ; 2 uses
  %epil.iter227 = phi i64 [ %epil.iter227.next, %.lr.ph164.epil ], [ 0, %.lr.ph164.epil.preheader ]
  %i.dg = trunc i32 %.1162.epil to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %.059160.epil, i64 2 ; 2 uses
  %i.di = tail call i16 @llvm.bswap.i16(i16 %i.dg)
  store i16 %i.di, ptr %.059160.epil, align 1, !tbaa !97
  %i.dj = load i32, ptr %.058161.epil, align 4, !tbaa !116
  %i.dk = add i32 %i.dj, %.1162.epil              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.058161.epil, i64 4
  %epil.iter227.next = add i64 %epil.iter227, 1   ; 2 uses
  %epil.iter227.cmp.not = icmp eq i64 %epil.iter227.next, %xtraiter226
  br i1 %epil.iter227.cmp.not, label %._crit_edge165.loopexit, label %.lr.ph164.epil, !llvm.loop !519

._crit_edge165.loopexit:                          ; preds = %.lr.ph164.epil, %._crit_edge165.loopexit.unr-lcssa
  %.lcssa209 = phi ptr [ %i.eh, %._crit_edge165.loopexit.unr-lcssa ], [ %i.dh, %.lr.ph164.epil ]
  %.lcssa208 = phi i32 [ %i.ek, %._crit_edge165.loopexit.unr-lcssa ], [ %i.dk, %.lr.ph164.epil ]
  %i.dm = trunc i32 %.lcssa208 to i16
  %i.dn = tail call i16 @llvm.bswap.i16(i16 %i.dm)
  br label %._crit_edge165

._crit_edge165:                                   ; preds = %._crit_edge165.loopexit, %bb.o
  %.059.lcssa = phi ptr [ %i.z, %bb.o ], [ %.lcssa209, %._crit_edge165.loopexit ]
  %.1.lcssa = phi i16 [ 256, %bb.o ], [ %i.dn, %._crit_edge165.loopexit ]
  store i16 %.1.lcssa, ptr %.059.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph164:                                        ; preds = %.lr.ph164, %.lr.ph164.preheader.new
  %.1162 = phi i32 [ 1, %.lr.ph164.preheader.new ], [ %i.ek, %.lr.ph164 ] ; 2 uses
  %.058161 = phi ptr [ %2, %.lr.ph164.preheader.new ], [ %i.el, %.lr.ph164 ] ; 5 uses
  %.059160 = phi ptr [ %i.z, %.lr.ph164.preheader.new ], [ %i.eh, %.lr.ph164 ] ; 5 uses
  %niter233 = phi i64 [ 0, %.lr.ph164.preheader.new ], [ %niter233.next.3, %.lr.ph164 ]
  %i.do = trunc i32 %.1162 to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %.059160, i64 2
  %i.dq = tail call i16 @llvm.bswap.i16(i16 %i.do)
  store i16 %i.dq, ptr %.059160, align 1, !tbaa !97
  %i.dr = load i32, ptr %.058161, align 4, !tbaa !116
  %i.ds = add i32 %i.dr, %.1162                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.058161, i64 4
  %i.du = trunc i32 %i.ds to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %.059160, i64 4
  %i.dw = tail call i16 @llvm.bswap.i16(i16 %i.du)
  store i16 %i.dw, ptr %i.dp, align 1, !tbaa !97
  %i.dx = load i32, ptr %i.dt, align 4, !tbaa !116
  %i.dy = add i32 %i.dx, %i.ds                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.058161, i64 8
  %i.ea = trunc i32 %i.dy to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %.059160, i64 6
  %i.ec = tail call i16 @llvm.bswap.i16(i16 %i.ea)
  store i16 %i.ec, ptr %i.dv, align 1, !tbaa !97
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !116
  %i.ee = add i32 %i.ed, %i.dy                    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.058161, i64 12
  %i.eg = trunc i32 %i.ee to i16
  %i.eh = getelementptr inbounds nuw i8, ptr %.059160, i64 8 ; 3 uses
  %i.ei = tail call i16 @llvm.bswap.i16(i16 %i.eg)
  store i16 %i.ei, ptr %i.eb, align 1, !tbaa !97
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !116
  %i.ek = add i32 %i.ej, %i.ee                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.058161, i64 16 ; 2 uses
  %niter233.next.3 = add i64 %niter233, 4         ; 2 uses
  %niter233.ncmp.3 = icmp eq i64 %niter233.next.3, %unroll_iter232
  br i1 %niter233.ncmp.3, label %._crit_edge165.loopexit.unr-lcssa, label %.lr.ph164

bb.p:                                             ; preds = %bb.m
  %i.em = shl i64 %3, 2
  %.idx177 = and i64 %i.em, 17179869180           ; 2 uses
  %.not66148 = icmp samesign eq i64 %.idx177, 0
  br i1 %.not66148, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %bb.p
  %i.en = add nsw i64 %.idx177, -4                ; 2 uses
  %i.eo = lshr exact i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 3 uses
  %i.eq = icmp eq i64 %i.en, 0
  br i1 %i.eq, label %.lr.ph154.epil.preheader, label %.lr.ph154.preheader.new

.lr.ph154.preheader.new:                          ; preds = %.lr.ph154.preheader
  %unroll_iter224 = and i64 %i.ep, 9223372036854775806
  br label %.lr.ph154

._crit_edge155.loopexit.unr-lcssa:                ; preds = %.lr.ph154
  %6 = trunc i64 %i.ep to i1
  br i1 %6, label %.lr.ph154.epil.preheader, label %._crit_edge155

.lr.ph154.epil.preheader:                         ; preds = %._crit_edge155.loopexit.unr-lcssa, %.lr.ph154.preheader
  %.056152.epil.init = phi ptr [ %i.z, %.lr.ph154.preheader ], [ %.056.1, %._crit_edge155.loopexit.unr-lcssa ] ; 3 uses
  %.055151.epil.init = phi ptr [ %2, %.lr.ph154.preheader ], [ %i.fs, %._crit_edge155.loopexit.unr-lcssa ]
  %.pn150.epil.init = phi ptr [ %0, %.lr.ph154.preheader ], [ %.056, %._crit_edge155.loopexit.unr-lcssa ] ; 2 uses
  %.2149.epil.init = phi i32 [ 1, %.lr.ph154.preheader ], [ %i.fr, %._crit_edge155.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod223 = trunc i64 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.er = lshr i32 %.2149.epil.init, 16
  %i.es = trunc i32 %i.er to i8
  %i.et = lshr i32 %.2149.epil.init, 8
  %i.eu = trunc i32 %i.et to i8
  %i.ev = trunc i32 %.2149.epil.init to i8
  store i8 %i.es, ptr %.056152.epil.init, align 1
  %.sroa.4.0..sroa_idx.i80.epil = getelementptr inbounds nuw i8, ptr %.pn150.epil.init, i64 4
  store i8 %i.eu, ptr %.sroa.4.0..sroa_idx.i80.epil, align 1
  %.sroa.5.0..sroa_idx.i81.epil = getelementptr inbounds nuw i8, ptr %.pn150.epil.init, i64 5
  store i8 %i.ev, ptr %.sroa.5.0..sroa_idx.i81.epil, align 1, !tbaa !97
  %i.ew = load i32, ptr %.055151.epil.init, align 4, !tbaa !116
  %i.ex = add i32 %i.ew, %.2149.epil.init
  %.056.epil = getelementptr inbounds nuw i8, ptr %.056152.epil.init, i64 3
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %.lr.ph154.epil.preheader, %._crit_edge155.loopexit.unr-lcssa, %bb.p
  %.2.lcssa = phi i32 [ 1, %bb.p ], [ %i.fr, %._crit_edge155.loopexit.unr-lcssa ], [ %i.ex, %.lr.ph154.epil.preheader ] ; 3 uses
  %.pn.lcssa = phi ptr [ %0, %bb.p ], [ %.056, %._crit_edge155.loopexit.unr-lcssa ], [ %.056152.epil.init, %.lr.ph154.epil.preheader ] ; 2 uses
  %.056.lcssa = phi ptr [ %i.z, %bb.p ], [ %.056.1, %._crit_edge155.loopexit.unr-lcssa ], [ %.056.epil, %.lr.ph154.epil.preheader ]
  %i.ey = lshr i32 %.2.lcssa, 16
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = lshr i32 %.2.lcssa, 8
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = trunc i32 %.2.lcssa to i8
  store i8 %i.ez, ptr %.056.lcssa, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 4
  store i8 %i.fb, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 5
  store i8 %i.fc, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !97
  br label %select.unfold

.lr.ph154:                                        ; preds = %.lr.ph154, %.lr.ph154.preheader.new
  %.056152 = phi ptr [ %i.z, %.lr.ph154.preheader.new ], [ %.056.1, %.lr.ph154 ] ; 5 uses
  %.055151 = phi ptr [ %2, %.lr.ph154.preheader.new ], [ %i.fs, %.lr.ph154 ] ; 3 uses
  %.pn150 = phi ptr [ %0, %.lr.ph154.preheader.new ], [ %.056, %.lr.ph154 ] ; 2 uses
  %.2149 = phi i32 [ 1, %.lr.ph154.preheader.new ], [ %i.fr, %.lr.ph154 ] ; 4 uses
  %niter225 = phi i64 [ 0, %.lr.ph154.preheader.new ], [ %niter225.next.1, %.lr.ph154 ]
  %i.fd = lshr i32 %.2149, 16
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = lshr i32 %.2149, 8
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = trunc i32 %.2149 to i8
  store i8 %i.fe, ptr %.056152, align 1
  %.sroa.4.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %.pn150, i64 4
  store i8 %i.fg, ptr %.sroa.4.0..sroa_idx.i80, align 1
  %.sroa.5.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %.pn150, i64 5
  store i8 %i.fh, ptr %.sroa.5.0..sroa_idx.i81, align 1, !tbaa !97
  %i.fi = load i32, ptr %.055151, align 4, !tbaa !116
  %i.fj = add i32 %i.fi, %.2149                   ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.055151, i64 4
  %.056 = getelementptr inbounds nuw i8, ptr %.056152, i64 3 ; 4 uses
  %i.fl = lshr i32 %i.fj, 16
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = lshr i32 %i.fj, 8
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = trunc i32 %i.fj to i8
  store i8 %i.fm, ptr %.056, align 1
  %.sroa.4.0..sroa_idx.i80.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 4
  store i8 %i.fo, ptr %.sroa.4.0..sroa_idx.i80.1, align 1
  %.sroa.5.0..sroa_idx.i81.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 5
  store i8 %i.fp, ptr %.sroa.5.0..sroa_idx.i81.1, align 1, !tbaa !97
  %i.fq = load i32, ptr %i.fk, align 4, !tbaa !116
  %i.fr = add i32 %i.fq, %i.fj                    ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.055151, i64 8 ; 2 uses
  %.056.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 6 ; 3 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1 = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1, label %._crit_edge155.loopexit.unr-lcssa, label %.lr.ph154

bb.q:                                             ; preds = %bb.m
  %i.ft = shl i64 %3, 2
  %.idx = and i64 %i.ft, 17179869180              ; 2 uses
  %.not65142 = icmp samesign eq i64 %.idx, 0
  br i1 %.not65142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.fu = add nsw i64 %.idx, -4                   ; 2 uses
  %i.fv = lshr exact i64 %i.fu, 2
  %i.fw = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %xtraiter = and i64 %i.fw, 3                    ; 3 uses
  %i.fx = icmp ult i64 %i.fu, 12
  br i1 %i.fx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fw, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.053145.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.gx, %._crit_edge.loopexit.unr-lcssa ]
  %.054144.epil.init = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.gt, %._crit_edge.loopexit.unr-lcssa ]
  %.3143.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.gw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.053145.epil = phi ptr [ %i.gc, %.lr.ph.epil ], [ %.053145.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.054144.epil = phi ptr [ %i.fy, %.lr.ph.epil ], [ %.054144.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.3143.epil = phi i32 [ %i.gb, %.lr.ph.epil ], [ %.3143.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.054144.epil, i64 4 ; 2 uses
  %i.fz = tail call i32 @llvm.bswap.i32(i32 %.3143.epil)
  store i32 %i.fz, ptr %.054144.epil, align 1, !tbaa !97
  %i.ga = load i32, ptr %.053145.epil, align 4, !tbaa !116
  %i.gb = add i32 %i.ga, %.3143.epil              ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.053145.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !520

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa213 = phi ptr [ %i.gt, %._crit_edge.loopexit.unr-lcssa ], [ %i.fy, %.lr.ph.epil ]
  %.lcssa212 = phi i32 [ %i.gw, %._crit_edge.loopexit.unr-lcssa ], [ %i.gb, %.lr.ph.epil ]
  %i.gd = tail call i32 @llvm.bswap.i32(i32 %.lcssa212)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %.3.lcssa = phi i32 [ 16777216, %bb.q ], [ %i.gd, %._crit_edge.loopexit ]
  %.054.lcssa = phi ptr [ %i.z, %bb.q ], [ %.lcssa213, %._crit_edge.loopexit ]
  store i32 %.3.lcssa, ptr %.054.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.053145 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.gx, %.lr.ph ] ; 5 uses
  %.054144 = phi ptr [ %i.z, %.lr.ph.preheader.new ], [ %i.gt, %.lr.ph ] ; 5 uses
  %.3143 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.gw, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.054144, i64 4
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %.3143)
  store i32 %i.gf, ptr %.054144, align 1, !tbaa !97
  %i.gg = load i32, ptr %.053145, align 4, !tbaa !116
  %i.gh = add i32 %i.gg, %.3143                   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.053145, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.054144, i64 8
  %i.gk = tail call i32 @llvm.bswap.i32(i32 %i.gh)
  store i32 %i.gk, ptr %i.ge, align 1, !tbaa !97
  %i.gl = load i32, ptr %i.gi, align 4, !tbaa !116
  %i.gm = add i32 %i.gl, %i.gh                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.053145, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.054144, i64 12
  %i.gp = tail call i32 @llvm.bswap.i32(i32 %i.gm)
  store i32 %i.gp, ptr %i.gj, align 1, !tbaa !97
  %i.gq = load i32, ptr %i.gn, align 4, !tbaa !116
  %i.gr = add i32 %i.gq, %i.gm                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.053145, i64 12
  %i.gt = getelementptr inbounds nuw i8, ptr %.054144, i64 16 ; 3 uses
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gr)
  store i32 %i.gu, ptr %i.go, align 1, !tbaa !97
  %i.gv = load i32, ptr %i.gs, align 4, !tbaa !116
  %i.gw = add i32 %i.gv, %i.gr                    ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.053145, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

select.unfold:                                    ; preds = %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit, %.critedge.i, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i, %._crit_edge174, %._crit_edge165, %._crit_edge155, %._crit_edge, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, %.critedge.i.i.i.i, %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, %.critedge.i.i.i, %bb.a
  %.0 = phi i1 [ true, %._crit_edge174 ], [ true, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %bb.f ], [ false, %.critedge.i.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ true, %bb.m ], [ true, %._crit_edge ], [ true, %._crit_edge155 ], [ true, %._crit_edge165 ], [ false, %.critedge.i ], [ false, %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2OT4cff120accelerator_subset_t6subsetEP19hb_subset_context_t(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.OT::cff1_subset_plan", align 8 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 164
  store i32 0, ptr %i.c, align 4, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 1, ptr %i.d, align 8, !tbaa !199
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  store atomic i32 1, ptr %i.f monotonic, align 8
  store atomic i8 1, ptr %i.g monotonic, align 4
  store atomic ptr null, ptr %i.h monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i8 1, ptr %i.i, align 8, !tbaa !149
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 210
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.j, i8 0, i64 18, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 368
end_hunk_0
begin_hunk_1_@_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13set_with_hashIRPS1_RjEEbOT_jOT0_b:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !305  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !306
  %.not36 = icmp ult i32 %i.g, %i.i
  br i1 %.not36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.l, !prof !82

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !307
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !166  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not47 = icmp eq i32 %i.u, 0
  br i1 %.not47, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread
  %i.v = phi i32 [ %i.bk, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ], [ %i.t, %.critedge ] ; 2 uses
  %i.w = phi ptr [ %i.bi, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ], [ %i.r, %.critedge ]
  %.051 = phi i32 [ %i.bd, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ], [ 0, %.critedge ] ; 2 uses
  %.03149 = phi i32 [ %i.bg, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ], [ %i.n, %.critedge ] ; 3 uses
  %.03248 = phi i32 [ %spec.select, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ], [ -1, %.critedge ] ; 3 uses
  %i.x = lshr i32 %i.v, 2
  %i.y = icmp eq i32 %i.x, %i.k
  br i1 %i.y, label %bb.d, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread

bb.d:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !309  ; 4 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !154   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !93  ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !93 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp eq i64 %i.ag, %i.am
  br i1 %i.an, label %bb.e, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !310 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !310
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.f, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.at = and i64 %i.ag, 4294967295               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i, label %bb.g, label %_ZL9hb_memcmpPKvS0_j.exit.i.i, !prof !86

_ZL9hb_memcmpPKvS0_j.exit.i.i:                    ; preds = %bb.f
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %i.aj, i64 %i.at)
  %i.au = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.au, label %bb.g, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread

bb.g:                                             ; preds = %_ZL9hb_memcmpPKvS0_j.exit.i.i, %bb.f
  %i.av = mul i32 %i.ap, 12                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread38, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit, !prof !86

_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit: ; preds = %bb.g
  %.sroa.2.8.insert.ext.i7.i.i = zext i32 %i.av to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !164
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !164
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.az, ptr %i.ax, i64 %.sroa.2.8.insert.ext.i7.i.i)
  %i.ba = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ba, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread38, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread

_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread38: ; preds = %bb.g, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit
  br i1 %4, label %.loopexit, label %bb.l

_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread: ; preds = %bb.d, %bb.e, %_ZL9hb_memcmpPKvS0_j.exit.i.i, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit, %.lr.ph
  %i.bb = trunc i32 %i.v to i1
  %i.bc = icmp ne i32 %.03248, -1
  %or.cond.not = select i1 %i.bb, i1 true, i1 %i.bc
  %spec.select = select i1 %or.cond.not, i32 %.03248, i32 %.03149 ; 2 uses
  %i.bd = add i32 %.051, 1                        ; 3 uses
  %i.be = add i32 %i.bd, %.03149
  %i.bf = load i32, ptr %i.h, align 4, !tbaa !306
  %i.bg = and i32 %i.bf, %i.be                    ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 8            ; 2 uses
  %i.bl = and i32 %i.bk, 2
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !564

.loopexit:                                        ; preds = %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread38
  %.03246 = phi i32 [ %.03248, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread38 ], [ %spec.select, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ]
  %.03144 = phi i32 [ %.03149, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread38 ], [ %i.bg, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ]
  %.03042 = phi i32 [ %.051, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread38 ], [ %i.bd, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ]
  %.03246.fr = freeze i32 %.03246                 ; 2 uses
  %i.bm = icmp eq i32 %.03246.fr, -1
  %spec.select74 = select i1 %i.bm, i32 %.03144, i32 %.03246.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0304268 = phi i32 [ %.03042, %.loopexit ], [ 0, %.critedge ]
  %i.bn = phi i32 [ %spec.select74, %.loopexit ], [ %i.n, %.critedge ]
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = and i32 %i.br, 2
  %.not39 = icmp eq i32 %i.bs, 0
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.thread
  %i.bt = load i32, ptr %i.d, align 8, !tbaa !305
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr %i.d, align 8, !tbaa !305
  %i.bv = load i32, ptr %i.bq, align 8
  %i.bw = and i32 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !311
  %i.bz = sub i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !311
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit.thread
  %i.ca = load ptr, ptr %1, align 8, !tbaa !154
  store ptr %i.ca, ptr %i.bp, align 8, !tbaa !309
  %i.cb = load i32, ptr %3, align 4, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !312
  %i.cd = shl nuw i32 %i.k, 2
  %i.ce = or disjoint i32 %i.cd, 3
  store i32 %i.ce, ptr %i.bq, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cg = load <2 x i32>, ptr %i.cf, align 4, !tbaa !116
  %i.ch = add <2 x i32> %i.cg, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.ch, ptr %i.cf, align 4, !tbaa !116
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !313
  %i.ck = zext i16 %i.cj to i32
  %i.cl = icmp ugt i32 %.0304268, %i.ck
  br i1 %i.cl, label %bb.j, label %bb.l, !prof !86

bb.j:                                             ; preds = %bb.i
  %i.cm = extractelement <2 x i32> %i.ch, i64 1
  %i.cn = shl i32 %i.cm, 3
  %i.co = load i32, ptr %i.h, align 4, !tbaa !306 ; 2 uses
  %i.cp = icmp ugt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cq = add i32 %i.co, -8
  %i.cr = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.cq) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread38, %bb.k, %bb.j, %bb.i, %bb.c, %bb.a
  %.134 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread38 ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.134
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK10hb_array_tIKcE4hashEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !161    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !162
  %i.d = zext i32 %i.c to i64                     ; 5 uses
  %.idx.i.i = and i64 %i.d, 4294967288            ; 2 uses
  %i.e = getelementptr i8, ptr %i.a, i64 %.idx.i.i ; 6 uses
  %i.f = mul i64 %i.d, -8645972361240307355
  %i.g = xor i64 %i.f, 4097310694                 ; 6 uses
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 0
  %.not6067.i.i = icmp samesign eq i64 %.idx.i.i, 0 ; 2 uses
  br i1 %i.j, label %.preheader.i.i, label %.preheader61.i.i

.preheader61.i.i:                                 ; preds = %bb.a
  br i1 %.not6067.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader61.i.i
  %i.k = add nsw i64 %i.d, -8
  %1 = lshr i64 %i.k, 3                           ; 2 uses
  %2 = trunc i64 %1 to i1
  br i1 %2, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.a, align 1, !tbaa !569  ; 2 uses
  %i.n = lshr i64 %i.m, 23
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, 2388976653695081527        ; 2 uses
  %i.q = lshr i64 %i.p, 47
  %i.r = xor i64 %i.g, %i.q
  %i.s = xor i64 %i.r, %i.p
  %i.t = mul i64 %i.s, -8645972361240307355       ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa10.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.15465.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.15864.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %.loopexit.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.a
  br i1 %.not6067.i.i, label %.loopexit.i.i, label %.lr.ph70.i.i.preheader

.lr.ph70.i.i.preheader:                           ; preds = %.preheader.i.i
  %i.u = add nsw i64 %i.d, -8
  %4 = lshr i64 %i.u, 3                           ; 2 uses
  %5 = trunc i64 %4 to i1
  br i1 %5, label %.lr.ph70.i.i.prol.loopexit, label %.lr.ph70.i.i.prol

.lr.ph70.i.i.prol:                                ; preds = %.lr.ph70.i.i.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.a, align 8, !tbaa !570  ; 2 uses
  %i.x = lshr i64 %i.w, 23
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, 2388976653695081527        ; 2 uses
  %i.aa = lshr i64 %i.z, 47
  %i.ab = xor i64 %i.g, %i.aa
  %i.ac = xor i64 %i.ab, %i.z
  %i.ad = mul i64 %i.ac, -8645972361240307355     ; 2 uses
  br label %.lr.ph70.i.i.prol.loopexit

.lr.ph70.i.i.prol.loopexit:                       ; preds = %.lr.ph70.i.i.prol, %.lr.ph70.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph70.i.i.preheader ], [ %i.ad, %.lr.ph70.i.i.prol ]
  %.05369.i.i.unr = phi i64 [ %i.g, %.lr.ph70.i.i.preheader ], [ %i.ad, %.lr.ph70.i.i.prol ]
  %.05768.i.i.unr = phi ptr [ %i.a, %.lr.ph70.i.i.preheader ], [ %i.v, %.lr.ph70.i.i.prol ]
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %.loopexit.i.i, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %.lr.ph70.i.i.prol.loopexit, %.lr.ph70.i.i
  %.05369.i.i = phi i64 [ %i.av, %.lr.ph70.i.i ], [ %.05369.i.i.unr, %.lr.ph70.i.i.prol.loopexit ]
  %.05768.i.i = phi ptr [ %i.an, %.lr.ph70.i.i ], [ %.05768.i.i.unr, %.lr.ph70.i.i.prol.loopexit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05768.i.i, i64 8
  %i.af = load i64, ptr %.05768.i.i, align 8, !tbaa !570 ; 2 uses
  %i.ag = lshr i64 %i.af, 23
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 2388976653695081527      ; 2 uses
  %i.aj = lshr i64 %i.ai, 47
  %i.ak = xor i64 %.05369.i.i, %i.aj
  %i.al = xor i64 %i.ak, %i.ai
  %i.am = mul i64 %i.al, -8645972361240307355
  %i.an = getelementptr inbounds nuw i8, ptr %.05768.i.i, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !570 ; 2 uses
  %i.ap = lshr i64 %i.ao, 23
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = mul i64 %i.aq, 2388976653695081527      ; 2 uses
  %i.as = lshr i64 %i.ar, 47
  %i.at = xor i64 %i.am, %i.as
  %i.au = xor i64 %i.at, %i.ar
  %i.av = mul i64 %i.au, -8645972361240307355     ; 2 uses
  %.not60.i.i.1 = icmp eq ptr %i.an, %i.e
  br i1 %.not60.i.i.1, label %.loopexit.i.i, label %.lr.ph70.i.i, !llvm.loop !565

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.15465.i.i = phi i64 [ %i.bn, %.lr.ph.i.i ], [ %.15465.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.15864.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.15864.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.15864.i.i, i64 8
  %i.ax = load i64, ptr %.15864.i.i, align 1, !tbaa !569 ; 2 uses
  %i.ay = lshr i64 %i.ax, 23
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 2388976653695081527      ; 2 uses
  %i.bb = lshr i64 %i.ba, 47
  %i.bc = xor i64 %.15465.i.i, %i.bb
  %i.bd = xor i64 %i.bc, %i.ba
  %i.be = mul i64 %i.bd, -8645972361240307355
  %i.bf = getelementptr inbounds nuw i8, ptr %.15864.i.i, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.aw, align 1, !tbaa !569 ; 2 uses
  %i.bh = lshr i64 %i.bg, 23
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = mul i64 %i.bi, 2388976653695081527      ; 2 uses
  %i.bk = lshr i64 %i.bj, 47
  %i.bl = xor i64 %i.be, %i.bk
  %i.bm = xor i64 %i.bl, %i.bj
  %i.bn = mul i64 %i.bm, -8645972361240307355     ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.bf, %i.e
  br i1 %.not.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !566

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph70.i.i.prol.loopexit, %.lr.ph70.i.i, %.preheader.i.i, %.preheader61.i.i
  %.259.i.i = phi ptr [ %i.e, %.lr.ph70.i.i.prol.loopexit ], [ %i.a, %.preheader.i.i ], [ %i.a, %.preheader61.i.i ], [ %i.e, %.lr.ph70.i.i ], [ %i.e, %.lr.ph.i.i ], [ %i.e, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %.255.i.i = phi i64 [ %i.av, %.lr.ph70.i.i ], [ %i.g, %.preheader.i.i ], [ %i.g, %.preheader61.i.i ], [ %.lcssa.unr, %.lr.ph70.i.i.prol.loopexit ], [ %.lcssa10.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i ] ; 2 uses
  %i.bo = and i64 %i.d, 7
  switch i64 %i.bo, label %default.unreachable [
    i64 7, label %bb.b
    i64 6, label %bb.c
    i64 5, label %bb.d
    i64 4, label %bb.e
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
    i64 0, label %_ZL10fasthash32PKvmj.exit
  ]

bb.b:                                             ; preds = %.loopexit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.259.i.i, i64 6
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !97
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.i.i
  %.0.i.i = phi i64 [ %i.bs, %bb.b ], [ 0, %.loopexit.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.259.i.i, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !97
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 40
  %i.bx = or disjoint i64 %i.bw, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit.i.i
  %.1.i.i = phi i64 [ %i.bx, %bb.c ], [ 0, %.loopexit.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.259.i.i, i64 4
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !97
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 32
  %i.cc = xor i64 %i.cb, %.1.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i.i
  %.2.i.i = phi i64 [ %i.cc, %bb.d ], [ 0, %.loopexit.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.259.i.i, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !97
  %i.cf = zext i8 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 24
  %i.ch = xor i64 %i.cg, %.2.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit.i.i
  %.3.i.i = phi i64 [ %i.ch, %bb.e ], [ 0, %.loopexit.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.259.i.i, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !97
  %i.ck = zext i8 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 16
  %i.cm = xor i64 %i.cl, %.3.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit.i.i
  %.4.i.i = phi i64 [ %i.cm, %bb.f ], [ 0, %.loopexit.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.259.i.i, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !97
  %i.cp = zext i8 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 8
  %i.cr = xor i64 %i.cq, %.4.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.i.i
  %.5.i.i = phi i64 [ %i.cr, %bb.g ], [ 0, %.loopexit.i.i ] ; 2 uses
  %i.cs = load i8, ptr %.259.i.i, align 1, !tbaa !97
  %i.ct = zext i8 %i.cs to i64
  %i.cu = lshr i64 %.5.i.i, 23
  %i.cv = xor i64 %i.cu, %i.ct
  %i.cw = xor i64 %i.cv, %.5.i.i
  %i.cx = mul i64 %i.cw, 2388976653695081527      ; 2 uses
  %i.cy = lshr i64 %i.cx, 47
  %i.cz = xor i64 %.255.i.i, %i.cy
  %i.da = xor i64 %i.cz, %i.cx
  %i.db = mul i64 %i.da, -8645972361240307355
  br label %_ZL10fasthash32PKvmj.exit

default.unreachable:                              ; preds = %.loopexit.i.i
  unreachable

_ZL10fasthash32PKvmj.exit:                        ; preds = %.loopexit.i.i, %bb.h
  %.356.i.i = phi i64 [ %i.db, %bb.h ], [ %.255.i.i, %.loopexit.i.i ] ; 2 uses
  %i.dc = lshr i64 %.356.i.i, 23
  %i.dd = xor i64 %i.dc, %.356.i.i
  %i.de = mul i64 %i.dd, 2388976653695081527      ; 3 uses
  %i.df = lshr i64 %i.de, 47
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = lshr i64 %i.de, 32
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = trunc i64 %i.di to i32
  ret i32 %i.dj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE10fetch_itemERKS3_j(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %2, 1073741823                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !307
  %i.d = urem i32 %i.a, %i.c                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = and i32 %i.j, 2
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread
  %i.r = phi i32 [ %i.j, %.lr.ph ], [ %i.ba, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ] ; 2 uses
  %i.s = phi ptr [ %i.h, %.lr.ph ], [ %i.ay, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ] ; 2 uses
  %.020 = phi i32 [ 0, %.lr.ph ], [ %i.au, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ]
  %.01219 = phi i32 [ %i.d, %.lr.ph ], [ %i.aw, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread ]
  %i.t = lshr i32 %i.r, 2
  %i.u = icmp eq i32 %i.t, %i.a
  br i1 %i.u, label %bb.c, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !309  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !93  ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.ab, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_teqERKS3_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !310 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIKS5_IKhEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj:bb.a
  %i.bh = trunc i32 %.057178.epil to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.060177.epil, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.060177.epil, align 1, !tbaa !97
  %i.bj = getelementptr i8, ptr %.061176.epil, i64 8
  %.061.val72.epil = load i64, ptr %i.bj, align 8
  %.sroa.3.8.extract.trunc.i.epil = trunc i64 %.061.val72.epil to i32
  %i.bk = add i32 %.057178.epil, %.sroa.3.8.extract.trunc.i.epil ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.061176.epil, i64 16
  %epil.iter242.next = add i64 %epil.iter242, 1   ; 2 uses
  %epil.iter242.cmp.not = icmp eq i64 %epil.iter242.next, %xtraiter241
  br i1 %epil.iter242.cmp.not, label %._crit_edge181.loopexit, label %.lr.ph180.epil, !llvm.loop !592

._crit_edge181.loopexit:                          ; preds = %.lr.ph180.epil, %._crit_edge181.loopexit.unr-lcssa
  %.lcssa214 = phi ptr [ %i.cq, %._crit_edge181.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph180.epil ]
  %.lcssa = phi i32 [ %i.cs, %._crit_edge181.loopexit.unr-lcssa ], [ %i.bk, %.lr.ph180.epil ]
  %i.bm = trunc i32 %.lcssa to i8
  br label %._crit_edge181

._crit_edge181:                                   ; preds = %._crit_edge181.loopexit, %bb.n
  %.060.lcssa = phi ptr [ %i.z, %bb.n ], [ %.lcssa214, %._crit_edge181.loopexit ]
  %.057.lcssa = phi i8 [ 1, %bb.n ], [ %i.bm, %._crit_edge181.loopexit ]
  store i8 %.057.lcssa, ptr %.060.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph180:                                        ; preds = %.lr.ph180, %.lr.ph180.preheader.new
  %.057178 = phi i32 [ 1, %.lr.ph180.preheader.new ], [ %i.cs, %.lr.ph180 ] ; 2 uses
  %.060177 = phi ptr [ %i.z, %.lr.ph180.preheader.new ], [ %i.cq, %.lr.ph180 ] ; 9 uses
  %.061176 = phi ptr [ %2, %.lr.ph180.preheader.new ], [ %i.ct, %.lr.ph180 ] ; 9 uses
  %niter248 = phi i64 [ 0, %.lr.ph180.preheader.new ], [ %niter248.next.7, %.lr.ph180 ]
  %i.bn = trunc i32 %.057178 to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.060177, i64 1
  store i8 %i.bn, ptr %.060177, align 1, !tbaa !97
  %i.bp = getelementptr i8, ptr %.061176, i64 8
  %.061.val72 = load i64, ptr %i.bp, align 8
  %.sroa.3.8.extract.trunc.i = trunc i64 %.061.val72 to i32
  %i.bq = add i32 %.057178, %.sroa.3.8.extract.trunc.i ; 2 uses
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.060177, i64 2
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !97
  %i.bt = getelementptr i8, ptr %.061176, i64 24
  %.061.val72.1 = load i64, ptr %i.bt, align 8
  %.sroa.3.8.extract.trunc.i.1 = trunc i64 %.061.val72.1 to i32
  %i.bu = add i32 %i.bq, %.sroa.3.8.extract.trunc.i.1 ; 2 uses
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.060177, i64 3
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !97
  %i.bx = getelementptr i8, ptr %.061176, i64 40
  %.061.val72.2 = load i64, ptr %i.bx, align 8
  %.sroa.3.8.extract.trunc.i.2 = trunc i64 %.061.val72.2 to i32
  %i.by = add i32 %i.bu, %.sroa.3.8.extract.trunc.i.2 ; 2 uses
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.060177, i64 4
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !97
  %i.cb = getelementptr i8, ptr %.061176, i64 56
  %.061.val72.3 = load i64, ptr %i.cb, align 8
  %.sroa.3.8.extract.trunc.i.3 = trunc i64 %.061.val72.3 to i32
  %i.cc = add i32 %i.by, %.sroa.3.8.extract.trunc.i.3 ; 2 uses
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.060177, i64 5
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !97
  %i.cf = getelementptr i8, ptr %.061176, i64 72
  %.061.val72.4 = load i64, ptr %i.cf, align 8
  %.sroa.3.8.extract.trunc.i.4 = trunc i64 %.061.val72.4 to i32
  %i.cg = add i32 %i.cc, %.sroa.3.8.extract.trunc.i.4 ; 2 uses
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.060177, i64 6
  store i8 %i.ch, ptr %i.ce, align 1, !tbaa !97
  %i.cj = getelementptr i8, ptr %.061176, i64 88
  %.061.val72.5 = load i64, ptr %i.cj, align 8
  %.sroa.3.8.extract.trunc.i.5 = trunc i64 %.061.val72.5 to i32
  %i.ck = add i32 %i.cg, %.sroa.3.8.extract.trunc.i.5 ; 2 uses
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.060177, i64 7
  store i8 %i.cl, ptr %i.ci, align 1, !tbaa !97
  %i.cn = getelementptr i8, ptr %.061176, i64 104
  %.061.val72.6 = load i64, ptr %i.cn, align 8
  %.sroa.3.8.extract.trunc.i.6 = trunc i64 %.061.val72.6 to i32
  %i.co = add i32 %i.ck, %.sroa.3.8.extract.trunc.i.6 ; 2 uses
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.060177, i64 8 ; 3 uses
  store i8 %i.cp, ptr %i.cm, align 1, !tbaa !97
  %i.cr = getelementptr i8, ptr %.061176, i64 120
  %.061.val72.7 = load i64, ptr %i.cr, align 8
  %.sroa.3.8.extract.trunc.i.7 = trunc i64 %.061.val72.7 to i32
  %i.cs = add i32 %i.co, %.sroa.3.8.extract.trunc.i.7 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.061176, i64 128 ; 2 uses
  %niter248.next.7 = add i64 %niter248, 8         ; 2 uses
  %niter248.ncmp.7 = icmp eq i64 %niter248.next.7, %unroll_iter247
  br i1 %niter248.ncmp.7, label %._crit_edge181.loopexit.unr-lcssa, label %.lr.ph180

bb.o:                                             ; preds = %bb.m
  %i.cu = shl i64 %3, 4
  %.idx185 = and i64 %i.cu, 68719476720           ; 2 uses
  %.not67166 = icmp samesign eq i64 %.idx185, 0
  br i1 %.not67166, label %._crit_edge172, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.o
  %i.cv = add nsw i64 %.idx185, -16               ; 2 uses
  %i.cw = lshr exact i64 %i.cv, 4
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %xtraiter233 = and i64 %i.cx, 3                 ; 3 uses
  %i.cy = icmp ult i64 %i.cv, 48
  br i1 %i.cy, label %.lr.ph171.epil.preheader, label %.lr.ph171.preheader.new

.lr.ph171.preheader.new:                          ; preds = %.lr.ph171.preheader
  %unroll_iter239 = and i64 %i.cx, 2305843009213693948
  br label %.lr.ph171

._crit_edge172.loopexit.unr-lcssa:                ; preds = %.lr.ph171
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %._crit_edge172.loopexit, label %.lr.ph171.epil.preheader

.lr.ph171.epil.preheader:                         ; preds = %._crit_edge172.loopexit.unr-lcssa, %.lr.ph171.preheader
  %.1169.epil.init = phi i32 [ 1, %.lr.ph171.preheader ], [ %i.ea, %._crit_edge172.loopexit.unr-lcssa ]
  %.058168.epil.init = phi ptr [ %2, %.lr.ph171.preheader ], [ %i.eb, %._crit_edge172.loopexit.unr-lcssa ]
  %.059167.epil.init = phi ptr [ %i.z, %.lr.ph171.preheader ], [ %i.dx, %._crit_edge172.loopexit.unr-lcssa ]
  %lcmp.mod238 = icmp ne i64 %xtraiter233, 0
  tail call void @llvm.assume(i1 %lcmp.mod238)
  br label %.lr.ph171.epil

.lr.ph171.epil:                                   ; preds = %.lr.ph171.epil, %.lr.ph171.epil.preheader
  %.1169.epil = phi i32 [ %i.dd, %.lr.ph171.epil ], [ %.1169.epil.init, %.lr.ph171.epil.preheader ] ; 2 uses
  %.058168.epil = phi ptr [ %i.de, %.lr.ph171.epil ], [ %.058168.epil.init, %.lr.ph171.epil.preheader ] ; 2 uses
  %.059167.epil = phi ptr [ %i.da, %.lr.ph171.epil ], [ %.059167.epil.init, %.lr.ph171.epil.preheader ] ; 2 uses
  %epil.iter234 = phi i64 [ %epil.iter234.next, %.lr.ph171.epil ], [ 0, %.lr.ph171.epil.preheader ]
  %i.cz = trunc i32 %.1169.epil to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.059167.epil, i64 2 ; 2 uses
  %i.db = tail call i16 @llvm.bswap.i16(i16 %i.cz)
  store i16 %i.db, ptr %.059167.epil, align 1, !tbaa !97
  %i.dc = getelementptr i8, ptr %.058168.epil, i64 8
  %.058.val71.epil = load i64, ptr %i.dc, align 8
  %.sroa.3.8.extract.trunc.i79.epil = trunc i64 %.058.val71.epil to i32
  %i.dd = add i32 %.1169.epil, %.sroa.3.8.extract.trunc.i79.epil ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.058168.epil, i64 16
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %._crit_edge172.loopexit, label %.lr.ph171.epil, !llvm.loop !593

._crit_edge172.loopexit:                          ; preds = %.lr.ph171.epil, %._crit_edge172.loopexit.unr-lcssa
  %.lcssa216 = phi ptr [ %i.dx, %._crit_edge172.loopexit.unr-lcssa ], [ %i.da, %.lr.ph171.epil ]
  %.lcssa215 = phi i32 [ %i.ea, %._crit_edge172.loopexit.unr-lcssa ], [ %i.dd, %.lr.ph171.epil ]
  %i.df = trunc i32 %.lcssa215 to i16
  %i.dg = tail call i16 @llvm.bswap.i16(i16 %i.df)
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge172.loopexit, %bb.o
  %.059.lcssa = phi ptr [ %i.z, %bb.o ], [ %.lcssa216, %._crit_edge172.loopexit ]
  %.1.lcssa = phi i16 [ 256, %bb.o ], [ %i.dg, %._crit_edge172.loopexit ]
  store i16 %.1.lcssa, ptr %.059.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph171:                                        ; preds = %.lr.ph171, %.lr.ph171.preheader.new
  %.1169 = phi i32 [ 1, %.lr.ph171.preheader.new ], [ %i.ea, %.lr.ph171 ] ; 2 uses
  %.058168 = phi ptr [ %2, %.lr.ph171.preheader.new ], [ %i.eb, %.lr.ph171 ] ; 5 uses
  %.059167 = phi ptr [ %i.z, %.lr.ph171.preheader.new ], [ %i.dx, %.lr.ph171 ] ; 5 uses
  %niter240 = phi i64 [ 0, %.lr.ph171.preheader.new ], [ %niter240.next.3, %.lr.ph171 ]
  %i.dh = trunc i32 %.1169 to i16
  %i.di = getelementptr inbounds nuw i8, ptr %.059167, i64 2
  %i.dj = tail call i16 @llvm.bswap.i16(i16 %i.dh)
  store i16 %i.dj, ptr %.059167, align 1, !tbaa !97
  %i.dk = getelementptr i8, ptr %.058168, i64 8
  %.058.val71 = load i64, ptr %i.dk, align 8
  %.sroa.3.8.extract.trunc.i79 = trunc i64 %.058.val71 to i32
  %i.dl = add i32 %.1169, %.sroa.3.8.extract.trunc.i79 ; 2 uses
  %i.dm = trunc i32 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %.059167, i64 4
  %i.do = tail call i16 @llvm.bswap.i16(i16 %i.dm)
  store i16 %i.do, ptr %i.di, align 1, !tbaa !97
  %i.dp = getelementptr i8, ptr %.058168, i64 24
  %.058.val71.1 = load i64, ptr %i.dp, align 8
  %.sroa.3.8.extract.trunc.i79.1 = trunc i64 %.058.val71.1 to i32
  %i.dq = add i32 %i.dl, %.sroa.3.8.extract.trunc.i79.1 ; 2 uses
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %.059167, i64 6
  %i.dt = tail call i16 @llvm.bswap.i16(i16 %i.dr)
  store i16 %i.dt, ptr %i.dn, align 1, !tbaa !97
  %i.du = getelementptr i8, ptr %.058168, i64 40
  %.058.val71.2 = load i64, ptr %i.du, align 8
  %.sroa.3.8.extract.trunc.i79.2 = trunc i64 %.058.val71.2 to i32
  %i.dv = add i32 %i.dq, %.sroa.3.8.extract.trunc.i79.2 ; 2 uses
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %.059167, i64 8 ; 3 uses
  %i.dy = tail call i16 @llvm.bswap.i16(i16 %i.dw)
  store i16 %i.dy, ptr %i.ds, align 1, !tbaa !97
  %i.dz = getelementptr i8, ptr %.058168, i64 56
  %.058.val71.3 = load i64, ptr %i.dz, align 8
  %.sroa.3.8.extract.trunc.i79.3 = trunc i64 %.058.val71.3 to i32
  %i.ea = add i32 %i.dv, %.sroa.3.8.extract.trunc.i79.3 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.058168, i64 64 ; 2 uses
  %niter240.next.3 = add i64 %niter240, 4         ; 2 uses
  %niter240.ncmp.3 = icmp eq i64 %niter240.next.3, %unroll_iter239
  br i1 %niter240.ncmp.3, label %._crit_edge172.loopexit.unr-lcssa, label %.lr.ph171

bb.p:                                             ; preds = %bb.m
  %i.ec = shl i64 %3, 4
  %.idx184 = and i64 %i.ec, 68719476720           ; 2 uses
  %.not66155 = icmp samesign eq i64 %.idx184, 0
  br i1 %.not66155, label %._crit_edge162, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %bb.p
  %i.ed = add nsw i64 %.idx184, -16               ; 2 uses
  %i.ee = lshr exact i64 %i.ed, 4
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 3 uses
  %i.eg = icmp eq i64 %i.ed, 0
  br i1 %i.eg, label %.lr.ph161.epil.preheader, label %.lr.ph161.preheader.new

.lr.ph161.preheader.new:                          ; preds = %.lr.ph161.preheader
  %unroll_iter231 = and i64 %i.ef, 2305843009213693950
  br label %.lr.ph161

._crit_edge162.loopexit.unr-lcssa:                ; preds = %.lr.ph161
  %6 = trunc i64 %i.ef to i1
  br i1 %6, label %.lr.ph161.epil.preheader, label %._crit_edge162

.lr.ph161.epil.preheader:                         ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.preheader
  %.056159.epil.init = phi ptr [ %i.z, %.lr.ph161.preheader ], [ %.056.1, %._crit_edge162.loopexit.unr-lcssa ] ; 3 uses
  %.055158.epil.init = phi ptr [ %2, %.lr.ph161.preheader ], [ %i.fh, %._crit_edge162.loopexit.unr-lcssa ]
  %.pn157.epil.init = phi ptr [ %0, %.lr.ph161.preheader ], [ %.056, %._crit_edge162.loopexit.unr-lcssa ] ; 2 uses
  %.2156.epil.init = phi i32 [ 1, %.lr.ph161.preheader ], [ %i.fg, %._crit_edge162.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod230 = trunc i64 %i.ef to i1
  tail call void @llvm.assume(i1 %lcmp.mod230)
  %i.eh = lshr i32 %.2156.epil.init, 16
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = lshr i32 %.2156.epil.init, 8
  %i.ek = trunc i32 %i.ej to i8
  %i.el = trunc i32 %.2156.epil.init to i8
  store i8 %i.ei, ptr %.056159.epil.init, align 1
  %.sroa.4.0..sroa_idx.i85.epil = getelementptr inbounds nuw i8, ptr %.pn157.epil.init, i64 4
  store i8 %i.ek, ptr %.sroa.4.0..sroa_idx.i85.epil, align 1
  %.sroa.5.0..sroa_idx.i86.epil = getelementptr inbounds nuw i8, ptr %.pn157.epil.init, i64 5
  store i8 %i.el, ptr %.sroa.5.0..sroa_idx.i86.epil, align 1, !tbaa !97
  %i.em = getelementptr i8, ptr %.055158.epil.init, i64 8
  %.055.val70.epil = load i64, ptr %i.em, align 8
  %.sroa.3.8.extract.trunc.i87.epil = trunc i64 %.055.val70.epil to i32
  %i.en = add i32 %.2156.epil.init, %.sroa.3.8.extract.trunc.i87.epil
  %.056.epil = getelementptr inbounds nuw i8, ptr %.056159.epil.init, i64 3
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %.lr.ph161.epil.preheader, %._crit_edge162.loopexit.unr-lcssa, %bb.p
  %.2.lcssa = phi i32 [ 1, %bb.p ], [ %i.fg, %._crit_edge162.loopexit.unr-lcssa ], [ %i.en, %.lr.ph161.epil.preheader ] ; 3 uses
  %.pn.lcssa = phi ptr [ %0, %bb.p ], [ %.056, %._crit_edge162.loopexit.unr-lcssa ], [ %.056159.epil.init, %.lr.ph161.epil.preheader ] ; 2 uses
  %.056.lcssa = phi ptr [ %i.z, %bb.p ], [ %.056.1, %._crit_edge162.loopexit.unr-lcssa ], [ %.056.epil, %.lr.ph161.epil.preheader ]
  %i.eo = lshr i32 %.2.lcssa, 16
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = lshr i32 %.2.lcssa, 8
  %i.er = trunc i32 %i.eq to i8
  %i.es = trunc i32 %.2.lcssa to i8
  store i8 %i.ep, ptr %.056.lcssa, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 4
  store i8 %i.er, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 5
  store i8 %i.es, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !97
  br label %select.unfold

.lr.ph161:                                        ; preds = %.lr.ph161, %.lr.ph161.preheader.new
  %.056159 = phi ptr [ %i.z, %.lr.ph161.preheader.new ], [ %.056.1, %.lr.ph161 ] ; 5 uses
  %.055158 = phi ptr [ %2, %.lr.ph161.preheader.new ], [ %i.fh, %.lr.ph161 ] ; 3 uses
  %.pn157 = phi ptr [ %0, %.lr.ph161.preheader.new ], [ %.056, %.lr.ph161 ] ; 2 uses
  %.2156 = phi i32 [ 1, %.lr.ph161.preheader.new ], [ %i.fg, %.lr.ph161 ] ; 4 uses
  %niter232 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %niter232.next.1, %.lr.ph161 ]
  %i.et = lshr i32 %.2156, 16
  %i.eu = trunc i32 %i.et to i8
  %i.ev = lshr i32 %.2156, 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = trunc i32 %.2156 to i8
  store i8 %i.eu, ptr %.056159, align 1
  %.sroa.4.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.pn157, i64 4
  store i8 %i.ew, ptr %.sroa.4.0..sroa_idx.i85, align 1
  %.sroa.5.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %.pn157, i64 5
  store i8 %i.ex, ptr %.sroa.5.0..sroa_idx.i86, align 1, !tbaa !97
  %i.ey = getelementptr i8, ptr %.055158, i64 8
  %.055.val70 = load i64, ptr %i.ey, align 8
  %.sroa.3.8.extract.trunc.i87 = trunc i64 %.055.val70 to i32
  %i.ez = add i32 %.2156, %.sroa.3.8.extract.trunc.i87 ; 4 uses
  %.056 = getelementptr inbounds nuw i8, ptr %.056159, i64 3 ; 4 uses
  %i.fa = lshr i32 %i.ez, 16
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = lshr i32 %i.ez, 8
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = trunc i32 %i.ez to i8
  store i8 %i.fb, ptr %.056, align 1
  %.sroa.4.0..sroa_idx.i85.1 = getelementptr inbounds nuw i8, ptr %.056159, i64 4
  store i8 %i.fd, ptr %.sroa.4.0..sroa_idx.i85.1, align 1
  %.sroa.5.0..sroa_idx.i86.1 = getelementptr inbounds nuw i8, ptr %.056159, i64 5
  store i8 %i.fe, ptr %.sroa.5.0..sroa_idx.i86.1, align 1, !tbaa !97
  %i.ff = getelementptr i8, ptr %.055158, i64 24
  %.055.val70.1 = load i64, ptr %i.ff, align 8
  %.sroa.3.8.extract.trunc.i87.1 = trunc i64 %.055.val70.1 to i32
  %i.fg = add i32 %i.ez, %.sroa.3.8.extract.trunc.i87.1 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.055158, i64 32 ; 2 uses
  %.056.1 = getelementptr inbounds nuw i8, ptr %.056159, i64 6 ; 3 uses
  %niter232.next.1 = add i64 %niter232, 2         ; 2 uses
  %niter232.ncmp.1 = icmp eq i64 %niter232.next.1, %unroll_iter231
  br i1 %niter232.ncmp.1, label %._crit_edge162.loopexit.unr-lcssa, label %.lr.ph161

bb.q:                                             ; preds = %bb.m
  %i.fi = shl i64 %3, 4
  %.idx = and i64 %i.fi, 68719476720              ; 2 uses
  %.not65149 = icmp samesign eq i64 %.idx, 0
  br i1 %.not65149, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.fj = add nsw i64 %.idx, -16                  ; 2 uses
  %i.fk = lshr exact i64 %i.fj, 4
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %xtraiter = and i64 %i.fl, 3                    ; 3 uses
  %i.fm = icmp ult i64 %i.fj, 48
  br i1 %i.fm, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fl, 2305843009213693948
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.053152.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.gj, %._crit_edge.loopexit.unr-lcssa ]
  %.054151.epil.init = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.gf, %._crit_edge.loopexit.unr-lcssa ]
  %.3150.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.gi, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod223 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod223)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.053152.epil = phi ptr [ %i.fr, %.lr.ph.epil ], [ %.053152.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.054151.epil = phi ptr [ %i.fn, %.lr.ph.epil ], [ %.054151.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.3150.epil = phi i32 [ %i.fq, %.lr.ph.epil ], [ %.3150.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.054151.epil, i64 4 ; 2 uses
  %i.fo = tail call i32 @llvm.bswap.i32(i32 %.3150.epil)
  store i32 %i.fo, ptr %.054151.epil, align 1, !tbaa !97
  %i.fp = getelementptr i8, ptr %.053152.epil, i64 8
  %.053.val69.epil = load i64, ptr %i.fp, align 8
  %.sroa.3.8.extract.trunc.i93.epil = trunc i64 %.053.val69.epil to i32
  %i.fq = add i32 %.3150.epil, %.sroa.3.8.extract.trunc.i93.epil ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.053152.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !594

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa220 = phi ptr [ %i.gf, %._crit_edge.loopexit.unr-lcssa ], [ %i.fn, %.lr.ph.epil ]
  %.lcssa219 = phi i32 [ %i.gi, %._crit_edge.loopexit.unr-lcssa ], [ %i.fq, %.lr.ph.epil ]
  %i.fs = tail call i32 @llvm.bswap.i32(i32 %.lcssa219)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %.3.lcssa = phi i32 [ 16777216, %bb.q ], [ %i.fs, %._crit_edge.loopexit ]
  %.054.lcssa = phi ptr [ %i.z, %bb.q ], [ %.lcssa220, %._crit_edge.loopexit ]
  store i32 %.3.lcssa, ptr %.054.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.053152 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.gj, %.lr.ph ] ; 5 uses
  %.054151 = phi ptr [ %i.z, %.lr.ph.preheader.new ], [ %i.gf, %.lr.ph ] ; 5 uses
  %.3150 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.gi, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.054151, i64 4
  %i.fu = tail call i32 @llvm.bswap.i32(i32 %.3150)
  store i32 %i.fu, ptr %.054151, align 1, !tbaa !97
  %i.fv = getelementptr i8, ptr %.053152, i64 8
  %.053.val69 = load i64, ptr %i.fv, align 8
  %.sroa.3.8.extract.trunc.i93 = trunc i64 %.053.val69 to i32
  %i.fw = add i32 %.3150, %.sroa.3.8.extract.trunc.i93 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.054151, i64 8
  %i.fy = tail call i32 @llvm.bswap.i32(i32 %i.fw)
  store i32 %i.fy, ptr %i.ft, align 1, !tbaa !97
  %i.fz = getelementptr i8, ptr %.053152, i64 24
  %.053.val69.1 = load i64, ptr %i.fz, align 8
  %.sroa.3.8.extract.trunc.i93.1 = trunc i64 %.053.val69.1 to i32
  %i.ga = add i32 %i.fw, %.sroa.3.8.extract.trunc.i93.1 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.054151, i64 12
  %i.gc = tail call i32 @llvm.bswap.i32(i32 %i.ga)
  store i32 %i.gc, ptr %i.fx, align 1, !tbaa !97
  %i.gd = getelementptr i8, ptr %.053152, i64 40
  %.053.val69.2 = load i64, ptr %i.gd, align 8
  %.sroa.3.8.extract.trunc.i93.2 = trunc i64 %.053.val69.2 to i32
  %i.ge = add i32 %i.ga, %.sroa.3.8.extract.trunc.i93.2 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.054151, i64 16 ; 3 uses
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.ge)
  store i32 %i.gg, ptr %i.gb, align 1, !tbaa !97
  %i.gh = getelementptr i8, ptr %.053152, i64 56
  %.053.val69.3 = load i64, ptr %i.gh, align 8
  %.sroa.3.8.extract.trunc.i93.3 = trunc i64 %.053.val69.3 to i32
  %i.gi = add i32 %i.ge, %.sroa.3.8.extract.trunc.i93.3 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.053152, i64 64 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

select.unfold:                                    ; preds = %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit, %.critedge.i, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i, %._crit_edge181, %._crit_edge172, %._crit_edge162, %._crit_edge, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, %.critedge.i.i.i.i, %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, %.critedge.i.i.i, %bb.a
  %.0 = phi i1 [ true, %._crit_edge181 ], [ true, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %bb.f ], [ false, %.critedge.i.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ true, %bb.m ], [ true, %._crit_edge ], [ true, %._crit_edge162 ], [ true, %._crit_edge172 ], [ false, %.critedge.i ], [ false, %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit ]
  ret i1 %.0
}

declare hidden noundef zeroext i1 @_Z27hb_plan_subset_cff_fdselectPK16hb_subset_plan_tjRKN3CFF8FDSelectERjS6_S6_R11hb_vector_tINS2_11code_pair_tELb0EER14hb_inc_bimap_t(ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(6), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT16cff1_subset_plan21collect_sids_in_dictsERKNS_4cff120accelerator_subset_tE(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 12 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %.not15 = icmp eq i32 %i.c, -1
  br i1 %.not15, label %bb.c, label %bb.b

.preheader:                                       ; preds = %bb.w
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 2 uses
  %.not20 = icmp eq i32 %i.e, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph
end_hunk_2
begin_hunk_3_@_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE6subsetEv:bb.a
  %.0.i99 = phi ptr [ @_hb_CrapPool, %bb.av ], [ %i.jb, %bb.aw ]
  %i.jc = load ptr, ptr %i.co, align 8, !tbaa !371
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 20
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !254
  %i.jf = trunc i32 %i.je to i8
  %i.jg = and i8 %i.jf, 1
  store ptr %.0.i93, ptr %2, align 8, !tbaa !392
  store ptr %.0.i93, ptr %i.ed, align 8, !tbaa !393
  store ptr %i.dy, ptr %i.ee, align 8, !tbaa !394
  store ptr %.0.i96, ptr %i.ef, align 8, !tbaa !395
  store ptr %i.ck, ptr %i.eg, align 8, !tbaa !396
  store ptr %.0.i99, ptr %i.eh, align 8, !tbaa !397
  store i8 %i.jg, ptr %i.ei, align 8, !tbaa !398
  store i8 0, ptr %i.ej, align 8, !tbaa !362
  %.pre.i = load i32, ptr %.sroa.gep, align 4, !tbaa !328
  %.pre19.i = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !368
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bb, %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit
  %i.jh = phi i32 [ %.pre19.i, %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit ], [ %i.jz, %bb.bb ] ; 2 uses
  %i.ji = phi i32 [ %.pre.i, %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit ], [ %i.jy, %bb.bb ] ; 3 uses
  %.0.i100 = phi i32 [ 200000, %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit ], [ %i.ke, %bb.bb ]
  %i.jj = add i32 %i.ji, 1                        ; 3 uses
  %.not.i.i101 = icmp ugt i32 %i.jj, %i.jh
  br i1 %.not.i.i101, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.i, label %bb.ay, !prof !86

bb.ay:                                            ; preds = %bb.ax
  %i.jk = load ptr, ptr %1, align 8, !tbaa !363   ; 2 uses
  %i.jl = zext i32 %i.ji to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !97  ; 2 uses
  %i.jo = zext i8 %i.jn to i32
  store i32 %i.jj, ptr %.sroa.gep, align 4, !tbaa !328
  %i.jp = icmp eq i8 %i.jn, 12
  br i1 %i.jp, label %bb.az, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.jq = add i32 %i.ji, 2                        ; 2 uses
  %.not5.i.i = icmp ugt i32 %i.jq, %i.jh
  br i1 %.not5.i.i, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.i, label %bb.ba, !prof !86

bb.ba:                                            ; preds = %bb.az
  %i.jr = zext i32 %i.jj to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !97
  %i.ju = zext i8 %i.jt to i32
  %i.jv = or disjoint i32 %i.ju, 256
  store i32 %i.jq, ptr %.sroa.gep, align 4, !tbaa !328
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.i

_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.i: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %.03.i.i = phi i32 [ 65535, %bb.az ], [ 65535, %bb.ax ], [ %i.jv, %bb.ba ], [ %i.jo, %bb.ay ]
  call void @_ZN27cff1_cs_opset_subr_subset_t10process_opEjRN3CFF20cff1_cs_interp_env_tERNS0_19subr_subset_param_tE(i32 noundef %.03.i.i, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(49) %2)
  %i.jw = load i8, ptr %i.df, align 8, !tbaa !330, !range !126, !noundef !127
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.thread143, label %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit.i

_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit.i: ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.i
  %i.jy = load i32, ptr %.sroa.gep, align 4, !tbaa !328 ; 2 uses
  %i.jz = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !368 ; 3 uses
  %i.ka = icmp ugt i32 %i.jy, %i.jz
  %i.kb = load i8, ptr %i.ek, align 8, !range !126
  %i.kc = trunc nuw i8 %i.kb to i1
  %i.kd = select i1 %i.ka, i1 true, i1 %i.kc
  %cond.fr.i = freeze i1 %i.kd
  %i.ke = add nsw i32 %.0.i100, -1                ; 2 uses
  %.not.i102 = icmp eq i32 %i.ke, 0
  %brmerge.i = select i1 %cond.fr.i, i1 true, i1 %.not.i102, !prof !369
  br i1 %brmerge.i, label %.thread143, label %bb.bb, !prof !369

bb.bb:                                            ; preds = %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit.i
  %i.kf = load i8, ptr %i.ej, align 8, !tbaa !362, !range !126, !noundef !127
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.bc, label %bb.ax, !llvm.loop !618

.thread143:                                       ; preds = %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit.i, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %.critedge71

bb.bc:                                            ; preds = %bb.bb
  %i.kh = load i32, ptr %i.db, align 4, !tbaa !379
  %.not.i103 = icmp ult i32 %.sroa.0.0.copyload, %i.kh
  br i1 %.not.i103, label %bb.be, label %bb.bd, !prof !82

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit105

bb.be:                                            ; preds = %bb.bc
  %i.ki = load ptr, ptr %i.dc, align 8, !tbaa !381
  %i.kj = zext i32 %.sroa.0.0.copyload to i64
  %i.kk = getelementptr inbounds nuw [40 x i8], ptr %i.ki, i64 %i.kj
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit105

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit105: ; preds = %bb.bd, %bb.be
  %.0.i104 = phi ptr [ @_hb_CrapPool, %bb.bd ], [ %i.kk, %bb.be ] ; 3 uses
  %i.kl = load i8, ptr %i.dv, align 1, !tbaa !354, !range !126, !noundef !127
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit105
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i104, i64 24 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 8
  %i.kp = or i8 %i.ko, 8
  store i8 %i.kp, ptr %i.kn, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i104, i64 28
  store i32 65535, ptr %i.kq, align 4, !tbaa !400
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i104, i64 32
  %i.ks = load i64, ptr %i.dt, align 8, !tbaa !365
  store i64 %i.ks, ptr %i.kr, align 8, !tbaa !365
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit105
  %i.kt = load ptr, ptr %2, align 8, !tbaa !392
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24 ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 8
  %i.kw = or i8 %i.kv, 1
  store i8 %i.kw, ptr %i.ku, align 8
  %i.kx = load i32, ptr %i.dg, align 4, !tbaa !401 ; 2 uses
  %.not17.i = icmp eq i32 %i.kx, 0
  br i1 %.not17.i, label %_ZN21cff1_subr_subsetter_t19complete_parsed_strERN3CFF20cff1_cs_interp_env_tERNS0_19subr_subset_param_tERNS0_15parsed_cs_str_tE.exit, label %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.lr.ph.i

_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.lr.ph.i: ; preds = %bb.bg
  %i.ky = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lb = load ptr, ptr %i.ed, align 8
  %i.lc = add i32 %i.jz, 1
  br label %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.i

_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.i: ; preds = %bb.bk, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.lr.ph.i
  %i.ld = phi i32 [ %i.kx, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.lr.ph.i ], [ %i.mb, %bb.bk ]
  %indvars.iv.i = phi i64 [ 0, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.bk ] ; 2 uses
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %indvars.iv.i ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !333
  switch i32 %i.lg, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i [
    i32 0, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i
    i32 2, label %bb.bh
    i32 1, label %bb.bi
  ]

bb.bh:                                            ; preds = %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 20
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !334 ; 2 uses
  %i.lj = load ptr, ptr %i.ef, align 8, !tbaa !395 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !379
  %i.lm = icmp ult i32 %i.li, %i.ll
  br i1 %i.lm, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, !prof !82

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i: ; preds = %bb.bh
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !381
  %i.lp = zext i32 %i.li to i64
  %i.lq = getelementptr inbounds nuw [40 x i8], ptr %i.lo, i64 %i.lp
  br label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i

bb.bi:                                            ; preds = %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.le, i64 20
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !334 ; 2 uses
  %i.lt = load i32, ptr %i.kz, align 4, !tbaa !379
  %i.lu = icmp ult i32 %i.ls, %i.lt
  br i1 %i.lu, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, !prof !82

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i: ; preds = %bb.bi
  %i.lv = load ptr, ptr %i.la, align 8, !tbaa !381
  %i.lw = zext i32 %i.ls to i64
  %i.lx = getelementptr inbounds nuw [40 x i8], ptr %i.lv, i64 %i.lw
  br label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i

_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i: ; preds = %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.i, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i
  %.0.i13.i = phi ptr [ %i.lx, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit11.i.i ], [ %i.lq, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit.i.i ], [ %i.lb, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.i ] ; 2 uses
  %.not.i106 = icmp eq ptr %.0.i13.i, null
  br i1 %.not.i106, label %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, label %bb.bj, !prof !94

bb.bj:                                            ; preds = %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i13.i, i64 24 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 8
  %i.ma = or i8 %i.lz, 1
  store i8 %i.ma, ptr %i.ly, align 8
  %.pre.i107 = load i32, ptr %i.dg, align 4, !tbaa !401
  br label %bb.bk

_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i: ; preds = %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.i, %bb.bi, %bb.bh, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.i
  store i32 %i.lc, ptr %.sroa.gep, align 4, !tbaa !328
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i, %bb.bj
  %i.mb = phi i32 [ %i.ld, %_ZN3CFF19subr_subset_param_t26get_parsed_str_for_contextERNS_14call_context_tE.exit.thread.i ], [ %.pre.i107, %bb.bj ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mc = zext i32 %i.mb to i64
  %i.md = icmp samesign ult i64 %indvars.iv.next.i, %i.mc
  br i1 %i.md, label %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EEixEj.exit.i, label %_ZN21cff1_subr_subsetter_t19complete_parsed_strERN3CFF20cff1_cs_interp_env_tERNS0_19subr_subset_param_tERNS0_15parsed_cs_str_tE.exit, !llvm.loop !619

_ZN21cff1_subr_subsetter_t19complete_parsed_strERN3CFF20cff1_cs_interp_env_tERNS0_19subr_subset_param_tERNS0_15parsed_cs_str_tE.exit: ; preds = %bb.bk, %bb.bg
  %i.me = load ptr, ptr %i.co, align 8, !tbaa !371 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 20
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !254
  %5 = trunc i32 %i.mg to i1
  br i1 %5, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN21cff1_subr_subsetter_t19complete_parsed_strERN3CFF20cff1_cs_interp_env_tERNS0_19subr_subset_param_tERNS0_15parsed_cs_str_tE.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 3096
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !402
  %.not67 = icmp eq ptr %i.mi, null
  br i1 %.not67, label %bb.cc, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZN21cff1_subr_subsetter_t19complete_parsed_strERN3CFF20cff1_cs_interp_env_tERNS0_19subr_subset_param_tERNS0_15parsed_cs_str_tE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.mj = load i32, ptr %i.db, align 4, !tbaa !379
  %.not.i108 = icmp ult i32 %.sroa.0.0.copyload, %i.mj ; 2 uses
  br i1 %.not.i108, label %bb.bo, label %bb.bn, !prof !82

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit110

bb.bo:                                            ; preds = %bb.bm
  %i.mk = load ptr, ptr %i.dc, align 8, !tbaa !381
  %i.ml = zext i32 %.sroa.0.0.copyload to i64
  %i.mm = getelementptr inbounds nuw [40 x i8], ptr %i.mk, i64 %i.ml
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit110

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit110: ; preds = %bb.bn, %bb.bo
  %.0.i109 = phi ptr [ @_hb_CrapPool, %bb.bn ], [ %i.mm, %bb.bo ] ; 2 uses
  %i.mn = load i32, ptr %i.dz, align 4, !tbaa !289
  %.not.i111 = icmp ugt i32 %i.mn, %.0.i79
  br i1 %.not.i111, label %bb.bq, label %bb.bp, !prof !82

bb.bp:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit113

bb.bq:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit110
  %i.mo = load ptr, ptr %i.ea, align 8, !tbaa !374
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %i.ia
  br label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit113

_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit113: ; preds = %bb.bp, %bb.bq
  %.0.i112 = phi ptr [ @_hb_CrapPool, %bb.bp ], [ %i.mp, %bb.bq ]
  %i.mq = load i32, ptr %i.eb, align 4, !tbaa !389
  %.not.i114 = icmp ugt i32 %i.mq, %.0.i79
  br i1 %.not.i114, label %bb.bs, label %bb.br, !prof !82

bb.br:                                            ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(72) @_hb_NullPool, i64 72, i1 false)
  br label %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit116

bb.bs:                                            ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit113
  %i.mr = load ptr, ptr %i.ec, align 8, !tbaa !390
  %i.ms = getelementptr inbounds nuw [72 x i8], ptr %i.mr, i64 %i.ia
  br label %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit116

_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit116:      ; preds = %bb.br, %bb.bs
  %.0.i115 = phi ptr [ @_hb_CrapPool, %bb.br ], [ %i.ms, %bb.bs ]
  %i.mt = load ptr, ptr %i.co, align 8, !tbaa !371
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 20
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !254
  %i.mw = trunc i32 %i.mv to i8
  %i.mx = and i8 %i.mw, 1
  store ptr %.0.i109, ptr %3, align 8, !tbaa !392
  store ptr %.0.i109, ptr %i.em, align 8, !tbaa !393
  store ptr %i.dy, ptr %i.en, align 8, !tbaa !394
  store ptr %.0.i112, ptr %i.eo, align 8, !tbaa !395
  store ptr %i.ck, ptr %i.ep, align 8, !tbaa !396
  store ptr %.0.i115, ptr %i.eq, align 8, !tbaa !397
  store i8 %i.mx, ptr %i.er, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  br i1 %.not.i108, label %bb.bu, label %bb.bt, !prof !82

bb.bt:                                            ; preds = %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit119

bb.bu:                                            ; preds = %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit116
  %i.my = load ptr, ptr %i.dc, align 8, !tbaa !381
  %i.mz = zext i32 %.sroa.0.0.copyload to i64
  %i.na = getelementptr inbounds nuw [40 x i8], ptr %i.my, i64 %i.mz
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit119

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit119: ; preds = %bb.bt, %bb.bu
  %.0.i118 = phi ptr [ @_hb_CrapPool, %bb.bt ], [ %i.na, %bb.bu ]
  %i.nb = call noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE17drop_hints_in_strERNS_15parsed_cs_str_tERKNS_19subr_subset_param_tERNSC_18drop_hints_param_tE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %.0.i118, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 1 dereferenceable(4) %4)
  br i1 %i.nb, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit119
  %i.nc = load i32, ptr %i.db, align 4, !tbaa !379
  %.not.i120 = icmp ult i32 %.sroa.0.0.copyload, %i.nc
  br i1 %.not.i120, label %bb.bx, label %bb.bw, !prof !82

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit122

bb.bx:                                            ; preds = %bb.bv
  %i.nd = load ptr, ptr %i.dc, align 8, !tbaa !381
  %i.ne = zext i32 %.sroa.0.0.copyload to i64
  %i.nf = getelementptr inbounds nuw [40 x i8], ptr %i.nd, i64 %i.ne
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit122

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit122: ; preds = %bb.bw, %bb.bx
  %.0.i121 = phi ptr [ @_hb_CrapPool, %bb.bw ], [ %i.nf, %bb.bx ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.0.i121, i64 24 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 8
  %i.ni = or i8 %i.nh, 2
  store i8 %i.ni, ptr %i.ng, align 8
  %i.nj = load i8, ptr %i.es, align 1, !tbaa !404, !range !126, !noundef !127
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit122
  %i.nl = load i32, ptr %i.db, align 4, !tbaa !379
  %.not.i123 = icmp ult i32 %.sroa.0.0.copyload, %i.nl
  br i1 %.not.i123, label %bb.ca, label %bb.bz, !prof !82

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit125

bb.ca:                                            ; preds = %bb.by
  %i.nm = load ptr, ptr %i.dc, align 8, !tbaa !381
  %i.nn = zext i32 %.sroa.0.0.copyload to i64
  %i.no = getelementptr inbounds nuw [40 x i8], ptr %i.nm, i64 %i.nn
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit125

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit125: ; preds = %bb.bz, %bb.ca
  %.0.i124 = phi ptr [ @_hb_CrapPool, %bb.bz ], [ %i.no, %bb.ca ]
  %i.np = getelementptr inbounds nuw i8, ptr %.0.i124, i64 24 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 8
  %i.nr = or i8 %i.nq, 4
  store i8 %i.nr, ptr %i.np, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit122, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit125, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEixEi.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bl
  %i.ns = load i32, ptr %i.db, align 4, !tbaa !379
  %.not.i126 = icmp ult i32 %.sroa.0.0.copyload, %i.ns
  br i1 %.not.i126, label %bb.ce, label %bb.cd, !prof !82

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.nt = load ptr, ptr %i.dc, align 8, !tbaa !381
  %i.nu = zext i32 %.sroa.0.0.copyload to i64
  %i.nv = getelementptr inbounds nuw [40 x i8], ptr %i.nt, i64 %i.nu
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0.i127 = phi ptr [ @_hb_CrapPool, %bb.cd ], [ %i.nv, %bb.ce ]
  call void @_ZN3CFF15parsed_cs_str_t7compactEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i127)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %.thread

.thread:                                          ; preds = %_ZN11hb_vector_tIPKN3CFF15parsed_cs_str_tELb0EEixEi.exit, %_ZN3CFF15parsed_cs_str_taSERKS0_.exit, %bb.cf
  %i.nw = getelementptr inbounds nuw i8, ptr %.0154, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.nw, %i.cv
  br i1 %.not64, label %.critedge73, label %bb.t

.critedge73:                                      ; preds = %.thread, %bb.s
  br i1 %.not, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.critedge73
  %i.nx = load ptr, ptr %i.co, align 8, !tbaa !371
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 20
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !254
  %6 = trunc i32 %i.nz to i1
  br i1 %6, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg, %.critedge73
  %i.oa = load ptr, ptr %i.ch, align 8, !tbaa !287
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !288
  %i.od = call noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE19closure_subroutinesERKNS_19parsed_cs_str_vec_tERK11hb_vector_tISD_Lb0EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.oa, ptr noundef nonnull align 8 dereferenceable(16) %i.oc)
  br i1 %i.od, label %bb.ci, label %.critedge71

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  call void @_ZN3CFF12subr_remap_t6createEPK8hb_set_t(ptr noundef nonnull align 8 dereferenceable(88) %i.bx, ptr noundef nonnull align 8 dereferenceable(88) %i.ck)
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !622
  %.not.i129 = icmp eq i32 %i.of, 0
  br i1 %.not.i129, label %_ZN3CFF13subr_remaps_t6createERNS_15subr_closures_tE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ci
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i, %.lr.ph.i
  %indvars.iv.i130 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i133, %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i ] ; 4 uses
  %i.oj = load ptr, ptr %i.og, align 8, !tbaa !623
  %i.ok = getelementptr inbounds nuw [72 x i8], ptr %i.oj, i64 %indvars.iv.i130
  %i.ol = load i32, ptr %i.oh, align 4, !tbaa !389
  %i.om = zext i32 %i.ol to i64
  %.not.i.i131 = icmp samesign ult i64 %indvars.iv.i130, %i.om
  br i1 %.not.i.i131, label %bb.cl, label %bb.ck, !prof !82

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(72) @_hb_NullPool, i64 72, i1 false)
  br label %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.on = load ptr, ptr %i.oi, align 8, !tbaa !390
  %i.oo = getelementptr inbounds nuw [72 x i8], ptr %i.on, i64 %indvars.iv.i130
  br label %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i

_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i:       ; preds = %bb.cl, %bb.ck
  %.0.i.i132 = phi ptr [ @_hb_CrapPool, %bb.ck ], [ %i.oo, %bb.cl ]
  call void @_ZN3CFF12subr_remap_t6createEPK8hb_set_t(ptr noundef nonnull align 8 dereferenceable(68) %i.ok, ptr noundef nonnull %.0.i.i132)
  %indvars.iv.next.i133 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %i.op = load i32, ptr %i.oe, align 4, !tbaa !622
  %i.oq = zext i32 %i.op to i64
  %i.or = icmp samesign ult i64 %indvars.iv.next.i133, %i.oq
  br i1 %i.or, label %bb.cj, label %_ZN3CFF13subr_remaps_t6createERNS_15subr_closures_tE.exit, !llvm.loop !620

_ZN3CFF13subr_remaps_t6createERNS_15subr_closures_tE.exit: ; preds = %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i, %bb.ci
  call void @_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE27populate_subset_acceleratorEv(ptr noundef nonnull align 8 dereferenceable(272) %0)
  br label %.critedge71

.critedge71:                                      ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit78, %_ZNK3CFF8FDSelect6get_fdEj.exit, %.thread143, %bb.q, %bb.p, %bb.o, %bb.n, %bb.ch, %bb.r, %bb.g, %_ZN3CFF13subr_remaps_t6createERNS_15subr_closures_tE.exit
  %.8 = phi i1 [ false, %bb.g ], [ true, %_ZN3CFF13subr_remaps_t6createERNS_15subr_closures_tE.exit ], [ false, %bb.r ], [ false, %_ZNK3CFF8FDSelect6get_fdEj.exit ], [ false, %bb.q ], [ false, %bb.ch ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %.thread143 ], [ false, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEixEi.exit78 ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE18encode_charstringsER11hb_vector_tISD_IhLb0EELb0EEb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !253  ; 9 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIS_IhLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.d, i1 noundef zeroext true)
  br i1 %i.f, label %bb.c, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread, !prof !95

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64   ; 6 uses
  %i.i = icmp ugt i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = sub nuw nsw i32 %i.d, %i.h
  %i.k = shl i32 %i.j, 4                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e, !prof !86

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.n = zext nneg i32 %i.h to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %i.p = zext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.p, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.q = icmp ult i32 %i.d, %i.h
  br i1 %i.q, label %.lr.ph.preheader.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.r = sub nuw i32 %i.h, %i.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = zext i32 %i.h to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.x, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.046.i.i.i = phi i32 [ %i.w, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i ], [ %i.r, %.lr.ph.preheader.i.i.i ]
  %i.w = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !300
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.g, label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.aa, align 4, !tbaa !68
  %i.ab = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !96
  tail call void @hb_free(ptr noundef %i.ac) #10
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i:           ; preds = %bb.g, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i, %bb.f, %bb.e, %bb.d
  store i32 %i.d, ptr %i.g, align 4, !tbaa !64
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !371 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !256 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 196
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !257 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.idx = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %.not47 = icmp eq i32 %i.ah, 0
  br i1 %.not47, label %.preheader, label %.lr.ph52

.lr.ph52:                                         ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.i

bb.h:                                             ; preds = %_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE21get_parsed_charstringEj.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.03449, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.aj
  br i1 %.not, label %.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph52, %bb.h
  %.03449 = phi ptr [ %i.af, %.lr.ph52 ], [ %i.ap, %bb.h ] ; 3 uses
  %.03548 = phi i32 [ 0, %.lr.ph52 ], [ %i.bl, %bb.h ] ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %.03449, align 4, !tbaa !116 ; 8 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.03449, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !116 ; 3 uses
  %i.aq = icmp ult i32 %.03548, %.sroa.0.0.copyload
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !65 ; 5 uses
  %i.as = zext i32 %.03548 to i64                 ; 4 uses
  %wide.trip.count = zext i32 %.sroa.0.0.copyload to i64 ; 3 uses
  %.pre = load ptr, ptr @endchar_str, align 8, !tbaa !158 ; 5 uses
  %i.at = sub nsw i64 %wide.trip.count, %i.as
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.as, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv.prol ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.pre, ptr %i.av, align 8, !tbaa !96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 1, ptr %i.aw, align 4, !tbaa !68
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !624

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ax = sub nsw i64 %i.as, %wide.trip.count
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.pre, ptr %i.ba, align 8, !tbaa !96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 1, ptr %i.bb, align 4, !tbaa !68
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %.pre, ptr %i.bd, align 8, !tbaa !96
end_hunk_3
begin_hunk_4_@_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj:bb.a

.lr.ph177.epil.preheader:                         ; preds = %._crit_edge178.loopexit.unr-lcssa, %.lr.ph177.preheader
  %.057175.epil.init = phi i32 [ 1, %.lr.ph177.preheader ], [ %i.cs, %._crit_edge178.loopexit.unr-lcssa ]
  %.060174.epil.init = phi ptr [ %i.z, %.lr.ph177.preheader ], [ %i.cq, %._crit_edge178.loopexit.unr-lcssa ]
  %.061173.epil.init = phi ptr [ %2, %.lr.ph177.preheader ], [ %i.ct, %._crit_edge178.loopexit.unr-lcssa ]
  %lcmp.mod243 = icmp ne i64 %xtraiter238, 0
  tail call void @llvm.assume(i1 %lcmp.mod243)
  br label %.lr.ph177.epil

.lr.ph177.epil:                                   ; preds = %.lr.ph177.epil, %.lr.ph177.epil.preheader
  %.057175.epil = phi i32 [ %i.bk, %.lr.ph177.epil ], [ %.057175.epil.init, %.lr.ph177.epil.preheader ] ; 2 uses
  %.060174.epil = phi ptr [ %i.bi, %.lr.ph177.epil ], [ %.060174.epil.init, %.lr.ph177.epil.preheader ] ; 2 uses
  %.061173.epil = phi ptr [ %i.bl, %.lr.ph177.epil ], [ %.061173.epil.init, %.lr.ph177.epil.preheader ] ; 2 uses
  %epil.iter239 = phi i64 [ %epil.iter239.next, %.lr.ph177.epil ], [ 0, %.lr.ph177.epil.preheader ]
  %i.bh = trunc i32 %.057175.epil to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.060174.epil, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.060174.epil, align 1, !tbaa !97
  %i.bj = getelementptr i8, ptr %.061173.epil, i64 4
  %.061.val.epil = load i32, ptr %i.bj, align 4, !tbaa !68
  %i.bk = add i32 %.061.val.epil, %.057175.epil   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.061173.epil, i64 16
  %epil.iter239.next = add i64 %epil.iter239, 1   ; 2 uses
  %epil.iter239.cmp.not = icmp eq i64 %epil.iter239.next, %xtraiter238
  br i1 %epil.iter239.cmp.not, label %._crit_edge178.loopexit, label %.lr.ph177.epil, !llvm.loop !796

._crit_edge178.loopexit:                          ; preds = %.lr.ph177.epil, %._crit_edge178.loopexit.unr-lcssa
  %.lcssa211 = phi ptr [ %i.cq, %._crit_edge178.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph177.epil ]
  %.lcssa = phi i32 [ %i.cs, %._crit_edge178.loopexit.unr-lcssa ], [ %i.bk, %.lr.ph177.epil ]
  %i.bm = trunc i32 %.lcssa to i8
  br label %._crit_edge178

._crit_edge178:                                   ; preds = %._crit_edge178.loopexit, %bb.n
  %.060.lcssa = phi ptr [ %i.z, %bb.n ], [ %.lcssa211, %._crit_edge178.loopexit ]
  %.057.lcssa = phi i8 [ 1, %bb.n ], [ %i.bm, %._crit_edge178.loopexit ]
  store i8 %.057.lcssa, ptr %.060.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph177:                                        ; preds = %.lr.ph177, %.lr.ph177.preheader.new
  %.057175 = phi i32 [ 1, %.lr.ph177.preheader.new ], [ %i.cs, %.lr.ph177 ] ; 2 uses
  %.060174 = phi ptr [ %i.z, %.lr.ph177.preheader.new ], [ %i.cq, %.lr.ph177 ] ; 9 uses
  %.061173 = phi ptr [ %2, %.lr.ph177.preheader.new ], [ %i.ct, %.lr.ph177 ] ; 9 uses
  %niter245 = phi i64 [ 0, %.lr.ph177.preheader.new ], [ %niter245.next.7, %.lr.ph177 ]
  %i.bn = trunc i32 %.057175 to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.060174, i64 1
  store i8 %i.bn, ptr %.060174, align 1, !tbaa !97
  %i.bp = getelementptr i8, ptr %.061173, i64 4
  %.061.val = load i32, ptr %i.bp, align 4, !tbaa !68
  %i.bq = add i32 %.061.val, %.057175             ; 2 uses
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.060174, i64 2
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !97
  %i.bt = getelementptr i8, ptr %.061173, i64 20
  %.061.val.1 = load i32, ptr %i.bt, align 4, !tbaa !68
  %i.bu = add i32 %.061.val.1, %i.bq              ; 2 uses
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.060174, i64 3
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !97
  %i.bx = getelementptr i8, ptr %.061173, i64 36
  %.061.val.2 = load i32, ptr %i.bx, align 4, !tbaa !68
  %i.by = add i32 %.061.val.2, %i.bu              ; 2 uses
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.060174, i64 4
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !97
  %i.cb = getelementptr i8, ptr %.061173, i64 52
  %.061.val.3 = load i32, ptr %i.cb, align 4, !tbaa !68
  %i.cc = add i32 %.061.val.3, %i.by              ; 2 uses
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.060174, i64 5
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !97
  %i.cf = getelementptr i8, ptr %.061173, i64 68
  %.061.val.4 = load i32, ptr %i.cf, align 4, !tbaa !68
  %i.cg = add i32 %.061.val.4, %i.cc              ; 2 uses
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.060174, i64 6
  store i8 %i.ch, ptr %i.ce, align 1, !tbaa !97
  %i.cj = getelementptr i8, ptr %.061173, i64 84
  %.061.val.5 = load i32, ptr %i.cj, align 4, !tbaa !68
  %i.ck = add i32 %.061.val.5, %i.cg              ; 2 uses
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.060174, i64 7
  store i8 %i.cl, ptr %i.ci, align 1, !tbaa !97
  %i.cn = getelementptr i8, ptr %.061173, i64 100
  %.061.val.6 = load i32, ptr %i.cn, align 4, !tbaa !68
  %i.co = add i32 %.061.val.6, %i.ck              ; 2 uses
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.060174, i64 8 ; 3 uses
  store i8 %i.cp, ptr %i.cm, align 1, !tbaa !97
  %i.cr = getelementptr i8, ptr %.061173, i64 116
  %.061.val.7 = load i32, ptr %i.cr, align 4, !tbaa !68
  %i.cs = add i32 %.061.val.7, %i.co              ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.061173, i64 128 ; 2 uses
  %niter245.next.7 = add i64 %niter245, 8         ; 2 uses
  %niter245.ncmp.7 = icmp eq i64 %niter245.next.7, %unroll_iter244
  br i1 %niter245.ncmp.7, label %._crit_edge178.loopexit.unr-lcssa, label %.lr.ph177

bb.o:                                             ; preds = %bb.m
  %i.cu = shl i64 %3, 4
  %.idx182 = and i64 %i.cu, 68719476720           ; 2 uses
  %.not67163 = icmp samesign eq i64 %.idx182, 0
  br i1 %.not67163, label %._crit_edge169, label %.lr.ph168.preheader

.lr.ph168.preheader:                              ; preds = %bb.o
  %i.cv = add nsw i64 %.idx182, -16               ; 2 uses
  %i.cw = lshr exact i64 %i.cv, 4
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %xtraiter230 = and i64 %i.cx, 3                 ; 3 uses
  %i.cy = icmp ult i64 %i.cv, 48
  br i1 %i.cy, label %.lr.ph168.epil.preheader, label %.lr.ph168.preheader.new

.lr.ph168.preheader.new:                          ; preds = %.lr.ph168.preheader
  %unroll_iter236 = and i64 %i.cx, 2305843009213693948
  br label %.lr.ph168

._crit_edge169.loopexit.unr-lcssa:                ; preds = %.lr.ph168
  %lcmp.mod232.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod232.not, label %._crit_edge169.loopexit, label %.lr.ph168.epil.preheader

.lr.ph168.epil.preheader:                         ; preds = %._crit_edge169.loopexit.unr-lcssa, %.lr.ph168.preheader
  %.1166.epil.init = phi i32 [ 1, %.lr.ph168.preheader ], [ %i.ea, %._crit_edge169.loopexit.unr-lcssa ]
  %.058165.epil.init = phi ptr [ %2, %.lr.ph168.preheader ], [ %i.eb, %._crit_edge169.loopexit.unr-lcssa ]
  %.059164.epil.init = phi ptr [ %i.z, %.lr.ph168.preheader ], [ %i.dx, %._crit_edge169.loopexit.unr-lcssa ]
  %lcmp.mod235 = icmp ne i64 %xtraiter230, 0
  tail call void @llvm.assume(i1 %lcmp.mod235)
  br label %.lr.ph168.epil

.lr.ph168.epil:                                   ; preds = %.lr.ph168.epil, %.lr.ph168.epil.preheader
  %.1166.epil = phi i32 [ %i.dd, %.lr.ph168.epil ], [ %.1166.epil.init, %.lr.ph168.epil.preheader ] ; 2 uses
  %.058165.epil = phi ptr [ %i.de, %.lr.ph168.epil ], [ %.058165.epil.init, %.lr.ph168.epil.preheader ] ; 2 uses
  %.059164.epil = phi ptr [ %i.da, %.lr.ph168.epil ], [ %.059164.epil.init, %.lr.ph168.epil.preheader ] ; 2 uses
  %epil.iter231 = phi i64 [ %epil.iter231.next, %.lr.ph168.epil ], [ 0, %.lr.ph168.epil.preheader ]
  %i.cz = trunc i32 %.1166.epil to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.059164.epil, i64 2 ; 2 uses
  %i.db = tail call i16 @llvm.bswap.i16(i16 %i.cz)
  store i16 %i.db, ptr %.059164.epil, align 1, !tbaa !97
  %i.dc = getelementptr i8, ptr %.058165.epil, i64 4
  %.058.val.epil = load i32, ptr %i.dc, align 4, !tbaa !68
  %i.dd = add i32 %.058.val.epil, %.1166.epil     ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.058165.epil, i64 16
  %epil.iter231.next = add i64 %epil.iter231, 1   ; 2 uses
  %epil.iter231.cmp.not = icmp eq i64 %epil.iter231.next, %xtraiter230
  br i1 %epil.iter231.cmp.not, label %._crit_edge169.loopexit, label %.lr.ph168.epil, !llvm.loop !797

._crit_edge169.loopexit:                          ; preds = %.lr.ph168.epil, %._crit_edge169.loopexit.unr-lcssa
  %.lcssa213 = phi ptr [ %i.dx, %._crit_edge169.loopexit.unr-lcssa ], [ %i.da, %.lr.ph168.epil ]
  %.lcssa212 = phi i32 [ %i.ea, %._crit_edge169.loopexit.unr-lcssa ], [ %i.dd, %.lr.ph168.epil ]
  %i.df = trunc i32 %.lcssa212 to i16
  %i.dg = tail call i16 @llvm.bswap.i16(i16 %i.df)
  br label %._crit_edge169

._crit_edge169:                                   ; preds = %._crit_edge169.loopexit, %bb.o
  %.059.lcssa = phi ptr [ %i.z, %bb.o ], [ %.lcssa213, %._crit_edge169.loopexit ]
  %.1.lcssa = phi i16 [ 256, %bb.o ], [ %i.dg, %._crit_edge169.loopexit ]
  store i16 %.1.lcssa, ptr %.059.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph168:                                        ; preds = %.lr.ph168, %.lr.ph168.preheader.new
  %.1166 = phi i32 [ 1, %.lr.ph168.preheader.new ], [ %i.ea, %.lr.ph168 ] ; 2 uses
  %.058165 = phi ptr [ %2, %.lr.ph168.preheader.new ], [ %i.eb, %.lr.ph168 ] ; 5 uses
  %.059164 = phi ptr [ %i.z, %.lr.ph168.preheader.new ], [ %i.dx, %.lr.ph168 ] ; 5 uses
  %niter237 = phi i64 [ 0, %.lr.ph168.preheader.new ], [ %niter237.next.3, %.lr.ph168 ]
  %i.dh = trunc i32 %.1166 to i16
  %i.di = getelementptr inbounds nuw i8, ptr %.059164, i64 2
  %i.dj = tail call i16 @llvm.bswap.i16(i16 %i.dh)
  store i16 %i.dj, ptr %.059164, align 1, !tbaa !97
  %i.dk = getelementptr i8, ptr %.058165, i64 4
  %.058.val = load i32, ptr %i.dk, align 4, !tbaa !68
  %i.dl = add i32 %.058.val, %.1166               ; 2 uses
  %i.dm = trunc i32 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %.059164, i64 4
  %i.do = tail call i16 @llvm.bswap.i16(i16 %i.dm)
  store i16 %i.do, ptr %i.di, align 1, !tbaa !97
  %i.dp = getelementptr i8, ptr %.058165, i64 20
  %.058.val.1 = load i32, ptr %i.dp, align 4, !tbaa !68
  %i.dq = add i32 %.058.val.1, %i.dl              ; 2 uses
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %.059164, i64 6
  %i.dt = tail call i16 @llvm.bswap.i16(i16 %i.dr)
  store i16 %i.dt, ptr %i.dn, align 1, !tbaa !97
  %i.du = getelementptr i8, ptr %.058165, i64 36
  %.058.val.2 = load i32, ptr %i.du, align 4, !tbaa !68
  %i.dv = add i32 %.058.val.2, %i.dq              ; 2 uses
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %.059164, i64 8 ; 3 uses
  %i.dy = tail call i16 @llvm.bswap.i16(i16 %i.dw)
  store i16 %i.dy, ptr %i.ds, align 1, !tbaa !97
  %i.dz = getelementptr i8, ptr %.058165, i64 52
  %.058.val.3 = load i32, ptr %i.dz, align 4, !tbaa !68
  %i.ea = add i32 %.058.val.3, %i.dv              ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.058165, i64 64 ; 2 uses
  %niter237.next.3 = add i64 %niter237, 4         ; 2 uses
  %niter237.ncmp.3 = icmp eq i64 %niter237.next.3, %unroll_iter236
  br i1 %niter237.ncmp.3, label %._crit_edge169.loopexit.unr-lcssa, label %.lr.ph168

bb.p:                                             ; preds = %bb.m
  %i.ec = shl i64 %3, 4
  %.idx181 = and i64 %i.ec, 68719476720           ; 2 uses
  %.not66152 = icmp samesign eq i64 %.idx181, 0
  br i1 %.not66152, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %bb.p
  %i.ed = add nsw i64 %.idx181, -16               ; 2 uses
  %i.ee = lshr exact i64 %i.ed, 4
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 3 uses
  %i.eg = icmp eq i64 %i.ed, 0
  br i1 %i.eg, label %.lr.ph158.epil.preheader, label %.lr.ph158.preheader.new

.lr.ph158.preheader.new:                          ; preds = %.lr.ph158.preheader
  %unroll_iter228 = and i64 %i.ef, 2305843009213693950
  br label %.lr.ph158

._crit_edge159.loopexit.unr-lcssa:                ; preds = %.lr.ph158
  %6 = trunc i64 %i.ef to i1
  br i1 %6, label %.lr.ph158.epil.preheader, label %._crit_edge159

.lr.ph158.epil.preheader:                         ; preds = %._crit_edge159.loopexit.unr-lcssa, %.lr.ph158.preheader
  %.056156.epil.init = phi ptr [ %i.z, %.lr.ph158.preheader ], [ %.056.1, %._crit_edge159.loopexit.unr-lcssa ] ; 3 uses
  %.055155.epil.init = phi ptr [ %2, %.lr.ph158.preheader ], [ %i.fh, %._crit_edge159.loopexit.unr-lcssa ]
  %.pn154.epil.init = phi ptr [ %0, %.lr.ph158.preheader ], [ %.056, %._crit_edge159.loopexit.unr-lcssa ] ; 2 uses
  %.2153.epil.init = phi i32 [ 1, %.lr.ph158.preheader ], [ %i.fg, %._crit_edge159.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod227 = trunc i64 %i.ef to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.eh = lshr i32 %.2153.epil.init, 16
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = lshr i32 %.2153.epil.init, 8
  %i.ek = trunc i32 %i.ej to i8
  %i.el = trunc i32 %.2153.epil.init to i8
  store i8 %i.ei, ptr %.056156.epil.init, align 1
  %.sroa.4.0..sroa_idx.i84.epil = getelementptr inbounds nuw i8, ptr %.pn154.epil.init, i64 4
  store i8 %i.ek, ptr %.sroa.4.0..sroa_idx.i84.epil, align 1
  %.sroa.5.0..sroa_idx.i85.epil = getelementptr inbounds nuw i8, ptr %.pn154.epil.init, i64 5
  store i8 %i.el, ptr %.sroa.5.0..sroa_idx.i85.epil, align 1, !tbaa !97
  %i.em = getelementptr i8, ptr %.055155.epil.init, i64 4
  %.055.val.epil = load i32, ptr %i.em, align 4, !tbaa !68
  %i.en = add i32 %.055.val.epil, %.2153.epil.init
  %.056.epil = getelementptr inbounds nuw i8, ptr %.056156.epil.init, i64 3
  br label %._crit_edge159

._crit_edge159:                                   ; preds = %.lr.ph158.epil.preheader, %._crit_edge159.loopexit.unr-lcssa, %bb.p
  %.2.lcssa = phi i32 [ 1, %bb.p ], [ %i.fg, %._crit_edge159.loopexit.unr-lcssa ], [ %i.en, %.lr.ph158.epil.preheader ] ; 3 uses
  %.pn.lcssa = phi ptr [ %0, %bb.p ], [ %.056, %._crit_edge159.loopexit.unr-lcssa ], [ %.056156.epil.init, %.lr.ph158.epil.preheader ] ; 2 uses
  %.056.lcssa = phi ptr [ %i.z, %bb.p ], [ %.056.1, %._crit_edge159.loopexit.unr-lcssa ], [ %.056.epil, %.lr.ph158.epil.preheader ]
  %i.eo = lshr i32 %.2.lcssa, 16
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = lshr i32 %.2.lcssa, 8
  %i.er = trunc i32 %i.eq to i8
  %i.es = trunc i32 %.2.lcssa to i8
  store i8 %i.ep, ptr %.056.lcssa, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 4
  store i8 %i.er, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 5
  store i8 %i.es, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !97
  br label %select.unfold

.lr.ph158:                                        ; preds = %.lr.ph158, %.lr.ph158.preheader.new
  %.056156 = phi ptr [ %i.z, %.lr.ph158.preheader.new ], [ %.056.1, %.lr.ph158 ] ; 5 uses
  %.055155 = phi ptr [ %2, %.lr.ph158.preheader.new ], [ %i.fh, %.lr.ph158 ] ; 3 uses
  %.pn154 = phi ptr [ %0, %.lr.ph158.preheader.new ], [ %.056, %.lr.ph158 ] ; 2 uses
  %.2153 = phi i32 [ 1, %.lr.ph158.preheader.new ], [ %i.fg, %.lr.ph158 ] ; 4 uses
  %niter229 = phi i64 [ 0, %.lr.ph158.preheader.new ], [ %niter229.next.1, %.lr.ph158 ]
  %i.et = lshr i32 %.2153, 16
  %i.eu = trunc i32 %i.et to i8
  %i.ev = lshr i32 %.2153, 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = trunc i32 %.2153 to i8
  store i8 %i.eu, ptr %.056156, align 1
  %.sroa.4.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %.pn154, i64 4
  store i8 %i.ew, ptr %.sroa.4.0..sroa_idx.i84, align 1
  %.sroa.5.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.pn154, i64 5
  store i8 %i.ex, ptr %.sroa.5.0..sroa_idx.i85, align 1, !tbaa !97
  %i.ey = getelementptr i8, ptr %.055155, i64 4
  %.055.val = load i32, ptr %i.ey, align 4, !tbaa !68
  %i.ez = add i32 %.055.val, %.2153               ; 4 uses
  %.056 = getelementptr inbounds nuw i8, ptr %.056156, i64 3 ; 4 uses
  %i.fa = lshr i32 %i.ez, 16
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = lshr i32 %i.ez, 8
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = trunc i32 %i.ez to i8
  store i8 %i.fb, ptr %.056, align 1
  %.sroa.4.0..sroa_idx.i84.1 = getelementptr inbounds nuw i8, ptr %.056156, i64 4
  store i8 %i.fd, ptr %.sroa.4.0..sroa_idx.i84.1, align 1
  %.sroa.5.0..sroa_idx.i85.1 = getelementptr inbounds nuw i8, ptr %.056156, i64 5
  store i8 %i.fe, ptr %.sroa.5.0..sroa_idx.i85.1, align 1, !tbaa !97
  %i.ff = getelementptr i8, ptr %.055155, i64 20
  %.055.val.1 = load i32, ptr %i.ff, align 4, !tbaa !68
  %i.fg = add i32 %.055.val.1, %i.ez              ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.055155, i64 32 ; 2 uses
  %.056.1 = getelementptr inbounds nuw i8, ptr %.056156, i64 6 ; 3 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %._crit_edge159.loopexit.unr-lcssa, label %.lr.ph158

bb.q:                                             ; preds = %bb.m
  %i.fi = shl i64 %3, 4
  %.idx = and i64 %i.fi, 68719476720              ; 2 uses
  %.not65146 = icmp samesign eq i64 %.idx, 0
  br i1 %.not65146, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.fj = add nsw i64 %.idx, -16                  ; 2 uses
  %i.fk = lshr exact i64 %i.fj, 4
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %xtraiter = and i64 %i.fl, 3                    ; 3 uses
  %i.fm = icmp ult i64 %i.fj, 48
  br i1 %i.fm, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fl, 2305843009213693948
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.053149.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.gj, %._crit_edge.loopexit.unr-lcssa ]
  %.054148.epil.init = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.gf, %._crit_edge.loopexit.unr-lcssa ]
  %.3147.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.gi, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod220 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.053149.epil = phi ptr [ %i.fr, %.lr.ph.epil ], [ %.053149.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.054148.epil = phi ptr [ %i.fn, %.lr.ph.epil ], [ %.054148.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.3147.epil = phi i32 [ %i.fq, %.lr.ph.epil ], [ %.3147.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.054148.epil, i64 4 ; 2 uses
  %i.fo = tail call i32 @llvm.bswap.i32(i32 %.3147.epil)
  store i32 %i.fo, ptr %.054148.epil, align 1, !tbaa !97
  %i.fp = getelementptr i8, ptr %.053149.epil, i64 4
  %.053.val.epil = load i32, ptr %i.fp, align 4, !tbaa !68
  %i.fq = add i32 %.053.val.epil, %.3147.epil     ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.053149.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !798

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa217 = phi ptr [ %i.gf, %._crit_edge.loopexit.unr-lcssa ], [ %i.fn, %.lr.ph.epil ]
  %.lcssa216 = phi i32 [ %i.gi, %._crit_edge.loopexit.unr-lcssa ], [ %i.fq, %.lr.ph.epil ]
  %i.fs = tail call i32 @llvm.bswap.i32(i32 %.lcssa216)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %.3.lcssa = phi i32 [ 16777216, %bb.q ], [ %i.fs, %._crit_edge.loopexit ]
  %.054.lcssa = phi ptr [ %i.z, %bb.q ], [ %.lcssa217, %._crit_edge.loopexit ]
  store i32 %.3.lcssa, ptr %.054.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.053149 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.gj, %.lr.ph ] ; 5 uses
  %.054148 = phi ptr [ %i.z, %.lr.ph.preheader.new ], [ %i.gf, %.lr.ph ] ; 5 uses
  %.3147 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.gi, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.054148, i64 4
  %i.fu = tail call i32 @llvm.bswap.i32(i32 %.3147)
  store i32 %i.fu, ptr %.054148, align 1, !tbaa !97
  %i.fv = getelementptr i8, ptr %.053149, i64 4
  %.053.val = load i32, ptr %i.fv, align 4, !tbaa !68
  %i.fw = add i32 %.053.val, %.3147               ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.054148, i64 8
  %i.fy = tail call i32 @llvm.bswap.i32(i32 %i.fw)
  store i32 %i.fy, ptr %i.ft, align 1, !tbaa !97
  %i.fz = getelementptr i8, ptr %.053149, i64 20
  %.053.val.1 = load i32, ptr %i.fz, align 4, !tbaa !68
  %i.ga = add i32 %.053.val.1, %i.fw              ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.054148, i64 12
  %i.gc = tail call i32 @llvm.bswap.i32(i32 %i.ga)
  store i32 %i.gc, ptr %i.fx, align 1, !tbaa !97
  %i.gd = getelementptr i8, ptr %.053149, i64 36
  %.053.val.2 = load i32, ptr %i.gd, align 4, !tbaa !68
  %i.ge = add i32 %.053.val.2, %i.ga              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.054148, i64 16 ; 3 uses
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.ge)
  store i32 %i.gg, ptr %i.gb, align 1, !tbaa !97
  %i.gh = getelementptr i8, ptr %.053149, i64 52
  %.053.val.3 = load i32, ptr %i.gh, align 4, !tbaa !68
  %i.gi = add i32 %.053.val.3, %i.ge              ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.053149, i64 64 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

select.unfold:                                    ; preds = %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit, %.critedge.i, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i, %._crit_edge178, %._crit_edge169, %._crit_edge159, %._crit_edge, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, %.critedge.i.i.i.i, %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, %.critedge.i.i.i, %bb.a
  %.0 = phi i1 [ true, %._crit_edge178 ], [ true, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %bb.f ], [ false, %.critedge.i.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ true, %bb.m ], [ true, %._crit_edge ], [ true, %._crit_edge159 ], [ true, %._crit_edge169 ], [ false, %.critedge.i ], [ false, %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF15op_serializer_t10copy_opstrEP22hb_serialize_context_tRKNS_8op_str_tE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(13) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !131   ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !81
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp slt i64 %i.l, %i.c
  br i1 %i.m, label %.critedge.i, label %bb.c, !prof !86

.critedge.i:                                      ; preds = %bb.b
  store i32 4, ptr %i.d, align 4, !tbaa !81
end_hunk_4
begin_hunk_5_@_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS9_jj:bb.a

._crit_edge174.loopexit.unr-lcssa:                ; preds = %.lr.ph173
  %lcmp.mod236.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod236.not, label %._crit_edge174.loopexit, label %.lr.ph173.epil.preheader

.lr.ph173.epil.preheader:                         ; preds = %._crit_edge174.loopexit.unr-lcssa, %.lr.ph173.preheader
  %.057171.epil.init = phi i32 [ 1, %.lr.ph173.preheader ], [ %i.cz, %._crit_edge174.loopexit.unr-lcssa ]
  %.060170.epil.init = phi ptr [ %i.z, %.lr.ph173.preheader ], [ %i.cx, %._crit_edge174.loopexit.unr-lcssa ]
  %.061169.epil.init = phi ptr [ %2, %.lr.ph173.preheader ], [ %i.da, %._crit_edge174.loopexit.unr-lcssa ]
  %lcmp.mod239 = icmp ne i64 %xtraiter234, 0
  tail call void @llvm.assume(i1 %lcmp.mod239)
  br label %.lr.ph173.epil

.lr.ph173.epil:                                   ; preds = %.lr.ph173.epil, %.lr.ph173.epil.preheader
  %.057171.epil = phi i32 [ %i.bk, %.lr.ph173.epil ], [ %.057171.epil.init, %.lr.ph173.epil.preheader ] ; 2 uses
  %.060170.epil = phi ptr [ %i.bi, %.lr.ph173.epil ], [ %.060170.epil.init, %.lr.ph173.epil.preheader ] ; 2 uses
  %.061169.epil = phi ptr [ %i.bl, %.lr.ph173.epil ], [ %.061169.epil.init, %.lr.ph173.epil.preheader ] ; 2 uses
  %epil.iter235 = phi i64 [ %epil.iter235.next, %.lr.ph173.epil ], [ 0, %.lr.ph173.epil.preheader ]
  %i.bh = trunc i32 %.057171.epil to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.060170.epil, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.060170.epil, align 1, !tbaa !97
  %i.bj = load i32, ptr %.061169.epil, align 4, !tbaa !116
  %i.bk = add i32 %i.bj, %.057171.epil            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.061169.epil, i64 4
  %epil.iter235.next = add i64 %epil.iter235, 1   ; 2 uses
  %epil.iter235.cmp.not = icmp eq i64 %epil.iter235.next, %xtraiter234
  br i1 %epil.iter235.cmp.not, label %._crit_edge174.loopexit, label %.lr.ph173.epil, !llvm.loop !806

._crit_edge174.loopexit:                          ; preds = %.lr.ph173.epil, %._crit_edge174.loopexit.unr-lcssa
  %.lcssa207 = phi ptr [ %i.cx, %._crit_edge174.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph173.epil ]
  %.lcssa = phi i32 [ %i.cz, %._crit_edge174.loopexit.unr-lcssa ], [ %i.bk, %.lr.ph173.epil ]
  %i.bm = trunc i32 %.lcssa to i8
  br label %._crit_edge174

._crit_edge174:                                   ; preds = %._crit_edge174.loopexit, %bb.n
  %.060.lcssa = phi ptr [ %i.z, %bb.n ], [ %.lcssa207, %._crit_edge174.loopexit ]
  %.057.lcssa = phi i8 [ 1, %bb.n ], [ %i.bm, %._crit_edge174.loopexit ]
  store i8 %.057.lcssa, ptr %.060.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph173:                                        ; preds = %.lr.ph173, %.lr.ph173.preheader.new
  %.057171 = phi i32 [ 1, %.lr.ph173.preheader.new ], [ %i.cz, %.lr.ph173 ] ; 2 uses
  %.060170 = phi ptr [ %i.z, %.lr.ph173.preheader.new ], [ %i.cx, %.lr.ph173 ] ; 9 uses
  %.061169 = phi ptr [ %2, %.lr.ph173.preheader.new ], [ %i.da, %.lr.ph173 ] ; 9 uses
  %niter241 = phi i64 [ 0, %.lr.ph173.preheader.new ], [ %niter241.next.7, %.lr.ph173 ]
  %i.bn = trunc i32 %.057171 to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.060170, i64 1
  store i8 %i.bn, ptr %.060170, align 1, !tbaa !97
  %i.bp = load i32, ptr %.061169, align 4, !tbaa !116
  %i.bq = add i32 %i.bp, %.057171                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.061169, i64 4
  %i.bs = trunc i32 %i.bq to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.060170, i64 2
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !97
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !116
  %i.bv = add i32 %i.bu, %i.bq                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.061169, i64 8
  %i.bx = trunc i32 %i.bv to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.060170, i64 3
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !97
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !116
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.061169, i64 12
  %i.cc = trunc i32 %i.ca to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.060170, i64 4
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !97
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !116
  %i.cf = add i32 %i.ce, %i.ca                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.061169, i64 16
  %i.ch = trunc i32 %i.cf to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.060170, i64 5
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !97
  %i.cj = load i32, ptr %i.cg, align 4, !tbaa !116
  %i.ck = add i32 %i.cj, %i.cf                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.061169, i64 20
  %i.cm = trunc i32 %i.ck to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.060170, i64 6
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !97
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !116
  %i.cp = add i32 %i.co, %i.ck                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.061169, i64 24
  %i.cr = trunc i32 %i.cp to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %.060170, i64 7
  store i8 %i.cr, ptr %i.cn, align 1, !tbaa !97
  %i.ct = load i32, ptr %i.cq, align 4, !tbaa !116
  %i.cu = add i32 %i.ct, %i.cp                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.061169, i64 28
  %i.cw = trunc i32 %i.cu to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.060170, i64 8 ; 3 uses
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !97
  %i.cy = load i32, ptr %i.cv, align 4, !tbaa !116
  %i.cz = add i32 %i.cy, %i.cu                    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.061169, i64 32 ; 2 uses
  %niter241.next.7 = add i64 %niter241, 8         ; 2 uses
  %niter241.ncmp.7 = icmp eq i64 %niter241.next.7, %unroll_iter240
  br i1 %niter241.ncmp.7, label %._crit_edge174.loopexit.unr-lcssa, label %.lr.ph173

bb.o:                                             ; preds = %bb.m
  %i.db = shl i64 %3, 2
  %.idx178 = and i64 %i.db, 17179869180           ; 2 uses
  %.not67159 = icmp samesign eq i64 %.idx178, 0
  br i1 %.not67159, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %bb.o
  %i.dc = add nsw i64 %.idx178, -4                ; 2 uses
  %i.dd = lshr exact i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %xtraiter226 = and i64 %i.de, 3                 ; 3 uses
  %i.df = icmp ult i64 %i.dc, 12
  br i1 %i.df, label %.lr.ph164.epil.preheader, label %.lr.ph164.preheader.new

.lr.ph164.preheader.new:                          ; preds = %.lr.ph164.preheader
  %unroll_iter232 = and i64 %i.de, 9223372036854775804
  br label %.lr.ph164

._crit_edge165.loopexit.unr-lcssa:                ; preds = %.lr.ph164
  %lcmp.mod228.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod228.not, label %._crit_edge165.loopexit, label %.lr.ph164.epil.preheader

.lr.ph164.epil.preheader:                         ; preds = %._crit_edge165.loopexit.unr-lcssa, %.lr.ph164.preheader
  %.1162.epil.init = phi i32 [ 1, %.lr.ph164.preheader ], [ %i.ek, %._crit_edge165.loopexit.unr-lcssa ]
  %.058161.epil.init = phi ptr [ %2, %.lr.ph164.preheader ], [ %i.el, %._crit_edge165.loopexit.unr-lcssa ]
  %.059160.epil.init = phi ptr [ %i.z, %.lr.ph164.preheader ], [ %i.eh, %._crit_edge165.loopexit.unr-lcssa ]
  %lcmp.mod231 = icmp ne i64 %xtraiter226, 0
  tail call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph164.epil

.lr.ph164.epil:                                   ; preds = %.lr.ph164.epil, %.lr.ph164.epil.preheader
  %.1162.epil = phi i32 [ %i.dk, %.lr.ph164.epil ], [ %.1162.epil.init, %.lr.ph164.epil.preheader ] ; 2 uses
  %.058161.epil = phi ptr [ %i.dl, %.lr.ph164.epil ], [ %.058161.epil.init, %.lr.ph164.epil.preheader ] ; 2 uses
  %.059160.epil = phi ptr [ %i.dh, %.lr.ph164.epil ], [ %.059160.epil.init, %.lr.ph164.epil.preheader ] ; 2 uses
  %epil.iter227 = phi i64 [ %epil.iter227.next, %.lr.ph164.epil ], [ 0, %.lr.ph164.epil.preheader ]
  %i.dg = trunc i32 %.1162.epil to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %.059160.epil, i64 2 ; 2 uses
  %i.di = tail call i16 @llvm.bswap.i16(i16 %i.dg)
  store i16 %i.di, ptr %.059160.epil, align 1, !tbaa !97
  %i.dj = load i32, ptr %.058161.epil, align 4, !tbaa !116
  %i.dk = add i32 %i.dj, %.1162.epil              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.058161.epil, i64 4
  %epil.iter227.next = add i64 %epil.iter227, 1   ; 2 uses
  %epil.iter227.cmp.not = icmp eq i64 %epil.iter227.next, %xtraiter226
  br i1 %epil.iter227.cmp.not, label %._crit_edge165.loopexit, label %.lr.ph164.epil, !llvm.loop !807

._crit_edge165.loopexit:                          ; preds = %.lr.ph164.epil, %._crit_edge165.loopexit.unr-lcssa
  %.lcssa209 = phi ptr [ %i.eh, %._crit_edge165.loopexit.unr-lcssa ], [ %i.dh, %.lr.ph164.epil ]
  %.lcssa208 = phi i32 [ %i.ek, %._crit_edge165.loopexit.unr-lcssa ], [ %i.dk, %.lr.ph164.epil ]
  %i.dm = trunc i32 %.lcssa208 to i16
  %i.dn = tail call i16 @llvm.bswap.i16(i16 %i.dm)
  br label %._crit_edge165

._crit_edge165:                                   ; preds = %._crit_edge165.loopexit, %bb.o
  %.059.lcssa = phi ptr [ %i.z, %bb.o ], [ %.lcssa209, %._crit_edge165.loopexit ]
  %.1.lcssa = phi i16 [ 256, %bb.o ], [ %i.dn, %._crit_edge165.loopexit ]
  store i16 %.1.lcssa, ptr %.059.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph164:                                        ; preds = %.lr.ph164, %.lr.ph164.preheader.new
  %.1162 = phi i32 [ 1, %.lr.ph164.preheader.new ], [ %i.ek, %.lr.ph164 ] ; 2 uses
  %.058161 = phi ptr [ %2, %.lr.ph164.preheader.new ], [ %i.el, %.lr.ph164 ] ; 5 uses
  %.059160 = phi ptr [ %i.z, %.lr.ph164.preheader.new ], [ %i.eh, %.lr.ph164 ] ; 5 uses
  %niter233 = phi i64 [ 0, %.lr.ph164.preheader.new ], [ %niter233.next.3, %.lr.ph164 ]
  %i.do = trunc i32 %.1162 to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %.059160, i64 2
  %i.dq = tail call i16 @llvm.bswap.i16(i16 %i.do)
  store i16 %i.dq, ptr %.059160, align 1, !tbaa !97
  %i.dr = load i32, ptr %.058161, align 4, !tbaa !116
  %i.ds = add i32 %i.dr, %.1162                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.058161, i64 4
  %i.du = trunc i32 %i.ds to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %.059160, i64 4
  %i.dw = tail call i16 @llvm.bswap.i16(i16 %i.du)
  store i16 %i.dw, ptr %i.dp, align 1, !tbaa !97
  %i.dx = load i32, ptr %i.dt, align 4, !tbaa !116
  %i.dy = add i32 %i.dx, %i.ds                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.058161, i64 8
  %i.ea = trunc i32 %i.dy to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %.059160, i64 6
  %i.ec = tail call i16 @llvm.bswap.i16(i16 %i.ea)
  store i16 %i.ec, ptr %i.dv, align 1, !tbaa !97
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !116
  %i.ee = add i32 %i.ed, %i.dy                    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.058161, i64 12
  %i.eg = trunc i32 %i.ee to i16
  %i.eh = getelementptr inbounds nuw i8, ptr %.059160, i64 8 ; 3 uses
  %i.ei = tail call i16 @llvm.bswap.i16(i16 %i.eg)
  store i16 %i.ei, ptr %i.eb, align 1, !tbaa !97
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !116
  %i.ek = add i32 %i.ej, %i.ee                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.058161, i64 16 ; 2 uses
  %niter233.next.3 = add i64 %niter233, 4         ; 2 uses
  %niter233.ncmp.3 = icmp eq i64 %niter233.next.3, %unroll_iter232
  br i1 %niter233.ncmp.3, label %._crit_edge165.loopexit.unr-lcssa, label %.lr.ph164

bb.p:                                             ; preds = %bb.m
  %i.em = shl i64 %3, 2
  %.idx177 = and i64 %i.em, 17179869180           ; 2 uses
  %.not66148 = icmp samesign eq i64 %.idx177, 0
  br i1 %.not66148, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %bb.p
  %i.en = add nsw i64 %.idx177, -4                ; 2 uses
  %i.eo = lshr exact i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 3 uses
  %i.eq = icmp eq i64 %i.en, 0
  br i1 %i.eq, label %.lr.ph154.epil.preheader, label %.lr.ph154.preheader.new

.lr.ph154.preheader.new:                          ; preds = %.lr.ph154.preheader
  %unroll_iter224 = and i64 %i.ep, 9223372036854775806
  br label %.lr.ph154

._crit_edge155.loopexit.unr-lcssa:                ; preds = %.lr.ph154
  %6 = trunc i64 %i.ep to i1
  br i1 %6, label %.lr.ph154.epil.preheader, label %._crit_edge155

.lr.ph154.epil.preheader:                         ; preds = %._crit_edge155.loopexit.unr-lcssa, %.lr.ph154.preheader
  %.056152.epil.init = phi ptr [ %i.z, %.lr.ph154.preheader ], [ %.056.1, %._crit_edge155.loopexit.unr-lcssa ] ; 3 uses
  %.055151.epil.init = phi ptr [ %2, %.lr.ph154.preheader ], [ %i.fs, %._crit_edge155.loopexit.unr-lcssa ]
  %.pn150.epil.init = phi ptr [ %0, %.lr.ph154.preheader ], [ %.056, %._crit_edge155.loopexit.unr-lcssa ] ; 2 uses
  %.2149.epil.init = phi i32 [ 1, %.lr.ph154.preheader ], [ %i.fr, %._crit_edge155.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod223 = trunc i64 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.er = lshr i32 %.2149.epil.init, 16
  %i.es = trunc i32 %i.er to i8
  %i.et = lshr i32 %.2149.epil.init, 8
  %i.eu = trunc i32 %i.et to i8
  %i.ev = trunc i32 %.2149.epil.init to i8
  store i8 %i.es, ptr %.056152.epil.init, align 1
  %.sroa.4.0..sroa_idx.i80.epil = getelementptr inbounds nuw i8, ptr %.pn150.epil.init, i64 4
  store i8 %i.eu, ptr %.sroa.4.0..sroa_idx.i80.epil, align 1
  %.sroa.5.0..sroa_idx.i81.epil = getelementptr inbounds nuw i8, ptr %.pn150.epil.init, i64 5
  store i8 %i.ev, ptr %.sroa.5.0..sroa_idx.i81.epil, align 1, !tbaa !97
  %i.ew = load i32, ptr %.055151.epil.init, align 4, !tbaa !116
  %i.ex = add i32 %i.ew, %.2149.epil.init
  %.056.epil = getelementptr inbounds nuw i8, ptr %.056152.epil.init, i64 3
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %.lr.ph154.epil.preheader, %._crit_edge155.loopexit.unr-lcssa, %bb.p
  %.2.lcssa = phi i32 [ 1, %bb.p ], [ %i.fr, %._crit_edge155.loopexit.unr-lcssa ], [ %i.ex, %.lr.ph154.epil.preheader ] ; 3 uses
  %.pn.lcssa = phi ptr [ %0, %bb.p ], [ %.056, %._crit_edge155.loopexit.unr-lcssa ], [ %.056152.epil.init, %.lr.ph154.epil.preheader ] ; 2 uses
  %.056.lcssa = phi ptr [ %i.z, %bb.p ], [ %.056.1, %._crit_edge155.loopexit.unr-lcssa ], [ %.056.epil, %.lr.ph154.epil.preheader ]
  %i.ey = lshr i32 %.2.lcssa, 16
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = lshr i32 %.2.lcssa, 8
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = trunc i32 %.2.lcssa to i8
  store i8 %i.ez, ptr %.056.lcssa, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 4
  store i8 %i.fb, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 5
  store i8 %i.fc, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !97
  br label %select.unfold

.lr.ph154:                                        ; preds = %.lr.ph154, %.lr.ph154.preheader.new
  %.056152 = phi ptr [ %i.z, %.lr.ph154.preheader.new ], [ %.056.1, %.lr.ph154 ] ; 5 uses
  %.055151 = phi ptr [ %2, %.lr.ph154.preheader.new ], [ %i.fs, %.lr.ph154 ] ; 3 uses
  %.pn150 = phi ptr [ %0, %.lr.ph154.preheader.new ], [ %.056, %.lr.ph154 ] ; 2 uses
  %.2149 = phi i32 [ 1, %.lr.ph154.preheader.new ], [ %i.fr, %.lr.ph154 ] ; 4 uses
  %niter225 = phi i64 [ 0, %.lr.ph154.preheader.new ], [ %niter225.next.1, %.lr.ph154 ]
  %i.fd = lshr i32 %.2149, 16
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = lshr i32 %.2149, 8
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = trunc i32 %.2149 to i8
  store i8 %i.fe, ptr %.056152, align 1
  %.sroa.4.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %.pn150, i64 4
  store i8 %i.fg, ptr %.sroa.4.0..sroa_idx.i80, align 1
  %.sroa.5.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %.pn150, i64 5
  store i8 %i.fh, ptr %.sroa.5.0..sroa_idx.i81, align 1, !tbaa !97
  %i.fi = load i32, ptr %.055151, align 4, !tbaa !116
  %i.fj = add i32 %i.fi, %.2149                   ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.055151, i64 4
  %.056 = getelementptr inbounds nuw i8, ptr %.056152, i64 3 ; 4 uses
  %i.fl = lshr i32 %i.fj, 16
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = lshr i32 %i.fj, 8
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = trunc i32 %i.fj to i8
  store i8 %i.fm, ptr %.056, align 1
  %.sroa.4.0..sroa_idx.i80.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 4
  store i8 %i.fo, ptr %.sroa.4.0..sroa_idx.i80.1, align 1
  %.sroa.5.0..sroa_idx.i81.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 5
  store i8 %i.fp, ptr %.sroa.5.0..sroa_idx.i81.1, align 1, !tbaa !97
  %i.fq = load i32, ptr %i.fk, align 4, !tbaa !116
  %i.fr = add i32 %i.fq, %i.fj                    ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.055151, i64 8 ; 2 uses
  %.056.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 6 ; 3 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1 = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1, label %._crit_edge155.loopexit.unr-lcssa, label %.lr.ph154

bb.q:                                             ; preds = %bb.m
  %i.ft = shl i64 %3, 2
  %.idx = and i64 %i.ft, 17179869180              ; 2 uses
  %.not65142 = icmp samesign eq i64 %.idx, 0
  br i1 %.not65142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.fu = add nsw i64 %.idx, -4                   ; 2 uses
  %i.fv = lshr exact i64 %i.fu, 2
  %i.fw = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %xtraiter = and i64 %i.fw, 3                    ; 3 uses
  %i.fx = icmp ult i64 %i.fu, 12
  br i1 %i.fx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fw, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.053145.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.gx, %._crit_edge.loopexit.unr-lcssa ]
  %.054144.epil.init = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.gt, %._crit_edge.loopexit.unr-lcssa ]
  %.3143.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.gw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.053145.epil = phi ptr [ %i.gc, %.lr.ph.epil ], [ %.053145.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.054144.epil = phi ptr [ %i.fy, %.lr.ph.epil ], [ %.054144.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.3143.epil = phi i32 [ %i.gb, %.lr.ph.epil ], [ %.3143.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.054144.epil, i64 4 ; 2 uses
  %i.fz = tail call i32 @llvm.bswap.i32(i32 %.3143.epil)
  store i32 %i.fz, ptr %.054144.epil, align 1, !tbaa !97
  %i.ga = load i32, ptr %.053145.epil, align 4, !tbaa !116
  %i.gb = add i32 %i.ga, %.3143.epil              ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.053145.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !808

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa213 = phi ptr [ %i.gt, %._crit_edge.loopexit.unr-lcssa ], [ %i.fy, %.lr.ph.epil ]
  %.lcssa212 = phi i32 [ %i.gw, %._crit_edge.loopexit.unr-lcssa ], [ %i.gb, %.lr.ph.epil ]
  %i.gd = tail call i32 @llvm.bswap.i32(i32 %.lcssa212)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %.3.lcssa = phi i32 [ 16777216, %bb.q ], [ %i.gd, %._crit_edge.loopexit ]
  %.054.lcssa = phi ptr [ %i.z, %bb.q ], [ %.lcssa213, %._crit_edge.loopexit ]
  store i32 %.3.lcssa, ptr %.054.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.053145 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.gx, %.lr.ph ] ; 5 uses
  %.054144 = phi ptr [ %i.z, %.lr.ph.preheader.new ], [ %i.gt, %.lr.ph ] ; 5 uses
  %.3143 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.gw, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.054144, i64 4
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %.3143)
  store i32 %i.gf, ptr %.054144, align 1, !tbaa !97
  %i.gg = load i32, ptr %.053145, align 4, !tbaa !116
  %i.gh = add i32 %i.gg, %.3143                   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.053145, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.054144, i64 8
  %i.gk = tail call i32 @llvm.bswap.i32(i32 %i.gh)
  store i32 %i.gk, ptr %i.ge, align 1, !tbaa !97
  %i.gl = load i32, ptr %i.gi, align 4, !tbaa !116
  %i.gm = add i32 %i.gl, %i.gh                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.053145, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.054144, i64 12
  %i.gp = tail call i32 @llvm.bswap.i32(i32 %i.gm)
  store i32 %i.gp, ptr %i.gj, align 1, !tbaa !97
  %i.gq = load i32, ptr %i.gn, align 4, !tbaa !116
  %i.gr = add i32 %i.gq, %i.gm                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.053145, i64 12
  %i.gt = getelementptr inbounds nuw i8, ptr %.054144, i64 16 ; 3 uses
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gr)
  store i32 %i.gu, ptr %i.go, align 1, !tbaa !97
  %i.gv = load i32, ptr %i.gs, align 4, !tbaa !116
  %i.gw = add i32 %i.gv, %i.gr                    ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.053145, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

select.unfold:                                    ; preds = %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit, %.critedge.i, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i, %._crit_edge174, %._crit_edge165, %._crit_edge155, %._crit_edge, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, %.critedge.i.i.i.i, %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, %.critedge.i.i.i, %bb.a
  %.0 = phi i1 [ true, %._crit_edge174 ], [ true, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %bb.f ], [ false, %.critedge.i.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ true, %bb.m ], [ true, %._crit_edge ], [ true, %._crit_edge155 ], [ true, %._crit_edge165 ], [ false, %.critedge.i ], [ false, %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9hb_sink_tIR11hb_vector_tIjLb0EEEclI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEESB_EZNS8_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS9_S9_SC_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRSA_SQ_EE_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSZ_6item_tEEE5valueEvE4typeELSW_0EEEvSZ_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef byval(%struct.hb_map_iter_t.214) align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !453 ; 2 uses
  %.promoted31 = load i32, ptr %i.b, align 8      ; 2 uses
  %i.c = icmp ne i32 %.promoted, 0
  %i.d = icmp ne i32 %.promoted31, 0
  %i.e = select i1 %i.c, i1 %i.d, i1 false
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted33 = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr @_hb_NullPool, align 16
  %.promoted37 = load ptr, ptr %i.g, align 8
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !813 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit
  %i.i = phi ptr [ %.promoted37, %.lr.ph ], [ %i.gs, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit ] ; 4 uses
  %i.j = phi i32 [ %.promoted, %.lr.ph ], [ %i.gp, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit ]
  %i.k = phi i32 [ %.promoted31, %.lr.ph ], [ %i.gr, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit ]
  %i.l = phi ptr [ %.promoted33, %.lr.ph ], [ %i.gq, %_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI10hb_array_tIKN3CFF27cff1_font_dict_values_mod_tEES6_EZNS3_7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeIS4_S4_S7_30cff1_font_dict_op_serializer_tEEbP22hb_serialize_context_tT1_RT2_EUlRK9hb_pair_tIRS5_SL_EE_L24hb_function_sortedness_t0ELPv0EElEppEv.exit ] ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !816, !nonnull !127, !align !322 ; 4 uses
  %i.n = load ptr, ptr %.pre, align 8, !tbaa !451 ; 4 uses
end_hunk_5
