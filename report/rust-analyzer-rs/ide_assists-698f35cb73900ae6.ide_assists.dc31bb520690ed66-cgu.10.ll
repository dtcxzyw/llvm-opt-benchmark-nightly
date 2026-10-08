Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.10?download=true
inline.NumInlined: 4181
inline.NumDeleted: 1354
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq:bb.a

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eqs_0B7_.exit551: ; preds = %bb.fl
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.qd = load i64, ptr %i.ez, align 8, !alias.scope !1439, !noundef !4 ; 3 uses
  %i.qe = load i64, ptr %i.bg, align 8, !range !28, !alias.scope !1439, !noundef !4
  %i.qf = icmp eq i64 %i.qd, %i.qe
  br i1 %i.qf, label %bb.fq, label %bb.fu

bb.fq:                                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eqs_0B7_.exit551
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldE8grow_oneCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.fu unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pv, i64 48 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !noalias !1439, !noundef !4
  %i.qj = add i32 %i.qi, -1                       ; 2 uses
  store i32 %i.qj, ptr %i.qh, align 4, !noalias !1439
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %bb.fs, label %.body549

bb.fs:                                            ; preds = %bb.fr
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.pv) #39
          to label %.body549 unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.fu:                                            ; preds = %bb.fq, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eqs_0B7_.exit551
  %i.qm = load ptr, ptr %i.ey, align 8, !alias.scope !1439, !nonnull !4, !noundef !4
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qd
  store ptr %i.pv, ptr %i.qn, align 8
  %i.qo = add i64 %i.qd, 1
  store i64 %i.qo, ptr %i.ez, align 8, !alias.scope !1439
  %i.qp = load ptr, ptr %i.fe, align 8, !nonnull !4, !noundef !4
  %i.qq = load i64, ptr %i.ff, align 8, !noundef !4
  %i.qr = invoke noundef nonnull ptr @_RNvMs_NtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB6_13SyntaxFactory10ident_path(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qp, i64 noundef %i.qq)
          to label %bb.fv unwind label %bb.fp

bb.fv:                                            ; preds = %bb.fu
  %i.qs = invoke { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory9expr_path(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.qr)
          to label %bb.fw unwind label %bb.fp     ; 2 uses

bb.fw:                                            ; preds = %bb.fv
  %i.qt = extractvalue { i64, ptr } %i.qs, 0
  %i.qu = extractvalue { i64, ptr } %i.qs, 1      ; 4 uses
  %i.qv = load ptr, ptr %i.fg, align 8, !nonnull !4, !noundef !4
  %i.qw = load i64, ptr %i.fh, align 8, !noundef !4
  %i.qx = invoke noundef nonnull ptr @_RNvMs_NtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB6_13SyntaxFactory10ident_path(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qv, i64 noundef %i.qw)
          to label %bb.fy unwind label %bb.gj

bb.fx:                                            ; preds = %bb.gb, %bb.fz
  %.sroa.0129.14.ph = phi i1 [ true, %bb.fz ], [ false, %bb.gb ]
  %lpad.thr_comm.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %.body549

bb.fy:                                            ; preds = %bb.fw
  %i.qy = invoke { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory9expr_path(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.qx)
          to label %bb.fz unwind label %bb.gj     ; 2 uses

bb.fz:                                            ; preds = %bb.fy
  %i.qz = extractvalue { i64, ptr } %i.qy, 0
  %i.ra = extractvalue { i64, ptr } %i.qy, 1
  %i.rb = invoke { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory11expr_bin_op(ptr noundef nonnull align 8 %0, i64 noundef %i.qt, ptr noundef %i.qu, i16 2, i64 noundef %i.qz, ptr noundef %i.ra)
          to label %bb.ga unwind label %bb.fx     ; 3 uses

bb.ga:                                            ; preds = %bb.fz
  %.not.i556 = icmp eq i64 %.sroa.022.3, -1
  br i1 %.not.i556, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.rc = extractvalue { i64, ptr } %i.rb, 1
  %i.rd = extractvalue { i64, ptr } %i.rb, 0
  %i.re = invoke { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory11expr_bin_op(ptr noundef nonnull align 8 %0, i64 noundef range(i64 -1, 37) %.sroa.022.3, ptr noundef %.sroa.10.3, i16 3, i64 noundef range(i64 0, 37) %i.rd, ptr noundef %i.rc)
          to label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit unwind label %bb.fx

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit: ; preds = %bb.gb, %bb.ga
  %.merged.i = phi { i64, ptr } [ %i.re, %bb.gb ], [ %i.rb, %bb.ga ] ; 2 uses
  %i.rf = extractvalue { i64, ptr } %.merged.i, 0 ; 8 uses
  %i.rg = extractvalue { i64, ptr } %.merged.i, 1 ; 8 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.gc

bb.gc:                                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit
  %i.rh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body539 unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.ff

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i562 unwind label %bb.ge

bb.ge:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit
  %i.rj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body563 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i562: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit566 unwind label %bb.fa

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit566: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i568 unwind label %bb.gg

bb.gg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit566
  %i.rl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body569 unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i568: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit566
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit572 unwind label %bb.ee

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit572: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.rn = getelementptr inbounds nuw i8, ptr %i.jw, i64 48 ; 2 uses
  %i.ro = load i32, ptr %i.rn, align 4, !noundef !4
  %i.rp = add i32 %i.ro, -1                       ; 2 uses
  store i32 %i.rp, ptr %i.rn, align 4
  %i.rq = icmp eq i32 %i.rp, 0
  br i1 %i.rq, label %bb.gi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit574.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit574.backedge: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit572, %bb.gi
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit574

bb.gi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit572
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.jw) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit574.backedge unwind label %.loopexit

bb.gj:                                            ; preds = %bb.fy, %bb.fw
  %lpad.thr_comm258 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qu) ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qu, i64 48 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !noundef !4
  %i.rt = add i32 %i.rs, -1                       ; 2 uses
  store i32 %i.rt, ptr %i.rr, align 4
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i575, label %.body549

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i575: ; preds = %bb.gj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.qu) #39
          to label %.body549 unwind label %bb.bx

.thread186:                                       ; preds = %.loopexit446, %.loopexit.split-lp447, %bb.cv, %bb.cw, %bb.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit, %bb.cm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513
  %.pn221.pn199 = phi { ptr, i32 } [ %.pn210.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513 ], [ %i.kl, %bb.cv ], [ %.pn221, %bb.cl ], [ %i.kl, %bb.cw ], [ %.pn221, %bb.cm ], [ %.pn221, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit ], [ %lpad.loopexit451, %.loopexit446 ], [ %lpad.loopexit.split-lp452, %.loopexit.split-lp447 ] ; 2 uses
  %.sroa.0107.0198 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513 ], [ false, %bb.cv ], [ true, %bb.cl ], [ false, %bb.cw ], [ true, %bb.cm ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.0107.1.ph, %.loopexit446 ], [ %.sroa.0107.1.ph450, %.loopexit.split-lp447 ]
  %.sroa.0129.0197 = phi i1 [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513 ], [ true, %bb.cv ], [ %.sroa.0129.3, %bb.cl ], [ true, %bb.cw ], [ %.sroa.0129.3, %bb.cm ], [ %.sroa.0129.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit ], [ true, %.loopexit446 ], [ true, %.loopexit.split-lp447 ] ; 2 uses
  %.sroa.022.0195 = phi i64 [ %.sroa.022.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513 ], [ %.sroa.022.3, %bb.cv ], [ %.sroa.022.4, %bb.cl ], [ %.sroa.022.3, %bb.cw ], [ %.sroa.022.4, %bb.cm ], [ %.sroa.022.4, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.022.1.ph, %.loopexit446 ], [ %.sroa.022.1.ph449, %.loopexit.split-lp447 ] ; 2 uses
  %.sroa.10.0194 = phi ptr [ %.sroa.10.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513 ], [ %.sroa.10.3, %bb.cv ], [ %.sroa.10.4, %bb.cl ], [ %.sroa.10.3, %bb.cw ], [ %.sroa.10.4, %bb.cm ], [ %.sroa.10.4, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.10.1.ph, %.loopexit446 ], [ %.sroa.10.1.ph448, %.loopexit.split-lp447 ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #40
          to label %bb.dm unwind label %bb.bx

.body494.thread:                                  ; preds = %bb.da, %.body494.thread231, %bb.dm
  %.pn221.pn.pn228 = phi { ptr, i32 } [ %i.ks, %.body494.thread231 ], [ %.pn221.pn199, %bb.dm ], [ %i.kr, %bb.da ]
  %.sroa.0129.5227 = phi i1 [ true, %.body494.thread231 ], [ %.sroa.0129.0197, %bb.dm ], [ true, %bb.da ]
  %.sroa.022.6225 = phi i64 [ %.sroa.022.3, %.body494.thread231 ], [ %.sroa.022.0195, %bb.dm ], [ %.sroa.022.3, %bb.da ]
  %.sroa.10.6224 = phi ptr [ %.sroa.10.3, %.body494.thread231 ], [ %.sroa.10.0194, %bb.dm ], [ %.sroa.10.3, %bb.da ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #40
          to label %bb.es unwind label %bb.bx

.thread246:                                       ; preds = %.body505.thread238, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513, %bb.et, %bb.ep, %.body494, %bb.es
  %.pn221.pn.pn.pn255 = phi { ptr, i32 } [ %.pn221.pn.pn.pn, %bb.es ], [ %i.li, %.body494 ], [ %i.nq, %bb.ep ], [ %i.ns, %bb.et ], [ %.pn210.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513 ], [ %lpad.thr_comm236, %.body505.thread238 ] ; 3 uses
  %.sroa.0130.10254 = phi i1 [ true, %bb.es ], [ true, %.body494 ], [ true, %bb.ep ], [ true, %bb.et ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513 ], [ %.sroa.0130.7.ph, %.body505.thread238 ]
  %.sroa.022.10253 = phi i64 [ %.sroa.022.10, %bb.es ], [ %.sroa.022.3, %.body494 ], [ %.sroa.022.3, %bb.ep ], [ %.sroa.022.3, %bb.et ], [ %.sroa.022.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513 ], [ %.sroa.022.3.lcssa1168.lcssa1195, %.body505.thread238 ]
  %.sroa.10.10252 = phi ptr [ %.sroa.10.10, %bb.es ], [ %.sroa.10.3, %.body494 ], [ %.sroa.10.3, %bb.ep ], [ %.sroa.10.3, %bb.et ], [ %.sroa.10.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RecordPatECsiU5vK8fN4ZC_11ide_assists.exit513 ], [ %.sroa.10.3, %.body505.thread238 ] ; 3 uses
  %i.rv = icmp ne i64 %.sroa.022.10253, -1
  %or.cond = and i1 %.sroa.0130.10254, %i.rv
  br i1 %or.cond, label %bb.gk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit580

bb.gk:                                            ; preds = %.thread246
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.10252) ]
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.10.10252, i64 48 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !noundef !4
  %i.ry = add i32 %i.rx, -1                       ; 2 uses
  store i32 %i.ry, ptr %i.rw, align 4
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i578, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit580

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i578: ; preds = %bb.gk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.10.10252) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit580 unwind label %bb.bx

.loopexit454:                                     ; preds = %bb.gs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit589, %bb.cg, %bb.gq
  %.sroa.1043.1.ph = phi ptr [ undef, %bb.cg ], [ %.sroa.1043.2, %bb.gq ], [ %.sroa.1043.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit589 ], [ %.sroa.1043.2, %bb.gs ]
  %.sroa.038.1.ph = phi i64 [ -1, %bb.cg ], [ %.sroa.038.2, %bb.gq ], [ %.sroa.038.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit589 ], [ %.sroa.038.2, %bb.gs ]
  %.sroa.0105.1.ph = phi i1 [ true, %bb.cg ], [ true, %bb.gq ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit589 ], [ false, %bb.gs ]
  %lpad.loopexit459 = landingpad { ptr, i32 }
          cleanup
  br label %.thread270

.loopexit.split-lp455:                            ; preds = %bb.ch, %bb.hf
  %.sroa.1043.1.ph456 = phi ptr [ %.sroa.1043.2, %bb.hf ], [ undef, %bb.ch ]
  %.sroa.038.1.ph457 = phi i64 [ %.sroa.038.2, %bb.hf ], [ -1, %bb.ch ]
  %lpad.loopexit.split-lp460 = landingpad { ptr, i32 }
          cleanup
  br label %.thread270

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit483: ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.jq, ptr %i.ar, align 8
  store i64 0, ptr %i.fq, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662.backedge, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit483
  %.sroa.1043.2 = phi ptr [ undef, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit483 ], [ %i.xr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662.backedge ] ; 24 uses
  %.sroa.038.2 = phi i64 [ -1, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit483 ], [ %i.xq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662.backedge ] ; 25 uses
  %i.sa = invoke noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes10TupleFieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %.noexc583 unwind label %bb.gn ; 5 uses

.noexc583:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662
  %.not.i581 = icmp eq ptr %i.sa, null
  br i1 %.not.i581, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.go

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit622: ; preds = %.body657, %bb.ib, %bb.gn
  %.sroa.1043.3 = phi ptr [ %.sroa.1043.4, %bb.gn ], [ %.sroa.1043.7, %bb.ib ], [ %.sroa.1043.7, %.body657 ] ; 3 uses
  %.sroa.038.3 = phi i64 [ %.sroa.038.4, %bb.gn ], [ %.sroa.038.7, %bb.ib ], [ %.sroa.038.7, %.body657 ] ; 3 uses
  %.sroa.0123.3 = phi i1 [ true, %bb.gn ], [ %.sroa.0123.7, %bb.ib ], [ %.sroa.0123.7, %.body657 ] ; 3 uses
  %.pn241 = phi { ptr, i32 } [ %i.sg, %bb.gn ], [ %.pn239, %bb.ib ], [ %.pn239, %.body657 ] ; 3 uses
  %.val411 = load ptr, ptr %i.ar, align 8, !noundef !4 ; 3 uses
  %i.sb = icmp eq ptr %.val411, null
  br i1 %i.sb, label %.thread270, label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit622
  %i.sc = getelementptr inbounds nuw i8, ptr %.val411, i64 48 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4, !noundef !4
  %i.se = add i32 %i.sd, -1                       ; 2 uses
  store i32 %i.se, ptr %i.sc, align 4
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %bb.gm, label %.thread270

bb.gm:                                            ; preds = %bb.gl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val411) #39
          to label %.thread270 unwind label %bb.bx

bb.gn:                                            ; preds = %bb.je, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662
  %.sroa.1043.4 = phi ptr [ %.sroa.1043.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662 ], [ %i.xr, %bb.je ]
  %.sroa.038.4 = phi i64 [ %.sroa.038.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662 ], [ %i.xq, %bb.je ]
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit622

bb.go:                                            ; preds = %.noexc583
  %i.sh = load i64, ptr %i.fq, align 8, !alias.scope !1440, !noundef !4 ; 2 uses
  %i.si = add i64 %i.sh, 1
  store i64 %i.si, ptr %i.fq, align 8, !alias.scope !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 %i.sh, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.aq, ptr %i.an, align 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4148.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noundef nonnull @30, ptr noundef nonnull %i.an)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit586 unwind label %bb.ic

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.noexc583
  %.val410 = load ptr, ptr %i.ar, align 8, !noundef !4 ; 3 uses
  %i.sj = icmp eq ptr %.val410, null
  br i1 %i.sj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit589, label %bb.gp

bb.gp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit
  %i.sk = getelementptr inbounds nuw i8, ptr %.val410, i64 48 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !noundef !4
  %i.sm = add i32 %i.sl, -1                       ; 2 uses
  store i32 %i.sm, ptr %i.sk, align 4
  %i.sn = icmp eq i32 %i.sm, 0
  br i1 %i.sn, label %bb.gq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit589

bb.gq:                                            ; preds = %bb.gp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val410) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit589 unwind label %.loopexit454

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit589: ; preds = %bb.gp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.so = invoke fastcc noundef ptr @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eqs1_0B7_(ptr nonnull %0, ptr nonnull %i.fx)
          to label %bb.gr unwind label %.loopexit454 ; 2 uses

bb.gr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit589
  %.not228 = icmp eq ptr %i.so, null
  br i1 %.not228, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  %i.sp = invoke noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory16tuple_struct_patINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB7_9generated5nodes3PatEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.so, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ag)
          to label %bb.ha unwind label %.loopexit454 ; 5 uses

bb.gt:                                            ; preds = %bb.gr
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as)
          to label %bb.gv unwind label %.split299.thread

.split299.thread:                                 ; preds = %bb.gt
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.gu:                                            ; preds = %.thread270
  br i1 %.sroa.0105.0282, label %bb.jg, label %bb.gy

.split299:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %.thread311

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at)
          to label %bb.gw unwind label %bb.gz

bb.gw:                                            ; preds = %bb.hg, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.ss = icmp eq i64 %.sroa.038.2, -1
  br i1 %i.ss, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit592, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1043.2) ]
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.1043.2, i64 48 ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !noundef !4
  %i.sv = add i32 %i.su, -1                       ; 2 uses
  store i32 %i.sv, ptr %i.st, align 4
  %i.sw = icmp eq i32 %i.sv, 0
  br i1 %i.sw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i590, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit592

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i590: ; preds = %bb.gx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.1043.2) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit592 unwind label %bb.hi

bb.gy:                                            ; preds = %bb.jg, %bb.gu
  %.sroa.1043.6 = phi ptr [ %.sroa.1043.5302, %bb.jg ], [ %.sroa.1043.0278, %bb.gu ]
  %.sroa.038.6 = phi i64 [ %.sroa.038.5303, %bb.jg ], [ %.sroa.038.0279, %bb.gu ]
  %.sroa.0124.6 = phi i1 [ %.sroa.0123.5305, %bb.jg ], [ %.sroa.0123.0281, %bb.gu ]
  %.pn241.pn.pn.pn = phi { ptr, i32 } [ %.pn241.pn.pn306, %bb.jg ], [ %.pn241.pn283, %bb.gu ] ; 2 uses
  br i1 %.sroa.0124.6, label %.thread311, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit668

bb.gz:                                            ; preds = %bb.gv
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.thread311

bb.ha:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.sy = invoke fastcc noundef ptr @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eqs1_0B7_(ptr nonnull %0, ptr nonnull %i.fx)
          to label %bb.hc unwind label %bb.hb     ; 2 uses

bb.hb:                                            ; preds = %bb.ha, %bb.hd
  %.sroa.0122.2 = phi i1 [ false, %bb.hd ], [ true, %bb.ha ]
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.hc:                                            ; preds = %bb.ha
  %.not229 = icmp eq ptr %i.sy, null
  br i1 %.not229, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  %i.ta = invoke noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory16tuple_struct_patINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB7_9generated5nodes3PatEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.sy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.af)
          to label %bb.hm unwind label %bb.hb     ; 3 uses

bb.he:                                            ; preds = %bb.hc
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sp, i64 48 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !noundef !4
  %i.td = add i32 %i.tc, -1                       ; 2 uses
  store i32 %i.td, ptr %i.tb, align 4
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %bb.hf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit
end_hunk_0
begin_hunk_1_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq:bb.a
  %i.wn = load i64, ptr %i.fp, align 8, !alias.scope !1443, !noundef !4 ; 3 uses
  %i.wo = load i64, ptr %i.as, align 8, !range !28, !alias.scope !1443, !noundef !4
  %i.wp = icmp eq i64 %i.wn, %i.wo
  br i1 %i.wp, label %bb.im, label %bb.ip

bb.im:                                            ; preds = %bb.il
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatE8grow_oneCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.ip unwind label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.wq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wl, i64 48 ; 2 uses
  %i.ws = load i32, ptr %i.wr, align 4, !noalias !1443, !noundef !4
  %i.wt = add i32 %i.ws, -1                       ; 2 uses
  store i32 %i.wt, ptr %i.wr, align 4, !noalias !1443
  %i.wu = icmp eq i32 %i.wt, 0
  br i1 %i.wu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i635, label %.body636

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i635: ; preds = %bb.in
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.wl) #39
          to label %.body636 unwind label %bb.io

bb.io:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i635
  %i.wv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ip:                                            ; preds = %bb.im, %bb.il
  %i.ww = load ptr, ptr %i.fo, align 8, !alias.scope !1443, !nonnull !4, !noundef !4
  %i.wx = getelementptr inbounds nuw [16 x i8], ptr %i.ww, i64 %i.wn ; 2 uses
  store i64 3, ptr %i.wx, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  store ptr %i.wl, ptr %i.wy, align 8
  %i.wz = add i64 %i.wn, 1
  store i64 %i.wz, ptr %i.fp, align 8, !alias.scope !1443
  %i.xa = load ptr, ptr %i.fr, align 8, !nonnull !4, !noundef !4
  %i.xb = load i64, ptr %i.fs, align 8, !noundef !4
  %i.xc = invoke noundef nonnull ptr @_RNvMs_NtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB6_13SyntaxFactory10ident_path(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xa, i64 noundef %i.xb)
          to label %bb.iq unwind label %bb.ik

bb.iq:                                            ; preds = %bb.ip
  %i.xd = invoke { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory9expr_path(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.xc)
          to label %bb.ir unwind label %bb.ik     ; 2 uses

bb.ir:                                            ; preds = %bb.iq
  %i.xe = extractvalue { i64, ptr } %i.xd, 0
  %i.xf = extractvalue { i64, ptr } %i.xd, 1      ; 4 uses
  %i.xg = load ptr, ptr %i.ft, align 8, !nonnull !4, !noundef !4
  %i.xh = load i64, ptr %i.fu, align 8, !noundef !4
  %i.xi = invoke noundef nonnull ptr @_RNvMs_NtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB6_13SyntaxFactory10ident_path(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xg, i64 noundef %i.xh)
          to label %bb.it unwind label %bb.jf

bb.is:                                            ; preds = %bb.iw, %bb.iu
  %.sroa.0123.14.ph = phi i1 [ true, %bb.iu ], [ false, %bb.iw ]
  %lpad.thr_comm.split-lp342 = landingpad { ptr, i32 }
          cleanup
  br label %.body636

bb.it:                                            ; preds = %bb.ir
  %i.xj = invoke { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory9expr_path(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.xi)
          to label %bb.iu unwind label %bb.jf     ; 2 uses

bb.iu:                                            ; preds = %bb.it
  %i.xk = extractvalue { i64, ptr } %i.xj, 0
  %i.xl = extractvalue { i64, ptr } %i.xj, 1
  %i.xm = invoke { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory11expr_bin_op(ptr noundef nonnull align 8 %0, i64 noundef %i.xe, ptr noundef %i.xf, i16 2, i64 noundef %i.xk, ptr noundef %i.xl)
          to label %bb.iv unwind label %bb.is     ; 3 uses

bb.iv:                                            ; preds = %bb.iu
  %.not.i639 = icmp eq i64 %.sroa.038.2, -1
  br i1 %.not.i639, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit642, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.xn = extractvalue { i64, ptr } %i.xm, 1
  %i.xo = extractvalue { i64, ptr } %i.xm, 0
  %i.xp = invoke { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory11expr_bin_op(ptr noundef nonnull align 8 %0, i64 noundef range(i64 -1, 37) %.sroa.038.2, ptr noundef %.sroa.1043.2, i16 3, i64 noundef range(i64 0, 37) %i.xo, ptr noundef %i.xn)
          to label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit642 unwind label %bb.is

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit642: ; preds = %bb.iw, %bb.iv
  %.merged.i640 = phi { i64, ptr } [ %i.xp, %bb.iw ], [ %i.xm, %bb.iv ] ; 2 uses
  %i.xq = extractvalue { i64, ptr } %.merged.i640, 0 ; 8 uses
  %i.xr = extractvalue { i64, ptr } %.merged.i640, 1 ; 8 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i644 unwind label %bb.ix

bb.ix:                                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit642
  %i.xs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body627 unwind label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.xt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i644: ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists5utils17gen_trait_fn_body14gen_partial_eq0B7_.exit642
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit648 unwind label %bb.ie

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit648: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i650 unwind label %bb.iz

bb.iz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit648
  %i.xu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body651 unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.xv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i650: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit648
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit654 unwind label %bb.id

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit654: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i656 unwind label %bb.jb

bb.jb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit654
  %i.xw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body657 unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.xx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i656: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit654
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.jd unwind label %bb.ic

bb.jd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.sa, i64 48 ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4, !noundef !4
  %i.ya = add i32 %i.xz, -1                       ; 2 uses
  store i32 %i.ya, ptr %i.xy, align 4
  %i.yb = icmp eq i32 %i.ya, 0
  br i1 %i.yb, label %bb.je, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662.backedge: ; preds = %bb.jd, %bb.je
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662

bb.je:                                            ; preds = %bb.jd
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sa) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit662.backedge unwind label %bb.gn

bb.jf:                                            ; preds = %bb.it, %bb.ir
  %lpad.thr_comm341 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xf) ]
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xf, i64 48 ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 4, !noundef !4
  %i.ye = add i32 %i.yd, -1                       ; 2 uses
  store i32 %i.ye, ptr %i.yc, align 4
  %i.yf = icmp eq i32 %i.ye, 0
  br i1 %i.yf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i663, label %.body636

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i663: ; preds = %bb.jf
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.xf) #39
          to label %.body636 unwind label %bb.bx

.thread270:                                       ; preds = %.loopexit454, %.loopexit.split-lp455, %bb.gl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit622, %bb.gm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620
  %.pn241.pn283 = phi { ptr, i32 } [ %.pn231.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620 ], [ %.pn241, %bb.gl ], [ %.pn241, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit622 ], [ %.pn241, %bb.gm ], [ %lpad.loopexit459, %.loopexit454 ], [ %lpad.loopexit.split-lp460, %.loopexit.split-lp455 ] ; 2 uses
  %.sroa.0105.0282 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620 ], [ true, %bb.gl ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit622 ], [ true, %bb.gm ], [ %.sroa.0105.1.ph, %.loopexit454 ], [ %i.jo, %.loopexit.split-lp455 ]
  %.sroa.0123.0281 = phi i1 [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620 ], [ %.sroa.0123.3, %bb.gl ], [ %.sroa.0123.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit622 ], [ %.sroa.0123.3, %bb.gm ], [ true, %.loopexit454 ], [ true, %.loopexit.split-lp455 ] ; 2 uses
  %.sroa.038.0279 = phi i64 [ %.sroa.038.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620 ], [ %.sroa.038.3, %bb.gl ], [ %.sroa.038.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit622 ], [ %.sroa.038.3, %bb.gm ], [ %.sroa.038.1.ph, %.loopexit454 ], [ %.sroa.038.1.ph457, %.loopexit.split-lp455 ] ; 2 uses
  %.sroa.1043.0278 = phi ptr [ %.sroa.1043.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620 ], [ %.sroa.1043.3, %bb.gl ], [ %.sroa.1043.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEEECsiU5vK8fN4ZC_11ide_assists.exit622 ], [ %.sroa.1043.3, %bb.gm ], [ %.sroa.1043.1.ph, %.loopexit454 ], [ %.sroa.1043.1.ph456, %.loopexit.split-lp455 ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as) #40
          to label %bb.gu unwind label %bb.bx

bb.jg:                                            ; preds = %.split299.thread, %bb.gu
  %.pn241.pn.pn306 = phi { ptr, i32 } [ %i.sq, %.split299.thread ], [ %.pn241.pn283, %bb.gu ]
  %.sroa.0123.5305 = phi i1 [ true, %.split299.thread ], [ %.sroa.0123.0281, %bb.gu ]
  %.sroa.038.5303 = phi i64 [ %.sroa.038.2, %.split299.thread ], [ %.sroa.038.0279, %bb.gu ]
  %.sroa.1043.5302 = phi ptr [ %.sroa.1043.2, %.split299.thread ], [ %.sroa.1043.0278, %bb.gu ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #40
          to label %bb.gy unwind label %bb.bx

.thread311:                                       ; preds = %.body612.thread335, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620, %.split299, %bb.gz, %bb.gy
  %.pn241.pn.pn.pn320 = phi { ptr, i32 } [ %.pn241.pn.pn.pn, %bb.gy ], [ %i.sr, %.split299 ], [ %i.sx, %bb.gz ], [ %.pn231.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620 ], [ %lpad.thr_comm333, %.body612.thread335 ] ; 3 uses
  %.sroa.0124.6319 = phi i1 [ true, %bb.gy ], [ true, %.split299 ], [ true, %bb.gz ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620 ], [ %.sroa.0124.8.ph, %.body612.thread335 ]
  %.sroa.038.6318 = phi i64 [ %.sroa.038.6, %bb.gy ], [ %.sroa.038.2, %.split299 ], [ %.sroa.038.2, %bb.gz ], [ %.sroa.038.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620 ], [ %.sroa.038.2.lcssa1263.lcssa1280, %.body612.thread335 ]
  %.sroa.1043.6317 = phi ptr [ %.sroa.1043.6, %bb.gy ], [ %.sroa.1043.2, %.split299 ], [ %.sroa.1043.2, %bb.gz ], [ %.sroa.1043.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleStructPatECsiU5vK8fN4ZC_11ide_assists.exit620 ], [ %.sroa.1043.2, %.body612.thread335 ] ; 3 uses
  %i.yg = icmp ne i64 %.sroa.038.6318, -1
  %or.cond3 = and i1 %.sroa.0124.6319, %i.yg
  br i1 %or.cond3, label %bb.jh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit668

bb.jh:                                            ; preds = %.thread311
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1043.6317) ]
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.1043.6317, i64 48 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !noundef !4
  %i.yj = add i32 %i.yi, -1                       ; 2 uses
  store i32 %i.yj, ptr %i.yh, align 4
  %i.yk = icmp eq i32 %i.yj, 0
  br i1 %i.yk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i666, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit668

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i666: ; preds = %bb.jh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.1043.6317) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit668 unwind label %bb.bx

.thread151:                                       ; preds = %bb.cb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %.thread169, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes7VariantEECsiU5vK8fN4ZC_11ide_assists.exit, %bb.al, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit
  %.pn241.pn.pn.pn.pn.pn.pn.pn.pn158 = phi { ptr, i32 } [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit ], [ %lpad.thr_comm167, %.thread169 ], [ %.pn241.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes7VariantEECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.pn241.pn.pn.pn.pn.pn.pn.pn, %bb.al ], [ %lpad.thr_comm.split-lp168, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ %lpad.thr_comm.split-lp168, %bb.cb ]
  %.sroa.099.0157 = phi i8 [ %.sroa.099.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.099.4, %.thread169 ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes7VariantEECsiU5vK8fN4ZC_11ide_assists.exit ], [ 1, %bb.al ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ 1, %bb.cb ]
  %.sroa.0101.2156 = phi i8 [ %.sroa.0101.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit ], [ 1, %.thread169 ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes7VariantEECsiU5vK8fN4ZC_11ide_assists.exit ], [ 1, %bb.al ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ 1, %bb.cb ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj) #40
          to label %.body unwind label %bb.bx

.body.thread:                                     ; preds = %bb.ai, %.body
  %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn420 = phi { ptr, i32 } [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.eq, %bb.ai ] ; 2 uses
  %.sroa.0101.5419 = phi i8 [ %.sroa.0101.5, %.body ], [ 1, %bb.ai ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ef, i64 48 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !noundef !4
  %i.yn = add i32 %i.ym, -1                       ; 2 uses
  store i32 %i.yn, ptr %i.yl, align 4
  %i.yo = icmp eq i32 %i.yn, 0
  br i1 %i.yo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i669, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit671

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i669: ; preds = %.body.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ef) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit671 unwind label %bb.bx

bb.ji:                                            ; preds = %bb.z, %bb.x
  %lpad.thr_comm139 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  %i.yp = getelementptr inbounds nuw i8, ptr %i.do, i64 48 ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !noundef !4
  %i.yr = add i32 %i.yq, -1                       ; 2 uses
  store i32 %i.yr, ptr %i.yp, align 4
  %i.ys = icmp eq i32 %i.yr, 0
  br i1 %i.ys, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i672, label %.thread126

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i672: ; preds = %bb.ji
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.do) #39
          to label %.thread126 unwind label %bb.bx

.thread126:                                       ; preds = %bb.ji, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i672, %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit671
  %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn132 = phi { ptr, i32 } [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit671 ], [ %lpad.thr_comm.split-lp140, %bb.y ], [ %lpad.thr_comm139, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i672 ], [ %lpad.thr_comm139, %bb.ji ] ; 2 uses
  %.sroa.0109.2130 = phi i1 [ %.sroa.0109.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit671 ], [ true, %bb.y ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i672 ], [ true, %bb.ji ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.yt = getelementptr inbounds nuw i8, ptr %i.dc, i64 48 ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 4, !noundef !4
  %i.yv = add i32 %i.yu, -1                       ; 2 uses
  store i32 %i.yv, ptr %i.yt, align 4
  %i.yw = icmp eq i32 %i.yv, 0
  br i1 %i.yw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i675, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit677

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i675: ; preds = %.thread126
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dc) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit677 unwind label %bb.bx

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit677: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i675, %.thread126
  br i1 %.sroa.0109.2130, label %bb.jj, label %.thread

bb.jj:                                            ; preds = %.split.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit677, %bb.r
  %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn117 = phi { ptr, i32 } [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn132, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit677 ], [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.r ], [ %lpad.thr_comm120, %.split.thread ] ; 2 uses
  %.sroa.0103.1116 = phi i1 [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit677 ], [ false, %bb.r ], [ true, %.split.thread ]
  %i.yx = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 4, !noundef !4
  %i.yz = add i32 %i.yy, -1                       ; 2 uses
  store i32 %i.yz, ptr %i.yx, align 4
  %i.za = icmp eq i32 %i.yz, 0
  br i1 %i.za, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i678, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit680

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i678: ; preds = %bb.jj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cy) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit680 unwind label %bb.bx

bb.jk:                                            ; preds = %bb.o, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %i.zb = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  %i.zc = load i32, ptr %i.zb, align 4, !noundef !4
  %i.zd = add i32 %i.zc, -1                       ; 2 uses
  store i32 %i.zd, ptr %i.zb, align 4
  %i.ze = icmp eq i32 %i.zd, 0
  br i1 %i.ze, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i681, label %.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i681: ; preds = %bb.jk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.co) #39
          to label %.thread unwind label %bb.bx

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit686: ; preds = %bb.r, %.thread383, %bb.no, %.thread349, %bb.lr, %bb.jm, %bb.jn, %.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i684, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit680
  %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105, %.thread ], [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn117, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit680 ], [ %.pn187.pn.pn, %.thread349 ], [ %i.zm, %bb.jm ], [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i684 ], [ %i.zm, %bb.jn ], [ %.pn187.pn.pn, %bb.lr ], [ %.pn196.pn388, %bb.no ], [ %.pn196.pn388, %.thread383 ], [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.r ]
  resume { ptr, i32 } %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

.thread:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit677, %.split, %bb.jk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i681, %bb.n, %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit680
  %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105 = phi { ptr, i32 } [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn117, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit680 ], [ %lpad.thr_comm.split-lp, %bb.n ], [ %i.cm, %bb.k ], [ %lpad.thr_comm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i681 ], [ %lpad.thr_comm, %bb.jk ], [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn132, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit677 ], [ %lpad.thr_comm.split-lp121, %.split ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !noundef !4
  %i.zh = add i32 %i.zg, -1                       ; 2 uses
  store i32 %i.zh, ptr %i.zf, align 4
  %i.zi = icmp eq i32 %i.zh, 0
  br i1 %i.zi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i684, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit686

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i684: ; preds = %.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ca) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit686 unwind label %bb.bx

bb.jl:                                            ; preds = %bb.j
  %i.zj = call noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory12expr_literal(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 -1, ptr %i.j, align 8
  %i.zk = call noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory10block_exprINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtB7_9generated5nodes4StmtEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, i64 noundef 18, ptr nonnull %i.zj) ; 5 uses
  store ptr %i.zk, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.zl = invoke noundef nonnull ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprNtNtB8_4edit11AstNodeEdit6indentCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, i8 noundef 1)
          to label %bb.jo unwind label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.zm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 48 ; 2 uses
  %i.zo = load i32, ptr %i.zn, align 4, !noundef !4
  %i.zp = add i32 %i.zo, -1                       ; 2 uses
  store i32 %i.zp, ptr %i.zn, align 4
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %bb.jn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit686

bb.jn:                                            ; preds = %bb.jm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.zk) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit686 unwind label %bb.bx

bb.jo:                                            ; preds = %bb.jl
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zk, i64 48 ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !noundef !4
  %i.zt = add i32 %i.zs, -1                       ; 2 uses
  store i32 %i.zt, ptr %i.zr, align 4
  %i.zu = icmp eq i32 %i.zt, 0
  br i1 %i.zu, label %bb.jp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit689

bb.jp:                                            ; preds = %bb.jo
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.zk) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit689

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit689: ; preds = %bb.jo, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordFieldListECsiU5vK8fN4ZC_11ide_assists.exit704

bb.jq:                                            ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.zv = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 6 uses
  %i.zw = load i32, ptr %i.zv, align 4, !noundef !4 ; 2 uses
  %i.zx = icmp eq i32 %i.zw, -1
  br i1 %i.zx, label %bb.js, label %bb.jr, !prof !5

bb.jr:                                            ; preds = %bb.jq
  %i.zy = add nuw i32 %i.zw, 1
  store i32 %i.zy, ptr %i.zv, align 4
  %i.zz = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.cl)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit692 unwind label %.thread396

bb.js:                                            ; preds = %bb.jq
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #36
          to label %.noexc691 unwind label %.thread396

.noexc691:                                        ; preds = %bb.js
  unreachable

bb.jt:                                            ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 8 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !noundef !4 ; 2 uses
  %i.aac = icmp eq i32 %i.aab, -1
  br i1 %i.aac, label %bb.jv, label %bb.ju, !prof !5

bb.ju:                                            ; preds = %bb.jt
  %i.aad = add nuw i32 %i.aab, 1
  store i32 %i.aad, ptr %i.aaa, align 4
  %i.aae = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.cl)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit695 unwind label %.thread361

bb.jv:                                            ; preds = %bb.jt
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #36
          to label %.noexc694 unwind label %.thread361

.noexc694:                                        ; preds = %bb.jv
  unreachable

.thread361:                                       ; preds = %bb.lp, %bb.kd, %bb.jv, %bb.ju
  %.sroa.971.1.ph = phi ptr [ undef, %bb.ju ], [ %.sroa.971.2, %bb.lp ], [ %.sroa.971.2, %bb.kd ], [ undef, %bb.jv ]
end_hunk_1
