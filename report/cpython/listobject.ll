Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/listobject?download=true
inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@list_sort_impl:bb.a
  %.sink = phi ptr [ %spec.select436, %bb.aa ], [ @unsafe_float_compare, %bb.z ], [ @unsafe_latin_compare, %.split ], [ @unsafe_long_compare, %.split268 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4168
  store ptr %.sink, ptr %i.ch, align 8, !tbaa !65
  br label %.loopexit.thread.sink.split

.loopexit.thread.sink.split:                      ; preds = %.critedge, %bb.l, %.lr.ph330.split.us, %.thread272
  %safe_object_compare.sink = phi ptr [ @unsafe_tuple_compare, %.thread272 ], [ @safe_object_compare, %bb.l ], [ @safe_object_compare, %.lr.ph330.split.us ], [ @safe_object_compare, %.critedge ]
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr %safe_object_compare.sink, ptr %i.ci, align 8, !tbaa !62
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %bb.e, %.split270, %.split269, %.split268, %.split267, %.split, %bb.z, %.loopexit
  %i.cj = phi i1 [ false, %bb.e ], [ false, %.loopexit ], [ true, %.split270 ], [ true, %.split269 ], [ true, %.split268 ], [ true, %.split267 ], [ true, %.split ], [ true, %bb.z ], [ true, %.loopexit.thread.sink.split ]
  %.1151411 = phi ptr [ %i.o, %bb.e ], [ %.1151, %.loopexit ], [ %.1151, %.split270 ], [ %.1151, %.split269 ], [ %.1151, %.split268 ], [ %.1151, %.split267 ], [ %.1151, %.split ], [ %.1151, %bb.z ], [ %.1151, %.loopexit.thread.sink.split ] ; 6 uses
  %.sroa.0.0410 = phi ptr [ %i.o, %bb.e ], [ %.sroa.0.0, %.loopexit ], [ %.sroa.0.0, %.split270 ], [ %.sroa.0.0, %.split269 ], [ %.sroa.0.0, %.split268 ], [ %.sroa.0.0, %.split267 ], [ %.sroa.0.0, %.split ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %.loopexit.thread.sink.split ] ; 2 uses
  %.sroa.23.0409 = phi ptr [ %i.d, %bb.e ], [ %.sroa.23.0, %.loopexit ], [ %.sroa.23.0, %.split270 ], [ %.sroa.23.0, %.split269 ], [ %.sroa.23.0, %.split268 ], [ %.sroa.23.0, %.split267 ], [ %.sroa.23.0, %.split ], [ %.sroa.23.0, %bb.z ], [ %.sroa.23.0, %.loopexit.thread.sink.split ]
  %i.ck = icmp ne ptr %.1151411, null             ; 3 uses
  br i1 %i.ck, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit.thread
  %i.cl = add i64 %.val189, 1                     ; 2 uses
  %i.cm = sdiv i64 %i.cl, 2
  %i.cn = icmp sgt i64 %i.cl, 257
  %spec.select.i = select i1 %i.cn, i64 128, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 2104
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %spec.select.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit.thread
  %spec.select.sink.i = phi i64 [ %spec.select.i, %bb.ab ], [ 256, %.loopexit.thread ]
  %.sink.i = phi ptr [ %i.cp, %bb.ab ], [ null, %.loopexit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %spec.select.sink.i, ptr %i.cq, align 8, !tbaa !66
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sink.i, ptr %i.cr, align 8, !tbaa !67
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 2104 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !68
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  store i32 0, ptr %i.cu, align 8, !tbaa !69
  store i64 7, ptr %3, align 8, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.val189, ptr %i.cv, align 8, !tbaa !113
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sroa.0.0410, ptr %i.cw, align 8, !tbaa !114
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %storemerge24.i = phi i64 [ 0, %bb.ac ], [ %i.cz, %bb.ad ] ; 4 uses
  %i.cx = ashr i64 %.val189, %storemerge24.i
  %i.cy = icmp sgt i64 %i.cx, 63
  %i.cz = add i64 %storemerge24.i, 1
  br i1 %i.cy, label %bb.ad, label %merge_init.exit, !llvm.loop !100

merge_init.exit:                                  ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4184 ; 2 uses
  store i64 %storemerge24.i, ptr %i.da, align 8, !tbaa !115
  %i.db = trunc i64 %storemerge24.i to i32
  %notmask.i = shl nsw i32 -1, %i.db
  %i.dc = xor i32 %notmask.i, -1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 4192 ; 2 uses
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !116
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 4176 ; 3 uses
  store i64 0, ptr %i.df, align 8, !tbaa !117
  %i.dg = icmp slt i64 %.val189, 2
  br i1 %i.dg, label %found_new_run.exit.thread283, label %bb.ae

bb.ae:                                            ; preds = %merge_init.exit
  %.not179 = icmp eq i32 %2, 0
  br i1 %.not179, label %reverse_slice.exit204, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr [8 x i8], ptr %.1151411, i64 %.val189
  %.01011.i = getelementptr i8, ptr %i.dh, i64 -8 ; 2 uses
  %i.di = icmp ult ptr %.1151411, %.01011.i
  %or.cond292 = select i1 %i.ck, i1 %i.di, i1 false
  br i1 %or.cond292, label %.lr.ph.i, label %reverse_slice.exit

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.i
  %.01013.i = phi ptr [ %.010.i, %.lr.ph.i ], [ %.01011.i, %bb.af ] ; 3 uses
  %.012.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.1151411, %bb.af ] ; 3 uses
  %i.dj = load ptr, ptr %.012.i, align 8, !tbaa !54
  %i.dk = load ptr, ptr %.01013.i, align 8, !tbaa !54
  store ptr %i.dk, ptr %.012.i, align 8, !tbaa !54
  store ptr %i.dj, ptr %.01013.i, align 8, !tbaa !54
  %i.dl = getelementptr i8, ptr %.012.i, i64 8    ; 2 uses
  %.010.i = getelementptr i8, ptr %.01013.i, i64 -8 ; 2 uses
  %i.dm = icmp ult ptr %i.dl, %.010.i
  br i1 %i.dm, label %.lr.ph.i, label %reverse_slice.exit, !llvm.loop !1

reverse_slice.exit:                               ; preds = %.lr.ph.i, %bb.af
  %i.dn = getelementptr [8 x i8], ptr %i.d, i64 %.val189
  %.01011.i199 = getelementptr i8, ptr %i.dn, i64 -8 ; 2 uses
  %i.do = icmp ult ptr %i.d, %.01011.i199
  br i1 %i.do, label %.lr.ph.i200, label %reverse_slice.exit204

.lr.ph.i200:                                      ; preds = %reverse_slice.exit, %.lr.ph.i200
  %.01013.i201 = phi ptr [ %.010.i203, %.lr.ph.i200 ], [ %.01011.i199, %reverse_slice.exit ] ; 3 uses
  %.012.i202 = phi ptr [ %i.dr, %.lr.ph.i200 ], [ %i.d, %reverse_slice.exit ] ; 3 uses
  %i.dp = load ptr, ptr %.012.i202, align 8, !tbaa !54
  %i.dq = load ptr, ptr %.01013.i201, align 8, !tbaa !54
  store ptr %i.dq, ptr %.012.i202, align 8, !tbaa !54
  store ptr %i.dp, ptr %.01013.i201, align 8, !tbaa !54
  %i.dr = getelementptr i8, ptr %.012.i202, i64 8 ; 2 uses
  %.010.i203 = getelementptr i8, ptr %.01013.i201, i64 -8 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %.010.i203
  br i1 %i.ds, label %.lr.ph.i200, label %reverse_slice.exit204, !llvm.loop !1

reverse_slice.exit204:                            ; preds = %.lr.ph.i200, %reverse_slice.exit, %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4152 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  br label %bb.ag

bb.ag:                                            ; preds = %found_new_run.exit, %reverse_slice.exit204
  %.sroa.23.1 = phi ptr [ %.sroa.23.0409, %reverse_slice.exit204 ], [ %spec.select293, %found_new_run.exit ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0410, %reverse_slice.exit204 ], [ %i.lc, %found_new_run.exit ] ; 24 uses
  %.0159 = phi i64 [ %.val189, %reverse_slice.exit204 ], [ %i.le, %found_new_run.exit ] ; 12 uses
  %.8.val.fr.i = freeze ptr %.sroa.23.1           ; 20 uses
  %i.dv = icmp sgt i64 %.0159, 1
  br i1 %i.dv, label %.lr.ph.i206, label %._crit_edge.thread182.i

.lr.ph.i206:                                      ; preds = %bb.ag, %bb.ai
  %.068141.i = phi i64 [ %i.ed, %bb.ai ], [ 1, %bb.ag ] ; 8 uses
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.dx = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.068141.i ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !54
  %i.dz = getelementptr i8, ptr %i.dx, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !54
  %i.eb = call i32 %i.dw(ptr noundef %i.dy, ptr noundef %i.ea, ptr noundef nonnull %3) #13, !inline_history !101 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %found_new_run.exit.thread283, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i206
  %.not.i207 = icmp eq i32 %i.eb, 0
  br i1 %.not.i207, label %bb.ai, label %._crit_edge.i

bb.ai:                                            ; preds = %bb.ah
  %i.ed = add nuw nsw i64 %.068141.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ed, %.0159
  br i1 %exitcond.not.i, label %count_run.exit, label %.lr.ph.i206, !llvm.loop !102

._crit_edge.i:                                    ; preds = %bb.ah
  %i.ee = getelementptr i8, ptr %i.dx, i64 -8     ; 3 uses
  %i.ef = icmp samesign ugt i64 %.068141.i, 1
  br i1 %i.ef, label %bb.aj, label %sortslice_reverse.exit.i

._crit_edge.thread182.i:                          ; preds = %bb.ag
  %i.eg = icmp eq i64 %.0159, 1
  br i1 %i.eg, label %count_run.exit.thread275, label %sortslice_reverse.exit.i

bb.aj:                                            ; preds = %._crit_edge.i
  %i.eh = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.ei = load ptr, ptr %.sroa.0.1, align 8, !tbaa !54
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !54
  %i.ek = call i32 %i.eh(ptr noundef %i.ei, ptr noundef %i.ej, ptr noundef nonnull %3) #13, !inline_history !101 ; 2 uses
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %found_new_run.exit.thread283, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not77.i = icmp eq i32 %i.ek, 0
  br i1 %.not77.i, label %bb.al, label %count_run.exit.thread275

bb.al:                                            ; preds = %bb.ak
  %i.em = icmp ult ptr %.sroa.0.1, %i.ee
  br i1 %i.em, label %.lr.ph.i.i.i, label %reverse_slice.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.al, %.lr.ph.i.i.i
  %.01013.i.i.i = phi ptr [ %.010.i.i.i, %.lr.ph.i.i.i ], [ %i.ee, %bb.al ] ; 3 uses
  %.012.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i ], [ %.sroa.0.1, %bb.al ] ; 3 uses
  %i.en = load ptr, ptr %.012.i.i.i, align 8, !tbaa !54
  %i.eo = load ptr, ptr %.01013.i.i.i, align 8, !tbaa !54
  store ptr %i.eo, ptr %.012.i.i.i, align 8, !tbaa !54
  store ptr %i.en, ptr %.01013.i.i.i, align 8, !tbaa !54
  %i.ep = getelementptr i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.010.i.i.i = getelementptr i8, ptr %.01013.i.i.i, i64 -8 ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %.010.i.i.i
  br i1 %i.eq, label %.lr.ph.i.i.i, label %reverse_slice.exit.i.i, !llvm.loop !1

reverse_slice.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %bb.al
  %.not.i.i = icmp ne ptr %.8.val.fr.i, null
  %i.er = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.068141.i
  %.01011.i6.i.i = getelementptr i8, ptr %i.er, i64 -8 ; 2 uses
  %i.es = icmp ult ptr %.8.val.fr.i, %.01011.i6.i.i
  %or.cond.i.i = and i1 %.not.i.i, %i.es
  br i1 %or.cond.i.i, label %.lr.ph.i7.i.i, label %sortslice_reverse.exit.i

.lr.ph.i7.i.i:                                    ; preds = %reverse_slice.exit.i.i, %.lr.ph.i7.i.i
  %.01013.i8.i.i = phi ptr [ %.010.i10.i.i, %.lr.ph.i7.i.i ], [ %.01011.i6.i.i, %reverse_slice.exit.i.i ] ; 3 uses
  %.012.i9.i.i = phi ptr [ %i.ev, %.lr.ph.i7.i.i ], [ %.8.val.fr.i, %reverse_slice.exit.i.i ] ; 3 uses
  %i.et = load ptr, ptr %.012.i9.i.i, align 8, !tbaa !54
  %i.eu = load ptr, ptr %.01013.i8.i.i, align 8, !tbaa !54
  store ptr %i.eu, ptr %.012.i9.i.i, align 8, !tbaa !54
  store ptr %i.et, ptr %.01013.i8.i.i, align 8, !tbaa !54
  %i.ev = getelementptr i8, ptr %.012.i9.i.i, i64 8 ; 2 uses
  %.010.i10.i.i = getelementptr i8, ptr %.01013.i8.i.i, i64 -8 ; 2 uses
  %i.ew = icmp ult ptr %i.ev, %.010.i10.i.i
  br i1 %i.ew, label %.lr.ph.i7.i.i, label %sortslice_reverse.exit.i, !llvm.loop !1

sortslice_reverse.exit.i:                         ; preds = %.lr.ph.i7.i.i, %reverse_slice.exit.i.i, %._crit_edge.i, %._crit_edge.thread182.i
  %.068.lcssa184186.i = phi i64 [ 1, %._crit_edge.thread182.i ], [ %.068141.i, %._crit_edge.i ], [ %.068141.i, %reverse_slice.exit.i.i ], [ %.068141.i, %.lr.ph.i7.i.i ] ; 2 uses
  %.169144.i = add nuw i64 %.068.lcssa184186.i, 1 ; 3 uses
  %i.ex = icmp slt i64 %.169144.i, %.0159
  br i1 %i.ex, label %.lr.ph148.i, label %sortslice_reverse.exit113.i

.lr.ph148.i:                                      ; preds = %sortslice_reverse.exit.i
  %.not.i83.i = icmp eq ptr %.8.val.fr.i, null    ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %sortslice_reverse.exit97.i, %.lr.ph148.i
  %.169147.i = phi i64 [ %.169144.i, %.lr.ph148.i ], [ %.169.i, %sortslice_reverse.exit97.i ] ; 5 uses
  %.0146.i = phi i64 [ 0, %.lr.ph148.i ], [ %.1.i, %sortslice_reverse.exit97.i ] ; 5 uses
  %.169.in145.i = phi i64 [ %.068.lcssa184186.i, %.lr.ph148.i ], [ %.169147.i, %sortslice_reverse.exit97.i ] ; 3 uses
  %i.ey = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.ez = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.169147.i ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !54
  %i.fb = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.169.in145.i ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !54
  %i.fd = call i32 %i.ey(ptr noundef %i.fa, ptr noundef %i.fc, ptr noundef nonnull %3) #13, !inline_history !101 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %found_new_run.exit.thread283, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not78.i = icmp eq i32 %i.fd, 0
  br i1 %.not78.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not82.i = icmp eq i64 %.0146.i, 0
  br i1 %.not82.i, label %sortslice_reverse.exit97.i, label %sortslice_advance.exit.i

sortslice_advance.exit.i:                         ; preds = %bb.ao
  %4 = add i64 %.0146.i, 1                        ; 2 uses
  %i.ff = sub i64 %.169.in145.i, %.0146.i         ; 2 uses
  %i.fg = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.ff ; 3 uses
  %i.fh = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %i.ff ; 2 uses
  %spec.select.i205 = select i1 %.not.i83.i, ptr null, ptr %i.fh ; 3 uses
  %5 = getelementptr [8 x i8], ptr %i.fg, i64 %4
  %.01011.i.i84.i = getelementptr i8, ptr %5, i64 -8 ; 2 uses
  %i.fi = icmp ult ptr %i.fg, %.01011.i.i84.i
  br i1 %i.fi, label %.lr.ph.i.i93.i, label %reverse_slice.exit.i85.i

.lr.ph.i.i93.i:                                   ; preds = %sortslice_advance.exit.i, %.lr.ph.i.i93.i
  %.01013.i.i94.i = phi ptr [ %.010.i.i96.i, %.lr.ph.i.i93.i ], [ %.01011.i.i84.i, %sortslice_advance.exit.i ] ; 3 uses
  %.012.i.i95.i = phi ptr [ %i.fl, %.lr.ph.i.i93.i ], [ %i.fg, %sortslice_advance.exit.i ] ; 3 uses
  %i.fj = load ptr, ptr %.012.i.i95.i, align 8, !tbaa !54
  %i.fk = load ptr, ptr %.01013.i.i94.i, align 8, !tbaa !54
  store ptr %i.fk, ptr %.012.i.i95.i, align 8, !tbaa !54
  store ptr %i.fj, ptr %.01013.i.i94.i, align 8, !tbaa !54
  %i.fl = getelementptr i8, ptr %.012.i.i95.i, i64 8 ; 2 uses
  %.010.i.i96.i = getelementptr i8, ptr %.01013.i.i94.i, i64 -8 ; 2 uses
  %i.fm = icmp ult ptr %i.fl, %.010.i.i96.i
  br i1 %i.fm, label %.lr.ph.i.i93.i, label %reverse_slice.exit.i85.i, !llvm.loop !1

reverse_slice.exit.i85.i:                         ; preds = %.lr.ph.i.i93.i, %sortslice_advance.exit.i
  %.not.i86.i = icmp ne ptr %spec.select.i205, null
  %i.fn = getelementptr [8 x i8], ptr %spec.select.i205, i64 %4
  %.01011.i6.i87.i = getelementptr i8, ptr %i.fn, i64 -8 ; 2 uses
  %i.fo = icmp ult ptr %spec.select.i205, %.01011.i6.i87.i
  %or.cond.i88.i = and i1 %.not.i86.i, %i.fo
  br i1 %or.cond.i88.i, label %.lr.ph.i7.i89.i, label %sortslice_reverse.exit97.i

.lr.ph.i7.i89.i:                                  ; preds = %reverse_slice.exit.i85.i, %.lr.ph.i7.i89.i
  %.01013.i8.i90.i = phi ptr [ %.010.i10.i92.i, %.lr.ph.i7.i89.i ], [ %.01011.i6.i87.i, %reverse_slice.exit.i85.i ] ; 3 uses
  %.012.i9.i91.i = phi ptr [ %i.fr, %.lr.ph.i7.i89.i ], [ %i.fh, %reverse_slice.exit.i85.i ] ; 3 uses
  %i.fp = load ptr, ptr %.012.i9.i91.i, align 8, !tbaa !54
  %i.fq = load ptr, ptr %.01013.i8.i90.i, align 8, !tbaa !54
  store ptr %i.fq, ptr %.012.i9.i91.i, align 8, !tbaa !54
  store ptr %i.fp, ptr %.01013.i8.i90.i, align 8, !tbaa !54
  %i.fr = getelementptr i8, ptr %.012.i9.i91.i, i64 8 ; 2 uses
  %.010.i10.i92.i = getelementptr i8, ptr %.01013.i8.i90.i, i64 -8 ; 2 uses
  %i.fs = icmp ult ptr %i.fr, %.010.i10.i92.i
  br i1 %i.fs, label %.lr.ph.i7.i89.i, label %sortslice_reverse.exit97.i, !llvm.loop !1

bb.ap:                                            ; preds = %bb.an
  %i.ft = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.fu = load ptr, ptr %i.fb, align 8, !tbaa !54
  %i.fv = load ptr, ptr %i.ez, align 8, !tbaa !54
  %i.fw = call i32 %i.ft(ptr noundef %i.fu, ptr noundef %i.fv, ptr noundef nonnull %3) #13, !inline_history !101 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %found_new_run.exit.thread283, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not79.i = icmp eq i32 %i.fw, 0
  br i1 %.not79.i, label %bb.ar, label %._crit_edge149.i

bb.ar:                                            ; preds = %bb.aq
  %i.fy = add i64 %.0146.i, 1
  br label %sortslice_reverse.exit97.i

sortslice_reverse.exit97.i:                       ; preds = %.lr.ph.i7.i89.i, %bb.ar, %reverse_slice.exit.i85.i, %bb.ao
  %.1.i = phi i64 [ %i.fy, %bb.ar ], [ 0, %bb.ao ], [ 0, %reverse_slice.exit.i85.i ], [ 0, %.lr.ph.i7.i89.i ] ; 2 uses
  %.169.i = add nsw i64 %.169147.i, 1             ; 2 uses
  %exitcond166.not.i = icmp eq i64 %.169.i, %.0159
  br i1 %exitcond166.not.i, label %._crit_edge149.i, label %bb.am, !llvm.loop !103

._crit_edge149.i:                                 ; preds = %sortslice_reverse.exit97.i, %bb.aq
  %.169.in.lcssa.i = phi i64 [ %.169.in145.i, %bb.aq ], [ %.169147.i, %sortslice_reverse.exit97.i ]
  %.0.lcssa.i = phi i64 [ %.0146.i, %bb.aq ], [ %.1.i, %sortslice_reverse.exit97.i ] ; 3 uses
  %.169.lcssa.i = phi i64 [ %.169147.i, %bb.aq ], [ %.0159, %sortslice_reverse.exit97.i ] ; 3 uses
  %.not80.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not80.i, label %sortslice_reverse.exit113.i, label %sortslice_advance.exit99.i

sortslice_advance.exit99.i:                       ; preds = %._crit_edge149.i
  %i.fz = add i64 %.0.lcssa.i, 1                  ; 2 uses
  %i.ga = sub i64 %.169.in.lcssa.i, %.0.lcssa.i   ; 2 uses
  %i.gb = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.ga ; 3 uses
  %i.gc = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %i.ga ; 2 uses
  %spec.select134.i = select i1 %.not.i83.i, ptr null, ptr %i.gc ; 3 uses
  %i.gd = getelementptr [8 x i8], ptr %i.gb, i64 %i.fz
  %.01011.i.i100.i = getelementptr i8, ptr %i.gd, i64 -8 ; 2 uses
  %i.ge = icmp ult ptr %i.gb, %.01011.i.i100.i
  br i1 %i.ge, label %.lr.ph.i.i109.i, label %reverse_slice.exit.i101.i

.lr.ph.i.i109.i:                                  ; preds = %sortslice_advance.exit99.i, %.lr.ph.i.i109.i
  %.01013.i.i110.i = phi ptr [ %.010.i.i112.i, %.lr.ph.i.i109.i ], [ %.01011.i.i100.i, %sortslice_advance.exit99.i ] ; 3 uses
  %.012.i.i111.i = phi ptr [ %i.gh, %.lr.ph.i.i109.i ], [ %i.gb, %sortslice_advance.exit99.i ] ; 3 uses
  %i.gf = load ptr, ptr %.012.i.i111.i, align 8, !tbaa !54
  %i.gg = load ptr, ptr %.01013.i.i110.i, align 8, !tbaa !54
  store ptr %i.gg, ptr %.012.i.i111.i, align 8, !tbaa !54
  store ptr %i.gf, ptr %.01013.i.i110.i, align 8, !tbaa !54
  %i.gh = getelementptr i8, ptr %.012.i.i111.i, i64 8 ; 2 uses
  %.010.i.i112.i = getelementptr i8, ptr %.01013.i.i110.i, i64 -8 ; 2 uses
  %i.gi = icmp ult ptr %i.gh, %.010.i.i112.i
  br i1 %i.gi, label %.lr.ph.i.i109.i, label %reverse_slice.exit.i101.i, !llvm.loop !1

reverse_slice.exit.i101.i:                        ; preds = %.lr.ph.i.i109.i, %sortslice_advance.exit99.i
  %.not.i102.i = icmp ne ptr %spec.select134.i, null
  %i.gj = getelementptr [8 x i8], ptr %spec.select134.i, i64 %i.fz
  %.01011.i6.i103.i = getelementptr i8, ptr %i.gj, i64 -8 ; 2 uses
  %i.gk = icmp ult ptr %spec.select134.i, %.01011.i6.i103.i
  %or.cond.i104.i = and i1 %.not.i102.i, %i.gk
  br i1 %or.cond.i104.i, label %.lr.ph.i7.i105.i, label %sortslice_reverse.exit113.i

.lr.ph.i7.i105.i:                                 ; preds = %reverse_slice.exit.i101.i, %.lr.ph.i7.i105.i
  %.01013.i8.i106.i = phi ptr [ %.010.i10.i108.i, %.lr.ph.i7.i105.i ], [ %.01011.i6.i103.i, %reverse_slice.exit.i101.i ] ; 3 uses
  %.012.i9.i107.i = phi ptr [ %i.gn, %.lr.ph.i7.i105.i ], [ %i.gc, %reverse_slice.exit.i101.i ] ; 3 uses
  %i.gl = load ptr, ptr %.012.i9.i107.i, align 8, !tbaa !54
  %i.gm = load ptr, ptr %.01013.i8.i106.i, align 8, !tbaa !54
  store ptr %i.gm, ptr %.012.i9.i107.i, align 8, !tbaa !54
  store ptr %i.gl, ptr %.01013.i8.i106.i, align 8, !tbaa !54
  %i.gn = getelementptr i8, ptr %.012.i9.i107.i, i64 8 ; 2 uses
  %.010.i10.i108.i = getelementptr i8, ptr %.01013.i8.i106.i, i64 -8 ; 2 uses
  %i.go = icmp ult ptr %i.gn, %.010.i10.i108.i
  br i1 %i.go, label %.lr.ph.i7.i105.i, label %sortslice_reverse.exit113.i, !llvm.loop !1

sortslice_reverse.exit113.i:                      ; preds = %.lr.ph.i7.i105.i, %reverse_slice.exit.i101.i, %._crit_edge149.i, %sortslice_reverse.exit.i
  %.169.lcssa191.i = phi i64 [ %.169144.i, %sortslice_reverse.exit.i ], [ %.169.lcssa.i, %._crit_edge149.i ], [ %.169.lcssa.i, %reverse_slice.exit.i101.i ], [ %.169.lcssa.i, %.lr.ph.i7.i105.i ] ; 5 uses
  %i.gp = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.169.lcssa191.i
  %.01011.i.i114.i = getelementptr i8, ptr %i.gp, i64 -8 ; 2 uses
  %i.gq = icmp ult ptr %.sroa.0.1, %.01011.i.i114.i
  br i1 %i.gq, label %.lr.ph.i.i123.i, label %reverse_slice.exit.i115.i

.lr.ph.i.i123.i:                                  ; preds = %sortslice_reverse.exit113.i, %.lr.ph.i.i123.i
  %.01013.i.i124.i = phi ptr [ %.010.i.i126.i, %.lr.ph.i.i123.i ], [ %.01011.i.i114.i, %sortslice_reverse.exit113.i ] ; 3 uses
  %.012.i.i125.i = phi ptr [ %i.gt, %.lr.ph.i.i123.i ], [ %.sroa.0.1, %sortslice_reverse.exit113.i ] ; 3 uses
  %i.gr = load ptr, ptr %.012.i.i125.i, align 8, !tbaa !54
  %i.gs = load ptr, ptr %.01013.i.i124.i, align 8, !tbaa !54
  store ptr %i.gs, ptr %.012.i.i125.i, align 8, !tbaa !54
  store ptr %i.gr, ptr %.01013.i.i124.i, align 8, !tbaa !54
  %i.gt = getelementptr i8, ptr %.012.i.i125.i, i64 8 ; 2 uses
  %.010.i.i126.i = getelementptr i8, ptr %.01013.i.i124.i, i64 -8 ; 2 uses
  %i.gu = icmp ult ptr %i.gt, %.010.i.i126.i
  br i1 %i.gu, label %.lr.ph.i.i123.i, label %reverse_slice.exit.i115.i, !llvm.loop !1

reverse_slice.exit.i115.i:                        ; preds = %.lr.ph.i.i123.i, %sortslice_reverse.exit113.i
  %.not.i116.i = icmp ne ptr %.8.val.fr.i, null
  %i.gv = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.169.lcssa191.i
  %.01011.i6.i117.i = getelementptr i8, ptr %i.gv, i64 -8 ; 2 uses
  %i.gw = icmp ult ptr %.8.val.fr.i, %.01011.i6.i117.i
  %or.cond.i118.i = and i1 %.not.i116.i, %i.gw
  br i1 %or.cond.i118.i, label %.lr.ph.i7.i119.i, label %sortslice_reverse.exit127.i

.lr.ph.i7.i119.i:                                 ; preds = %reverse_slice.exit.i115.i, %.lr.ph.i7.i119.i
  %.01013.i8.i120.i = phi ptr [ %.010.i10.i122.i, %.lr.ph.i7.i119.i ], [ %.01011.i6.i117.i, %reverse_slice.exit.i115.i ] ; 3 uses
  %.012.i9.i121.i = phi ptr [ %i.gz, %.lr.ph.i7.i119.i ], [ %.8.val.fr.i, %reverse_slice.exit.i115.i ] ; 3 uses
  %i.gx = load ptr, ptr %.012.i9.i121.i, align 8, !tbaa !54
  %i.gy = load ptr, ptr %.01013.i8.i120.i, align 8, !tbaa !54
  store ptr %i.gy, ptr %.012.i9.i121.i, align 8, !tbaa !54
  store ptr %i.gx, ptr %.01013.i8.i120.i, align 8, !tbaa !54
  %i.gz = getelementptr i8, ptr %.012.i9.i121.i, i64 8 ; 2 uses
  %.010.i10.i122.i = getelementptr i8, ptr %.01013.i8.i120.i, i64 -8 ; 2 uses
  %i.ha = icmp ult ptr %i.gz, %.010.i10.i122.i
  br i1 %i.ha, label %.lr.ph.i7.i119.i, label %sortslice_reverse.exit127.i, !llvm.loop !1

sortslice_reverse.exit127.i:                      ; preds = %.lr.ph.i7.i119.i, %reverse_slice.exit.i115.i
  %i.hb = icmp slt i64 %.169.lcssa191.i, %.0159
  br i1 %i.hb, label %.lr.ph158.i, label %count_run.exit

.lr.ph158.i:                                      ; preds = %sortslice_reverse.exit127.i, %bb.at
  %.2157.i = phi i64 [ %i.hj, %bb.at ], [ %.169.lcssa191.i, %sortslice_reverse.exit127.i ] ; 3 uses
  %i.hc = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.hd = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.2157.i ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !54
  %i.hf = getelementptr i8, ptr %i.hd, i64 -8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !54
  %i.hh = call i32 %i.hc(ptr noundef %i.he, ptr noundef %i.hg, ptr noundef nonnull %3) #13, !inline_history !101 ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %found_new_run.exit.thread283, label %bb.as

bb.as:                                            ; preds = %.lr.ph158.i
  %.not81.i = icmp eq i32 %i.hh, 0
  br i1 %.not81.i, label %bb.at, label %count_run.exit

bb.at:                                            ; preds = %bb.as
  %i.hj = add i64 %.2157.i, 1                     ; 2 uses
  %exitcond167.not.i = icmp eq i64 %i.hj, %.0159
  br i1 %exitcond167.not.i, label %count_run.exit, label %.lr.ph158.i, !llvm.loop !104

count_run.exit:                                   ; preds = %bb.ai, %bb.as, %bb.at, %sortslice_reverse.exit127.i
  %.070.i = phi i64 [ %.169.lcssa191.i, %sortslice_reverse.exit127.i ], [ %.0159, %bb.at ], [ %.2157.i, %bb.as ], [ %.0159, %bb.ai ] ; 2 uses
  %i.hk = icmp slt i64 %.070.i, 0
  br i1 %i.hk, label %found_new_run.exit.thread283, label %count_run.exit.thread275

count_run.exit.thread275:                         ; preds = %._crit_edge.thread182.i, %bb.ak, %count_run.exit
  %.070.i277 = phi i64 [ %.070.i, %count_run.exit ], [ 1, %._crit_edge.thread182.i ], [ %.068141.i, %bb.ak ] ; 3 uses
  %i.hl = load i64, ptr %i.cv, align 8, !tbaa !113
  %i.hm = load i64, ptr %i.df, align 8, !tbaa !117
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  %i.ho = load i64, ptr %i.da, align 8, !tbaa !115
  %i.hp = ashr i64 %i.hn, %i.ho                   ; 2 uses
  %i.hq = load i64, ptr %i.de, align 8, !tbaa !116
  %i.hr = and i64 %i.hq, %i.hn
  store i64 %i.hr, ptr %i.df, align 8, !tbaa !117
  %i.hs = icmp slt i64 %.070.i277, %i.hp
  br i1 %i.hs, label %bb.au, label %binarysort.exit.thread

bb.au:                                            ; preds = %count_run.exit.thread275
  %i.ht = call i64 @llvm.smin.i64(i64 %.0159, i64 %i.hp) ; 6 uses
  %spec.select.i208 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.070.i277, i64 1) ; 7 uses
  %i.hu = icmp slt i64 %spec.select.i208, %i.ht
  br i1 %i.hu, label %.lr.ph10.i, label %binarysort.exit.thread

.lr.ph10.i:                                       ; preds = %bb.au
  %.not.i209 = icmp eq ptr %.8.val.fr.i, null
  %scevgep21.i = getelementptr i8, ptr %.sroa.0.1, i64 8 ; 2 uses
  br i1 %.not.i209, label %.lr.ph10.split.us.preheader.i, label %.lr.ph10.split.preheader.i

.lr.ph10.split.preheader.i:                       ; preds = %.lr.ph10.i
  %scevgep17.i = getelementptr i8, ptr %.8.val.fr.i, i64 8
  %i.hv = sub nsw i64 %i.ht, %spec.select.i208
  br label %.lr.ph10.split.i

.lr.ph10.split.us.preheader.i:                    ; preds = %.lr.ph10.i
  %i.hw = sub nsw i64 %i.ht, %spec.select.i208
  br label %.lr.ph10.split.us.i

.lr.ph10.split.us.i:                              ; preds = %._crit_edge.us.i, %.lr.ph10.split.us.preheader.i
  %indvar25.i = phi i64 [ 0, %.lr.ph10.split.us.preheader.i ], [ %indvar.next26.i, %._crit_edge.us.i ] ; 2 uses
  %.1537.us.i = phi i64 [ %spec.select.i208, %.lr.ph10.split.us.preheader.i ], [ %i.ik, %._crit_edge.us.i ] ; 4 uses
  %i.hx = add nuw i64 %indvar25.i, %spec.select.i208
  %i.hy = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.1537.us.i
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !54 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %.lr.ph10.split.us.i
  %.048.us.i = phi i64 [ 0, %.lr.ph10.split.us.i ], [ %.149.us.i, %bb.aw ] ; 2 uses
  %.0.us.i = phi i64 [ %.1537.us.i, %.lr.ph10.split.us.i ], [ %.1.us.i, %bb.aw ] ; 2 uses
  %i.ia = add i64 %.0.us.i, %.048.us.i
  %i.ib = ashr i64 %i.ia, 1                       ; 3 uses
  %i.ic = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.id = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.ib
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !54
  %i.if = call i32 %i.ic(ptr noundef %i.hz, ptr noundef %i.ie, ptr noundef nonnull %3) #13, !inline_history !105 ; 2 uses
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %found_new_run.exit.thread283, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not60.us.i = icmp eq i32 %i.if, 0             ; 2 uses
  %i.ih = add nsw i64 %i.ib, 1
  %.149.us.i = select i1 %.not60.us.i, i64 %i.ih, i64 %.048.us.i ; 6 uses
  %.1.us.i = select i1 %.not60.us.i, i64 %.0.us.i, i64 %i.ib ; 2 uses
  %i.ii = icmp slt i64 %.149.us.i, %.1.us.i
  br i1 %i.ii, label %bb.av, label %.preheader.us.i, !llvm.loop !106

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.preheader.i, %.preheader.us.i
  %i.ij = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.us.i
  store ptr %i.hz, ptr %i.ij, align 8, !tbaa !54
  %i.ik = add nuw nsw i64 %.1537.us.i, 1
  %indvar.next26.i = add nuw i64 %indvar25.i, 1   ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvar.next26.i, %i.hw
  br i1 %exitcond27.not.i, label %binarysort.exit.thread, label %.lr.ph10.split.us.i, !llvm.loop !107

.preheader.us.i:                                  ; preds = %bb.aw
  %i.il = icmp sgt i64 %.1537.us.i, %.149.us.i
  br i1 %i.il, label %.lr.ph.us.preheader.i, label %._crit_edge.us.i

.lr.ph.us.preheader.i:                            ; preds = %.preheader.us.i
  %i.im = shl i64 %.149.us.i, 3                   ; 2 uses
  %scevgep23.i = getelementptr i8, ptr %scevgep21.i, i64 %i.im
  %scevgep24.i = getelementptr i8, ptr %.sroa.0.1, i64 %i.im
  %i.in = sub i64 %i.hx, %.149.us.i
  %i.io = shl i64 %i.in, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep23.i, ptr align 8 %scevgep24.i, i64 %i.io, i1 false), !tbaa !54
  br label %._crit_edge.us.i

.lr.ph10.split.i:                                 ; preds = %._crit_edge6.i, %.lr.ph10.split.preheader.i
  %indvar.i = phi i64 [ 0, %.lr.ph10.split.preheader.i ], [ %indvar.next.i, %._crit_edge6.i ] ; 2 uses
end_hunk_0
