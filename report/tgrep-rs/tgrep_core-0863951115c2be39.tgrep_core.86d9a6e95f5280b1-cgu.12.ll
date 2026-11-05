Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.12?download=true
inline.NumInlined: 1036
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_14ExternalSorter11spill_arena:bb.a
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !5 ; 4 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  call void @llvm.assume(i1 %i.cc)
  %i.cd = sub nsw i64 %i.bz, %i.cb
  %i.ce = icmp ult i64 %.pre6.i212, %i.cd
  br i1 %i.ce, label %bb.ae, label %bb.ad, !prof !14

._crit_edge173.thread:                            ; preds = %bb.aa, %bb.ag, %._crit_edge173
  %i.cf = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cg = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %.pre6.i212)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull align 1 %i.by, i64 %.pre6.i212, i1 false)
  %i.ck = add nuw i64 %i.cb, %.pre6.i212
  store i64 %i.ck, ptr %i.ca, align 8
  br label %bb.ag

.body85:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ao, %.body
  %.sroa.042.2 = phi i1 [ true, %.body ], [ false, %bb.ao ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cr, %bb.ao ], [ %lpad.loopexit.split-lp308, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #28
          to label %bb.w unwind label %bb.br

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %bb.ay, %bb.bd, %bb.bc, %bb.bf, %bb.bh, %bb.ax, %bb.au, %bb.bk, %bb.ba, %bb.ad, %._crit_edge173.thread
  %lpad.loopexit.split-lp308 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

bb.af:                                            ; preds = %bb.ad
  %.not75 = icmp eq ptr %i.cg, null
  br i1 %.not75, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i64 0, ptr %i.bj, align 8
  br label %._crit_edge173.thread

.loopexit:                                        ; preds = %bb.bm, %bb.af, %bb.ah
  %.lcssa234.sink = phi ptr [ %i.cf, %bb.ah ], [ %i.cg, %bb.af ], [ %i.gq, %bb.bm ]
  store i64 0, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa234.sink, ptr %.sroa.459.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k)
          to label %bb.bo unwind label %.split130.thread

bb.ah:                                            ; preds = %._crit_edge173.thread
  %.not76 = icmp eq ptr %i.cf, null
  br i1 %.not76, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aj, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.am ], [ %i.cl, %bb.aj ]
  store i64 0, ptr %i.bi, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.536.0..sroa_idx, align 8
  store i64 0, ptr %i.bj, align 8
  br label %.body85

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.ak
  store i64 0, ptr %i.bi, align 8
  %.sroa.536.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.536.0..sroa_idx37, align 8
  store i64 0, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.co = load i64, ptr %i.az, align 8, !alias.scope !655, !noundef !5 ; 3 uses
  %i.cp = load i64, ptr %i.ay, align 8, !range !12, !alias.scope !655, !noundef !5
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufE8grow_oneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.aq unwind label %bb.ao, !noalias !656

bb.ao:                                            ; preds = %bb.an
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #28
          to label %.body85 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.aq:                                            ; preds = %bb.an, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !655, !nonnull !5, !noundef !5
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.cw = add i64 %i.co, 1
  store i64 %i.cw, ptr %i.az, align 8, !alias.scope !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit, %bb.aq, %bb.f
  ret void

bb.as:                                            ; preds = %bb.ba
  unreachable

bb.at:                                            ; preds = %.lr.ph293
  %exitcond.not = icmp eq i64 %.sroa.016.0, %i.bw
  br i1 %exitcond.not, label %._crit_edge294, label %.lr.ph293

._crit_edge294:                                   ; preds = %bb.at, %.lr.ph293, %bb.ab
  %.sroa.016.0.in.lcssa = phi i64 [ %i.bw, %bb.ab ], [ %i.bw, %bb.at ], [ %.sroa.016.0.in291, %.lr.ph293 ]
  %.sroa.016.0.lcssa = phi i64 [ %umax, %bb.ab ], [ %umax, %bb.at ], [ %.sroa.016.0, %.lr.ph293 ] ; 6 uses
  %i.cx = sub i32 %i.bu, %.sroa.07.0170           ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = icmp ugt i32 %i.cx, 127
  br i1 %i.cz, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i, %._crit_edge294
  %i.da = phi i64 [ %.pre.i, %._crit_edge294 ], [ %i.dk, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i ] ; 3 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %i.cy, %._crit_edge294 ], [ %i.dl, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i ]
  %i.db = load i64, ptr %i.bi, align 8, !range !12, !alias.scope !657, !noundef !5
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #27
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i:                                         ; preds = %._crit_edge294, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i
  %i.dd = phi i64 [ %i.dk, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i ], [ %.pre.i, %._crit_edge294 ] ; 3 uses
  %.sroa.0.05.i = phi i64 [ %i.dl, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i ], [ %i.cy, %._crit_edge294 ] ; 3 uses
  %i.de = trunc i64 %.sroa.0.05.i to i8
  %i.df = or i8 %i.de, -128
  %i.dg = load i64, ptr %i.bi, align 8, !range !12, !alias.scope !658, !noundef !5
  %i.dh = icmp eq i64 %i.dd, %i.dg
  br i1 %i.dh, label %bb.av, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i

bb.av:                                            ; preds = %.lr.ph.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #27
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i: ; preds = %bb.av, %.lr.ph.i
  %i.di = load ptr, ptr %i.bm, align 8, !alias.scope !658, !nonnull !5, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dd
  store i8 %i.df, ptr %i.dj, align 1
  %i.dk = add i64 %i.dd, 1                        ; 3 uses
  store i64 %i.dk, ptr %i.bj, align 8, !alias.scope !658
  %i.dl = lshr i64 %.sroa.0.05.i, 7               ; 2 uses
  %i.dm = icmp samesign ugt i64 %.sroa.0.05.i, 16383
  br i1 %i.dm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph293:                                        ; preds = %bb.ab, %bb.at
  %.sroa.016.0.in291 = phi i64 [ %.sroa.016.0, %bb.at ], [ %.sroa.08.0169, %bb.ab ] ; 2 uses
  %.sroa.016.0 = add nuw nsw i64 %.sroa.016.0.in291, 1 ; 4 uses
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %.sroa.016.0
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !noundef !5
  %i.dq = icmp eq i32 %i.dp, %i.bu
  br i1 %i.dq, label %bb.at, label %._crit_edge294

bb.aw:                                            ; preds = %._crit_edge.i, %bb.au
  %i.dr = trunc nuw nsw i64 %.sroa.0.0.lcssa.i to i8
  %i.ds = load ptr, ptr %i.bm, align 8, !alias.scope !657, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.da
  store i8 %i.dr, ptr %i.dt, align 1
  %i.du = add i64 %i.da, 1                        ; 3 uses
  store i64 %i.du, ptr %i.bj, align 8, !alias.scope !657
  %i.dv = sub nuw nsw i64 %.sroa.016.0.lcssa, %.sroa.08.0169 ; 3 uses
  %i.dw = icmp samesign ugt i64 %i.dv, 127
  br i1 %i.dw, label %.lr.ph.i92, label %._crit_edge.i90

._crit_edge.i90:                                  ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i95, %bb.aw
  %i.dx = phi i64 [ %i.du, %bb.aw ], [ %i.eh, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i95 ] ; 3 uses
  %.sroa.0.0.lcssa.i91 = phi i64 [ %i.dv, %bb.aw ], [ %i.ei, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i95 ]
  %i.dy = load i64, ptr %i.bi, align 8, !range !12, !alias.scope !659, !noundef !5
  %i.dz = icmp eq i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %._crit_edge.i90
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #27
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i92:                                       ; preds = %bb.aw, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i95
  %i.ea = phi i64 [ %i.eh, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i95 ], [ %i.du, %bb.aw ] ; 3 uses
  %.sroa.0.05.i94 = phi i64 [ %i.ei, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i95 ], [ %i.dv, %bb.aw ] ; 3 uses
  %i.eb = trunc i64 %.sroa.0.05.i94 to i8
  %i.ec = or i8 %i.eb, -128
  %i.ed = load i64, ptr %i.bi, align 8, !range !12, !alias.scope !660, !noundef !5
  %i.ee = icmp eq i64 %i.ea, %i.ed
  br i1 %i.ee, label %bb.ay, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i95

bb.ay:                                            ; preds = %.lr.ph.i92
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #27
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i95: ; preds = %bb.ay, %.lr.ph.i92
  %i.ef = load ptr, ptr %i.bm, align 8, !alias.scope !660, !nonnull !5, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ea
  store i8 %i.ec, ptr %i.eg, align 1
  %i.eh = add i64 %i.ea, 1                        ; 3 uses
  store i64 %i.eh, ptr %i.bj, align 8, !alias.scope !660
  %i.ei = lshr i64 %.sroa.0.05.i94, 7             ; 2 uses
  %i.ej = icmp samesign ugt i64 %.sroa.0.05.i94, 16383
  br i1 %i.ej, label %.lr.ph.i92, label %._crit_edge.i90

bb.az:                                            ; preds = %._crit_edge.i90, %bb.ax
  %i.ek = trunc nuw nsw i64 %.sroa.0.0.lcssa.i91 to i8
  %i.el = load ptr, ptr %i.bm, align 8, !alias.scope !659, !nonnull !5, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.dx
  store i8 %i.ek, ptr %i.em, align 1
  %i.en = add i64 %i.dx, 1                        ; 3 uses
  store i64 %i.en, ptr %i.bj, align 8, !alias.scope !659
  %i.eo = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %.not77.not = icmp ult i64 %.sroa.016.0.in.lcssa, %i.eo
  br i1 %.not77.not, label %bb.bb, label %bb.ba, !prof !661

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.08.0169, i64 noundef %.sroa.016.0.lcssa, i64 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #32
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.az
  %i.ep = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eq = getelementptr inbounds nuw [12 x i8], ptr %i.ep, i64 %.sroa.016.0.lcssa
  %i.er = icmp samesign eq i64 %.sroa.08.0169, %.sroa.016.0.lcssa
  br i1 %i.er, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bb
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.ep, i64 %.sroa.08.0169
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit112
  %.pre.i104 = phi i64 [ %i.gf, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit112 ], [ %i.en, %.lr.ph.preheader ] ; 2 uses
  %.sroa.022.0168 = phi i32 [ %i.eu, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit112 ], [ 0, %.lr.ph.preheader ]
  %.sroa.023.0167 = phi ptr [ %i.et, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit112 ], [ %i.es, %.lr.ph.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.023.0167, i64 12 ; 2 uses
  %i.eu = load i32, ptr %.sroa.023.0167, align 4, !noundef !5 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.023.0167, i64 4
  %i.ew = load i8, ptr %i.ev, align 4, !noundef !5
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.023.0167, i64 5
  %i.ey = load i8, ptr %i.ex, align 1, !noundef !5
  %i.ez = sub i32 %i.eu, %.sroa.022.0168          ; 2 uses
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = icmp ugt i32 %i.ez, 127
  br i1 %i.fb, label %.lr.ph.i103, label %._crit_edge.i101

._crit_edge.i101:                                 ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i106, %.lr.ph
  %i.fc = phi i64 [ %.pre.i104, %.lr.ph ], [ %i.fm, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i106 ] ; 5 uses
  %.sroa.0.0.lcssa.i102 = phi i64 [ %i.fa, %.lr.ph ], [ %i.fn, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i106 ]
  %i.fd = load i64, ptr %i.bi, align 8, !range !12, !alias.scope !662, !noundef !5
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %._crit_edge.i101
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #27
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i103:                                      ; preds = %.lr.ph, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i106
  %i.ff = phi i64 [ %i.fm, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i106 ], [ %.pre.i104, %.lr.ph ] ; 3 uses
  %.sroa.0.05.i105 = phi i64 [ %i.fn, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i106 ], [ %i.fa, %.lr.ph ] ; 3 uses
  %i.fg = trunc i64 %.sroa.0.05.i105 to i8
  %i.fh = or i8 %i.fg, -128
  %i.fi = load i64, ptr %i.bi, align 8, !range !12, !alias.scope !663, !noundef !5
  %i.fj = icmp eq i64 %i.ff, %i.fi
  br i1 %i.fj, label %bb.bd, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i106

bb.bd:                                            ; preds = %.lr.ph.i103
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #27
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit4.i106: ; preds = %bb.bd, %.lr.ph.i103
  %i.fk = load ptr, ptr %i.bm, align 8, !alias.scope !663, !nonnull !5, !noundef !5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ff
  store i8 %i.fh, ptr %i.fl, align 1
  %i.fm = add i64 %i.ff, 1                        ; 3 uses
  store i64 %i.fm, ptr %i.bj, align 8, !alias.scope !663
  %i.fn = lshr i64 %.sroa.0.05.i105, 7            ; 2 uses
  %i.fo = icmp samesign ugt i64 %.sroa.0.05.i105, 16383
  br i1 %i.fo, label %.lr.ph.i103, label %._crit_edge.i101

._crit_edge:                                      ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit112, %bb.bb
  %i.fp = phi i64 [ %i.en, %bb.bb ], [ %i.gf, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit112 ] ; 7 uses
  %i.fq = icmp sgt i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = icmp samesign ugt i64 %i.fp, 131071
  br i1 %i.fr, label %bb.bi, label %bb.bj

bb.be:                                            ; preds = %._crit_edge.i101, %bb.bc
  %i.fs = trunc nuw nsw i64 %.sroa.0.0.lcssa.i102 to i8
  %i.ft = load ptr, ptr %i.bm, align 8, !alias.scope !662, !nonnull !5, !noundef !5
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fc
  store i8 %i.fs, ptr %i.fu, align 1
  %i.fv = add i64 %i.fc, 1                        ; 3 uses
  store i64 %i.fv, ptr %i.bj, align 8, !alias.scope !662
  %i.fw = load i64, ptr %i.bi, align 8, !range !12, !alias.scope !664, !noundef !5
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #27
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.fy = load ptr, ptr %i.bm, align 8, !alias.scope !664, !nonnull !5, !noundef !5
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fv
  store i8 %i.ew, ptr %i.fz, align 1
  %i.ga = add i64 %i.fc, 2                        ; 3 uses
  store i64 %i.ga, ptr %i.bj, align 8, !alias.scope !664
  %i.gb = load i64, ptr %i.bi, align 8, !range !12, !alias.scope !665, !noundef !5
  %i.gc = icmp eq i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.bh, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit112

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #27
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit112: ; preds = %bb.bh, %bb.bg
  %i.gd = load ptr, ptr %i.bm, align 8, !alias.scope !665, !nonnull !5, !noundef !5
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ga
  store i8 %i.ey, ptr %i.ge, align 1
  %i.gf = add i64 %i.fc, 3                        ; 3 uses
  store i64 %i.gf, ptr %i.bj, align 8, !alias.scope !665
  %i.gg = icmp eq ptr %i.et, %i.eq
  br i1 %i.gg, label %._crit_edge, label %.lr.ph

bb.bi:                                            ; preds = %._crit_edge
  %i.gh = load ptr, ptr %i.bm, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gi = load i64, ptr %i.k, align 8, !range !12, !noundef !5
  %i.gj = load i64, ptr %i.bn, align 8, !noundef !5 ; 4 uses
  %i.gk = icmp sgt i64 %i.gj, -1
  call void @llvm.assume(i1 %i.gk)
  %i.gl = sub nsw i64 %i.gi, %i.gj
  %i.gm = icmp ult i64 %i.fp, %i.gl
  br i1 %i.gm, label %bb.bl, label %bb.bk, !prof !14

bb.bj:                                            ; preds = %._crit_edge, %bb.bn
  %.pre6.i212 = phi i64 [ %i.fp, %._crit_edge ], [ 0, %bb.bn ] ; 6 uses
  %i.gn = load i64, ptr %i.p, align 8, !noundef !5 ; 3 uses
  %i.go = icmp ult i64 %i.gn, 768614336404564651
  call void @llvm.assume(i1 %i.go)
  %i.gp = icmp samesign ult i64 %.sroa.016.0.lcssa, %i.gn
  br i1 %i.gp, label %bb.ab, label %._crit_edge173

bb.bk:                                            ; preds = %bb.bi
  %i.gq = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gh, i64 noundef %i.fp)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bl:                                            ; preds = %bb.bi
  %i.gr = load ptr, ptr %i.bo, align 8, !nonnull !5, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr nonnull align 1 %i.gh, i64 %i.fp, i1 false)
  %i.gt = add nuw i64 %i.gj, %i.fp
  store i64 %i.gt, ptr %i.bn, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %.not78 = icmp eq ptr %i.gq, null
  br i1 %.not78, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  store i64 0, ptr %i.bj, align 8
  br label %bb.bj

bb.bo:                                            ; preds = %.loopexit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.bo
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ar

bb.br:                                            ; preds = %bb.bs, %.body85
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.bs:                                            ; preds = %.split130.thread, %bb.w
  %.pn.pn131 = phi { ptr, i32 } [ %lpad.thr_comm, %.split130.thread ], [ %.pn, %bb.w ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #28
          to label %common.resume unwind label %bb.br
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_14ExternalSorter14write_postings(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = alloca [128 x i8], align 8               ; 9 uses
  %.sroa.6.i.sroa.8 = alloca [16 x i8], align 8   ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [128 x i8], align 8               ; 9 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 3 uses
  %i.w = alloca [24 x i8], align 8                ; 15 uses
  %i.x = alloca [128 x i8], align 8               ; 10 uses
  %i.y = alloca [128 x i8], align 8               ; 13 uses
  %i.z = alloca [64 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [64 x i8], align 8               ; 16 uses
  %i.ac = alloca [24 x i8], align 8               ; 16 uses
  %i.ad = alloca [24 x i8], align 8               ; 14 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.16 = alloca [16 x i8], align 8           ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke fastcc void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_14ExternalSorter11spill_arena(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias nofree noundef align 8 dereferenceable(136) %1)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val53 = load i64, ptr %i.ao, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !709
  store ptr %i.a, ptr %i.ae, align 8, !noalias !709
  %i.ap = icmp samesign ult i64 %.val53, 2
  br i1 %i.ap, label %bb.dg, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.aq = icmp samesign ult i64 %.val53, 21
  br i1 %i.aq, label %bb.f, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB6_SBT_16sort_unstable_byNCNvMs0_BV_NtBV_14ExternalSorter10sort_arena0E0EBX_(ptr noalias nofree noundef nonnull align 4 %.val, i64 noundef range(i64 0, 768614336404564651) %.val53, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #27
          to label %bb.dg unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1m_16sort_unstable_byNCNvMs0_B1o_NtB1o_14ExternalSorter10sort_arena0E0EB1q_(ptr noalias nofree noundef nonnull align 4 %.val, i64 noundef range(i64 0, 768614336404564651) %.val53, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.dg unwind label %bb.g

.body59:                                          ; preds = %bb.ek, %.body126.i, %bb.da, %bb.as, %bb.g, %.body76, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body77, %.body76 ], [ %i.dy, %bb.as ], [ %.pn110.i, %.body126.i ], [ %i.ar, %bb.g ], [ %i.ia, %bb.da ], [ %i.jx, %bb.ek ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8external14ExternalSorterEBF_(ptr noalias nofree noundef align 8 dereferenceable(136) %1) #28
          to label %bb.eo unwind label %bb.en

bb.g:                                             ; preds = %bb.at, %bb.el, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external13SegmentCursorEEB1c_.exit.i, %bb.p, %bb.o, %bb.f, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEEB1c_.exit, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body59

bb.h:                                             ; preds = %bb.b
  %i.as = load i64, ptr %i.ah, align 8, !range !11, !noundef !5
  %.not = icmp eq i64 %i.as, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.df

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEEB1c_.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.at, %bb.k ]
  store i64 0, ptr %1, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.body59

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEEB1c_.exit: ; preds = %bb.l
  store i64 0, ptr %1, align 8
  %.sroa.59.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.59.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.aw = load i64, ptr %i.aj, align 8, !noundef !5 ; 2 uses
  store i64 %i.aw, ptr %i.ag, align 8
  %i.ax = icmp ult i64 %i.aw, 384307168202282326
  tail call void @llvm.assume(i1 %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ag, ptr %i.af, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_14ExternalSorter14write_postings:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !739
  store i64 0, ptr %i.f, align 8, !noalias !739
  %i.im = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.im, align 8, !noalias !739
  %i.in = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.in, align 8, !noalias !739
  %.not40.i = icmp eq i64 %i.ii, 0
  br i1 %.not40.i, label %._crit_edge.i69, label %.lr.ph.i65

._crit_edge.i69:                                  ; preds = %bb.ed, %.split.i62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false), !noalias !739
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !742
  %i.io = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  invoke void @_RINvNtCsbzNSmZPCnTx_10tgrep_core6ondisk20flush_lookup_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.io, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %bb.dj unwind label %bb.di, !noalias !743

bb.di:                                            ; preds = %bb.do, %bb.dl, %._crit_edge.i69
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8external11IndexWriterEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d) #28
          to label %.loopexit.split-lp.i70.body unwind label %bb.dt, !noalias !743

bb.dj:                                            ; preds = %._crit_edge.i69
  %i.ir = load i64, ptr %i.b, align 8, !range !11, !noalias !742, !noundef !5 ; 2 uses
  %.not.i95 = icmp eq i64 %i.ir, -1
  br i1 %.not.i95, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.sroa.11.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.11.0.copyload107 = load i64, ptr %.sroa.11.0..sroa_idx106, align 8, !noalias !741
  %.sroa.16.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx108, i64 16, i1 false), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !742
  br label %bb.ds

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !742
  %i.is = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.dm unwind label %bb.di, !noalias !743 ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %.not12.i96 = icmp eq ptr %i.is, null
  br i1 %.not12.i96, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.it = ptrtoint ptr %i.is to i64
  br label %bb.ds

bb.do:                                            ; preds = %bb.dm
  %i.iu = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.io)
          to label %bb.dp unwind label %bb.di, !noalias !743 ; 2 uses

bb.dp:                                            ; preds = %bb.do
  %.not13.i98 = icmp eq ptr %i.iu, null
  br i1 %.not13.i98, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.iv = ptrtoint ptr %i.iu to i64
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ix = load i64, ptr %i.iw, align 8, !alias.scope !741, !noundef !5
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dn, %bb.dk
  %.sroa.11.1 = phi i64 [ %i.ix, %bb.dr ], [ %i.iv, %bb.dq ], [ %i.it, %bb.dn ], [ %.sroa.11.0.copyload107, %bb.dk ]
  %.sroa.0.1 = phi i64 [ -1, %bb.dr ], [ 0, %bb.dq ], [ 0, %bb.dn ], [ %i.ir, %bb.dk ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8external11IndexWriterEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %_RNvMs1_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_11IndexWriter6finish.exit102 unwind label %.loopexit.split-lp.i70

bb.dt:                                            ; preds = %bb.di
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !743
  unreachable

.loopexit.i:                                      ; preds = %bb.dx, %._crit_edge
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i70.body

.loopexit.split-lp.i70:                           ; preds = %bb.ds
  %lpad.loopexit.split-lp.i71 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i70.body

.loopexit.split-lp.i70.body:                      ; preds = %.loopexit.split-lp.i70, %bb.di, %.loopexit.i
  %i.iz = phi i1 [ true, %.loopexit.i ], [ false, %bb.di ], [ false, %.loopexit.split-lp.i70 ]
  %lpad.phi.i66 = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %i.iq, %bb.di ], [ %lpad.loopexit.split-lp.i71, %.loopexit.split-lp.i70 ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #28
          to label %.body.i67 unwind label %bb.ee, !noalias !744

_RNvMs1_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_11IndexWriter6finish.exit102: ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !739
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit.i72 unwind label %bb.du, !noalias !744

bb.du:                                            ; preds = %_RNvMs1_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_11IndexWriter6finish.exit102
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body76 unwind label %bb.dv, !noalias !744

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit.i72: ; preds = %_RNvMs1_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_11IndexWriter6finish.exit102
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc74 unwind label %bb.ef

.noexc74:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !739
  br label %bb.eg

bb.dv:                                            ; preds = %bb.du
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !744
  unreachable

.body.i67:                                        ; preds = %.loopexit.split-lp.i70.body
  br i1 %i.iz, label %.body.thread42.i, label %.body76

.lr.ph.i65:                                       ; preds = %.split.i62, %bb.ed
  %.sroa.05.039.i = phi i64 [ %.sroa.012.0.lcssa.i, %bb.ed ], [ 0, %.split.i62 ] ; 4 uses
  %i.jc = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %.sroa.05.039.i ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 4, !alias.scope !738, !noundef !5 ; 2 uses
  %i.jf = add nuw nsw i64 %.sroa.05.039.i, 1
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, 768614336404564651) %i.ii, i64 %i.jf) ; 3 uses
  %i.jg = add nsw i64 %umax.i, -1                 ; 2 uses
  %exitcond.not.i371 = icmp eq i64 %.sroa.05.039.i, %i.jg
  br i1 %exitcond.not.i371, label %._crit_edge, label %.lr.ph

bb.dw:                                            ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %.sroa.012.0.i, %i.jg
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.dw, %.lr.ph, %.lr.ph.i65
  %.sroa.012.0.lcssa.i = phi i64 [ %umax.i, %.lr.ph.i65 ], [ %umax.i, %bb.dw ], [ %.sroa.012.0.i, %.lr.ph ] ; 3 uses
  store i64 0, ptr %i.in, align 8, !noalias !739
  %i.jh = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %.sroa.012.0.lcssa.i
  invoke void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4IterNtNtBK_8external14TrigramPostingENCNvB33_18write_sorted_arena0EEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly %i.jc, ptr noundef nonnull readonly %i.jh)
          to label %bb.dx unwind label %.loopexit.i, !noalias !744

.lr.ph:                                           ; preds = %.lr.ph.i65, %bb.dw
  %.sroa.012.0.in.i372 = phi i64 [ %.sroa.012.0.i, %bb.dw ], [ %.sroa.05.039.i, %.lr.ph.i65 ]
  %.sroa.012.0.i = add nuw nsw i64 %.sroa.012.0.in.i372, 1 ; 4 uses
  %i.ji = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %.sroa.012.0.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i32, ptr %i.jj, align 4, !alias.scope !738, !noundef !5
  %i.jl = icmp eq i32 %i.jk, %i.je
  br i1 %i.jl, label %bb.dw, label %._crit_edge

bb.dx:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !739
  %i.jm = load ptr, ptr %i.im, align 8, !noalias !739, !nonnull !5, !noundef !5
  %i.jn = load i64, ptr %i.in, align 8, !noalias !739, !noundef !5
  invoke fastcc void @_RNvMs1_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_11IndexWriter11write_group(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef align 8 dereferenceable(128) %i.h, i32 noundef %i.je, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jm, i64 noundef %i.jn)
          to label %bb.dy unwind label %.loopexit.i, !noalias !744

bb.dy:                                            ; preds = %bb.dx
  %i.jo = load i64, ptr %i.e, align 8, !range !11, !noalias !739, !noundef !5 ; 2 uses
  %.not.i68 = icmp eq i64 %i.jo, -1
  br i1 %.not.i68, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !740
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx, i64 16, i1 false), !noalias !740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !739
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.eb unwind label %bb.ea, !noalias !744

bb.ea:                                            ; preds = %bb.dz
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.thread42.i unwind label %bb.ec, !noalias !744

bb.eb:                                            ; preds = %bb.dz
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit27.i unwind label %.split45.thread.i, !noalias !744

.split45.thread.i:                                ; preds = %bb.eb
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread42.i

bb.ec:                                            ; preds = %bb.ea
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !744
  unreachable

bb.ed:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !739
  %i.js = icmp samesign ult i64 %.sroa.012.0.lcssa.i, %i.ii
  br i1 %i.js, label %.lr.ph.i65, label %._crit_edge.i69

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit27.i: ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !739
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8external11IndexWriterEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.h)
          to label %.thread unwind label %bb.ef

.thread:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !739
  br label %bb.eh

bb.ee:                                            ; preds = %.body.thread42.i, %.loopexit.split-lp.i70.body
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !744
  unreachable

.body.thread42.i:                                 ; preds = %.split45.thread.i, %bb.ea, %.body.i67
  %.pn44.i = phi { ptr, i32 } [ %i.jq, %.split45.thread.i ], [ %lpad.phi.i66, %.body.i67 ], [ %i.jp, %bb.ea ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8external11IndexWriterEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.h) #28
          to label %.body76 unwind label %bb.ee, !noalias !744

bb.ef:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit27.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit.i72, %bb.dg
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body76

.body76:                                          ; preds = %bb.du, %.body.i67, %.body.thread42.i, %bb.ef
  %eh.lpad-body77 = phi { ptr, i32 } [ %i.ju, %bb.ef ], [ %lpad.phi.i66, %.body.i67 ], [ %.pn44.i, %.body.thread42.i ], [ %i.ja, %bb.du ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #28
          to label %.body59 unwind label %bb.en

bb.eg:                                            ; preds = %.noexc74, %bb.dh
  %.sroa.11.0 = phi i64 [ %.sroa.6.i.sroa.7.0.copyload165, %bb.dh ], [ %.sroa.11.1, %.noexc74 ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.6.i.sroa.0.0.copyload163, %bb.dh ], [ %.sroa.0.1, %.noexc74 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !739
  %.not51 = icmp eq i64 %.sroa.0.0, -1
  br i1 %.not51, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.thread, %bb.eg
  %.sroa.0.0170 = phi i64 [ %i.jo, %.thread ], [ %.sroa.0.0, %bb.eg ]
  %.sroa.11.0169 = phi i64 [ %.sroa.11.0.copyload, %.thread ], [ %.sroa.11.0, %bb.eg ]
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store i64 %.sroa.0.0170, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0169, ptr %.sroa.433.0..sroa_idx, align 8
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.jw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.el unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body59 unwind label %bb.em

bb.el:                                            ; preds = %bb.ej
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEEB1c_.exit82 unwind label %bb.g

bb.em:                                            ; preds = %bb.ek
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEEB1c_.exit82: ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.df

bb.en:                                            ; preds = %.body76, %.body59
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.eo:                                            ; preds = %.body59
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core8externalNtB5_14ExternalSorter3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = udiv i64 %3, 12
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1024) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12)
  %i.h = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !22, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.g, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %3, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core8external8SpillDirEEB11_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #28
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2Z_3zip11ZipProducerINtNtB31_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB4x_yEEINtNtB2Z_10filter_map17FilterMapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCNvB76_39build_index_with_options_and_ignorecase0EE0NCB2S_s_0INtB6o_13CollectResultB74_EB8W_E0TB8W_B8W_EE00B9t_E11into_resultB78_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(216) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load <2 x ptr>, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  switch i64 %.sroa.0.0.copyload, label %default.unreachable1.i [
    i64 0, label %bb.b
    i64 1, label %_RNvMs7_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEBS_EE17into_return_valueB20_.exit
end_hunk_1
