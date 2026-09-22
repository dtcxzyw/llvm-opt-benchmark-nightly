Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.12?download=true
inline.NumInlined: 395
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB3_11OperatorUri3newINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtB1l_6string6StringB1N_EEEB9_:bb.a
          to label %.noexc116 unwind label %.loopexit.split-lp319.loopexit.split-lp.loopexit

.noexc116:                                        ; preds = %bb.h
  %i.ds = zext i1 %i.dr to i8
  %i.dt = or i8 %.sroa.014.2.2.i.i, %i.ds
  br label %bb.i

bb.i:                                             ; preds = %.noexc116, %.preheader30.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader30.3.i.i ], [ %i.dt, %.noexc116 ] ; 2 uses
  %i.du = add i64 %.sroa.06.036.i.i, 64           ; 2 uses
  %i.dv = add i64 %.sroa.06.036.i.i, 130
  %i.dw = icmp uge i64 %i.dv, %2
  %i.dx = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.dy = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsgxBkk5gSRhY_4core3str7pattern13simd_containss0_0Cs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %.sroa.06.036.i.i, i16 noundef %i.ci, i1 noundef zeroext false) #26
          to label %.noexc117 unwind label %.loopexit.split-lp319.loopexit.split-lp.loopexit

.noexc117:                                        ; preds = %bb.j
  %i.dz = zext i1 %i.dy to i8
  br label %.preheader30.1.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %.preheader.i.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.014.4.i.i, %bb.k ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.cc, %.preheader.i.i ], [ %i.es, %bb.k ]
  %i.ea = add i64 %2, -18                         ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ea ; 2 uses
  %.sroa.0.0.copyload.i57.i.i = load <16 x i8>, ptr %i.eb, align 1, !alias.scope !112, !noalias !114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %.sroa.01.0.copyload.i58.i.i = load <16 x i8>, ptr %i.ec, align 1, !alias.scope !112, !noalias !114
  %i.ed = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i, splat (i8 58)
  %i.ee = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i, splat (i8 47)
  %i.ef = and <16 x i1> %i.ed, %i.ee
  %i.eg = bitcast <16 x i1> %i.ef to i16          ; 2 uses
  %i.eh = icmp eq i16 %i.eg, 0
  br i1 %i.eh, label %.split, label %bb.m

.lr.ph40.i.i:                                     ; preds = %.preheader.i.i, %bb.k
  %.sroa.06.139.i.i = phi i64 [ %i.ep, %bb.k ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i.i ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.139.i.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i = load <16 x i8>, ptr %i.ei, align 1, !alias.scope !112, !noalias !115
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %.sroa.01.0.copyload.i60.i.i = load <16 x i8>, ptr %i.ej, align 1, !alias.scope !112, !noalias !115
  %i.ek = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i, splat (i8 58)
  %i.el = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i, splat (i8 47)
  %i.em = and <16 x i1> %i.ek, %i.el
  %i.en = bitcast <16 x i1> %i.em to i16          ; 2 uses
  %i.eo = icmp eq i16 %i.en, 0
  br i1 %i.eo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc118, %.lr.ph40.i.i
  %.sroa.014.4.i.i = phi i8 [ 0, %.lr.ph40.i.i ], [ %i.eu, %.noexc118 ] ; 2 uses
  %i.ep = add i64 %.sroa.06.139.i.i, 16
  %i.eq = add i64 %.sroa.06.139.i.i, 34
  %i.er = icmp uge i64 %i.eq, %2
  %i.es = trunc nuw i8 %.sroa.014.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.er, %i.es
  br i1 %or.cond3.i.i, label %._crit_edge.i.i, label %.lr.ph40.i.i

bb.l:                                             ; preds = %.lr.ph40.i.i
  %i.et = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsgxBkk5gSRhY_4core3str7pattern13simd_containss0_0Cs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %.sroa.06.139.i.i, i16 noundef %i.en, i1 noundef zeroext false) #26
          to label %.noexc118 unwind label %.loopexit.split-lp319.loopexit

.noexc118:                                        ; preds = %bb.l
  %i.eu = zext i1 %i.et to i8
  br label %bb.k

.split:                                           ; preds = %.noexc119, %._crit_edge.i.i
  %.sroa.014.5.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i, %._crit_edge.i.i ], [ %i.ey, %.noexc119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !112
  %i.ev = trunc nuw i8 %.sroa.014.5.i.i to i1
  br i1 %i.ev, label %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread, label %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread228

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ew = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsgxBkk5gSRhY_4core3str7pattern13simd_containss0_0Cs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %i.ea, i16 noundef %i.eg, i1 noundef zeroext %.lcssa.i.i) #26
          to label %.noexc119 unwind label %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp

.noexc119:                                        ; preds = %bb.m
  %i.ex = zext i1 %i.ew to i8
  %i.ey = or i8 %.sroa.014.3.lcssa.i.i, %i.ex
  br label %.split

.body:                                            ; preds = %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp, %.thread265
  %.sroa.065.1 = phi i8 [ %.sroa.065.3, %.thread265 ], [ %.sroa.056.1.ph.ph.ph, %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.056.0 = phi i8 [ %.sroa.056.2, %.thread265 ], [ %.sroa.056.1.ph.ph.ph, %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp ]
  %.pn108 = phi { ptr, i32 } [ %.pn105.pn, %.thread265 ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ez = trunc nuw i8 %.sroa.056.0 to i1
  br i1 %i.ez, label %.thread220, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit201

.loopexit318:                                     ; preds = %.lr.ph, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i
  %lpad.loopexit320 = landingpad { ptr, i32 }
          cleanup
  br label %.thread220

.loopexit.split-lp319.loopexit:                   ; preds = %bb.l
  %lpad.loopexit323 = landingpad { ptr, i32 }
          cleanup
  br label %.thread220

.loopexit.split-lp319.loopexit.split-lp.loopexit: ; preds = %bb.f, %bb.g, %bb.h, %bb.j
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %.thread220

.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread, %bb.aa, %bb.dn, %bb.m, %._crit_edge, %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i176
  %.sroa.056.1.ph.ph.ph = phi i8 [ 1, %bb.m ], [ 1, %._crit_edge ], [ 1, %bb.dn ], [ 1, %bb.n ], [ 1, %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread ], [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i176 ], [ 1, %bb.aa ] ; 2 uses
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.c
  %i.fa = load i16, ptr %1, align 1
  %i.fb = xor i16 12090, %i.fa
  %i.fc = getelementptr i8, ptr %1, i64 2
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.fd to i16
  %i.ff = xor i16 47, %i.fe
  %i.fg = or i16 %i.fb, %i.ff
  %i.fh = icmp ne i16 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread, label %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread228

_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread228: ; preds = %_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5XgW7KoffLW_12opendal_core.exit.backedge.us.i.i.i, %bb.c, %.split, %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !9 ; 2 uses
  %.idx = mul nuw nsw i64 %i.fn, 48
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx
  %i.fp = icmp eq i64 %i.fn, 0
  br i1 %i.fp, label %._crit_edge, label %.lr.ph

_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %.split.us.i.i.i, %.lr.ph.split.us.i.i.i, %.split, %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.fq, align 8
  store ptr null, ptr %i.q, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr null, ptr %i.fr, align 8
  invoke void @_RNvMCs8HcOsDT3sMt_3urlNtB2_12ParseOptions5parse(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.z unwind label %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread228, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.0.0344 = phi ptr [ %i.fs, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit ], [ %i.fl, %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread228 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0344, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0344)
          to label %bb.o unwind label %.loopexit318

._crit_edge:                                      ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit, %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !116
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc121 unwind label %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %._crit_edge
  %i.ft = load i64, ptr %i.i, align 8, !range !10, !noalias !116, !noundef !9
  %i.fu = trunc nuw i64 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !range !11, !noalias !116, !noundef !9 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.fu, label %bb.n, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i, !prof !12

bb.n:                                             ; preds = %.noexc121
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !116
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.fw, i64 %i.fy) #27
          to label %.noexc122 unwind label %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.n
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %.noexc121
  %i.fz = load ptr, ptr %i.fx, align 8, !noalias !116, !nonnull !9, !noundef !9 ; 5 uses
  %i.ga = icmp samesign ule i64 %2, %i.fw
  call void @llvm.assume(i1 %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !116
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fz, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !117
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i120.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check397 = icmp ult i64 %2, 32
  br i1 %min.iters.check397, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gb = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %index ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.gc, align 1, !alias.scope !118, !noalias !119 ; 2 uses
  %wide.load398 = load <16 x i8>, ptr %i.gd, align 1, !alias.scope !118, !noalias !119 ; 2 uses
  %i.ge = add <16 x i8> %wide.load, splat (i8 -65)
  %i.gf = add <16 x i8> %wide.load398, splat (i8 -65)
  %i.gg = icmp ult <16 x i8> %i.ge, splat (i8 26)
  %i.gh = icmp ult <16 x i8> %i.gf, splat (i8 26)
  %i.gi = select <16 x i1> %i.gg, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.gj = select <16 x i1> %i.gh, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.gk = or <16 x i8> %i.gi, %wide.load
  %i.gl = or <16 x i8> %i.gj, %wide.load398
  store <16 x i8> %i.gk, ptr %i.gc, align 1, !alias.scope !118, !noalias !119
  store <16 x i8> %i.gl, ptr %i.gd, align 1, !alias.scope !118, !noalias !119
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i120.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec399 = and i64 %2, -8                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index400 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next402, %vec.epilog.vector.body ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 %index400 ; 2 uses
  %wide.load401 = load <8 x i8>, ptr %i.gn, align 1, !alias.scope !118, !noalias !119 ; 2 uses
  %i.go = add <8 x i8> %wide.load401, splat (i8 -65)
  %i.gp = icmp ult <8 x i8> %i.go, splat (i8 26)
  %i.gq = select <8 x i1> %i.gp, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.gr = or <8 x i8> %i.gq, %wide.load401
  store <8 x i8> %i.gr, ptr %i.gn, align 1, !alias.scope !118, !noalias !119
  %index.next402 = add nuw i64 %index400, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next402, %n.vec399
  br i1 %i.gs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n403 = icmp eq i64 %2, %n.vec399
  br i1 %cmp.n403, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %.lr.ph.i.i120.preheader

.lr.ph.i.i120.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec399, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i120

.lr.ph.i.i120:                                    ; preds = %.lr.ph.i.i120.preheader, %.lr.ph.i.i120
  %.sroa.0.05.i.i = phi i64 [ %i.gy, %.lr.ph.i.i120 ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i120.preheader ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.sroa.0.05.i.i ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !118, !noalias !119, !noundef !9 ; 2 uses
  %i.gv = add i8 %i.gu, -65
  %i.gw = icmp ult i8 %i.gv, 26
  %i.gx = select i1 %i.gw, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.gx, %i.gu
  store i8 %.sroa.03.0.i.i, ptr %i.gt, align 1, !alias.scope !118, !noalias !119
  %i.gy = add nuw i64 %.sroa.0.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gy, %2
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %.lr.ph.i.i120, !llvm.loop !55

bb.o:                                             ; preds = %.lr.ph
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0344, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gz)
          to label %bb.q unwind label %bb.v

bb.p:                                             ; preds = %bb.q
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.thread220

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBN_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE6insertCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.hb = load i64, ptr %i.am, align 8, !range !16, !alias.scope !120, !noundef !9
  %i.hc = icmp eq i64 %i.hb, -1
  br i1 %i.hc, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.thread220 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit unwind label %.loopexit318

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.r, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.hf = icmp eq ptr %i.fs, %i.fo
  br i1 %i.hf, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %bb.o
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #29
          to label %.thread220 unwind label %bb.w

bb.w:                                             ; preds = %.thread220, %.body183, %bb.dp, %bb.dm, %bb.dl, %.thread277, %bb.dk, %bb.cq, %bb.cp, %bb.co, %.thread260, %bb.ca, %.thread265, %bb.v
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit: ; preds = %.lr.ph.i.i120, %middle.block, %vec.epilog.middle.block, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false)
  store i64 %i.fw, ptr %0, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fz, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %.sroa.813.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -1, ptr %.sroa.12.0..sroa_idx, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.do, %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBF_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit201, %bb.dp, %bb.ck, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.hi, %bb.x ], [ %.pn110219, %bb.dp ], [ %.pn110, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit201 ], [ %i.on, %bb.ck ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
  br label %bb.cm

bb.z:                                             ; preds = %_RNvXst_NtNtCsgxBkk5gSRhY_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hk = load i64, ptr %i.ai, align 8, !range !16, !noundef !9
  %i.hl = icmp eq i64 %i.hk, -1
  br i1 %i.hl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.hn = load i8, ptr %i.hm, align 8, !range !121, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.o, i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 19)
          to label %bb.dn unwind label %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(88) %i.ai, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.515, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.517, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.515, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.hp = load i32, ptr %i.ho, align 4, !noundef !9 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val = load ptr, ptr %i.hq, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val112 = load i64, ptr %i.hr, align 8, !noundef !9 ; 3 uses
  %i.hs = zext i32 %i.hp to i64                   ; 14 uses
  %i.ht = icmp eq i32 %i.hp, 0                    ; 2 uses
  br i1 %i.ht, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i = icmp ugt i64 %.val112, %i.hs
  br i1 %.not.i.i.i.i, label %bb.ad, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ac
  %i.hu = icmp eq i64 %.val112, %i.hs
  br i1 %i.hu, label %bb.ag, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.hs
  %i.hw = load i8, ptr %i.hv, align 1, !alias.scope !122, !noundef !9
  %i.hx = icmp sgt i8 %i.hw, -65
  br i1 %i.hx, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.i
  invoke void @_RNvNtCsgxBkk5gSRhY_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val112, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.hs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #30
          to label %.noexc124 unwind label %bb.af

.noexc124:                                        ; preds = %bb.ae
  unreachable

.thread265:                                       ; preds = %bb.cf, %bb.bx, %bb.dm, %bb.af
  %.sroa.065.3 = phi i8 [ %.sroa.065.4.ph, %bb.dm ], [ 1, %bb.af ], [ 0, %bb.bx ], [ 0, %bb.cf ]
  %.sroa.056.2 = phi i8 [ 1, %bb.dm ], [ 1, %bb.af ], [ 0, %bb.bx ], [ 0, %bb.cf ]
  %.pn105.pn = phi { ptr, i32 } [ %.pn105.ph, %bb.dm ], [ %i.hy, %bb.af ], [ %lpad.thr_comm.split-lp, %bb.bx ], [ %i.od, %bb.cf ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs8HcOsDT3sMt_3url3UrlECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aj) #29
          to label %.body unwind label %bb.w

bb.af:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.thread265

bb.ag:                                            ; preds = %bb.ad, %.split.i.i.i.i, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !124
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.hs, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc134 unwind label %bb.af

.noexc134:                                        ; preds = %bb.ag
  %i.hz = load i64, ptr %i.h, align 8, !range !10, !noalias !124, !noundef !9
  %i.ia = trunc nuw i64 %i.hz to i1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !range !11, !noalias !124, !noundef !9 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.ia, label %bb.ah, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i125, !prof !12

bb.ah:                                            ; preds = %.noexc134
  %i.ie = load i64, ptr %i.id, align 8, !noalias !124
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ic, i64 %i.ie) #27
          to label %.noexc135 unwind label %bb.af

.noexc135:                                        ; preds = %bb.ah
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i125: ; preds = %.noexc134
  %i.if = load ptr, ptr %i.id, align 8, !noalias !124, !nonnull !9, !noundef !9 ; 5 uses
  %i.ig = icmp samesign uge i64 %i.ic, %i.hs
  call void @llvm.assume(i1 %i.ig)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !124
  br i1 %i.ht, label %.loopexit317, label %iter.check417

iter.check417:                                    ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i125
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %i.hs, i1 false), !noalias !125
  %min.iters.check404 = icmp ult i32 %i.hp, 8
  br i1 %min.iters.check404, label %.lr.ph.i.i128.preheader, label %vector.main.loop.iter.check405

vector.main.loop.iter.check405:                   ; preds = %iter.check417
  %min.iters.check406 = icmp ult i32 %i.hp, 32
  br i1 %min.iters.check406, label %vec.epilog.ph421, label %vector.ph407

vector.ph407:                                     ; preds = %vector.main.loop.iter.check405
  %i.ih = and i64 %i.hs, 24
  %n.vec408 = and i64 %i.hs, 4294967264           ; 4 uses
  br label %vector.body409

vector.body409:                                   ; preds = %vector.ph407, %vector.body409
  %index410 = phi i64 [ 0, %vector.ph407 ], [ %index.next413, %vector.body409 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %index410 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %wide.load411 = load <16 x i8>, ptr %i.ii, align 1, !alias.scope !126, !noalias !127 ; 2 uses
  %wide.load412 = load <16 x i8>, ptr %i.ij, align 1, !alias.scope !126, !noalias !127 ; 2 uses
  %i.ik = add <16 x i8> %wide.load411, splat (i8 -65)
  %i.il = add <16 x i8> %wide.load412, splat (i8 -65)
  %i.im = icmp ult <16 x i8> %i.ik, splat (i8 26)
  %i.in = icmp ult <16 x i8> %i.il, splat (i8 26)
  %i.io = select <16 x i1> %i.im, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ip = select <16 x i1> %i.in, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.iq = or <16 x i8> %i.io, %wide.load411
  %i.ir = or <16 x i8> %i.ip, %wide.load412
  store <16 x i8> %i.iq, ptr %i.ii, align 1, !alias.scope !126, !noalias !127
  store <16 x i8> %i.ir, ptr %i.ij, align 1, !alias.scope !126, !noalias !127
  %index.next413 = add nuw i64 %index410, 32      ; 2 uses
  %i.is = icmp eq i64 %index.next413, %n.vec408
  br i1 %i.is, label %middle.block414, label %vector.body409, !llvm.loop !72

middle.block414:                                  ; preds = %vector.body409
  %cmp.n415 = icmp eq i64 %n.vec408, %i.hs
  br i1 %cmp.n415, label %.loopexit317, label %vec.epilog.iter.check419

vec.epilog.iter.check419:                         ; preds = %middle.block414
  %min.epilog.iters.check420 = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check420, label %.lr.ph.i.i128.preheader, label %vec.epilog.ph421, !prof !15

vec.epilog.ph421:                                 ; preds = %vector.main.loop.iter.check405, %vec.epilog.iter.check419
  %vec.epilog.resume.val416 = phi i64 [ %n.vec408, %vec.epilog.iter.check419 ], [ 0, %vector.main.loop.iter.check405 ]
  %n.vec422 = and i64 %i.hs, 4294967288           ; 3 uses
  br label %vec.epilog.vector.body423

vec.epilog.vector.body423:                        ; preds = %vec.epilog.vector.body423, %vec.epilog.ph421
  %index424 = phi i64 [ %vec.epilog.resume.val416, %vec.epilog.ph421 ], [ %index.next426, %vec.epilog.vector.body423 ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.if, i64 %index424 ; 2 uses
  %wide.load425 = load <8 x i8>, ptr %i.it, align 1, !alias.scope !126, !noalias !127 ; 2 uses
  %i.iu = add <8 x i8> %wide.load425, splat (i8 -65)
  %i.iv = icmp ult <8 x i8> %i.iu, splat (i8 26)
  %i.iw = select <8 x i1> %i.iv, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ix = or <8 x i8> %i.iw, %wide.load425
  store <8 x i8> %i.ix, ptr %i.it, align 1, !alias.scope !126, !noalias !127
  %index.next426 = add nuw i64 %index424, 8       ; 2 uses
  %i.iy = icmp eq i64 %index.next426, %n.vec422
  br i1 %i.iy, label %vec.epilog.middle.block427, label %vec.epilog.vector.body423, !llvm.loop !73

vec.epilog.middle.block427:                       ; preds = %vec.epilog.vector.body423
  %cmp.n428 = icmp eq i64 %n.vec422, %i.hs
  br i1 %cmp.n428, label %.loopexit317, label %.lr.ph.i.i128.preheader

.lr.ph.i.i128.preheader:                          ; preds = %iter.check417, %vec.epilog.iter.check419, %vec.epilog.middle.block427
  %.sroa.0.05.i.i129.ph = phi i64 [ 0, %iter.check417 ], [ %n.vec408, %vec.epilog.iter.check419 ], [ %n.vec422, %vec.epilog.middle.block427 ]
  br label %.lr.ph.i.i128

.lr.ph.i.i128:                                    ; preds = %.lr.ph.i.i128.preheader, %.lr.ph.i.i128
  %.sroa.0.05.i.i129 = phi i64 [ %i.je, %.lr.ph.i.i128 ], [ %.sroa.0.05.i.i129.ph, %.lr.ph.i.i128.preheader ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sroa.0.05.i.i129 ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !126, !noalias !127, !noundef !9 ; 2 uses
  %i.jb = add i8 %i.ja, -65
  %i.jc = icmp ult i8 %i.jb, 26
  %i.jd = select i1 %i.jc, i8 32, i8 0
  %.sroa.03.0.i.i130 = or i8 %i.jd, %i.ja
  store i8 %.sroa.03.0.i.i130, ptr %i.iz, align 1, !alias.scope !126, !noalias !127
  %i.je = add nuw nsw i64 %.sroa.0.05.i.i129, 1   ; 2 uses
  %exitcond.not.i.i131 = icmp eq i64 %i.je, %i.hs
  br i1 %exitcond.not.i.i131, label %.loopexit317, label %.lr.ph.i.i128, !llvm.loop !74

.loopexit317:                                     ; preds = %.lr.ph.i.i128, %middle.block414, %vec.epilog.middle.block427, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i125
  store i64 %i.ic, ptr %i.ah, align 8, !alias.scope !123, !noalias !128
  %.sroa.5.0..sroa_idx6.i132 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.if, ptr %.sroa.5.0..sroa_idx6.i132, align 8, !alias.scope !123, !noalias !128
  %.sroa.7.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.hs, ptr %.sroa.7.0..sroa_idx.i133, align 8, !alias.scope !123, !noalias !128
  %i.jf = invoke { ptr, i64 } @_RNvMs_Cs8HcOsDT3sMt_3urlNtB4_3Url5query(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aj)
          to label %bb.ai unwind label %.loopexit.split-lp ; 2 uses

.loopexit306:                                     ; preds = %bb.aj, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i194
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.loopexit.split-lp:                               ; preds = %.loopexit317, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECs5XgW7KoffLW_12opendal_core.exit151, %bb.as, %bb.au, %bb.aw, %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread
  %.sroa.065.5.ph = phi i8 [ 0, %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread ], [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECs5XgW7KoffLW_12opendal_core.exit151 ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %bb.aw ], [ 1, %.loopexit317 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.ai:                                            ; preds = %.loopexit317
  %i.jg = extractvalue { ptr, i64 } %i.jf, 0      ; 2 uses
  %.not = icmp eq ptr %i.jg, null                 ; 2 uses
  %i.jh = extractvalue { ptr, i64 } %i.jf, 1
  %.sroa.570.0 = select i1 %.not, i64 0, i64 %i.jh
  %.sroa.069.0 = select i1 %.not, ptr inttoptr (i64 1 to ptr), ptr %i.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %.sroa.069.0, ptr %i.ag, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.570.0, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx6.i144 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.7.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.522.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs5XgW7KoffLW_12opendal_core.exit198, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvXCsckJBFF5GuYq_15form_urlencodedNtB2_5ParseNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %bb.ak unwind label %.loopexit306

bb.ak:                                            ; preds = %bb.aj
  %i.jq = load i64, ptr %i.af, align 8, !range !17, !noundef !9
  %.not89 = icmp eq i64 %i.jq, -2
  br i1 %.not89, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.jr = load ptr, ptr %i.jk, align 8, !nonnull !9
  %i.js = load i64, ptr %i.jl, align 8            ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !130
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.js, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc146 unwind label %.loopexit307

.noexc146:                                        ; preds = %bb.al
  %i.jt = load i64, ptr %i.g, align 8, !range !10, !noalias !130, !noundef !9
  %i.ju = trunc nuw i64 %i.jt to i1
  %i.jv = load i64, ptr %i.jm, align 8, !range !11, !noalias !130, !noundef !9 ; 3 uses
  br i1 %i.ju, label %bb.am, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i137, !prof !12

bb.am:                                            ; preds = %.noexc146
  %i.jw = load i64, ptr %i.jn, align 8, !noalias !130
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.jv, i64 %i.jw) #27
          to label %.noexc147 unwind label %.loopexit.split-lp308

.noexc147:                                        ; preds = %bb.am
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i137: ; preds = %.noexc146
  %i.jx = load ptr, ptr %i.jn, align 8, !noalias !130, !nonnull !9, !noundef !9 ; 5 uses
  %i.jy = icmp samesign ule i64 %i.js, %i.jv
  call void @llvm.assume(i1 %i.jy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !130
  %.not.i.i138 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i138, label %.loopexit, label %iter.check443

iter.check443:                                    ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i137
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jx, ptr nonnull readonly align 1 %i.jr, i64 range(i64 0, -9223372036854775808) %i.js, i1 false), !noalias !131
  %min.iters.check430 = icmp ult i64 %i.js, 8
  br i1 %min.iters.check430, label %.lr.ph.i.i140.preheader, label %vector.main.loop.iter.check431

vector.main.loop.iter.check431:                   ; preds = %iter.check443
  %min.iters.check432 = icmp ult i64 %i.js, 32
  br i1 %min.iters.check432, label %vec.epilog.ph447, label %vector.ph433

vector.ph433:                                     ; preds = %vector.main.loop.iter.check431
  %i.jz = and i64 %i.js, 24
  %n.vec434 = and i64 %i.js, -32                  ; 4 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.ph433, %vector.body435
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next439, %vector.body435 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %index436 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %wide.load437 = load <16 x i8>, ptr %i.ka, align 1, !alias.scope !132, !noalias !133 ; 2 uses
  %wide.load438 = load <16 x i8>, ptr %i.kb, align 1, !alias.scope !132, !noalias !133 ; 2 uses
  %i.kc = add <16 x i8> %wide.load437, splat (i8 -65)
  %i.kd = add <16 x i8> %wide.load438, splat (i8 -65)
  %i.ke = icmp ult <16 x i8> %i.kc, splat (i8 26)
  %i.kf = icmp ult <16 x i8> %i.kd, splat (i8 26)
  %i.kg = select <16 x i1> %i.ke, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.kh = select <16 x i1> %i.kf, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ki = or <16 x i8> %i.kg, %wide.load437
  %i.kj = or <16 x i8> %i.kh, %wide.load438
  store <16 x i8> %i.ki, ptr %i.ka, align 1, !alias.scope !132, !noalias !133
  store <16 x i8> %i.kj, ptr %i.kb, align 1, !alias.scope !132, !noalias !133
  %index.next439 = add nuw i64 %index436, 32      ; 2 uses
  %i.kk = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.kk, label %middle.block440, label %vector.body435, !llvm.loop !83

middle.block440:                                  ; preds = %vector.body435
  %cmp.n441 = icmp eq i64 %i.js, %n.vec434
  br i1 %cmp.n441, label %.loopexit, label %vec.epilog.iter.check445

vec.epilog.iter.check445:                         ; preds = %middle.block440
  %min.epilog.iters.check446 = icmp eq i64 %i.jz, 0
  br i1 %min.epilog.iters.check446, label %.lr.ph.i.i140.preheader, label %vec.epilog.ph447, !prof !15

vec.epilog.ph447:                                 ; preds = %vector.main.loop.iter.check431, %vec.epilog.iter.check445
  %vec.epilog.resume.val442 = phi i64 [ %n.vec434, %vec.epilog.iter.check445 ], [ 0, %vector.main.loop.iter.check431 ]
  %n.vec448 = and i64 %i.js, -8                   ; 3 uses
  br label %vec.epilog.vector.body449

vec.epilog.vector.body449:                        ; preds = %vec.epilog.vector.body449, %vec.epilog.ph447
  %index450 = phi i64 [ %vec.epilog.resume.val442, %vec.epilog.ph447 ], [ %index.next452, %vec.epilog.vector.body449 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jx, i64 %index450 ; 2 uses
  %wide.load451 = load <8 x i8>, ptr %i.kl, align 1, !alias.scope !132, !noalias !133 ; 2 uses
  %i.km = add <8 x i8> %wide.load451, splat (i8 -65)
  %i.kn = icmp ult <8 x i8> %i.km, splat (i8 26)
  %i.ko = select <8 x i1> %i.kn, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.kp = or <8 x i8> %i.ko, %wide.load451
  store <8 x i8> %i.kp, ptr %i.kl, align 1, !alias.scope !132, !noalias !133
  %index.next452 = add nuw i64 %index450, 8       ; 2 uses
  %i.kq = icmp eq i64 %index.next452, %n.vec448
  br i1 %i.kq, label %vec.epilog.middle.block453, label %vec.epilog.vector.body449, !llvm.loop !84

vec.epilog.middle.block453:                       ; preds = %vec.epilog.vector.body449
  %cmp.n454 = icmp eq i64 %i.js, %n.vec448
  br i1 %cmp.n454, label %.loopexit, label %.lr.ph.i.i140.preheader

.lr.ph.i.i140.preheader:                          ; preds = %iter.check443, %vec.epilog.iter.check445, %vec.epilog.middle.block453
  %.sroa.0.05.i.i141.ph = phi i64 [ 0, %iter.check443 ], [ %n.vec434, %vec.epilog.iter.check445 ], [ %n.vec448, %vec.epilog.middle.block453 ]
  br label %.lr.ph.i.i140

.lr.ph.i.i140:                                    ; preds = %.lr.ph.i.i140.preheader, %.lr.ph.i.i140
  %.sroa.0.05.i.i141 = phi i64 [ %i.kw, %.lr.ph.i.i140 ], [ %.sroa.0.05.i.i141.ph, %.lr.ph.i.i140.preheader ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.sroa.0.05.i.i141 ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1, !alias.scope !132, !noalias !133, !noundef !9 ; 2 uses
  %i.kt = add i8 %i.ks, -65
  %i.ku = icmp ult i8 %i.kt, 26
  %i.kv = select i1 %i.ku, i8 32, i8 0
  %.sroa.03.0.i.i142 = or i8 %i.kv, %i.ks
  store i8 %.sroa.03.0.i.i142, ptr %i.kr, align 1, !alias.scope !132, !noalias !133
  %i.kw = add nuw i64 %.sroa.0.05.i.i141, 1       ; 2 uses
  %exitcond.not.i.i143 = icmp eq i64 %i.kw, %i.js
  br i1 %exitcond.not.i.i143, label %.loopexit, label %.lr.ph.i.i140, !llvm.loop !85

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.kz = load i64, ptr %i.ap, align 8, !range !18, !noundef !9
  %i.la = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.lb = load i64, ptr %i.la, align 8, !noundef !9 ; 3 uses
  %i.lc = icmp ult i64 %i.lb, 192153584101141163
  call void @llvm.assume(i1 %i.lc)
  %.idx345 = mul nuw nsw i64 %i.lb, 48
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.idx345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.ky, ptr %i.z, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.ky, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.kz, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store ptr %i.ld, ptr %.sroa.631.0..sroa_idx, align 8
  %i.le = icmp eq i64 %i.lb, 0
  br i1 %i.le, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.lr.ph

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.lr.ph: ; preds = %bb.an
  %.sroa.7.0..sroa_idx209 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit

bb.ao:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i182, %bb.ap
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.body183:                                         ; preds = %bb.ct, %bb.ao
  %eh.lpad-body184 = phi { ptr, i32 } [ %i.lf, %bb.ao ], [ %i.or, %bb.ct ]
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.dm unwind label %bb.w

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.lr.ph, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit186
  %i.lg = phi ptr [ %i.ky, %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.lr.ph ], [ %i.ou, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit186 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  store ptr %i.lh, ptr %.sroa.429.0..sroa_idx, align 8, !alias.scope !134, !noalias !135
  %.sroa.0207.0.copyload = load i64, ptr %i.lg, align 8, !noalias !134 ; 2 uses
  %.not90 = icmp eq i64 %.sroa.0207.0.copyload, -1
  br i1 %.not90, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 %.sroa.0207.0.copyload, ptr %i.y, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx209, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.li, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBN_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE6insertCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.cr unwind label %bb.ao

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit186, %bb.an
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECs5XgW7KoffLW_12opendal_core.exit151 unwind label %.loopexit.split-lp

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECs5XgW7KoffLW_12opendal_core.exit151: ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.lj = invoke { ptr, i64 } @_RNvMs_Cs8HcOsDT3sMt_3urlNtB4_3Url8username(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aj)
          to label %bb.aq unwind label %.loopexit.split-lp

bb.aq:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECs5XgW7KoffLW_12opendal_core.exit151
  %i.lk = extractvalue { ptr, i64 } %i.lj, 1
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 -1, ptr %i.v, align 8
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.lm = invoke { ptr, i64 } @_RNvMs_Cs8HcOsDT3sMt_3urlNtB4_3Url8username(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aj)
          to label %bb.au unwind label %.loopexit.split-lp ; 2 uses

bb.at:                                            ; preds = %bb.ay, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ln = invoke { ptr, i64 } @_RNvMs_Cs8HcOsDT3sMt_3urlNtB4_3Url8password(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aj)
          to label %bb.bb unwind label %bb.ba     ; 2 uses

bb.au:                                            ; preds = %bb.as
  %i.lo = extractvalue { ptr, i64 } %i.lm, 0
  %i.lp = extractvalue { ptr, i64 } %i.lm, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.lp, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.av unwind label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  %i.lq = load i64, ptr %i.m, align 8, !range !10, !noundef !9
  %i.lr = trunc nuw i64 %i.lq to i1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !range !11, !noundef !9 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.lr, label %bb.aw, label %bb.ax, !prof !12

bb.aw:                                            ; preds = %bb.av
  %i.lv = load i64, ptr %i.lu, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.lt, i64 %i.lv) #27
          to label %bb.cn unwind label %.loopexit.split-lp

bb.ax:                                            ; preds = %bb.av
  %i.lw = load ptr, ptr %i.lu, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.lx = icmp ule i64 %i.lp, %i.lt
  call void @llvm.assume(i1 %i.lx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not91 = icmp eq i64 %i.lp, 0
  br i1 %.not91, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  store i64 %i.lt, ptr %i.v, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.lw, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.lp, ptr %.sroa.583.0..sroa_idx, align 8
  br label %bb.at

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lw, ptr align 1 %i.lo, i64 %i.lp, i1 false)
  br label %bb.ay

bb.ba:                                            ; preds = %bb.bd, %bb.bc, %bb.at
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.bb:                                            ; preds = %bb.at
  %i.lz = extractvalue { ptr, i64 } %i.ln, 0      ; 2 uses
  %.not92 = icmp eq ptr %i.lz, null
end_hunk_0
begin_hunk_1_@_RINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB3_11OperatorUri3newINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtB1l_6string6StringB1N_EEEB9_:bb.a
          to label %bb.cn unwind label %.loopexit.split-lp313

bb.da:                                            ; preds = %bb.cy
  %i.pa = load ptr, ptr %i.jp, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.pb = icmp ule i64 %.sroa.625.0.copyload, %i.oy
  call void @llvm.assume(i1 %i.pb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not102 = icmp eq i64 %.sroa.625.0.copyload, 0
  br i1 %.not102, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pa, ptr nonnull align 1 %.sroa.522.0.copyload, i64 %.sroa.625.0.copyload, i1 false)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db, %.loopexit
  %storemerge373 = phi i64 [ %.sroa.020.0.copyload, %.loopexit ], [ %i.oy, %bb.db ], [ %i.oy, %bb.da ]
  %storemerge = phi ptr [ %.sroa.522.0.copyload, %.loopexit ], [ %i.pa, %bb.db ], [ %i.pa, %bb.da ]
  store i64 %storemerge373, ptr %i.aa, align 8
  store ptr %storemerge, ptr %.sroa.522.0..sroa_idx23, align 8
  store i64 %.sroa.625.0.copyload, ptr %.sroa.625.0..sroa_idx26, align 8
  invoke void @_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBN_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE6insertCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.dd unwind label %bb.cx

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.pc = load i64, ptr %i.ac, align 8, !range !16, !alias.scope !148, !noundef !9
  %i.pd = icmp eq i64 %i.pc, -1
  br i1 %i.pd, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit192, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i188 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.thread277 unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i188: ; preds = %bb.de
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit192 unwind label %bb.cv

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit192: ; preds = %bb.dd, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.pg = load i64, ptr %i.ae, align 8, !range !16, !alias.scope !149, !noundef !9
  %i.ph = icmp eq i64 %i.pg, -1
  br i1 %i.ph, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs5XgW7KoffLW_12opendal_core.exit198, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit192
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i194 unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.pi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.dm unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i194: ; preds = %bb.dh
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs5XgW7KoffLW_12opendal_core.exit198 unwind label %.loopexit306

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs5XgW7KoffLW_12opendal_core.exit198: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit192, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.aj

.loopexit312:                                     ; preds = %bb.cw
  %lpad.loopexit314 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp313:                            ; preds = %bb.cz
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dk:                                            ; preds = %.loopexit.split-lp313, %.loopexit312
  %lpad.phi316 = phi { ptr, i32 } [ %lpad.loopexit314, %.loopexit312 ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp313 ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #29
          to label %.thread277 unwind label %bb.w

.thread277:                                       ; preds = %bb.cx, %bb.dk, %bb.df, %bb.cv, %bb.dl
  %.pn103276 = phi { ptr, i32 } [ %i.pe, %bb.df ], [ %lpad.phi311, %bb.dl ], [ %lpad.thr_comm.split-lp283, %bb.cv ], [ %lpad.thr_comm.split-lp291, %bb.cx ], [ %lpad.phi316, %bb.dk ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #29
          to label %bb.dm unwind label %bb.w

.loopexit307:                                     ; preds = %bb.al
  %lpad.loopexit309 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit.split-lp308:                            ; preds = %bb.am
  %lpad.loopexit.split-lp310 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dl:                                            ; preds = %.loopexit.split-lp308, %.loopexit307
  %lpad.phi311 = phi { ptr, i32 } [ %lpad.loopexit309, %.loopexit307 ], [ %lpad.loopexit.split-lp310, %.loopexit.split-lp308 ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #29
          to label %.thread277 unwind label %bb.w

bb.dm:                                            ; preds = %.loopexit306, %.loopexit.split-lp, %.thread277, %bb.cq, %.body183, %bb.di
  %.sroa.065.4.ph = phi i8 [ 0, %bb.cq ], [ 0, %.body183 ], [ 1, %.thread277 ], [ 1, %bb.di ], [ 1, %.loopexit306 ], [ %.sroa.065.5.ph, %.loopexit.split-lp ]
  %.pn105.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.ph, %bb.cq ], [ %eh.lpad-body184, %.body183 ], [ %.pn103276, %.thread277 ], [ %i.pi, %bb.di ], [ %lpad.loopexit, %.loopexit306 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #29
          to label %.thread265 unwind label %bb.w

bb.dn:                                            ; preds = %bb.aa
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.o, i8 noundef %i.hn)
          to label %bb.do unwind label %.loopexit.split-lp319.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(88) %i.p, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.515, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.517, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.pk, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.515, i64 88, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBP_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit unwind label %.thread

.thread220:                                       ; preds = %.loopexit.split-lp319.loopexit.split-lp.loopexit, %.loopexit.split-lp319.loopexit, %.loopexit318, %bb.t, %bb.p, %bb.v, %.body
  %.pn108225 = phi { ptr, i32 } [ %.pn108, %.body ], [ %i.ha, %bb.p ], [ %i.hg, %bb.v ], [ %i.hd, %bb.t ], [ %lpad.loopexit326, %.loopexit.split-lp319.loopexit.split-lp.loopexit ], [ %lpad.loopexit323, %.loopexit.split-lp319.loopexit ], [ %lpad.loopexit320, %.loopexit318 ]
  %.sroa.065.1224 = phi i8 [ %.sroa.065.1, %.body ], [ 1, %bb.p ], [ 1, %bb.v ], [ 1, %bb.t ], [ 1, %.loopexit.split-lp319.loopexit.split-lp.loopexit ], [ 1, %.loopexit.split-lp319.loopexit ], [ 1, %.loopexit318 ]
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBP_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit201 unwind label %bb.w

bb.dp:                                            ; preds = %.thread, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit201
  %.pn110219 = phi { ptr, i32 } [ %i.au, %.thread ], [ %.pn110, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit201 ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #29
          to label %common.resume unwind label %bb.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registryNtB3_16OperatorRegistry8registerNtNtNtNtB9_8services6memory7backend13MemoryBuilderEB9_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !165
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !165
  %i.f = load i64, ptr %i.b, align 8, !range !10, !noalias !165, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !165, !noundef !9 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !165
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !165
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !165, !nonnull !9, !noundef !9 ; 5 uses
  %i.m = icmp samesign ule i64 %2, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !165
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !166
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %2, 32
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %index ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !alias.scope !167, !noalias !168 ; 2 uses
  %wide.load19 = load <16 x i8>, ptr %i.p, align 1, !alias.scope !167, !noalias !168 ; 2 uses
  %i.q = add <16 x i8> %wide.load, splat (i8 -65)
  %i.r = add <16 x i8> %wide.load19, splat (i8 -65)
  %i.s = icmp ult <16 x i8> %i.q, splat (i8 26)
  %i.t = icmp ult <16 x i8> %i.r, splat (i8 26)
  %i.u = select <16 x i1> %i.s, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.v = select <16 x i1> %i.t, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.w = or <16 x i8> %i.u, %wide.load
  %i.x = or <16 x i8> %i.v, %wide.load19
  store <16 x i8> %i.w, ptr %i.o, align 1, !alias.scope !167, !noalias !168
  store <16 x i8> %i.x, ptr %i.p, align 1, !alias.scope !167, !noalias !168
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %2, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %index21 ; 2 uses
  %wide.load22 = load <8 x i8>, ptr %i.z, align 1, !alias.scope !167, !noalias !168 ; 2 uses
  %i.aa = add <8 x i8> %wide.load22, splat (i8 -65)
  %i.ab = icmp ult <8 x i8> %i.aa, splat (i8 26)
  %i.ac = select <8 x i1> %i.ab, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ad = or <8 x i8> %i.ac, %wide.load22
  store <8 x i8> %i.ad, ptr %i.z, align 1, !alias.scope !167, !noalias !168
  %index.next23 = add nuw i64 %index21, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next23, %n.vec20
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %2, %n.vec20
  br i1 %cmp.n24, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec20, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi i64 [ %i.ak, %.lr.ph.i.i ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.05.i.i ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !167, !noalias !168, !noundef !9 ; 2 uses
  %i.ah = add i8 %i.ag, -65
  %i.ai = icmp ult i8 %i.ah, 26
  %i.aj = select i1 %i.ai, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.aj, %i.ag
  store i8 %.sroa.03.0.i.i, ptr %i.af, align 1, !alias.scope !167, !noalias !168
  %i.ak = add nuw i64 %.sroa.0.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %2
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %.lr.ph.i.i, !llvm.loop !160

_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i
  store i64 %i.i, ptr %i.e, align 8, !alias.scope !164, !noalias !169
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !164, !noalias !169
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !164, !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB2p_8operator8OperatorNtNtB2r_5error5ErrorEEE4lockB2t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread11

bb.d:                                             ; preds = %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.al = load i64, ptr %i.d, align 8, !range !10, !alias.scope !170, !noalias !171, !noundef !9
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.e, label %bb.i, !prof !12

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !170, !noalias !171, !nonnull !9, !align !19, !noundef !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aq = load i8, ptr %i.ap, align 8, !range !20, !alias.scope !170, !noalias !171, !noundef !9
  store ptr %i.ao, ptr %i.a, align 8, !noalias !172
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.aq, ptr %i.ar, align 8, !noalias !172
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 32, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %bb.g unwind label %bb.f, !noalias !170

bb.f:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k3SxhrAWiO_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB4_6result6ResultNtNtB3h_8operator8OperatorNtNtB3j_5error5ErrorEEEEEB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.thread11 unwind label %bb.h, !noalias !170

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28, !noalias !170
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !170, !noalias !171, !nonnull !9, !align !19, !noundef !9 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !range !20, !alias.scope !170, !noalias !171, !noundef !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.az = invoke noundef ptr @_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1z_8operator8OperatorNtNtB1B_5error5ErrorENtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE6insertB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull @_RINvNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registry7factoryNtNtNtNtB8_8services6memory6config12MemoryConfigEB8_)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB4_6result6ResultNtNtB2Y_8operator8OperatorNtNtB30_5error5ErrorEEEEB32_(ptr nonnull %i.av, i8 %i.ax) #29
          to label %.thread unwind label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.bb = trunc nuw i8 %i.ax to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  br i1 %i.bb, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.be = and i64 %i.bd, 9223372036854775807
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !21

.noexc:                                           ; preds = %bb.l
  %i.bg = call noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.bg, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.bc monotonic, align 4
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.l, %bb.k
  %i.bh = atomicrmw xchg ptr %i.av, i32 0 release, align 4
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB4_6result6ResultNtNtB2Y_8operator8OperatorNtNtB30_5error5ErrorEEEEB32_.exit, !prof !12

bb.n:                                             ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.av)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB4_6result6ResultNtNtB2Y_8operator8OperatorNtNtB30_5error5ErrorEEEEB32_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB4_6result6ResultNtNtB2Y_8operator8OperatorNtNtB30_5error5ErrorEEEEB32_.exit: ; preds = %bb.n, %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.o:                                             ; preds = %bb.j, %.thread11
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

.thread:                                          ; preds = %bb.j, %.thread11
  %.pn10 = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %eh.lpad-body14, %.thread11 ]
  resume { ptr, i32 } %.pn10

.thread11:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body14 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.c ], [ %i.as, %bb.f ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #29
          to label %.thread unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsq_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrName10from_bytesNCINvXs4_NtNtB8_3map14as_header_nameReNtB1d_6Sealed4findNtNtB8_5value11HeaderValueE0INtNtCsgxBkk5gSRhY_4core6option6OptionTjjEEECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCs76KlaVGnJsc_4http6header4name9parse_hdr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull dereferenceable(64) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256) @15)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !22, !noundef !9
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 2, ptr %0, align 8
  br label %bb.p
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util3uriNtB2_16QueryPairsWriter3new:bb.a
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %2)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.k = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !535, !noundef !9 ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !535, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !535
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #29
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %.noexc
  %i.p = phi i64 [ %.pre.i, %bb.d ], [ %i.k, %.noexc ]
  %i.q = add i64 %i.p, %2
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util3uriNtB2_16QueryPairsWriter4push(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !20, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !9 ; 5 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit1 unwind label %bb.d

_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit1: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !546, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  store i8 38, ptr %i.i, align 1
  %i.j = add nuw i64 %i.e, 1
  store i64 %i.j, ptr %i.d, align 8, !alias.scope !546
  br label %bb.f

bb.d:                                             ; preds = %bb.k, %bb.j, %bb.f, %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util3uri16QueryPairsWriterEBJ_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #29
          to label %bb.m unwind label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !547, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e
  store i8 63, ptr %i.n, align 1
  %i.o = add nuw i64 %i.e, 1
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !547
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push.exit1, %bb.e
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %3)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !548, !noundef !9 ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !548, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %2, i64 %3, i1 false)
  %.pre.i = load i64, ptr %i.p, align 8, !alias.scope !548
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc
  %i.v = phi i64 [ %.pre.i, %bb.g ], [ %i.q, %.noexc ]
  %i.w = add i64 %i.v, %3                         ; 4 uses
  store i64 %i.w, ptr %i.p, align 8, !alias.scope !548
  %i.x = icmp eq i64 %5, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs5XgW7KoffLW_12opendal_core.exit7, %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.j:                                             ; preds = %bb.h
  %i.y = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.y)
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !549, !nonnull !9, !noundef !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  store i8 61, ptr %i.ab, align 1
  %i.ac = add nuw i64 %i.w, 1
  store i64 %i.ac, ptr %i.p, align 8, !alias.scope !549
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %5)
          to label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs5XgW7KoffLW_12opendal_core.exit7 unwind label %bb.d

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs5XgW7KoffLW_12opendal_core.exit7: ; preds = %bb.k
  %i.ad = load i64, ptr %i.p, align 8, !alias.scope !550, !noundef !9 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load ptr, ptr %i.z, align 8, !alias.scope !550, !nonnull !9, !noundef !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %4, i64 %5, i1 false)
  %.pre.i5 = load i64, ptr %i.p, align 8, !alias.scope !550
  %i.ah = add i64 %.pre.i5, %5
  store i64 %i.ah, ptr %i.p, align 8, !alias.scope !550
  br label %bb.i

bb.l:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB2_11OperatorUri6option(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !581
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !581
  %i.c = load i64, ptr %i.a, align 8, !range !10, !noalias !581, !noundef !9
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !11, !noalias !581, !noundef !9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !581
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #27, !noalias !581
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !581, !nonnull !9, !noundef !9 ; 5 uses
  %i.j = icmp samesign ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !581
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !582
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %2, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.l, align 1, !alias.scope !583, !noalias !584 ; 2 uses
  %wide.load15 = load <16 x i8>, ptr %i.m, align 1, !alias.scope !583, !noalias !584 ; 2 uses
  %i.n = add <16 x i8> %wide.load, splat (i8 -65)
  %i.o = add <16 x i8> %wide.load15, splat (i8 -65)
  %i.p = icmp ult <16 x i8> %i.n, splat (i8 26)
  %i.q = icmp ult <16 x i8> %i.o, splat (i8 26)
  %i.r = select <16 x i1> %i.p, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.s = select <16 x i1> %i.q, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.t = or <16 x i8> %i.r, %wide.load
  %i.u = or <16 x i8> %i.s, %wide.load15
  store <16 x i8> %i.t, ptr %i.l, align 1, !alias.scope !583, !noalias !584
  store <16 x i8> %i.u, ptr %i.m, align 1, !alias.scope !583, !noalias !584
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !559

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %2, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %index17 ; 2 uses
  %wide.load18 = load <8 x i8>, ptr %i.w, align 1, !alias.scope !583, !noalias !584 ; 2 uses
  %i.x = add <8 x i8> %wide.load18, splat (i8 -65)
  %i.y = icmp ult <8 x i8> %i.x, splat (i8 26)
  %i.z = select <8 x i1> %i.y, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.aa = or <8 x i8> %i.z, %wide.load18
  store <8 x i8> %i.aa, ptr %i.w, align 1, !alias.scope !583, !noalias !584
  %index.next19 = add nuw i64 %index17, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next19, %n.vec16
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !560

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %2, %n.vec16
  br i1 %cmp.n20, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.05.i.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !583, !noalias !584, !noundef !9 ; 2 uses
  %i.ae = add i8 %i.ad, -65
  %i.af = icmp ult i8 %i.ae, 26
  %i.ag = select i1 %i.af, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.ag, %i.ad
  store i8 %.sroa.03.0.i.i, ptr %i.ac, align 1, !alias.scope !583, !noalias !584
  %i.ah = add nuw i64 %.sroa.0.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, label %.lr.ph.i.i, !llvm.loop !561

_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !580, !noalias !585
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !580, !noalias !585
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !580, !noalias !585
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !586, !noalias !587, !noundef !9
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.an = invoke noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.ao = lshr i64 %i.an, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !591, !noalias !592, !noundef !9 ; 2 uses
  %i.as = load ptr, ptr %i.ai, align 8, !alias.scope !591, !noalias !592, !nonnull !9, !noundef !9 ; 2 uses
  %i.at = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val1.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !592, !noalias !593 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !592, !noalias !593, !nonnull !9
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bn, %bb.e ]
  %.pn.i.i = phi i64 [ %i.an, %.noexc ], [ %i.bo, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.ar     ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.av, align 1, !noalias !594 ; 2 uses
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.au
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %bb.d, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.thread.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.bm, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.thread.i.i ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ay = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.01.0.i.i.i, %i.az
  %i.bb = and i64 %i.ba, %i.ar
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [48 x i8], ptr %i.as, i64 %i.bc ; 4 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -32
  %.val3.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !595, !noalias !596, !noundef !9
  %i.bf = icmp eq i64 %.val1.i.i.i.i.i, %.val3.i.i.i
  br i1 %i.bf, label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.i.i, label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.thread.i.i, !prof !597

_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %.lr.ph.i.i4
  %i.bg = getelementptr i8, ptr %i.bd, i64 -40
  %.val2.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !598, !nonnull !9, !noundef !9
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val1.i.i.i.i.i), !noalias !599
  %i.bh = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit, label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.thread.i.i, !prof !600

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.thread.i.i, %bb.d
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %i.bk = icmp eq i16 %i.bj, 0
  br i1 %i.bk, label %bb.e, label %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread, !prof !12

_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.i.i, %.lr.ph.i.i4
  %i.bl = add i16 %.sroa.06.0.i34.i.i, -1
  %i.bm = and i16 %i.bl, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i4

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bn = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.bo = add i64 %.sroa.01.0.i.i.i, %i.bn
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #29
          to label %common.resume unwind label %bb.i

_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.bd, i64 -16
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !9, !noundef !9
  %i.bs = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !9
  br label %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread

_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %._crit_edge.i.i, %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit, %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.3.0 = phi i64 [ %i.bt, %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit ], [ undef, %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi ptr [ %i.br, %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit ], [ null, %_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase.exit ], [ null, %._crit_edge.i.i ]
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %bb.g ], [ %i.bp, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBO_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bx = insertvalue { ptr, i64 } %i.bw, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.bx

bb.i:                                             ; preds = %bb.f
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator4infoNtB2_12OperatorInfo4name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_2
