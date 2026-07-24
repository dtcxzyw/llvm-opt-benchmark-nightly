inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@list_sort_impl:bb.a

.thread251:                                       ; preds = %bb.s, %bb.u, %bb.t
  %.2145.ph = phi i32 [ %.0143327, %bb.s ], [ %spec.select, %bb.u ], [ %.0143327, %bb.t ] ; 2 uses
  %.2142.ph = phi i32 [ %spec.select289, %bb.s ], [ %.0140328, %bb.u ], [ %.0140328, %bb.t ] ; 2 uses
  %i.bo = add nuw nsw i64 %.2159325, 1            ; 2 uses
  %exitcond360.not = icmp eq i64 %i.bo, %.val191
  br i1 %exitcond360.not, label %._crit_edge330, label %.critedge, !llvm.loop !72

._crit_edge330.loopexit:                          ; preds = %.thread251.us
  %i.bp = icmp eq i32 %.0147.mux.us, 0
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %.thread251, %._crit_edge330.loopexit
  %i.bq = phi ptr [ %.val193, %._crit_edge330.loopexit ], [ %.val196, %.thread251 ] ; 5 uses
  %i.br = phi i1 [ true, %._crit_edge330.loopexit ], [ false, %.thread251 ] ; 6 uses
  %.0147.lcssa = phi i1 [ %i.bp, %._crit_edge330.loopexit ], [ false, %.thread251 ]
  %.0143.lcssa = phi i32 [ %.2145.ph.us, %._crit_edge330.loopexit ], [ %.2145.ph, %.thread251 ]
  %.0140.lcssa = phi i32 [ %.2142.ph.us, %._crit_edge330.loopexit ], [ %.2142.ph, %.thread251 ]
  br i1 %.0147.lcssa, label %.thread262, label %bb.v

bb.v:                                             ; preds = %._crit_edge330
  %i.bs = icmp eq ptr %i.bq, @PyUnicode_Type
  %i.bt = icmp ne i32 %.0143.lcssa, 0
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond5, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_latin_compare, ptr %i.bu, align 8, !tbaa !73
  br i1 %i.br, label %.thread271, label %.loopexit.thread

bb.x:                                             ; preds = %bb.v
  %i.bv = icmp eq ptr %i.bq, @PyLong_Type
  %i.bw = icmp ne i32 %.0140.lcssa, 0
  %or.cond7 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond7, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_long_compare, ptr %i.bx, align 8, !tbaa !73
  br i1 %i.br, label %.thread271, label %.loopexit.thread

bb.z:                                             ; preds = %bb.x
  %i.by = icmp eq ptr %i.bq, @PyFloat_Type
  br i1 %i.by, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr i8, ptr %i.bq, i64 200
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !76 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4160
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !77
  %.not178 = icmp eq ptr %i.ca, null
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4152 ; 2 uses
  br i1 %.not178, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr @unsafe_object_compare, ptr %i.cc, align 8, !tbaa !73
  br i1 %i.br, label %bb.ae, label %.loopexit.thread

bb.ac:                                            ; preds = %bb.aa
  store ptr @safe_object_compare, ptr %i.cc, align 8, !tbaa !73
  br i1 %i.br, label %bb.ae, label %.loopexit.thread

.thread262:                                       ; preds = %._crit_edge330
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @safe_object_compare, ptr %i.cd, align 8, !tbaa !73
  br i1 %i.br, label %bb.ae, label %.loopexit.thread

bb.ad:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_float_compare, ptr %i.ce, align 8, !tbaa !73
  br i1 %i.br, label %.thread271, label %.loopexit.thread

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %.thread262
  %i.cf = phi ptr [ @safe_object_compare, %bb.ac ], [ @unsafe_object_compare, %bb.ab ], [ @safe_object_compare, %.thread262 ]
  %i.cg = icmp eq ptr %i.bq, @PyTuple_Type
  %spec.select446 = select i1 %i.cg, ptr @safe_object_compare, ptr %i.cf
  br label %.thread271

.thread271:                                       ; preds = %bb.ae, %bb.y, %bb.w, %bb.ad
  %.sink = phi ptr [ %spec.select446, %bb.ae ], [ @unsafe_float_compare, %bb.ad ], [ @unsafe_latin_compare, %bb.w ], [ @unsafe_long_compare, %bb.y ]
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4168
  store ptr %.sink, ptr %i.ch, align 8, !tbaa !78
  br label %.loopexit.thread.sink.split

.loopexit.thread.sink.split:                      ; preds = %.critedge, %bb.l, %.lr.ph329.split.us, %.thread271
  %safe_object_compare.sink = phi ptr [ @unsafe_tuple_compare, %.thread271 ], [ @safe_object_compare, %bb.l ], [ @safe_object_compare, %.lr.ph329.split.us ], [ @safe_object_compare, %.critedge ]
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr %safe_object_compare.sink, ptr %i.ci, align 8, !tbaa !73
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %bb.e, %bb.ac, %bb.ab, %bb.y, %.thread262, %bb.w, %bb.ad, %.loopexit
  %i.cj = phi i1 [ false, %bb.e ], [ false, %.loopexit ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.y ], [ true, %.thread262 ], [ true, %bb.w ], [ true, %bb.ad ], [ true, %.loopexit.thread.sink.split ]
  %.1156421 = phi ptr [ %i.o, %bb.e ], [ %.1156, %.loopexit ], [ %.1156, %bb.ac ], [ %.1156, %bb.ab ], [ %.1156, %bb.y ], [ %.1156, %.thread262 ], [ %.1156, %bb.w ], [ %.1156, %bb.ad ], [ %.1156, %.loopexit.thread.sink.split ] ; 6 uses
  %.sroa.0.0420 = phi ptr [ %i.o, %bb.e ], [ %.sroa.0.0, %.loopexit ], [ %.sroa.0.0, %bb.ac ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.0, %bb.y ], [ %.sroa.0.0, %.thread262 ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.0, %.loopexit.thread.sink.split ] ; 2 uses
  %.sroa.23.0419 = phi ptr [ %i.d, %bb.e ], [ %.sroa.23.0, %.loopexit ], [ %.sroa.23.0, %bb.ac ], [ %.sroa.23.0, %bb.ab ], [ %.sroa.23.0, %bb.y ], [ %.sroa.23.0, %.thread262 ], [ %.sroa.23.0, %bb.w ], [ %.sroa.23.0, %bb.ad ], [ %.sroa.23.0, %.loopexit.thread.sink.split ]
  %i.ck = icmp ne ptr %.1156421, null             ; 3 uses
  br i1 %i.ck, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit.thread
  %i.cl = add i64 %.val191, 1                     ; 2 uses
  %i.cm = sdiv i64 %i.cl, 2
  %i.cn = icmp sgt i64 %i.cl, 257
  %spec.select.i = select i1 %i.cn, i64 128, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 2104
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %spec.select.i
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit.thread
  %spec.select.sink.i = phi i64 [ %spec.select.i, %bb.af ], [ 256, %.loopexit.thread ]
  %.sink.i = phi ptr [ %i.cp, %bb.af ], [ null, %.loopexit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %spec.select.sink.i, ptr %i.cq, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sink.i, ptr %i.cr, align 8, !tbaa !80
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 2104 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !81
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  store i32 0, ptr %i.cu, align 8, !tbaa !82
  store i64 7, ptr %3, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.val191, ptr %i.cv, align 8, !tbaa !84
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sroa.0.0420, ptr %i.cw, align 8, !tbaa !85
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %storemerge24.i = phi i64 [ 0, %bb.ag ], [ %i.cz, %bb.ah ] ; 4 uses
  %i.cx = ashr i64 %.val191, %storemerge24.i
  %i.cy = icmp sgt i64 %i.cx, 63
  %i.cz = add i64 %storemerge24.i, 1
  br i1 %i.cy, label %bb.ah, label %merge_init.exit, !llvm.loop !86

merge_init.exit:                                  ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4184 ; 2 uses
  store i64 %storemerge24.i, ptr %i.da, align 8, !tbaa !87
  %i.db = trunc i64 %storemerge24.i to i32
  %notmask.i = shl nsw i32 -1, %i.db
  %i.dc = xor i32 %notmask.i, -1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 4192 ; 2 uses
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !88
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 4176 ; 3 uses
  store i64 0, ptr %i.df, align 8, !tbaa !89
  %i.dg = icmp slt i64 %.val191, 2
  br i1 %i.dg, label %found_new_run.exit.thread282, label %bb.ai

bb.ai:                                            ; preds = %merge_init.exit
  %.not179 = icmp eq i32 %2, 0
  br i1 %.not179, label %reverse_slice.exit206, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = getelementptr [8 x i8], ptr %.1156421, i64 %.val191
  %.01011.i = getelementptr i8, ptr %i.dh, i64 -8 ; 2 uses
  %i.di = icmp ult ptr %.1156421, %.01011.i
  %or.cond291 = select i1 %i.ck, i1 %i.di, i1 false
  br i1 %or.cond291, label %.lr.ph.i, label %reverse_slice.exit

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.i
  %.01013.i = phi ptr [ %.010.i, %.lr.ph.i ], [ %.01011.i, %bb.aj ] ; 3 uses
  %.012.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.1156421, %bb.aj ] ; 3 uses
  %i.dj = load ptr, ptr %.012.i, align 8, !tbaa !50
  %i.dk = load ptr, ptr %.01013.i, align 8, !tbaa !50
  store ptr %i.dk, ptr %.012.i, align 8, !tbaa !50
  store ptr %i.dj, ptr %.01013.i, align 8, !tbaa !50
  %i.dl = getelementptr i8, ptr %.012.i, i64 8    ; 2 uses
  %.010.i = getelementptr i8, ptr %.01013.i, i64 -8 ; 2 uses
  %i.dm = icmp ult ptr %i.dl, %.010.i
  br i1 %i.dm, label %.lr.ph.i, label %reverse_slice.exit, !llvm.loop !90

reverse_slice.exit:                               ; preds = %.lr.ph.i, %bb.aj
  %i.dn = getelementptr [8 x i8], ptr %i.d, i64 %.val191
  %.01011.i201 = getelementptr i8, ptr %i.dn, i64 -8 ; 2 uses
  %i.do = icmp ult ptr %i.d, %.01011.i201
  br i1 %i.do, label %.lr.ph.i202, label %reverse_slice.exit206

.lr.ph.i202:                                      ; preds = %reverse_slice.exit, %.lr.ph.i202
  %.01013.i203 = phi ptr [ %.010.i205, %.lr.ph.i202 ], [ %.01011.i201, %reverse_slice.exit ] ; 3 uses
  %.012.i204 = phi ptr [ %i.dr, %.lr.ph.i202 ], [ %i.d, %reverse_slice.exit ] ; 3 uses
  %i.dp = load ptr, ptr %.012.i204, align 8, !tbaa !50
  %i.dq = load ptr, ptr %.01013.i203, align 8, !tbaa !50
  store ptr %i.dq, ptr %.012.i204, align 8, !tbaa !50
  store ptr %i.dp, ptr %.01013.i203, align 8, !tbaa !50
  %i.dr = getelementptr i8, ptr %.012.i204, i64 8 ; 2 uses
  %.010.i205 = getelementptr i8, ptr %.01013.i203, i64 -8 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %.010.i205
  br i1 %i.ds, label %.lr.ph.i202, label %reverse_slice.exit206, !llvm.loop !90

reverse_slice.exit206:                            ; preds = %.lr.ph.i202, %reverse_slice.exit, %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4152 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  br label %bb.ak

bb.ak:                                            ; preds = %found_new_run.exit, %reverse_slice.exit206
  %.sroa.23.1 = phi ptr [ %.sroa.23.0419, %reverse_slice.exit206 ], [ %spec.select292, %found_new_run.exit ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0420, %reverse_slice.exit206 ], [ %i.mh, %found_new_run.exit ] ; 25 uses
  %.0138 = phi i64 [ %.val191, %reverse_slice.exit206 ], [ %i.mj, %found_new_run.exit ] ; 12 uses
  %.8.val.fr.i = freeze ptr %.sroa.23.1           ; 20 uses
  %i.dv = icmp sgt i64 %.0138, 1
  br i1 %i.dv, label %.lr.ph.i208, label %._crit_edge.i

.lr.ph.i208:                                      ; preds = %bb.ak, %bb.am
  %.069141.i = phi i64 [ %i.ed, %bb.am ], [ 1, %bb.ak ] ; 8 uses
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.dx = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.069141.i ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !50
  %i.dz = getelementptr i8, ptr %i.dx, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !50
  %i.eb = call i32 %i.dw(ptr noundef %i.dy, ptr noundef %i.ea, ptr noundef nonnull %3) #13, !inline_history !91 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %found_new_run.exit.thread282, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i208
  %.not.i209 = icmp eq i32 %i.eb, 0
  br i1 %.not.i209, label %bb.am, label %._crit_edge.thread182.i.a

bb.am:                                            ; preds = %bb.al
  %i.ed = add nuw nsw i64 %.069141.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ed, %.0138
  br i1 %exitcond.not.i, label %count_run.exit, label %.lr.ph.i208, !llvm.loop !92

._crit_edge.thread182.i.a:                        ; preds = %bb.al
  %4 = getelementptr i8, ptr %i.dx, i64 -8        ; 3 uses
  %5 = icmp samesign ugt i64 %.069141.i, 1
  br i1 %5, label %bb.an, label %sortslice_reverse.exit.i

._crit_edge.i:                                    ; preds = %bb.ak
  %6 = icmp eq i64 %.0138, 1
  br i1 %6, label %count_run.exit.thread274, label %sortslice_reverse.exit.i

bb.an:                                            ; preds = %._crit_edge.thread182.i.a
  %i.ee = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.ef = load ptr, ptr %.sroa.0.1, align 8, !tbaa !50
  %i.eg = load ptr, ptr %4, align 8, !tbaa !50
  %i.eh = call i32 %i.ee(ptr noundef %i.ef, ptr noundef %i.eg, ptr noundef nonnull %3) #13, !inline_history !91 ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %found_new_run.exit.thread282, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not77.i = icmp eq i32 %i.eh, 0
  br i1 %.not77.i, label %bb.ap, label %count_run.exit.thread274

bb.ap:                                            ; preds = %bb.ao
  %i.ej = icmp ult ptr %.sroa.0.1, %4
  br i1 %i.ej, label %.lr.ph.i.i.i, label %reverse_slice.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %.lr.ph.i.i.i
  %.01013.i.i.i = phi ptr [ %.010.i.i.i, %.lr.ph.i.i.i ], [ %4, %bb.ap ] ; 3 uses
  %.012.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i ], [ %.sroa.0.1, %bb.ap ] ; 3 uses
  %i.ek = load ptr, ptr %.012.i.i.i, align 8, !tbaa !50
  %i.el = load ptr, ptr %.01013.i.i.i, align 8, !tbaa !50
  store ptr %i.el, ptr %.012.i.i.i, align 8, !tbaa !50
  store ptr %i.ek, ptr %.01013.i.i.i, align 8, !tbaa !50
  %i.em = getelementptr i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.010.i.i.i = getelementptr i8, ptr %.01013.i.i.i, i64 -8 ; 2 uses
  %i.en = icmp ult ptr %i.em, %.010.i.i.i
  br i1 %i.en, label %.lr.ph.i.i.i, label %reverse_slice.exit.i.i, !llvm.loop !90

reverse_slice.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %bb.ap
  %.not.i.i = icmp ne ptr %.8.val.fr.i, null
  %i.eo = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.069141.i
  %.01011.i6.i.i = getelementptr i8, ptr %i.eo, i64 -8 ; 2 uses
  %i.ep = icmp ult ptr %.8.val.fr.i, %.01011.i6.i.i
  %or.cond.i.i = and i1 %.not.i.i, %i.ep
  br i1 %or.cond.i.i, label %.lr.ph.i7.i.i, label %sortslice_reverse.exit.i

.lr.ph.i7.i.i:                                    ; preds = %reverse_slice.exit.i.i, %.lr.ph.i7.i.i
  %.01013.i8.i.i = phi ptr [ %.010.i10.i.i, %.lr.ph.i7.i.i ], [ %.01011.i6.i.i, %reverse_slice.exit.i.i ] ; 3 uses
  %.012.i9.i.i = phi ptr [ %i.es, %.lr.ph.i7.i.i ], [ %.8.val.fr.i, %reverse_slice.exit.i.i ] ; 3 uses
  %i.eq = load ptr, ptr %.012.i9.i.i, align 8, !tbaa !50
  %i.er = load ptr, ptr %.01013.i8.i.i, align 8, !tbaa !50
  store ptr %i.er, ptr %.012.i9.i.i, align 8, !tbaa !50
  store ptr %i.eq, ptr %.01013.i8.i.i, align 8, !tbaa !50
  %i.es = getelementptr i8, ptr %.012.i9.i.i, i64 8 ; 2 uses
  %.010.i10.i.i = getelementptr i8, ptr %.01013.i8.i.i, i64 -8 ; 2 uses
  %i.et = icmp ult ptr %i.es, %.010.i10.i.i
  br i1 %i.et, label %.lr.ph.i7.i.i, label %sortslice_reverse.exit.i, !llvm.loop !90

sortslice_reverse.exit.i:                         ; preds = %.lr.ph.i7.i.i, %reverse_slice.exit.i.i, %._crit_edge.thread182.i.a, %._crit_edge.i
  %.069.lcssa184186.i = phi i64 [ 1, %._crit_edge.i ], [ %.069141.i, %._crit_edge.thread182.i.a ], [ %.069141.i, %reverse_slice.exit.i.i ], [ %.069141.i, %.lr.ph.i7.i.i ] ; 2 uses
  %.170144.i = add nuw i64 %.069.lcssa184186.i, 1 ; 3 uses
  %i.eu = icmp slt i64 %.170144.i, %.0138
  br i1 %i.eu, label %.lr.ph148.i, label %sortslice_reverse.exit113.i

.lr.ph148.i:                                      ; preds = %sortslice_reverse.exit.i
  %.not.i83.i = icmp eq ptr %.8.val.fr.i, null    ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %sortslice_reverse.exit97.i, %.lr.ph148.i
  %.170147.i = phi i64 [ %.170144.i, %.lr.ph148.i ], [ %.170.i, %sortslice_reverse.exit97.i ] ; 5 uses
  %.0146.i = phi i64 [ 0, %.lr.ph148.i ], [ %.1.i, %sortslice_reverse.exit97.i ] ; 5 uses
  %.170.in145.i = phi i64 [ %.069.lcssa184186.i, %.lr.ph148.i ], [ %.170147.i, %sortslice_reverse.exit97.i ] ; 3 uses
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.ew = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.170147.i ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !50
  %i.ey = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.170.in145.i ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !50
  %i.fa = call i32 %i.ev(ptr noundef %i.ex, ptr noundef %i.ez, ptr noundef nonnull %3) #13, !inline_history !91 ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %found_new_run.exit.thread282, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not78.i = icmp eq i32 %i.fa, 0
  br i1 %.not78.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not82.i = icmp eq i64 %.0146.i, 0
  br i1 %.not82.i, label %sortslice_reverse.exit97.i, label %sortslice_advance.exit.i

sortslice_advance.exit.i:                         ; preds = %bb.as
  %i.fc = add i64 %.0146.i, 1                     ; 2 uses
  %i.fd = sub i64 %.170.in145.i, %.0146.i         ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.fd ; 3 uses
  %i.ff = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %i.fd ; 2 uses
  %spec.select.i207 = select i1 %.not.i83.i, ptr null, ptr %i.ff ; 3 uses
  %i.fg = getelementptr [8 x i8], ptr %i.fe, i64 %i.fc
  %.01011.i.i84.i = getelementptr i8, ptr %i.fg, i64 -8 ; 2 uses
  %i.fh = icmp ult ptr %i.fe, %.01011.i.i84.i
  br i1 %i.fh, label %.lr.ph.i.i93.i, label %reverse_slice.exit.i85.i

.lr.ph.i.i93.i:                                   ; preds = %sortslice_advance.exit.i, %.lr.ph.i.i93.i
  %.01013.i.i94.i = phi ptr [ %.010.i.i96.i, %.lr.ph.i.i93.i ], [ %.01011.i.i84.i, %sortslice_advance.exit.i ] ; 3 uses
  %.012.i.i95.i = phi ptr [ %i.fk, %.lr.ph.i.i93.i ], [ %i.fe, %sortslice_advance.exit.i ] ; 3 uses
  %i.fi = load ptr, ptr %.012.i.i95.i, align 8, !tbaa !50
  %i.fj = load ptr, ptr %.01013.i.i94.i, align 8, !tbaa !50
  store ptr %i.fj, ptr %.012.i.i95.i, align 8, !tbaa !50
  store ptr %i.fi, ptr %.01013.i.i94.i, align 8, !tbaa !50
  %i.fk = getelementptr i8, ptr %.012.i.i95.i, i64 8 ; 2 uses
  %.010.i.i96.i = getelementptr i8, ptr %.01013.i.i94.i, i64 -8 ; 2 uses
  %i.fl = icmp ult ptr %i.fk, %.010.i.i96.i
  br i1 %i.fl, label %.lr.ph.i.i93.i, label %reverse_slice.exit.i85.i, !llvm.loop !90

reverse_slice.exit.i85.i:                         ; preds = %.lr.ph.i.i93.i, %sortslice_advance.exit.i
  %.not.i86.i = icmp ne ptr %spec.select.i207, null
  %i.fm = getelementptr [8 x i8], ptr %spec.select.i207, i64 %i.fc
  %.01011.i6.i87.i = getelementptr i8, ptr %i.fm, i64 -8 ; 2 uses
  %i.fn = icmp ult ptr %spec.select.i207, %.01011.i6.i87.i
  %or.cond.i88.i = and i1 %.not.i86.i, %i.fn
  br i1 %or.cond.i88.i, label %.lr.ph.i7.i89.i, label %sortslice_reverse.exit97.i

.lr.ph.i7.i89.i:                                  ; preds = %reverse_slice.exit.i85.i, %.lr.ph.i7.i89.i
  %.01013.i8.i90.i = phi ptr [ %.010.i10.i92.i, %.lr.ph.i7.i89.i ], [ %.01011.i6.i87.i, %reverse_slice.exit.i85.i ] ; 3 uses
  %.012.i9.i91.i = phi ptr [ %i.fq, %.lr.ph.i7.i89.i ], [ %i.ff, %reverse_slice.exit.i85.i ] ; 3 uses
  %i.fo = load ptr, ptr %.012.i9.i91.i, align 8, !tbaa !50
  %i.fp = load ptr, ptr %.01013.i8.i90.i, align 8, !tbaa !50
  store ptr %i.fp, ptr %.012.i9.i91.i, align 8, !tbaa !50
  store ptr %i.fo, ptr %.01013.i8.i90.i, align 8, !tbaa !50
  %i.fq = getelementptr i8, ptr %.012.i9.i91.i, i64 8 ; 2 uses
  %.010.i10.i92.i = getelementptr i8, ptr %.01013.i8.i90.i, i64 -8 ; 2 uses
  %i.fr = icmp ult ptr %i.fq, %.010.i10.i92.i
  br i1 %i.fr, label %.lr.ph.i7.i89.i, label %sortslice_reverse.exit97.i, !llvm.loop !90

bb.at:                                            ; preds = %bb.ar
  %i.fs = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.ft = load ptr, ptr %i.ey, align 8, !tbaa !50
  %i.fu = load ptr, ptr %i.ew, align 8, !tbaa !50
  %i.fv = call i32 %i.fs(ptr noundef %i.ft, ptr noundef %i.fu, ptr noundef nonnull %3) #13, !inline_history !91 ; 2 uses
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %found_new_run.exit.thread282, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not79.i = icmp eq i32 %i.fv, 0
  br i1 %.not79.i, label %bb.av, label %._crit_edge149.i

bb.av:                                            ; preds = %bb.au
  %i.fx = add i64 %.0146.i, 1
  br label %sortslice_reverse.exit97.i

sortslice_reverse.exit97.i:                       ; preds = %.lr.ph.i7.i89.i, %bb.av, %reverse_slice.exit.i85.i, %bb.as
  %.1.i = phi i64 [ %i.fx, %bb.av ], [ 0, %bb.as ], [ 0, %reverse_slice.exit.i85.i ], [ 0, %.lr.ph.i7.i89.i ] ; 2 uses
  %.170.i = add nsw i64 %.170147.i, 1             ; 2 uses
  %exitcond166.not.i = icmp eq i64 %.170.i, %.0138
  br i1 %exitcond166.not.i, label %._crit_edge149.i, label %bb.aq, !llvm.loop !93

._crit_edge149.i:                                 ; preds = %sortslice_reverse.exit97.i, %bb.au
  %.170.in.lcssa.i = phi i64 [ %.170.in145.i, %bb.au ], [ %.170147.i, %sortslice_reverse.exit97.i ]
  %.0.lcssa.i = phi i64 [ %.0146.i, %bb.au ], [ %.1.i, %sortslice_reverse.exit97.i ] ; 3 uses
  %.170.lcssa.i = phi i64 [ %.170147.i, %bb.au ], [ %.0138, %sortslice_reverse.exit97.i ] ; 3 uses
  %.not80.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not80.i, label %sortslice_reverse.exit113.i, label %sortslice_advance.exit99.i

sortslice_advance.exit99.i:                       ; preds = %._crit_edge149.i
  %i.fy = add i64 %.0.lcssa.i, 1                  ; 2 uses
  %i.fz = sub i64 %.170.in.lcssa.i, %.0.lcssa.i   ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.fz ; 3 uses
  %i.gb = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %i.fz ; 2 uses
  %spec.select134.i = select i1 %.not.i83.i, ptr null, ptr %i.gb ; 3 uses
  %i.gc = getelementptr [8 x i8], ptr %i.ga, i64 %i.fy
  %.01011.i.i100.i = getelementptr i8, ptr %i.gc, i64 -8 ; 2 uses
  %i.gd = icmp ult ptr %i.ga, %.01011.i.i100.i
  br i1 %i.gd, label %.lr.ph.i.i109.i, label %reverse_slice.exit.i101.i

.lr.ph.i.i109.i:                                  ; preds = %sortslice_advance.exit99.i, %.lr.ph.i.i109.i
  %.01013.i.i110.i = phi ptr [ %.010.i.i112.i, %.lr.ph.i.i109.i ], [ %.01011.i.i100.i, %sortslice_advance.exit99.i ] ; 3 uses
  %.012.i.i111.i = phi ptr [ %i.gg, %.lr.ph.i.i109.i ], [ %i.ga, %sortslice_advance.exit99.i ] ; 3 uses
  %i.ge = load ptr, ptr %.012.i.i111.i, align 8, !tbaa !50
  %i.gf = load ptr, ptr %.01013.i.i110.i, align 8, !tbaa !50
  store ptr %i.gf, ptr %.012.i.i111.i, align 8, !tbaa !50
  store ptr %i.ge, ptr %.01013.i.i110.i, align 8, !tbaa !50
  %i.gg = getelementptr i8, ptr %.012.i.i111.i, i64 8 ; 2 uses
  %.010.i.i112.i = getelementptr i8, ptr %.01013.i.i110.i, i64 -8 ; 2 uses
  %i.gh = icmp ult ptr %i.gg, %.010.i.i112.i
  br i1 %i.gh, label %.lr.ph.i.i109.i, label %reverse_slice.exit.i101.i, !llvm.loop !90

reverse_slice.exit.i101.i:                        ; preds = %.lr.ph.i.i109.i, %sortslice_advance.exit99.i
  %.not.i102.i = icmp ne ptr %spec.select134.i, null
  %i.gi = getelementptr [8 x i8], ptr %spec.select134.i, i64 %i.fy
  %.01011.i6.i103.i = getelementptr i8, ptr %i.gi, i64 -8 ; 2 uses
  %i.gj = icmp ult ptr %spec.select134.i, %.01011.i6.i103.i
  %or.cond.i104.i = and i1 %.not.i102.i, %i.gj
  br i1 %or.cond.i104.i, label %.lr.ph.i7.i105.i, label %sortslice_reverse.exit113.i

.lr.ph.i7.i105.i:                                 ; preds = %reverse_slice.exit.i101.i, %.lr.ph.i7.i105.i
  %.01013.i8.i106.i = phi ptr [ %.010.i10.i108.i, %.lr.ph.i7.i105.i ], [ %.01011.i6.i103.i, %reverse_slice.exit.i101.i ] ; 3 uses
  %.012.i9.i107.i = phi ptr [ %i.gm, %.lr.ph.i7.i105.i ], [ %i.gb, %reverse_slice.exit.i101.i ] ; 3 uses
  %i.gk = load ptr, ptr %.012.i9.i107.i, align 8, !tbaa !50
  %i.gl = load ptr, ptr %.01013.i8.i106.i, align 8, !tbaa !50
  store ptr %i.gl, ptr %.012.i9.i107.i, align 8, !tbaa !50
  store ptr %i.gk, ptr %.01013.i8.i106.i, align 8, !tbaa !50
  %i.gm = getelementptr i8, ptr %.012.i9.i107.i, i64 8 ; 2 uses
  %.010.i10.i108.i = getelementptr i8, ptr %.01013.i8.i106.i, i64 -8 ; 2 uses
  %i.gn = icmp ult ptr %i.gm, %.010.i10.i108.i
  br i1 %i.gn, label %.lr.ph.i7.i105.i, label %sortslice_reverse.exit113.i, !llvm.loop !90

sortslice_reverse.exit113.i:                      ; preds = %.lr.ph.i7.i105.i, %reverse_slice.exit.i101.i, %._crit_edge149.i, %sortslice_reverse.exit.i
  %.170.lcssa191.i = phi i64 [ %.170144.i, %sortslice_reverse.exit.i ], [ %.170.lcssa.i, %._crit_edge149.i ], [ %.170.lcssa.i, %reverse_slice.exit.i101.i ], [ %.170.lcssa.i, %.lr.ph.i7.i105.i ] ; 5 uses
  %i.go = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.170.lcssa191.i
  %.01011.i.i114.i = getelementptr i8, ptr %i.go, i64 -8 ; 2 uses
  %i.gp = icmp ult ptr %.sroa.0.1, %.01011.i.i114.i
  br i1 %i.gp, label %.lr.ph.i.i123.i, label %reverse_slice.exit.i115.i

.lr.ph.i.i123.i:                                  ; preds = %sortslice_reverse.exit113.i, %.lr.ph.i.i123.i
  %.01013.i.i124.i = phi ptr [ %.010.i.i126.i, %.lr.ph.i.i123.i ], [ %.01011.i.i114.i, %sortslice_reverse.exit113.i ] ; 3 uses
  %.012.i.i125.i = phi ptr [ %i.gs, %.lr.ph.i.i123.i ], [ %.sroa.0.1, %sortslice_reverse.exit113.i ] ; 3 uses
  %i.gq = load ptr, ptr %.012.i.i125.i, align 8, !tbaa !50
  %i.gr = load ptr, ptr %.01013.i.i124.i, align 8, !tbaa !50
  store ptr %i.gr, ptr %.012.i.i125.i, align 8, !tbaa !50
  store ptr %i.gq, ptr %.01013.i.i124.i, align 8, !tbaa !50
  %i.gs = getelementptr i8, ptr %.012.i.i125.i, i64 8 ; 2 uses
  %.010.i.i126.i = getelementptr i8, ptr %.01013.i.i124.i, i64 -8 ; 2 uses
  %i.gt = icmp ult ptr %i.gs, %.010.i.i126.i
  br i1 %i.gt, label %.lr.ph.i.i123.i, label %reverse_slice.exit.i115.i, !llvm.loop !90

reverse_slice.exit.i115.i:                        ; preds = %.lr.ph.i.i123.i, %sortslice_reverse.exit113.i
  %.not.i116.i = icmp ne ptr %.8.val.fr.i, null
  %i.gu = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.170.lcssa191.i
  %.01011.i6.i117.i = getelementptr i8, ptr %i.gu, i64 -8 ; 2 uses
  %i.gv = icmp ult ptr %.8.val.fr.i, %.01011.i6.i117.i
  %or.cond.i118.i = and i1 %.not.i116.i, %i.gv
  br i1 %or.cond.i118.i, label %.lr.ph.i7.i119.i, label %sortslice_reverse.exit127.i

.lr.ph.i7.i119.i:                                 ; preds = %reverse_slice.exit.i115.i, %.lr.ph.i7.i119.i
  %.01013.i8.i120.i = phi ptr [ %.010.i10.i122.i, %.lr.ph.i7.i119.i ], [ %.01011.i6.i117.i, %reverse_slice.exit.i115.i ] ; 3 uses
  %.012.i9.i121.i = phi ptr [ %i.gy, %.lr.ph.i7.i119.i ], [ %.8.val.fr.i, %reverse_slice.exit.i115.i ] ; 3 uses
  %i.gw = load ptr, ptr %.012.i9.i121.i, align 8, !tbaa !50
  %i.gx = load ptr, ptr %.01013.i8.i120.i, align 8, !tbaa !50
  store ptr %i.gx, ptr %.012.i9.i121.i, align 8, !tbaa !50
  store ptr %i.gw, ptr %.01013.i8.i120.i, align 8, !tbaa !50
  %i.gy = getelementptr i8, ptr %.012.i9.i121.i, i64 8 ; 2 uses
  %.010.i10.i122.i = getelementptr i8, ptr %.01013.i8.i120.i, i64 -8 ; 2 uses
  %i.gz = icmp ult ptr %i.gy, %.010.i10.i122.i
  br i1 %i.gz, label %.lr.ph.i7.i119.i, label %sortslice_reverse.exit127.i, !llvm.loop !90

sortslice_reverse.exit127.i:                      ; preds = %.lr.ph.i7.i119.i, %reverse_slice.exit.i115.i
  %i.ha = icmp slt i64 %.170.lcssa191.i, %.0138
  br i1 %i.ha, label %.lr.ph158.i, label %count_run.exit

.lr.ph158.i:                                      ; preds = %sortslice_reverse.exit127.i, %bb.ax
  %.2157.i = phi i64 [ %i.hi, %bb.ax ], [ %.170.lcssa191.i, %sortslice_reverse.exit127.i ] ; 3 uses
  %i.hb = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.hc = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.2157.i ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !50
  %i.he = getelementptr i8, ptr %i.hc, i64 -8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !50
  %i.hg = call i32 %i.hb(ptr noundef %i.hd, ptr noundef %i.hf, ptr noundef nonnull %3) #13, !inline_history !91 ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %found_new_run.exit.thread282, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph158.i
  %.not81.i = icmp eq i32 %i.hg, 0
  br i1 %.not81.i, label %bb.ax, label %count_run.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hi = add i64 %.2157.i, 1                     ; 2 uses
  %exitcond167.not.i = icmp eq i64 %i.hi, %.0138
  br i1 %exitcond167.not.i, label %count_run.exit, label %.lr.ph158.i, !llvm.loop !94

count_run.exit:                                   ; preds = %bb.am, %bb.aw, %bb.ax, %sortslice_reverse.exit127.i
  %.068.i = phi i64 [ %.170.lcssa191.i, %sortslice_reverse.exit127.i ], [ %.0138, %bb.ax ], [ %.2157.i, %bb.aw ], [ %.0138, %bb.am ] ; 2 uses
  %i.hj = icmp slt i64 %.068.i, 0
  br i1 %i.hj, label %found_new_run.exit.thread282, label %count_run.exit.thread274

count_run.exit.thread274:                         ; preds = %._crit_edge.i, %bb.ao, %count_run.exit
  %.068.i276 = phi i64 [ %.068.i, %count_run.exit ], [ 1, %._crit_edge.i ], [ %.069141.i, %bb.ao ] ; 3 uses
  %i.hk = load i64, ptr %i.cv, align 8, !tbaa !84
  %i.hl = load i64, ptr %i.df, align 8, !tbaa !89
  %i.hm = add i64 %i.hl, %i.hk                    ; 2 uses
  %i.hn = load i64, ptr %i.da, align 8, !tbaa !87
  %i.ho = ashr i64 %i.hm, %i.hn                   ; 2 uses
  %i.hp = load i64, ptr %i.de, align 8, !tbaa !88
  %i.hq = and i64 %i.hp, %i.hm
  store i64 %i.hq, ptr %i.df, align 8, !tbaa !89
  %i.hr = icmp slt i64 %.068.i276, %i.ho
  br i1 %i.hr, label %bb.ay, label %binarysort.exit.thread

bb.ay:                                            ; preds = %count_run.exit.thread274
  %i.hs = call i64 @llvm.smin.i64(i64 %.0138, i64 %i.ho) ; 6 uses
  %spec.select.i210 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.068.i276, i64 1) ; 3 uses
  %i.ht = icmp slt i64 %spec.select.i210, %i.hs
  br i1 %i.ht, label %.lr.ph10.i, label %binarysort.exit.thread

.lr.ph10.i:                                       ; preds = %bb.ay
  %.not.i211 = icmp eq ptr %.8.val.fr.i, null
  br i1 %.not.i211, label %.lr.ph10.split.us.i, label %.lr.ph10.split.i

.lr.ph10.split.us.i:                              ; preds = %.lr.ph10.i, %._crit_edge.us.i
  %.1547.us.i = phi i64 [ %i.ig, %._crit_edge.us.i ], [ %spec.select.i210, %.lr.ph10.i ] ; 8 uses
  %i.hu = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.1547.us.i
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !50 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph10.split.us.i
  %.048.us.i = phi i64 [ 0, %.lr.ph10.split.us.i ], [ %.149.us.i, %bb.ba ] ; 2 uses
  %.0.us.i = phi i64 [ %.1547.us.i, %.lr.ph10.split.us.i ], [ %.1.us.i, %bb.ba ] ; 2 uses
  %i.hw = add i64 %.0.us.i, %.048.us.i
  %i.hx = ashr i64 %i.hw, 1                       ; 3 uses
  %i.hy = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.hz = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.hx
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !50
  %i.ib = call i32 %i.hy(ptr noundef %i.hv, ptr noundef %i.ia, ptr noundef nonnull %3) #13, !inline_history !95 ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %found_new_run.exit.thread282, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not60.us.i = icmp eq i32 %i.ib, 0             ; 2 uses
  %i.id = add nsw i64 %i.hx, 1
  %.149.us.i = select i1 %.not60.us.i, i64 %i.id, i64 %.048.us.i ; 6 uses
  %.1.us.i = select i1 %.not60.us.i, i64 %.0.us.i, i64 %i.hx ; 2 uses
  %i.ie = icmp slt i64 %.149.us.i, %.1.us.i
  br i1 %i.ie, label %bb.az, label %.preheader.us.i, !llvm.loop !96

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i, %middle.block, %.preheader.us.i
  %i.if = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.us.i
  store ptr %i.hv, ptr %i.if, align 8, !tbaa !50
  %i.ig = add nuw nsw i64 %.1547.us.i, 1          ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.ig, %i.hs
  br i1 %exitcond23.not.i, label %binarysort.exit.thread, label %.lr.ph10.split.us.i, !llvm.loop !97

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader495, %.lr.ph.us.i
  %.0502.us.i = phi i64 [ %i.ik, %.lr.ph.us.i ], [ %.0502.us.i.ph, %.lr.ph.us.i.preheader495 ] ; 2 uses
  %i.ih = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.0502.us.i ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 -8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !50
  store ptr %i.ij, ptr %i.ih, align 8, !tbaa !50
  %i.ik = add nsw i64 %.0502.us.i, -1             ; 2 uses
  %i.il = icmp sgt i64 %i.ik, %.149.us.i
  br i1 %i.il, label %.lr.ph.us.i, label %._crit_edge.us.i, !llvm.loop !98

.preheader.us.i:                                  ; preds = %bb.ba
  %i.im = icmp sgt i64 %.1547.us.i, %.149.us.i
  br i1 %i.im, label %.lr.ph.us.i.preheader, label %._crit_edge.us.i

.lr.ph.us.i.preheader:                            ; preds = %.preheader.us.i
  %i.in = sub i64 %.1547.us.i, %.149.us.i         ; 3 uses
  %min.iters.check = icmp ult i64 %i.in, 4
  br i1 %min.iters.check, label %.lr.ph.us.i.preheader495, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.i.preheader
  %n.vec = and i64 %i.in, -4                      ; 3 uses
  %i.io = sub i64 %.1547.us.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ip = sub i64 %.1547.us.i, %index
  %i.iq = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.ip ; 4 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 -16
  %i.is = getelementptr i8, ptr %i.iq, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.ir, align 8, !tbaa !50
  %wide.load466 = load <2 x ptr>, ptr %i.is, align 8, !tbaa !50
  %i.it = getelementptr i8, ptr %i.iq, i64 -8
  %i.iu = getelementptr i8, ptr %i.iq, i64 -24
  store <2 x ptr> %wide.load, ptr %i.it, align 8, !tbaa !50
  store <2 x ptr> %wide.load466, ptr %i.iu, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iv = icmp eq i64 %index.next, %n.vec
  br i1 %i.iv, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.in, %n.vec
  br i1 %cmp.n, label %._crit_edge.us.i, label %.lr.ph.us.i.preheader495

.lr.ph.us.i.preheader495:                         ; preds = %.lr.ph.us.i.preheader, %middle.block
  %.0502.us.i.ph = phi i64 [ %.1547.us.i, %.lr.ph.us.i.preheader ], [ %i.io, %middle.block ]
  br label %.lr.ph.us.i

.lr.ph10.split.i:                                 ; preds = %.lr.ph10.i, %._crit_edge6.i
  %.1547.i = phi i64 [ %i.ks, %._crit_edge6.i ], [ %spec.select.i210, %.lr.ph10.i ] ; 14 uses
  %i.iw = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.1547.i
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !50 ; 3 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph10.split.i
  %.048.i = phi i64 [ 0, %.lr.ph10.split.i ], [ %.149.i, %bb.bc ] ; 2 uses
  %.0.i = phi i64 [ %.1547.i, %.lr.ph10.split.i ], [ %.1.i212, %bb.bc ] ; 2 uses
  %i.iy = add i64 %.0.i, %.048.i
  %i.iz = ashr i64 %i.iy, 1                       ; 3 uses
  %i.ja = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.jb = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.iz
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !50
  %i.jd = call i32 %i.ja(ptr noundef %i.ix, ptr noundef %i.jc, ptr noundef nonnull %3) #13, !inline_history !95 ; 2 uses
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %found_new_run.exit.thread282, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not60.i = icmp eq i32 %i.jd, 0                ; 2 uses
  %i.jf = add nsw i64 %i.iz, 1
  %.149.i = select i1 %.not60.i, i64 %i.jf, i64 %.048.i ; 10 uses
  %.1.i212 = select i1 %.not60.i, i64 %.0.i, i64 %i.iz ; 2 uses
  %i.jg = icmp slt i64 %.149.i, %.1.i212
  br i1 %i.jg, label %bb.bb, label %.preheader.i, !llvm.loop !96

.preheader.i:                                     ; preds = %bb.bc
  %i.jh = icmp sgt i64 %.1547.i, %.149.i
  br i1 %i.jh, label %.lr.ph.i215.preheader, label %._crit_edge.i213

.lr.ph.i215.preheader:                            ; preds = %.preheader.i
  %i.ji = sub i64 %.1547.i, %.149.i               ; 3 uses
  %min.iters.check482 = icmp ult i64 %i.ji, 4
  br i1 %min.iters.check482, label %.lr.ph.i215.preheader497, label %vector.ph483

vector.ph483:                                     ; preds = %.lr.ph.i215.preheader
  %n.vec485 = and i64 %i.ji, -4                   ; 3 uses
  %i.jj = sub i64 %.1547.i, %n.vec485
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph483
  %index487 = phi i64 [ 0, %vector.ph483 ], [ %index.next490, %vector.body486 ] ; 2 uses
  %i.jk = sub i64 %.1547.i, %index487
  %i.jl = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.jk ; 4 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 -16
  %i.jn = getelementptr i8, ptr %i.jl, i64 -32
  %wide.load488 = load <2 x ptr>, ptr %i.jm, align 8, !tbaa !50
  %wide.load489 = load <2 x ptr>, ptr %i.jn, align 8, !tbaa !50
  %i.jo = getelementptr i8, ptr %i.jl, i64 -8
  %i.jp = getelementptr i8, ptr %i.jl, i64 -24
  store <2 x ptr> %wide.load488, ptr %i.jo, align 8, !tbaa !50
  store <2 x ptr> %wide.load489, ptr %i.jp, align 8, !tbaa !50
  %index.next490 = add nuw i64 %index487, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next490, %n.vec485
  br i1 %i.jq, label %middle.block491, label %vector.body486, !llvm.loop !100

middle.block491:                                  ; preds = %vector.body486
  %cmp.n492 = icmp eq i64 %i.ji, %n.vec485
  br i1 %cmp.n492, label %.lr.ph5.preheader.i, label %.lr.ph.i215.preheader497

.lr.ph.i215.preheader497:                         ; preds = %.lr.ph.i215.preheader, %middle.block491
  %.0502.i.ph = phi i64 [ %.1547.i, %.lr.ph.i215.preheader ], [ %i.jj, %middle.block491 ]
  br label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %.lr.ph.i215.preheader497, %.lr.ph.i215
  %.0502.i = phi i64 [ %i.ju, %.lr.ph.i215 ], [ %.0502.i.ph, %.lr.ph.i215.preheader497 ] ; 2 uses
  %i.jr = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.0502.i ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 -8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !50
  store ptr %i.jt, ptr %i.jr, align 8, !tbaa !50
  %i.ju = add nsw i64 %.0502.i, -1                ; 2 uses
  %i.jv = icmp sgt i64 %i.ju, %.149.i
  br i1 %i.jv, label %.lr.ph.i215, label %.lr.ph5.preheader.i, !llvm.loop !101

._crit_edge.i213:                                 ; preds = %.preheader.i
  %i.jw = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.i
  store ptr %i.ix, ptr %i.jw, align 8, !tbaa !50
  %i.jx = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.1547.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !50
  br label %._crit_edge6.i

.lr.ph5.preheader.i:                              ; preds = %.lr.ph.i215, %middle.block491
  %i.jz = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.i
  store ptr %i.ix, ptr %i.jz, align 8, !tbaa !50
  %i.ka = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.1547.i
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !50 ; 2 uses
  %i.kc = sub i64 %.1547.i, %.149.i               ; 3 uses
  %min.iters.check469 = icmp ult i64 %i.kc, 4
  br i1 %min.iters.check469, label %.lr.ph5.i.preheader, label %vector.ph470

vector.ph470:                                     ; preds = %.lr.ph5.preheader.i
  %n.vec472 = and i64 %i.kc, -4                   ; 3 uses
  %i.kd = sub i64 %.1547.i, %n.vec472
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph470
  %index474 = phi i64 [ 0, %vector.ph470 ], [ %index.next477, %vector.body473 ] ; 2 uses
  %i.ke = sub i64 %.1547.i, %index474
end_hunk_0
begin_hunk_1_@list_concat:bb.a
  %i.w = getelementptr i8, ptr %i.l, i64 32
  store i64 %i.j, ptr %i.w, align 8, !tbaa !30
  br label %bb.j

list_new_prealloc.exit.i:                         ; preds = %bb.i, %bb.h, %bb.g
  %i.x = tail call ptr @PyErr_NoMemory() #13, !inline_history !165 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %list_concat_lock_held.exit, label %list_new_prealloc.exit._crit_edge.i

list_new_prealloc.exit._crit_edge.i:              ; preds = %list_new_prealloc.exit.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.x, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %list_new_prealloc.exit._crit_edge.i, %list_new_prealloc.exit.thread38.i
  %i.z = phi ptr [ %i.q, %list_new_prealloc.exit.thread38.i ], [ %.pre.i, %list_new_prealloc.exit._crit_edge.i ] ; 2 uses
  %.0.i40.i = phi ptr [ %i.l, %list_new_prealloc.exit.thread38.i ], [ %i.x, %list_new_prealloc.exit._crit_edge.i ] ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr i8, ptr %.0.i40.i, i64 24
  %.val3341.i = load i64, ptr %i.h, align 8, !tbaa !29 ; 3 uses
  %i.ad = icmp sgt i64 %.val3341.i, 0
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %_Py_NewRef.exit.i
  %.val3349.i = phi i64 [ %.val33.i, %_Py_NewRef.exit.i ], [ %.val3341.i, %bb.j ]
  %.02942.i = phi i64 [ %i.ak, %_Py_NewRef.exit.i ], [ 0, %bb.j ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %.02942.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, -1073741825
  br i1 %i.ah, label %_Py_NewRef.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw i32 %i.ag, 1
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !28
  %.val33.pre.i = load i64, ptr %i.h, align 8, !tbaa !29
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.k, %.lr.ph.i
  %.val33.i = phi i64 [ %.val3349.i, %.lr.ph.i ], [ %.val33.pre.i, %bb.k ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.z, i64 %.02942.i
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !50
  %i.ak = add nuw nsw i64 %.02942.i, 1            ; 2 uses
  %i.al = icmp slt i64 %i.ak, %.val33.i
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !166

._crit_edge.loopexit.i:                           ; preds = %_Py_NewRef.exit.i
  %.pre51.i = load ptr, ptr %i.ac, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %i.am = phi ptr [ %i.z, %bb.j ], [ %.pre51.i, %._crit_edge.loopexit.i ]
  %.val33.lcssa.i = phi i64 [ %.val3341.i, %bb.j ], [ %.val33.i, %._crit_edge.loopexit.i ]
  %i.an = getelementptr i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ap = getelementptr [8 x i8], ptr %i.am, i64 %.val33.lcssa.i
  %.val43.i = load i64, ptr %i.i, align 8, !tbaa !29 ; 2 uses
  %i.aq = icmp sgt i64 %.val43.i, 0
  br i1 %i.aq, label %.lr.ph46.i, label %._crit_edge47.i

.lr.ph46.i:                                       ; preds = %._crit_edge.i, %_Py_NewRef.exit36.i
  %.val52.i = phi i64 [ %.val.i, %_Py_NewRef.exit36.i ], [ %.val43.i, %._crit_edge.i ]
  %.144.i = phi i64 [ %i.ax, %_Py_NewRef.exit36.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ao, i64 %.144.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !28 ; 2 uses
  %i.au = icmp ugt i32 %i.at, -1073741825
  br i1 %i.au, label %_Py_NewRef.exit36.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph46.i
  %i.av = add nuw i32 %i.at, 1
  store i32 %i.av, ptr %i.as, align 8, !tbaa !28
  %.val.pre.i = load i64, ptr %i.i, align 8, !tbaa !29
  br label %_Py_NewRef.exit36.i

_Py_NewRef.exit36.i:                              ; preds = %bb.l, %.lr.ph46.i
  %.val.i = phi i64 [ %.val52.i, %.lr.ph46.i ], [ %.val.pre.i, %bb.l ] ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.ap, i64 %.144.i
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !50
  %i.ax = add nuw nsw i64 %.144.i, 1              ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %.val.i
  br i1 %i.ay, label %.lr.ph46.i, label %._crit_edge47.i, !llvm.loop !167

._crit_edge47.i:                                  ; preds = %_Py_NewRef.exit36.i, %._crit_edge.i
  %i.az = getelementptr i8, ptr %.0.i40.i, i64 16
  store i64 %i.j, ptr %i.az, align 8, !tbaa !29
  br label %list_concat_lock_held.exit

list_concat_lock_held.exit:                       ; preds = %._crit_edge47.i, %list_new_prealloc.exit.i, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %.0.i40.i, %._crit_edge47.i ], [ null, %list_new_prealloc.exit.i ], [ %i.l, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @list_repeat(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !29 ; 6 uses
  %i.b = icmp eq i64 %.val.i, 0
  %i.c = icmp slt i64 %1, 1
  %or.cond.i = or i1 %i.c, %i.b
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyList_New(i64 noundef 0), !inline_history !168
  br label %list_repeat_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.e = udiv i64 9223372036854775807, %1
  %i.f = icmp sgt i64 %.val.i, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyErr_NoMemory() #13, !inline_history !168
  br label %list_repeat_lock_held.exit

bb.e:                                             ; preds = %bb.c
  %i.h = mul i64 %.val.i, %1                      ; 6 uses
  %i.i = tail call ptr @PyList_New(i64 noundef 0), !inline_history !169 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %list_repeat_lock_held.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.k, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.i, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !21
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = shl nuw nsw i64 %i.h, 3
  %i.n = tail call ptr @PyMem_Malloc(i64 noundef %i.m) #13, !inline_history !169 ; 3 uses
  %i.o = getelementptr i8, ptr %i.i, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !21
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.h, label %list_new_prealloc.exit.thread45.i

bb.h:                                             ; preds = %bb.g, %.thread.i.i
  %i.q = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i.i, label %bb.i, label %list_new_prealloc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.i, align 8, !tbaa !28
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %list_new_prealloc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #13, !inline_history !169
  br label %list_new_prealloc.exit.i

list_new_prealloc.exit.thread45.i:                ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.i, i64 32
  store i64 %i.h, ptr %i.t, align 8, !tbaa !30
  br label %bb.k

list_new_prealloc.exit.i:                         ; preds = %bb.j, %bb.i, %bb.h
  %i.u = tail call ptr @PyErr_NoMemory() #13, !inline_history !169 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %list_repeat_lock_held.exit, label %list_new_prealloc.exit._crit_edge.i

list_new_prealloc.exit._crit_edge.i:              ; preds = %list_new_prealloc.exit.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.u, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %list_new_prealloc.exit._crit_edge.i, %list_new_prealloc.exit.thread45.i
  %i.w = phi ptr [ %i.n, %list_new_prealloc.exit.thread45.i ], [ %.pre.i, %list_new_prealloc.exit._crit_edge.i ] ; 8 uses
  %.0.i47.i = phi ptr [ %i.i, %list_new_prealloc.exit.thread45.i ], [ %i.u, %list_new_prealloc.exit._crit_edge.i ] ; 3 uses
  %i.x = getelementptr i8, ptr %.0.i47.i, i64 24
  %i.y = icmp eq i64 %.val.i, 1
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 4 uses
  br i1 %i.y, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i, label %bb.m, label %_Py_RefcntAdd.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add nuw i64 %1, %i.ad                   ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 2147483647
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = select i1 %i.af, i32 -1073741824, i32 %i.ag
  store i32 %i.ah, ptr %i.ab, align 8, !tbaa !28
  br label %_Py_RefcntAdd.exit.i

_Py_RefcntAdd.exit.i:                             ; preds = %bb.m, %bb.l
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %i.h ; 2 uses
  %i.aj = icmp ult ptr %i.w, %i.ai
  br i1 %i.aj, label %.lr.ph52.i.preheader, label %_Py_memory_repeat.exit.i

.lr.ph52.i.preheader:                             ; preds = %_Py_RefcntAdd.exit.i
  %2 = ptrtoaddr ptr %i.w to i64                  ; 3 uses
  %i.ak = shl i64 %1, 3
  %i.al = add i64 %i.ak, %2
  %i.am = add i64 %2, 8
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.ao = xor i64 %2, -1
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 24
  br i1 %min.iters.check, label %.lr.ph52.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.i.preheader
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.w, i64 %i.as
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !50
  store <2 x ptr> %broadcast.splat, ptr %i.av, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_Py_memory_repeat.exit.i, label %.lr.ph52.i.preheader21

.lr.ph52.i.preheader21:                           ; preds = %.lr.ph52.i.preheader, %middle.block
  %.03751.i.ph = phi ptr [ %i.w, %.lr.ph52.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader21, %.lr.ph52.i
  %.03751.i = phi ptr [ %i.ax, %.lr.ph52.i ], [ %.03751.i.ph, %.lr.ph52.i.preheader21 ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.03751.i, i64 8  ; 2 uses
  store ptr %i.ab, ptr %.03751.i, align 8, !tbaa !50
  %i.ay = icmp ult ptr %i.ax, %i.ai
  br i1 %i.ay, label %.lr.ph52.i, label %_Py_memory_repeat.exit.i, !llvm.loop !171

bb.n:                                             ; preds = %bb.k
  %i.az = getelementptr [8 x i8], ptr %i.aa, i64 %.val.i ; 2 uses
  %i.ba = icmp ult ptr %i.aa, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.n, %_Py_RefcntAdd.exit43.i
  %.03650.i = phi ptr [ %i.bj, %_Py_RefcntAdd.exit43.i ], [ %i.aa, %bb.n ] ; 3 uses
  %.13849.i = phi ptr [ %i.bk, %_Py_RefcntAdd.exit43.i ], [ %i.w, %bb.n ] ; 2 uses
  %i.bb = load ptr, ptr %.03650.i, align 8, !tbaa !50 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !28 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i42.i, label %bb.o, label %_Py_RefcntAdd.exit43.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = add nuw i64 %1, %i.bd                   ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 2147483647
  %i.bg = trunc i64 %i.be to i32
  %i.bh = select i1 %i.bf, i32 -1073741824, i32 %i.bg
  store i32 %i.bh, ptr %i.bb, align 8, !tbaa !28
  %.pre54.i = load ptr, ptr %.03650.i, align 8, !tbaa !50
  br label %_Py_RefcntAdd.exit43.i

_Py_RefcntAdd.exit43.i:                           ; preds = %bb.o, %.lr.ph.i
  %i.bi = phi ptr [ %i.bb, %.lr.ph.i ], [ %.pre54.i, %bb.o ]
  %i.bj = getelementptr i8, ptr %.03650.i, i64 8  ; 2 uses
  %i.bk = getelementptr i8, ptr %.13849.i, i64 8
  store ptr %i.bi, ptr %.13849.i, align 8, !tbaa !50
  %i.bl = icmp ult ptr %i.bj, %i.az
  br i1 %i.bl, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !172

._crit_edge.loopexit.i:                           ; preds = %_Py_RefcntAdd.exit43.i
  %.pre55.i = load ptr, ptr %i.x, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.n
  %i.bm = phi ptr [ %.pre55.i, %._crit_edge.loopexit.i ], [ %i.w, %bb.n ] ; 2 uses
  %i.bn = shl i64 %i.h, 3                         ; 3 uses
  %i.bo = shl i64 %.val.i, 3                      ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %i.bn
  br i1 %i.bp, label %.lr.ph.i.i, label %_Py_memory_repeat.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %i.bo, %._crit_edge.i ] ; 4 uses
  %i.bq = sub i64 %i.bn, %.015.i.i
  %i.br = tail call i64 @llvm.smin.i64(i64 %.015.i.i, i64 %i.bq) ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bm, i64 %.015.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bm, i64 %i.br, i1 false)
  %i.bt = add i64 %i.br, %.015.i.i                ; 2 uses
  %i.bu = icmp slt i64 %i.bt, %i.bn
  br i1 %i.bu, label %.lr.ph.i.i, label %_Py_memory_repeat.exit.i, !llvm.loop !130

_Py_memory_repeat.exit.i:                         ; preds = %.lr.ph.i.i, %.lr.ph52.i, %middle.block, %._crit_edge.i, %_Py_RefcntAdd.exit.i
  %i.bv = getelementptr i8, ptr %.0.i47.i, i64 16
  store i64 %i.h, ptr %i.bv, align 8, !tbaa !29
  br label %list_repeat_lock_held.exit

list_repeat_lock_held.exit:                       ; preds = %bb.b, %bb.d, %bb.e, %list_new_prealloc.exit.i, %_Py_memory_repeat.exit.i
  %.1.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %.0.i47.i, %_Py_memory_repeat.exit.i ], [ null, %list_new_prealloc.exit.i ], [ null, %bb.e ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @list_item(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !29
  %.not = icmp ult i64 %1, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  tail call void @PyErr_SetObject(ptr noundef %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60488)) #13
  br label %_Py_NewRef.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @list_ass_item(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val23.i = load i64, ptr %i.a, align 8, !tbaa !29 ; 3 uses
  %.not.i = icmp ult i64 %1, %.val23.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.3) #13
  br label %list_ass_item_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 6 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.h = add i64 %.val23.i, -1                    ; 3 uses
  %i.i = icmp slt i64 %1, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.j = xor i64 %1, -1
  %i.k = add i64 %.val23.i, %i.j                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  %i.l = add i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = add i64 %1, %index                       ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.d, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr i8, ptr %i.n, i64 24
  %wide.load = load <2 x ptr>, ptr %i.o, align 8, !tbaa !50
  %wide.load9 = load <2 x ptr>, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr [8 x i8], ptr %i.d, i64 %i.m ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  store <2 x ptr> %wide.load, ptr %i.q, align 8, !tbaa !50
  store <2 x ptr> %wide.load9, ptr %i.r, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.024.i.ph = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

end_hunk_1
