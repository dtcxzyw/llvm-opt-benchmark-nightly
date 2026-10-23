Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.08?download=true
inline.NumInlined: 373
inline.NumDeleted: 181
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB2_8FontInfoINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontE8try_from:bb.a
  %i.vu = load i64, ptr %i.x, align 8, !range !7, !noalias !798, !noundef !5
  %i.vv = trunc nuw i64 %i.vu to i1
  %i.vw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.vx = load i64, ptr %i.vw, align 8, !range !13, !noalias !798, !noundef !5 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br i1 %i.vv, label %bb.hx, label %bb.hy, !prof !12

bb.hx:                                            ; preds = %bb.hw
  %i.vz = load i64, ptr %i.vy, align 8, !noalias !798
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.vx, i64 %i.vz) #26
          to label %bb.ga unwind label %bb.ie, !noalias !801

bb.hy:                                            ; preds = %bb.hw
  %i.wa = load ptr, ptr %i.vy, align 8, !noalias !798, !nonnull !5, !noundef !5 ; 2 uses
  %i.wb = icmp samesign ugt i64 %i.vx, 21
  call void @llvm.assume(i1 %i.wb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.wa, ptr noundef nonnull align 1 dereferenceable(22) @45, i64 22, i1 false), !noalias !801
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.vx, ptr %i.wc, align 8, !noalias !798
  %.sroa.468.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.wa, ptr %.sroa.468.0..sroa_idx.i.i, align 8, !noalias !798
  %.sroa.569.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 22, ptr %.sroa.569.0..sroa_idx.i.i, align 8, !noalias !798
  store i8 12, ptr %i.ac, align 8, !noalias !798
  invoke void @_RINvMs0_NtCs3v5ql5U6hxj_6fontir5errorNtB6_8BadGlyph3newNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_12BadGlyphKindECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ac)
          to label %bb.hz unwind label %bb.ih, !noalias !801

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 64, i1 false), !noalias !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !798
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ii, %bb.hz
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.ic unwind label %bb.ib, !noalias !801

bb.ib:                                            ; preds = %bb.ia
  %i.wd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.critedge93.thread.i.i unwind label %bb.id, !noalias !801

bb.ic:                                            ; preds = %bb.ia
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsjceHdiZFn9b_13glyphs2fontir.exit159.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !801

bb.id:                                            ; preds = %bb.ib
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !801
  unreachable

bb.ie:                                            ; preds = %bb.hx, %bb.ha
  %lpad.thr_comm241.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.wf = load i8, ptr %i.ad, align 8, !range !8, !alias.scope !862, !noalias !798, !noundef !5
  %switch.i.i.i.i = icmp samesign ult i8 %i.wf, 25
  br i1 %switch.i.i.i.i, label %.body143.i.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.wh = load ptr, ptr %i.wg, align 8, !alias.scope !865, !noalias !798, !nonnull !5, !noundef !5
  %i.wi = atomicrmw add ptr %i.wh, i64 -1 release, align 8, !noalias !866
  %i.wj = icmp eq i64 %i.wi, 1
  br i1 %i.wj, label %bb.ig, label %.body143.i.i

bb.ig:                                            ; preds = %bb.if
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.wg) #23
          to label %.body143.i.i unwind label %bb.gd, !noalias !801

bb.ih:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit142.i.i, %bb.hy
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %.body143.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit142.i.i: ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !798
  %i.wl = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wl, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !798
  store i8 12, ptr %i.ah, align 8, !noalias !798
  invoke void @_RINvMs0_NtCs3v5ql5U6hxj_6fontir5errorNtB6_8BadGlyph3newNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_12BadGlyphKindECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ah)
          to label %bb.ii unwind label %bb.ih, !noalias !801

bb.ii:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit142.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 64, i1 false), !noalias !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !798
  br label %bb.ia

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsjceHdiZFn9b_13glyphs2fontir.exit159.i.i: ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !798
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(200) %i.ar)
          to label %bb.ij unwind label %.critedge93.thread268.thread556.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !801

bb.ij:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsjceHdiZFn9b_13glyphs2fontir.exit159.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !798
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir4toir13Colrv1RunTypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.av)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunEBF_.exit162.i.i unwind label %.loopexit.split-lp279.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !801

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunEBF_.exit162.i.i: ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !798
  invoke void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunEEB1C_.exit.i164.i.i unwind label %bb.ik, !noalias !801

bb.ik:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunEBF_.exit162.i.i
  %i.wm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %.body62.thread.i unwind label %bb.il, !noalias !801

bb.il:                                            ; preds = %bb.ik
  %i.wn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !801
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunEEB1C_.exit.i164.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunEBF_.exit162.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %bb.ki unwind label %.body62.thread153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !763

bb.im:                                            ; preds = %bb.gy
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.wp = load i8, ptr %i.ai, align 8, !range !8, !alias.scope !869, !noalias !798, !noundef !5
  %switch.i.i170.i.i = icmp samesign ult i8 %i.wp, 25
  br i1 %switch.i.i170.i.i, label %.body143.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %i.wr = load ptr, ptr %i.wq, align 8, !alias.scope !872, !noalias !798, !nonnull !5, !noundef !5
  %i.ws = atomicrmw add ptr %i.wr, i64 -1 release, align 8, !noalias !873
  %i.wt = icmp eq i64 %i.ws, 1
  br i1 %i.wt, label %bb.io, label %.body143.i.i

bb.io:                                            ; preds = %bb.in
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.wq) #23
          to label %.body143.i.i unwind label %bb.gd, !noalias !801

.critedge93.thread.i.i:                           ; preds = %.loopexit274.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ib, %bb.gp, %bb.fw, %.loopexit.split-lp.loopexit.split-lp.i.i, %.critedge93.i.i
  %.pn79.pn226.i.i = phi { ptr, i32 } [ %.pn79.i.i, %.critedge93.i.i ], [ %lpad.loopexit.split-lp289.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.th, %bb.fw ], [ %i.wd, %bb.ib ], [ %.pn232.i.i, %bb.gp ], [ %lpad.loopexit.split-lp633, %.loopexit274.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.030.2225.i.i = phi i1 [ %.sroa.030.4.i.i, %.critedge93.i.i ], [ false, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ true, %bb.fw ], [ false, %bb.ib ], [ true, %bb.gp ], [ true, %.loopexit274.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(200) %i.ar) #24
          to label %.critedge93.thread268.i.i unwind label %bb.gd, !noalias !801

bb.ip:                                            ; preds = %.critedge93.thread268.thread.i.i, %.critedge93.thread268.i.i
  %.pn79.pn.pn546.i.i = phi { ptr, i32 } [ %lpad.loopexit285.i.i, %.critedge93.thread268.thread.i.i ], [ %.pn79.pn.pn.i.i, %.critedge93.thread268.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.wu = load i8, ptr %i.au, align 8, !range !8, !alias.scope !876, !noalias !798, !noundef !5
  %switch.i.i173.i.i = icmp samesign ult i8 %i.wu, 25
  br i1 %switch.i.i173.i.i, label %.body.i.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.wv = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.ww = load ptr, ptr %i.wv, align 8, !alias.scope !879, !noalias !798, !nonnull !5, !noundef !5
  %i.wx = atomicrmw add ptr %i.ww, i64 -1 release, align 8, !noalias !880
  %i.wy = icmp eq i64 %i.wx, 1
  br i1 %i.wy, label %bb.ir, label %.body.i.i

bb.ir:                                            ; preds = %bb.iq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.wv) #23
          to label %.body.i.i unwind label %bb.gd, !noalias !801

bb.is:                                            ; preds = %.thread249.i.i
  %i.wz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %.body62.thread.i unwind label %bb.it, !noalias !801

bb.it:                                            ; preds = %bb.is
  %i.xa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !801
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunEEB1C_.exit.i.i: ; preds = %.thread249.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %bb.kg unwind label %.body62.thread153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !763

_RNvMs0_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunType7key_for.exit.i.i: ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cp, %bb.ce
  %i.xb = phi i1 [ false, %bb.cx ], [ true, %bb.cw ], [ true, %bb.cv ], [ true, %bb.cp ], [ true, %bb.ce ]
  %2 = phi i1 [ true, %bb.cx ], [ false, %bb.cw ], [ false, %bb.cv ], [ false, %bb.cp ], [ false, %bb.ce ]
  %i.xc = phi i64 [ 0, %bb.cx ], [ 3, %bb.cw ], [ 5, %bb.cv ], [ 4, %bb.cp ], [ 2, %bb.ce ] ; 2 uses
  %i.xd = load i64, ptr %i.fx, align 8, !noalias !798, !noundef !5 ; 2 uses
  %.not85.i.i = icmp eq i64 %i.xd, 0
  br i1 %.not85.i.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i, label %bb.iu

bb.iu:                                            ; preds = %_RNvMs0_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunType7key_for.exit.i.i
  %i.xe = add i64 %i.xd, -1
  %i.xf = load i64, ptr %i.fw, align 8, !noalias !798, !noundef !5
  %i.xg = add i64 %i.xe, %i.xf                    ; 2 uses
  %i.xh = load i64, ptr %i.bb, align 8, !range !18, !noalias !798, !noundef !5 ; 2 uses
  %.not86.i.i = icmp ult i64 %i.xg, %i.xh
  %i.xi = select i1 %.not86.i.i, i64 0, i64 %i.xh
  %.sroa.031.0.i.i = sub nuw i64 %i.xg, %i.xi
  %i.xj = load ptr, ptr %i.fy, align 8, !noalias !798, !nonnull !5, !noundef !5
  %i.xk = getelementptr inbounds nuw [152 x i8], ptr %i.xj, i64 %.sroa.031.0.i.i ; 30 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.xl = load i64, ptr %i.xk, align 8, !range !9, !alias.scope !881, !noalias !801, !noundef !5 ; 3 uses
  %i.xm = add nsw i64 %i.xl, -2
  %i.xn = icmp samesign ugt i64 %i.xl, 1
  %i.xo = select i1 %i.xn, i64 %i.xm, i64 4       ; 2 uses
  %i.xp = add nsw i64 %i.xc, -2
  %i.xq = select i1 %i.xb, i64 %i.xp, i64 4
  %i.xr = icmp eq i64 %i.xo, %i.xq
  br i1 %i.xr, label %bb.iv, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.iv:                                            ; preds = %bb.iu
  switch i64 %i.xo, label %bb.iw [
    i64 1, label %bb.ix
    i64 2, label %bb.ja
    i64 3, label %bb.jf
    i64 4, label %bb.jk
    i64 0, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread260.i.i
  ]

bb.iw:                                            ; preds = %bb.iv
  unreachable

bb.ix:                                            ; preds = %bb.iv
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xt = load i64, ptr %i.xs, align 8, !alias.scope !881, !noalias !801, !noundef !5
  %i.xu = load i64, ptr %i.fz, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.xv = icmp eq i64 %i.xt, %i.xu
  br i1 %i.xv, label %bb.iy, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.iy:                                            ; preds = %bb.ix
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.xx = load i64, ptr %i.xw, align 8, !alias.scope !881, !noalias !801, !noundef !5
  %i.xy = load i64, ptr %i.gj, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.xz = icmp eq i64 %i.xx, %i.xy
  br i1 %i.xz, label %bb.iz, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.iz:                                            ; preds = %bb.iy
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  %i.yb = load i64, ptr %i.ya, align 8, !alias.scope !881, !noalias !801, !noundef !5
  %i.yc = load i64, ptr %i.gk, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.yd = icmp eq i64 %i.yb, %i.yc
  br i1 %i.yd, label %.split.i70.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i70.i:                                     ; preds = %bb.iz
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  %i.yf = load i64, ptr %i.ye, align 8, !alias.scope !881, !noalias !801, !noundef !5
  %i.yg = load i64, ptr %i.ga, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.yh = icmp eq i64 %i.yf, %i.yg
  br i1 %i.yh, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread260.i.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ja:                                            ; preds = %bb.iv
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !881, !noalias !801, !noundef !5 ; 2 uses
  %i.yk = load i64, ptr %i.gk, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.yl = icmp eq i64 %i.yj, %i.yk
  br i1 %i.yl, label %bb.jb, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jb:                                            ; preds = %bb.ja
  %i.ym = load ptr, ptr %i.gj, align 8, !alias.scope !882, !noalias !798, !nonnull !5, !noundef !5
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.yo = load ptr, ptr %i.yn, align 8, !alias.scope !881, !noalias !801, !nonnull !5, !noundef !5
  %i.yp = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.yo, ptr noundef nonnull %i.ym, i64 noundef %i.yj)
          to label %.noexc177.i.i unwind label %bb.kc, !noalias !801

.noexc177.i.i:                                    ; preds = %bb.jb
  br i1 %i.yp, label %bb.jc, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jc:                                            ; preds = %.noexc177.i.i
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  %i.yr = load i64, ptr %i.yq, align 8, !alias.scope !881, !noalias !801, !noundef !5 ; 2 uses
  %i.ys = load i64, ptr %i.gc, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.yt = icmp eq i64 %i.yr, %i.ys
  br i1 %i.yt, label %bb.jd, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jd:                                            ; preds = %bb.jc
  %i.yu = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !882, !noalias !798, !nonnull !5, !noundef !5
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xk, i64 40
  %i.yw = load ptr, ptr %i.yv, align 8, !alias.scope !881, !noalias !801, !nonnull !5, !noundef !5
  %i.yx = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.yw, ptr noundef nonnull %i.yu, i64 noundef %i.yr)
          to label %.noexc178.i.i unwind label %bb.kc, !noalias !801

.noexc178.i.i:                                    ; preds = %bb.jd
  br i1 %i.yx, label %bb.je, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.je:                                            ; preds = %.noexc178.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xk, i64 72
  %i.yz = load i64, ptr %i.yy, align 8, !alias.scope !881, !noalias !801, !noundef !5 ; 2 uses
  %i.za = load i64, ptr %i.ge, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.zb = icmp eq i64 %i.yz, %i.za
  br i1 %i.zb, label %.invoke.i.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

.invoke.i.i:                                      ; preds = %bb.jj, %bb.je
  %i.zc = phi i64 [ %i.zy, %bb.jj ], [ %i.yz, %bb.je ]
  %i.zd = load ptr, ptr %i.gl, align 8, !alias.scope !882, !noalias !798, !nonnull !5, !noundef !5
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xk, i64 64
  %i.zf = load ptr, ptr %i.ze, align 8, !alias.scope !881, !noalias !801, !nonnull !5, !noundef !5
  %i.zg = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.zf, ptr noundef nonnull %i.zd, i64 noundef %i.zc)
          to label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i.i unwind label %bb.kc, !noalias !801

bb.jf:                                            ; preds = %bb.iv
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  %i.zi = load i64, ptr %i.zh, align 8, !alias.scope !881, !noalias !801, !noundef !5 ; 2 uses
  %i.zj = load i64, ptr %i.gk, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.zk = icmp eq i64 %i.zi, %i.zj
  br i1 %i.zk, label %bb.jg, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jg:                                            ; preds = %bb.jf
  %i.zl = load ptr, ptr %i.gj, align 8, !alias.scope !882, !noalias !798, !nonnull !5, !noundef !5
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.zn = load ptr, ptr %i.zm, align 8, !alias.scope !881, !noalias !801, !nonnull !5, !noundef !5
  %i.zo = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.zn, ptr noundef nonnull %i.zl, i64 noundef %i.zi)
          to label %.noexc180.i.i unwind label %bb.kc, !noalias !801

.noexc180.i.i:                                    ; preds = %bb.jg
  br i1 %i.zo, label %bb.jh, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jh:                                            ; preds = %.noexc180.i.i
  %i.zp = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  %i.zq = load i64, ptr %i.zp, align 8, !alias.scope !881, !noalias !801, !noundef !5 ; 2 uses
  %i.zr = load i64, ptr %i.gc, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.zs = icmp eq i64 %i.zq, %i.zr
  br i1 %i.zs, label %bb.ji, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ji:                                            ; preds = %bb.jh
  %i.zt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !882, !noalias !798, !nonnull !5, !noundef !5
  %i.zu = getelementptr inbounds nuw i8, ptr %i.xk, i64 40
  %i.zv = load ptr, ptr %i.zu, align 8, !alias.scope !881, !noalias !801, !nonnull !5, !noundef !5
  %i.zw = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.zv, ptr noundef nonnull %i.zt, i64 noundef %i.zq)
          to label %.noexc181.i.i unwind label %bb.kc, !noalias !801

.noexc181.i.i:                                    ; preds = %bb.ji
  br i1 %i.zw, label %bb.jj, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jj:                                            ; preds = %.noexc181.i.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.xk, i64 72
  %i.zy = load i64, ptr %i.zx, align 8, !alias.scope !881, !noalias !801, !noundef !5 ; 2 uses
  %i.zz = load i64, ptr %i.ge, align 8, !alias.scope !882, !noalias !798, !noundef !5
  %i.aaa = icmp eq i64 %i.zy, %i.zz
  br i1 %i.aaa, label %.invoke.i.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jk:                                            ; preds = %bb.iv
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.aab = getelementptr inbounds nuw i8, ptr %i.xk, i64 40
  %i.aac = load i64, ptr %i.aab, align 8, !range !4, !alias.scope !885, !noalias !801, !noundef !5
  %.not.i.i176.i.i = icmp eq i64 %i.aac, -1
  %i.aad = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !4, !alias.scope !886, !noalias !798, !noundef !5
  %i.aae = icmp eq i64 %i.aad, -1                 ; 2 uses
  br i1 %.not.i.i176.i.i, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  br i1 %i.aae, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i, label %bb.jn

bb.jm:                                            ; preds = %bb.jk
  br i1 %i.aae, label %bb.ju, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jn:                                            ; preds = %bb.jl
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.xk, i64 56
  %i.aag = load i64, ptr %i.aaf, align 8, !alias.scope !889, !noalias !801, !noundef !5 ; 2 uses
  %i.aah = load i64, ptr %i.gb, align 8, !alias.scope !890, !noalias !798, !noundef !5
  %i.aai = icmp eq i64 %i.aag, %i.aah
  br i1 %i.aai, label %bb.jo, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jo:                                            ; preds = %bb.jn
  %i.aaj = load ptr, ptr %i.gc, align 8, !alias.scope !890, !noalias !798, !nonnull !5, !noundef !5
  %i.aak = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  %i.aal = load ptr, ptr %i.aak, align 8, !alias.scope !889, !noalias !801, !nonnull !5, !noundef !5
  %i.aam = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.aal, ptr noundef nonnull %i.aaj, i64 noundef %i.aag)
          to label %.noexc183.i.i unwind label %bb.kc, !noalias !801

.noexc183.i.i:                                    ; preds = %bb.jo
  br i1 %i.aam, label %bb.jp, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jp:                                            ; preds = %.noexc183.i.i
  %i.aan = getelementptr inbounds nuw i8, ptr %i.xk, i64 80
  %i.aao = load i64, ptr %i.aan, align 8, !alias.scope !889, !noalias !801, !noundef !5 ; 2 uses
  %i.aap = load i64, ptr %i.gd, align 8, !alias.scope !890, !noalias !798, !noundef !5
  %i.aaq = icmp eq i64 %i.aao, %i.aap
  br i1 %i.aaq, label %bb.jq, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jq:                                            ; preds = %bb.jp
  %i.aar = load ptr, ptr %i.ge, align 8, !alias.scope !890, !noalias !798, !nonnull !5, !noundef !5
  %i.aas = getelementptr inbounds nuw i8, ptr %i.xk, i64 72
  %i.aat = load ptr, ptr %i.aas, align 8, !alias.scope !889, !noalias !801, !nonnull !5, !noundef !5
  %i.aau = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.aat, ptr noundef nonnull %i.aar, i64 noundef %i.aao)
          to label %.noexc184.i.i unwind label %bb.kc, !noalias !801

.noexc184.i.i:                                    ; preds = %bb.jq
  br i1 %i.aau, label %bb.jr, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jr:                                            ; preds = %.noexc184.i.i
  %i.aav = getelementptr inbounds nuw i8, ptr %i.xk, i64 104
  %i.aaw = load i64, ptr %i.aav, align 8, !alias.scope !889, !noalias !801, !noundef !5 ; 2 uses
  %i.aax = load i64, ptr %i.gf, align 8, !alias.scope !890, !noalias !798, !noundef !5
  %i.aay = icmp eq i64 %i.aaw, %i.aax
  br i1 %i.aay, label %bb.js, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.js:                                            ; preds = %bb.jr
  %i.aaz = load ptr, ptr %i.gg, align 8, !alias.scope !890, !noalias !798, !nonnull !5, !noundef !5
  %i.aba = getelementptr inbounds nuw i8, ptr %i.xk, i64 96
  %i.abb = load ptr, ptr %i.aba, align 8, !alias.scope !889, !noalias !801, !nonnull !5, !noundef !5
  %i.abc = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.abb, ptr noundef nonnull %i.aaz, i64 noundef %i.aaw)
          to label %.noexc185.i.i unwind label %bb.kc, !noalias !801

.noexc185.i.i:                                    ; preds = %bb.js
  br i1 %i.abc, label %bb.jt, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jt:                                            ; preds = %.noexc185.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %i.xk, i64 128
  %i.abe = load i64, ptr %i.abd, align 8, !alias.scope !889, !noalias !801, !noundef !5 ; 2 uses
  %i.abf = load i64, ptr %i.gh, align 8, !alias.scope !890, !noalias !798, !noundef !5
  %i.abg = icmp eq i64 %i.abe, %i.abf
  br i1 %i.abg, label %_RNvXs2Y_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6_8GradientNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i.i.i.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXs2Y_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6_8GradientNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.jt
  %i.abh = load ptr, ptr %i.gi, align 8, !alias.scope !890, !noalias !798, !nonnull !5, !noundef !5
  %i.abi = getelementptr inbounds nuw i8, ptr %i.xk, i64 120
  %i.abj = load ptr, ptr %i.abi, align 8, !alias.scope !889, !noalias !801, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.abj, ptr nonnull %i.abh, i64 %i.abe), !noalias !891
  %i.abk = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.abk, label %bb.ju, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ju:                                            ; preds = %_RNvXs2Y_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6_8GradientNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i.i.i.i, %bb.jm
  %i.abl = trunc nuw i64 %i.xl to i1
  br i1 %i.abl, label %bb.jv, label %.split262.i.i

bb.jv:                                            ; preds = %bb.ju
  %3 = trunc nuw i64 %i.xc to i1
  br i1 %3, label %bb.jw, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

.split262.i.i:                                    ; preds = %bb.ju
  br i1 %2, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread260.i.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jw:                                            ; preds = %bb.jv
  %i.abm = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.abn = load i64, ptr %i.abm, align 8, !alias.scope !885, !noalias !801, !noundef !5
  %i.abo = load i64, ptr %i.fz, align 8, !alias.scope !886, !noalias !798, !noundef !5
  %i.abp = icmp eq i64 %i.abn, %i.abo
  br i1 %i.abp, label %bb.jx, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jx:                                            ; preds = %bb.jw
  %i.abq = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.abr = load i64, ptr %i.abq, align 8, !alias.scope !885, !noalias !801, !noundef !5
  %i.abs = load i64, ptr %i.gj, align 8, !alias.scope !886, !noalias !798, !noundef !5
  %i.abt = icmp eq i64 %i.abr, %i.abs
  br i1 %i.abt, label %bb.jy, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.jy:                                            ; preds = %bb.jx
  %i.abu = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  %i.abv = load i64, ptr %i.abu, align 8, !alias.scope !885, !noalias !801, !noundef !5
  %i.abw = load i64, ptr %i.gk, align 8, !alias.scope !886, !noalias !798, !noundef !5
  %i.abx = icmp eq i64 %i.abv, %i.abw
  br i1 %i.abx, label %.split263.i.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

.split263.i.i:                                    ; preds = %bb.jy
  %i.aby = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  %i.abz = load i64, ptr %i.aby, align 8, !alias.scope !885, !noalias !801, !noundef !5
  %i.aca = load i64, ptr %i.ga, align 8, !alias.scope !886, !noalias !798, !noundef !5
  %i.acb = icmp eq i64 %i.abz, %i.aca
  br i1 %i.acb, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread260.i.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i.i, %.split263.i.i, %bb.jy, %bb.jx, %bb.jw, %.split262.i.i, %bb.jv, %_RNvXs2Y_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6_8GradientNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i.i.i.i, %bb.jt, %.noexc185.i.i, %bb.jr, %.noexc184.i.i, %bb.jp, %.noexc183.i.i, %bb.jn, %bb.jm, %bb.jl, %bb.jj, %.noexc181.i.i, %bb.jh, %.noexc180.i.i, %bb.jf, %bb.je, %.noexc178.i.i, %bb.jc, %.noexc177.i.i, %bb.ja, %.split.i70.i, %bb.iz, %bb.iy, %bb.ix, %bb.iu, %_RNvMs0_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunType7key_for.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.az, ptr noundef nonnull align 8 dereferenceable(136) %i.ba, i64 136, i1 false), !noalias !798
  store i64 %.sroa.7.0425.i.i, ptr %i.gm, align 8, !noalias !798
  store i64 %i.mt, ptr %i.gn, align 8, !noalias !798
  %i.acc = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.az)
          to label %bb.ka unwind label %bb.jz, !noalias !801 ; 0 uses

bb.jz:                                            ; preds = %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread260.i.i, %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.ck, %bb.cj
  %lpad.thr_comm.split-lp253.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread203.i.i

_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %.invoke.i.i
  br i1 %i.zg, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread260.i.i, label %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread260.i.i: ; preds = %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i.i, %.split263.i.i, %.split262.i.i, %.split.i70.i, %bb.iv
  %i.acd = getelementptr inbounds nuw i8, ptr %i.xk, i64 144
  store i64 %i.mt, ptr %i.acd, align 8, !noalias !801
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir4toir13Colrv1RunTypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ba)
          to label %bb.kb unwind label %bb.jz, !noalias !801

bb.ka:                                            ; preds = %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !798
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %_RNvXs4_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread260.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !798
  %i.ace = icmp eq ptr %i.ms, %i.mq
  br i1 %i.ace, label %._crit_edge.i.i, label %.lr.ph.i65.i

bb.kc:                                            ; preds = %bb.js, %bb.jq, %bb.jo, %bb.ji, %bb.jg, %.invoke.i.i, %bb.jd, %bb.jb
  %lpad.thr_comm252.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsjceHdiZFn9b_13glyphs2fontir4toir13Colrv1RunTypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ba) #24
          to label %.thread203.i.i unwind label %bb.gd, !noalias !801

.thread203.i.i:                                   ; preds = %bb.kc, %bb.jz, %bb.cr, %bb.cl
  %.pn87199.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.cl ], [ %lpad.thr_comm252.i.i, %bb.kc ], [ %.pn18.i.i.i, %bb.cr ], [ %lpad.thr_comm.split-lp253.i.i, %bb.jz ]
  invoke void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %bb.ke unwind label %bb.kd, !noalias !801

bb.kd:                                            ; preds = %.thread203.i.i
  %i.acf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %.body104.i.i unwind label %bb.kf, !noalias !801

bb.ke:                                            ; preds = %.thread203.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %.body62.thread.i unwind label %bb.gd, !noalias !801

bb.kf:                                            ; preds = %bb.kd
  %i.acg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !801
  unreachable

bb.kg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunEEB1C_.exit.i.i, %.noexc73.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.kh

bb.kh:                                            ; preds = %bb.km, %bb.kg
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ix, i64 144
  %i.aci = load i64, ptr %i.ach, align 8, !noalias !763, !noundef !5 ; 2 uses
  %i.acj = icmp ult i64 %i.aci, 36028797018963968
  call void @llvm.assume(i1 %i.acj)
  %i.ack = icmp eq i64 %i.aci, 0
  br i1 %i.ack, label %thread-pre-split.i, label %bb.kn

bb.ki:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtCsjceHdiZFn9b_13glyphs2fontir4toir9Colrv1RunEEB1C_.exit.i164.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i, i64 64, i1 false), !noalias !771
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !763
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.kk unwind label %bb.kj, !noalias !763

bb.kj:                                            ; preds = %bb.ki
  %i.acl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body80.i unwind label %bb.kl, !noalias !763

bb.kk:                                            ; preds = %bb.ki
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEECsjceHdiZFn9b_13glyphs2fontir.exit.i unwind label %bb.kv, !noalias !763

bb.kl:                                            ; preds = %bb.kj
  %i.acm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !763
  unreachable

bb.km:                                            ; preds = %.backedge.i60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !778
  br label %bb.kh

bb.kn:                                            ; preds = %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !763
  %i.acn = getelementptr inbounds nuw i8, ptr %i.io, i64 48 ; 3 uses
  %i.aco = load i8, ptr %i.acn, align 8, !range !8, !noalias !763, !noundef !5
  %i.acp = icmp eq i8 %i.aco, 25
  br i1 %i.acp, label %bb.kp, label %bb.ko, !prof !12

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.acn, i64 24, i1 false), !noalias !763
  br label %bb.kq

bb.kp:                                            ; preds = %bb.kn
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acn)
          to label %bb.kq unwind label %.body62.thread153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !763

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  invoke void @_RNvMs2_NtCsbeZck1VjBmm_8indexmap3mapINtB5_8IndexMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtCsgCecv3eZDcN_5alloc3vec3VecBN_EE5entryCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bu)
          to label %bb.kr unwind label %.body62.thread153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !763

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !763
  %i.acq = invoke noundef nonnull align 8 ptr @_RNvMNtNtCsbeZck1VjBmm_8indexmap3map5entryINtB2_5EntryNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtCsgCecv3eZDcN_5alloc3vec3VecBP_EE10or_defaultCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.bv)
          to label %bb.ks unwind label %.body62.thread153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !763 ; 0 uses

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !763
  br label %thread-pre-split.i

.body80.i:                                        ; preds = %bb.ld, %bb.kv, %bb.kj
  %.pn.i = phi { ptr, i32 } [ %i.act, %bb.kv ], [ %i.acl, %bb.kj ], [ %eh.lpad-body63149.i, %bb.ld ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsjceHdiZFn9b_13glyphs2fontir.exit.i unwind label %bb.kt, !noalias !763

bb.kt:                                            ; preds = %.body80.i
  %i.acr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body76 unwind label %bb.ku, !noalias !763

bb.ku:                                            ; preds = %bb.kt
  %i.acs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !763
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %.body80.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.thread133.i unwind label %bb.lf

bb.kv:                                            ; preds = %bb.kk, %bb.ab, %bb.z
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !763
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsjceHdiZFn9b_13glyphs2fontir.exit.i83.i unwind label %bb.kw, !noalias !763

bb.kw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEECsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.acu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
end_hunk_0
begin_hunk_1_@_RNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB2_8FontInfoINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontE8try_from:bb.a
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.lt

bb.ll:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !763
  %i.adi = icmp eq i64 %.sroa.0112.0.copyload, 2
  br i1 %i.adi, label %bb.lm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECsjceHdiZFn9b_13glyphs2fontir.exit63

bb.lm:                                            ; preds = %.thread151, %bb.ll
  %.sroa.7.0156 = phi i64 [ -9223372036854775806, %.thread151 ], [ %.sroa.4113.0.copyload, %bb.ll ]
  %.sroa.11.sroa.0.0155 = phi i64 [ undef, %.thread151 ], [ %.sroa.6115.0.copyload, %bb.ll ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.sroa.7, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.sroa.7, i64 64, i1 false)
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0156, ptr %i.adj, align 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.11.sroa.0.0155, ptr %.sroa.5111.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611.sroa.7)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1u_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cf)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit61 unwind label %bb.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECsjceHdiZFn9b_13glyphs2fontir.exit63: ; preds = %bb.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.sroa.7, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.sroa.032.sroa.4.sroa.4.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.sroa.4.sroa.4.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.611.sroa.7, i64 64, i1 false)
  %.sroa.032.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %.sroa.032.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1080) %.sroa.7116.sroa.0, i64 1080, i1 false)
  %.sroa.032.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.032.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7116.sroa.2, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611.sroa.7)
  %.sroa.032.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.032.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.cm, i64 48, i1 false)
  %.sroa.032.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.032.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.cf, i64 48, i1 false)
  %.sroa.032.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.032.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ci, i64 48, i1 false)
  %.sroa.032.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.032.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i64 72, i1 false)
  store i64 %.sroa.0112.0.copyload, ptr %0, align 8
  %.sroa.032.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4113.0.copyload, ptr %.sroa.032.sroa.4.0..sroa_idx, align 8
  %.sroa.032.sroa.4.sroa.5.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6115.0.copyload, ptr %.sroa.032.sroa.4.sroa.5.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 3, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TaguEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.ln

bb.ln:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsjceHdiZFn9b_13glyphs2fontir.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxesECsjceHdiZFn9b_13glyphs2fontir.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECsjceHdiZFn9b_13glyphs2fontir.exit63
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit61: ; preds = %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TaguEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECsjceHdiZFn9b_13glyphs2fontir.exit65 unwind label %.thread147

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECsjceHdiZFn9b_13glyphs2fontir.exit65: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ci)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2T_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2T_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECsjceHdiZFn9b_13glyphs2fontir.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ck)
          to label %bb.lp unwind label %bb.lo

bb.lo:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2T_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit
  %i.adk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ck)
          to label %.body.i unwind label %bb.lq

bb.lp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2T_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ck)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEECsjceHdiZFn9b_13glyphs2fontir.exit.i unwind label %bb.lr

bb.lq:                                            ; preds = %bb.lo
  %i.adl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.lr:                                            ; preds = %bb.lp
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.lr, %bb.lo
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.adm, %bb.lr ], [ %i.adk, %bb.lo ]
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.adn)
          to label %bb.lv unwind label %bb.ls

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEECsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %bb.lp
  %i.ado = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ado)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxesECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.e

bb.ls:                                            ; preds = %.body.i
  %i.adp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxesECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEECsjceHdiZFn9b_13glyphs2fontir.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.ln

bb.lt:                                            ; preds = %bb.lv, %.thread134, %.body57, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit, %bb.lx, %bb.lu
  %i.adq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

.thread134:                                       ; preds = %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit, %.thread147
  %.pn38139 = phi { ptr, i32 } [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit ], [ %lpad.thr_comm145, %.thread147 ], [ %i.ef, %bb.j ]
  %.sroa.014.6138 = phi i1 [ %.sroa.014.8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2b_15NormalizedSpaceEEECsjceHdiZFn9b_13glyphs2fontir.exit ], [ %.sroa.014.7.ph, %.thread147 ], [ true, %bb.j ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ci)
          to label %bb.lu unwind label %bb.lt

bb.lu:                                            ; preds = %bb.g, %.thread134
  %.sroa.014.4.ph = phi i1 [ %.sroa.014.5, %bb.g ], [ %.sroa.014.6138, %.thread134 ]
  %.pn40.ph = phi { ptr, i32 } [ %i.dm, %bb.g ], [ %.pn38139, %.thread134 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxesECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ck) #24
          to label %bb.lv unwind label %bb.lt

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(1168) %1)
  br label %bb.ln

bb.lv:                                            ; preds = %bb.lu, %bb.e, %.body.i
  %.sroa.014.2.ph = phi i1 [ %.sroa.014.4.ph, %bb.lu ], [ %.sroa.014.3, %bb.e ], [ false, %.body.i ]
  %.pn42.ph = phi { ptr, i32 } [ %.pn40.ph, %bb.lu ], [ %i.dj, %bb.e ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cm)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsjceHdiZFn9b_13glyphs2fontir.exit75 unwind label %bb.lt

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsjceHdiZFn9b_13glyphs2fontir.exit75: ; preds = %bb.lv
  br i1 %.sroa.014.2.ph, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsjceHdiZFn9b_13glyphs2fontir.exit75, %bb.lx
  %.pn44117 = phi { ptr, i32 } [ %.pn42.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsjceHdiZFn9b_13glyphs2fontir.exit75 ], [ %.pn44118, %bb.lx ]
  resume { ptr, i32 } %.pn44117

bb.lx:                                            ; preds = %.split.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsjceHdiZFn9b_13glyphs2fontir.exit75
  %.pn44118 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn42.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsjceHdiZFn9b_13glyphs2fontir.exit75 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font4FontECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(1168) %1) #24
          to label %bb.lw unwind label %bb.lt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, double } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNCNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir7ir_axes0s_00INtB7_5FnMutTTRNtNtCsgCecv3eZDcN_5alloc6string6StringRINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !16, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !16, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.val3 = load double, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = icmp eq i64 %.val2, %i.d
  br i1 %i.e, label %bb.b, label %_RNCNCNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir7ir_axes0s_00B9_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %.val1, ptr nonnull %i.h, i64 %.val2)
  %i.i = icmp eq i32 %bcmp.i, 0
  br i1 %i.i, label %bb.c, label %_RNCNCNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir7ir_axes0s_00B9_.exit

bb.c:                                             ; preds = %bb.b
  br label %_RNCNCNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir7ir_axes0s_00B9_.exit

_RNCNCNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir7ir_axes0s_00B9_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.3.0.i = phi double [ %.val3, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.j = insertvalue { i64, double } poison, i64 %.sroa.0.0.i, 0
  %i.k = insertvalue { i64, double } %i.j, double %.sroa.3.0.i, 1
  ret { i64, double } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir14to_ir_features0INtB7_5FnMutTRNtNtCs1qcNTItuk7F_13glyphs_reader4font14FeatureSnippetEE8call_mutBU_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !894, !noundef !5
  %.not.not.i = icmp eq i8 %i.b, 0                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !894
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !894, !nonnull !5
  %.sroa.3.0.i = select i1 %.not.not.i, i64 %i.d, i64 undef
  %.sroa.0.0.i = select i1 %.not.not.i, ptr %i.f, ptr null
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2B_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6_15LayerAttributesNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsjceHdiZFn9b_13glyphs2fontir4toirNtB5_13Colrv1RunTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !9, !noundef !5 ; 2 uses
  %i.f = add nsw i64 %i.e, -2
  %i.g = icmp samesign ugt i64 %i.e, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 4
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 8)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.d, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 5, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.n, ptr %i.c, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.b, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 6, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ], [ %i.s, %bb.f ], [ %i.t, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2v_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6_5LayerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.o = load double, ptr %i.n, align 8, !noundef !5
  %i.p = load i64, ptr %1, align 8, !range !7, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !7, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load double, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.h ], [ %i.x, %bb.f ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %bb.w unwind label %bb.v

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.k ], [ %i.y, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #24
          to label %bb.e unwind label %bb.v

bb.i:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font6AnchorENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %.body, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.aa, %bb.l ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5ShapeEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #24
          to label %bb.h unwind label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !900
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ae = load i8, ptr %i.ad, align 8, !range !15, !alias.scope !899, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !900
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisRuleENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.q unwind label %bb.n, !noalias !898

bb.n:                                             ; preds = %.noexc
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %.body unwind label %bb.o, !noalias !898

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !898
end_hunk_1
