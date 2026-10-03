Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/genhydro?download=true
inline.NumInlined: 902
inline.NumDeleted: 484
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL9add_h_lowPP7t_atomsS1_PSt6vectorIN3gmx11BasicVectorIfEESaIS5_EENS3_8ArrayRefIK21MoleculePatchDatabaseEEP8t_symtabiNS9_IKPSA_EESH_NS9_IKiEESJ_bSJ_:bb.a
  %i.ir = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %_ZL15pdbasearch_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE.exit.i

_ZL15pdbasearch_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE.exit.i: ; preds = %bb.am, %.critedge.loopexit.split.loop.exit5.i.i, %bb.ak
  %.0.lcssa.i.i = phi i32 [ 0, %bb.ak ], [ %i.ir, %.critedge.loopexit.split.loop.exit5.i.i ], [ %i.il, %bb.am ]
  store ptr %.0.val13, ptr %12, align 8, !tbaa !14
  store ptr %i.gw, ptr %i.hc, align 8, !tbaa !14
  %i.is = invoke i64 @_Z11search_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE(ptr noundef %i.ik, i32 noundef %.0.lcssa.i.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ha, i1 noundef zeroext %i.hb, ptr noundef nonnull byval(%"class.gmx::ArrayRef.3") align 8 %12)
          to label %.noexc174 unwind label %.loopexit.split-lp73.loopexit ; 2 uses

.noexc174:                                        ; preds = %_ZL15pdbasearch_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.it = and i64 %i.is, 4294967296
  %.not43.i = icmp eq i64 %i.it, 0
  br i1 %.not43.i, label %bb.an, label %_ZNKRSt8optionalIiE5valueEv.exit.i

bb.an:                                            ; preds = %.noexc174
  %i.iu = load ptr, ptr %i.ij, align 8, !tbaa !46 ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !47
  %i.iw = icmp eq i8 %i.iv, 45                    ; 2 uses
  %i.ix = sext i1 %i.iw to i32
  %.034.i.i = add nsw i32 %i.ho, %i.ix            ; 2 uses
  %.033.idx.i.i = zext i1 %i.iw to i64
  %.033.i.i = getelementptr inbounds nuw i8, ptr %i.iu, i64 %.033.idx.i.i ; 3 uses
  %i.iy = load i32, ptr %i.e, align 8, !tbaa !134 ; 4 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph.i51.i, label %.critedge.i.i

.lr.ph.i51.i:                                     ; preds = %bb.an
  %i.ja = load ptr, ptr %i.gz, align 8, !tbaa !149
  %wide.trip.count.i52.i = zext nneg i32 %i.iy to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph.i51.i
  %indvars.iv.i53.i = phi i64 [ 0, %.lr.ph.i51.i ], [ %indvars.iv.next.i55.i, %bb.ap ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [36 x i8], ptr %i.ja, i64 %indvars.iv.i53.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !151
  %.not.i54.i = icmp eq i32 %i.jd, %.034.i.i
  br i1 %.not.i54.i, label %.critedge.loopexit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %indvars.iv.next.i55.i = add nuw nsw i64 %indvars.iv.i53.i, 1 ; 2 uses
  %exitcond.not.i56.i = icmp eq i64 %indvars.iv.next.i55.i, %wide.trip.count.i52.i
  br i1 %exitcond.not.i56.i, label %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.thread.i, label %bb.ao, !llvm.loop !104

.critedge.loopexit.i.i:                           ; preds = %bb.ao
  %i.je = trunc i64 %indvars.iv.i53.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.loopexit.i.i, %bb.an
  %.031.lcssa.i.i = phi i32 [ 0, %bb.an ], [ %i.je, %.critedge.loopexit.i.i ] ; 2 uses
  %i.jf = icmp slt i32 %.031.lcssa.i.i, %i.iy
  br i1 %i.jf, label %.lr.ph52.i.i, label %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.thread.i

.lr.ph52.i.i:                                     ; preds = %.critedge.i.i
  %i.jg = load ptr, ptr %i.gz, align 8, !tbaa !149
  %i.jh = zext i32 %.031.lcssa.i.i to i64
  %wide.trip.count.i169 = zext i32 %i.iy to i64
  br label %bb.aq

bb.aq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, %.lr.ph52.i.i
  %.337.i = phi i32 [ %.23657.i, %.lr.ph52.i.i ], [ %.7.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i ]
  %.032.i = phi i32 [ -1, %.lr.ph52.i.i ], [ %.4.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i ] ; 10 uses
  %i.ji = phi i32 [ -1, %.lr.ph52.i.i ], [ %i.mk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i ] ; 10 uses
  %indvars.iv57.i.i = phi i64 [ %i.jh, %.lr.ph52.i.i ], [ %indvars.iv.next58.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i ] ; 4 uses
  %fr = freeze i32 %.337.i                        ; 10 uses
  %i.jj = getelementptr inbounds nuw [36 x i8], ptr %i.jg, i64 %indvars.iv57.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !151
  %i.jm = icmp eq i32 %i.jl, %.034.i.i
  %i.jn = icmp slt i32 %i.ji, 0
  %or.cond68.i.i = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %or.cond68.i.i, label %bb.ar, label %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %indvars.iv57.i.i ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !39 ; 11 uses
  %i.jq = ptrtoaddr ptr %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !39 ; 7 uses
  %i.jt = ptrtoaddr ptr %i.js to i64
  %.not4347.i.i = icmp eq ptr %i.jp, %i.js
  br i1 %.not4347.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %.lr.ph50.preheader.i.i

.lr.ph50.preheader.i.i:                           ; preds = %bb.ar
  %i.ju = trunc i64 %indvars.iv57.i.i to i32      ; 17 uses
  %i.jv = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.033.i.i) #22 ; 5 uses
  %i.jw = icmp sgt i32 %i.ju, -1
  %i.jx = icmp eq i64 %i.jv, 0                    ; 2 uses
  br i1 %i.jw, label %.lr.ph50.i.us.i.preheader, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %.lr.ph50.preheader.i.i
  br i1 %i.jx, label %iter.check, label %.lr.ph50.i.i

iter.check:                                       ; preds = %.lr.ph50.i.i.preheader
  %i.jy = add i64 %i.jt, -256
  %i.jz = sub i64 %i.jy, %i.jq                    ; 3 uses
  %i.ka = lshr i64 %i.jz, 8
  %i.kb = add nuw nsw i64 %i.ka, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.jz, 768
  br i1 %min.iters.check, label %.lr.ph50.i.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check42 = icmp ult i64 %i.jz, 3840
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kc = and i64 %i.kb, 12
  %n.vec = and i64 %i.kb, 144115188075855856      ; 5 uses
  %i.kd = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ke = shl i64 %n.vec, 8
  %i.kf = getelementptr i8, ptr %i.jp, i64 %i.ke  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.kk, %vector.body ]
  %vec.phi43 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.kl, %vector.body ]
  %vec.phi44 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.km, %vector.body ]
  %vec.phi45 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.kn, %vector.body ]
  %vec.phi46 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ko, %vector.body ]
  %vec.phi47 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.kp, %vector.body ]
  %vec.phi48 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.kq, %vector.body ]
  %vec.phi49 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.kr, %vector.body ]
  %vec.phi50 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ks, %vector.body ]
  %vec.phi51 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.kt, %vector.body ]
  %vec.phi52 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ku, %vector.body ]
  %vec.phi53 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.kv, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %pointer.phi = phi ptr [ %i.jp, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 256, i64 512, i64 768> ; 4 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add nuw nsw <4 x i32> %vec.ind, splat (i32 12)
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 48
  %wide.gep57 = getelementptr i8, <4 x ptr> %vector.gep, i64 1072
  %wide.gep58 = getelementptr i8, <4 x ptr> %vector.gep, i64 2096
  %wide.gep59 = getelementptr i8, <4 x ptr> %vector.gep, i64 3120
  %wide.masked.gather = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !28
  %wide.masked.gather60 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep57, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !28
  %wide.masked.gather61 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep58, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !28
  %wide.masked.gather62 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep59, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !28
  %i.kg = icmp eq <4 x i64> %wide.masked.gather, zeroinitializer ; 3 uses
  %i.kh = icmp eq <4 x i64> %wide.masked.gather60, zeroinitializer ; 3 uses
  %i.ki = icmp eq <4 x i64> %wide.masked.gather61, zeroinitializer ; 3 uses
  %i.kj = icmp eq <4 x i64> %wide.masked.gather62, zeroinitializer ; 3 uses
  %i.kk = select <4 x i1> %i.kg, <4 x i32> %vec.ind, <4 x i32> %vec.phi ; 2 uses
  %i.kl = select <4 x i1> %i.kh, <4 x i32> %step.add, <4 x i32> %vec.phi43 ; 2 uses
  %i.km = select <4 x i1> %i.ki, <4 x i32> %step.add.2, <4 x i32> %vec.phi44 ; 2 uses
  %i.kn = select <4 x i1> %i.kj, <4 x i32> %step.add.3, <4 x i32> %vec.phi45 ; 2 uses
  %i.ko = or <4 x i1> %vec.phi46, %i.kg           ; 2 uses
  %i.kp = or <4 x i1> %vec.phi47, %i.kh           ; 2 uses
  %i.kq = or <4 x i1> %vec.phi48, %i.ki           ; 2 uses
  %i.kr = or <4 x i1> %vec.phi49, %i.kj           ; 2 uses
  %i.ks = or <4 x i1> %vec.phi50, %i.kg           ; 2 uses
  %i.kt = or <4 x i1> %vec.phi51, %i.kh           ; 2 uses
  %i.ku = or <4 x i1> %vec.phi52, %i.ki           ; 2 uses
  %i.kv = or <4 x i1> %vec.phi53, %i.kj           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 16)
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4096
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kk, <4 x i32> %i.kl)
  %rdx.minmax63 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %rdx.minmax, <4 x i32> %i.km)
  %rdx.minmax64 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %rdx.minmax63, <4 x i32> %i.kn)
  %i.kx = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax64) ; 2 uses
  %.not104 = icmp eq i32 %i.kx, -2147483648
  %i.ky = select i1 %.not104, i32 %fr, i32 %i.kx  ; 3 uses
  %bin.rdx = or <4 x i1> %i.kp, %i.ko
  %bin.rdx65 = or <4 x i1> %i.kq, %bin.rdx
  %bin.rdx66 = or <4 x i1> %i.kr, %bin.rdx65
  %bin.rdx66.fr = freeze <4 x i1> %bin.rdx66
  %i.kz = bitcast <4 x i1> %bin.rdx66.fr to i4
  %.not105 = icmp eq i4 %i.kz, 0
  %rdx.select = select i1 %.not105, i32 %.032.i, i32 %i.ju ; 3 uses
  %bin.rdx67 = or <4 x i1> %i.kt, %i.ks
  %bin.rdx68 = or <4 x i1> %i.ku, %bin.rdx67
  %bin.rdx69 = or <4 x i1> %i.kv, %bin.rdx68
  %bin.rdx69.fr = freeze <4 x i1> %bin.rdx69
  %i.la = bitcast <4 x i1> %bin.rdx69.fr to i4
  %.not106 = icmp eq i4 %i.la, 0
  %rdx.select70 = select i1 %.not106, i32 %i.ji, i32 %i.ju ; 3 uses
  %cmp.n = icmp eq i64 %i.kb, %n.vec
  br i1 %cmp.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph50.i.i.us.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ky, %vec.epilog.iter.check ], [ %fr, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx71 = phi i32 [ %rdx.select, %vec.epilog.iter.check ], [ %.032.i, %vector.main.loop.iter.check ]
  %bc.merge.rdx72 = phi i32 [ %rdx.select70, %vec.epilog.iter.check ], [ %i.ji, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.kd, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val73 = phi ptr [ %i.kf, %vec.epilog.iter.check ], [ %i.jp, %vector.main.loop.iter.check ]
  %18 = icmp eq i32 %bc.merge.rdx, %fr
  %19 = select i1 %18, i32 -2147483648, i32 %bc.merge.rdx
  %20 = icmp ne i32 %bc.merge.rdx71, %.032.i
  %21 = icmp ne i32 %bc.merge.rdx72, %i.ji
  %n.vec74 = and i64 %i.kb, 144115188075855868    ; 4 uses
  %22 = trunc i64 %n.vec74 to i32
  %23 = shl i64 %n.vec74, 8
  %24 = getelementptr i8, ptr %i.jp, i64 %23
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %19, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <4 x i1> poison, i1 %20, i64 0
  %broadcast.splat76 = shufflevector <4 x i1> %broadcast.splatinsert75, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <4 x i1> poison, i1 %21, i64 0
  %broadcast.splat78 = shufflevector <4 x i1> %broadcast.splatinsert77, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat80 = shufflevector <4 x i32> %broadcast.splatinsert79, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat80, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ]
  %vec.phi82 = phi <4 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.lc, %vec.epilog.vector.body ]
  %vec.phi83 = phi <4 x i1> [ %broadcast.splat76, %vec.epilog.ph ], [ %.fr108, %vec.epilog.vector.body ]
  %vec.phi84 = phi <4 x i1> [ %broadcast.splat78, %vec.epilog.ph ], [ %.fr110, %vec.epilog.vector.body ]
  %vec.ind85 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next91, %vec.epilog.vector.body ] ; 2 uses
  %pointer.phi86 = phi ptr [ %bc.resume.val73, %vec.epilog.ph ], [ %ptr.ind92, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep87 = getelementptr i8, ptr %pointer.phi86, <4 x i64> <i64 0, i64 256, i64 512, i64 768>
  %wide.gep88 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep87, i64 48
  %wide.masked.gather89 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep88, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !28
  %i.lb = icmp eq <4 x i64> %wide.masked.gather89, zeroinitializer ; 3 uses
  %i.lc = select <4 x i1> %i.lb, <4 x i32> %vec.ind85, <4 x i32> %vec.phi82 ; 2 uses
  %i.ld = or <4 x i1> %vec.phi83, %i.lb
  %.fr108 = freeze <4 x i1> %i.ld                 ; 2 uses
  %i.le = or <4 x i1> %vec.phi84, %i.lb
  %.fr110 = freeze <4 x i1> %i.le                 ; 2 uses
  %index.next90 = add nuw i64 %index81, 4         ; 2 uses
  %vec.ind.next91 = add nuw nsw <4 x i32> %vec.ind85, splat (i32 4)
  %ptr.ind92 = getelementptr i8, ptr %pointer.phi86, i64 1024
  %i.lf = icmp eq i64 %index.next90, %n.vec74
  br i1 %i.lf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.lg = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.lc) ; 2 uses
  %.not107 = icmp eq i32 %i.lg, -2147483648
  %i.lh = select i1 %.not107, i32 %fr, i32 %i.lg  ; 2 uses
  %i.li = bitcast <4 x i1> %.fr108 to i4
  %.not109 = icmp eq i4 %i.li, 0
  %rdx.select93 = select i1 %.not109, i32 %.032.i, i32 %i.ju ; 2 uses
  %i.lj = bitcast <4 x i1> %.fr110 to i4
  %.not111 = icmp eq i4 %i.lj, 0
  %rdx.select94 = select i1 %.not111, i32 %i.ji, i32 %i.ju ; 2 uses
  %cmp.n95 = icmp eq i64 %i.kb, %n.vec74
  br i1 %cmp.n95, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %.lr.ph50.i.i.us.preheader

.lr.ph50.i.i.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.438.i.us.ph = phi i32 [ %fr, %iter.check ], [ %i.ky, %vec.epilog.iter.check ], [ %i.lh, %vec.epilog.middle.block ]
  %.133.i.us.ph = phi i32 [ %.032.i, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select93, %vec.epilog.middle.block ]
  %.ph127 = phi i32 [ %i.ji, %iter.check ], [ %rdx.select70, %vec.epilog.iter.check ], [ %rdx.select94, %vec.epilog.middle.block ]
  %.03049.i.i.us.ph = phi i32 [ 0, %iter.check ], [ %i.kd, %vec.epilog.iter.check ], [ %22, %vec.epilog.middle.block ]
  %.sroa.035.048.i.i.us.ph = phi ptr [ %i.jp, %iter.check ], [ %i.kf, %vec.epilog.iter.check ], [ %24, %vec.epilog.middle.block ]
  br label %.lr.ph50.i.i.us

.lr.ph50.i.i.us:                                  ; preds = %.lr.ph50.i.i.us.preheader, %.lr.ph50.i.i.us
  %.438.i.us = phi i32 [ %.03049.i.i.us..438.i.us, %.lr.ph50.i.i.us ], [ %.438.i.us.ph, %.lr.ph50.i.i.us.preheader ]
  %.133.i.us = phi i32 [ %..133.i.us, %.lr.ph50.i.i.us ], [ %.133.i.us.ph, %.lr.ph50.i.i.us.preheader ]
  %i.lk = phi i32 [ %., %.lr.ph50.i.i.us ], [ %.ph127, %.lr.ph50.i.i.us.preheader ]
  %.03049.i.i.us = phi i32 [ %.03049.be.i.i.us, %.lr.ph50.i.i.us ], [ %.03049.i.i.us.ph, %.lr.ph50.i.i.us.preheader ] ; 2 uses
  %.sroa.035.048.i.i.us = phi ptr [ %i.lo, %.lr.ph50.i.i.us ], [ %.sroa.035.048.i.i.us.ph, %.lr.ph50.i.i.us.preheader ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.i.us, i64 48
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !28
  %i.ln = icmp eq i64 %i.lm, 0                    ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.i.us, i64 256 ; 2 uses
  %.not43.i.i.us = icmp eq ptr %i.lo, %i.js
  %.03049.i.i.us..438.i.us = select i1 %i.ln, i32 %.03049.i.i.us, i32 %.438.i.us ; 2 uses
  %..133.i.us = select i1 %i.ln, i32 %i.ju, i32 %.133.i.us ; 2 uses
  %. = select i1 %i.ln, i32 %i.ju, i32 %i.lk      ; 2 uses
  %.03049.be.i.i.us = add nuw nsw i32 %.03049.i.i.us, 1
  br i1 %.not43.i.i.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %.lr.ph50.i.i.us, !llvm.loop !107

.lr.ph50.i.us.i.preheader:                        ; preds = %.lr.ph50.preheader.i.i
  br i1 %i.jx, label %.lr.ph50.i.us.i.preheader.split.us, label %.lr.ph50.i.us.i

.lr.ph50.i.us.i.preheader.split.us:               ; preds = %.lr.ph50.i.us.i.preheader
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !28
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i.us: ; preds = %.lr.ph50.i.us.i.preheader.split.us, %.lr.ph50.backedge.i.us.i.us
  %.sroa.035.048.i.us.i.us128 = phi ptr [ %.old55.i.us.i.us, %.lr.ph50.backedge.i.us.i.us ], [ %i.jp, %.lr.ph50.i.us.i.preheader.split.us ] ; 2 uses
  %.03049.i.us.i.us127 = phi i32 [ %.03049.be.i.us.i.us, %.lr.ph50.backedge.i.us.i.us ], [ 0, %.lr.ph50.i.us.i.preheader.split.us ]
  %.old55.i.us.i.us = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.us.i.us128, i64 256 ; 2 uses
  %.not43.old.i.us.i.us = icmp eq ptr %.old55.i.us.i.us, %i.js
  br i1 %.not43.old.i.us.i.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %.lr.ph50.backedge.i.us.i.us

.lr.ph50.backedge.i.us.i.us:                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i.us
  %.03049.be.i.us.i.us = add nuw nsw i32 %.03049.i.us.i.us127, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.us.i.us128, i64 304
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !28
  %i.lu = icmp eq i64 %i.lt, 0
  br i1 %i.lu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i.us

.lr.ph50.i.us.i:                                  ; preds = %.lr.ph50.i.us.i.preheader, %.lr.ph50.backedge.i.us.i
  %.03049.i.us.i = phi i32 [ %.03049.be.i.us.i, %.lr.ph50.backedge.i.us.i ], [ 0, %.lr.ph50.i.us.i.preheader ] ; 2 uses
  %.sroa.035.048.i.us.i = phi ptr [ %.old55.i.us.i, %.lr.ph50.backedge.i.us.i ], [ %i.jp, %.lr.ph50.i.us.i.preheader ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.us.i, i64 48
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !28
  %i.lx = icmp eq i64 %i.lw, %i.jv
  br i1 %i.lx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us.i: ; preds = %.lr.ph50.i.us.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.us.i, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !46
  %bcmp.i.i.us.i = call i32 @bcmp(ptr %i.lz, ptr nonnull readonly %.033.i.i, i64 %i.jv)
  %i.ma = icmp eq i32 %bcmp.i.i.us.i, 0
  br i1 %i.ma, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us.i, %.lr.ph50.i.us.i
  %.old55.i.us.i = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.us.i, i64 256 ; 2 uses
  %.not43.old.i.us.i = icmp eq ptr %.old55.i.us.i, %i.js
  br i1 %.not43.old.i.us.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %.lr.ph50.backedge.i.us.i

.lr.ph50.backedge.i.us.i:                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i
  %.03049.be.i.us.i = add nuw nsw i32 %.03049.i.us.i, 1
  br label %.lr.ph50.i.us.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %.lr.ph50.backedge.i.i
  %.438.i = phi i32 [ %.539.i, %.lr.ph50.backedge.i.i ], [ %fr, %.lr.ph50.i.i.preheader ] ; 2 uses
  %.133.i = phi i32 [ %.2.i, %.lr.ph50.backedge.i.i ], [ %.032.i, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.mb = phi i32 [ %i.mj, %.lr.ph50.backedge.i.i ], [ %i.ji, %.lr.ph50.i.i.preheader ] ; 2 uses
  %.03049.i.i = phi i32 [ %.03049.be.i.i, %.lr.ph50.backedge.i.i ], [ 0, %.lr.ph50.i.i.preheader ] ; 3 uses
  %.sroa.035.048.i.i = phi ptr [ %.sroa.035.048.be.i.i, %.lr.ph50.backedge.i.i ], [ %i.jp, %.lr.ph50.i.i.preheader ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.i, i64 48
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !28
  %i.me = icmp eq i64 %i.md, %i.jv
  br i1 %i.me, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %.lr.ph50.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.i, i64 40
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !46
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.mg, ptr nonnull readonly %.033.i.i, i64 %i.jv)
  %i.mh = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.mh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.i, i64 256 ; 2 uses
  %.not43.i.i = icmp eq ptr %i.mi, %i.js
  br i1 %.not43.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %.lr.ph50.backedge.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %.lr.ph50.i.i
  %.old55.i.i = getelementptr inbounds nuw i8, ptr %.sroa.035.048.i.i, i64 256 ; 2 uses
  %.not43.old.i.i = icmp eq ptr %.old55.i.i, %i.js
  br i1 %.not43.old.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, label %.lr.ph50.backedge.i.i

.lr.ph50.backedge.i.i:                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i
  %.539.i = phi i32 [ %.03049.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i ], [ %.438.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i ]
  %.2.i = phi i32 [ %i.ju, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i ], [ %.133.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i ]
  %i.mj = phi i32 [ %i.ju, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i ], [ %i.mb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i ]
  %.sroa.035.048.be.i.i = phi ptr [ %i.mi, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i ], [ %.old55.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i ]
  %.03049.be.i.i = add nuw nsw i32 %.03049.i.i, 1
  br label %.lr.ph50.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i, %.lr.ph50.i.i.us, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i.us, %.lr.ph50.backedge.i.us.i.us, %middle.block, %vec.epilog.middle.block, %.lr.ph50.i.us.i.preheader.split.us, %bb.ar
  %.7.i = phi i32 [ %fr, %bb.ar ], [ %fr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i.us ], [ %i.lh, %vec.epilog.middle.block ], [ %i.ky, %middle.block ], [ 0, %.lr.ph50.i.us.i.preheader.split.us ], [ %fr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i ], [ %.03049.i.i.us..438.i.us, %.lr.ph50.i.i.us ], [ %.03049.be.i.us.i.us, %.lr.ph50.backedge.i.us.i.us ], [ %.03049.i.us.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us.i ], [ %.438.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i ], [ %.03049.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i ] ; 2 uses
  %.4.i = phi i32 [ %.032.i, %bb.ar ], [ %.032.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i.us ], [ %rdx.select93, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %i.ju, %.lr.ph50.i.us.i.preheader.split.us ], [ %.032.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i ], [ %..133.i.us, %.lr.ph50.i.i.us ], [ %i.ju, %.lr.ph50.backedge.i.us.i.us ], [ %i.ju, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us.i ], [ %.133.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i ], [ %i.ju, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i ] ; 2 uses
  %i.mk = phi i32 [ %i.ji, %bb.ar ], [ %i.ji, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i.us ], [ %rdx.select94, %vec.epilog.middle.block ], [ %rdx.select70, %middle.block ], [ %i.ju, %.lr.ph50.i.us.i.preheader.split.us ], [ %i.ji, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.us.i ], [ %., %.lr.ph50.i.i.us ], [ %i.ju, %.lr.ph50.backedge.i.us.i.us ], [ %i.ju, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us.i ], [ %i.mb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread39.i.i ], [ %i.ju, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i ]
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %exitcond.not.i170 = icmp eq i64 %indvars.iv.next58.i.i, %wide.trip.count.i169
  br i1 %exitcond.not.i170, label %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.i, label %bb.aq, !llvm.loop !108

_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i, %bb.aq
  %.8.i = phi i32 [ %.7.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i ], [ %fr, %bb.aq ] ; 3 uses
  %.5.i = phi i32 [ %.4.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._crit_edge.i.i ], [ %.032.i, %bb.aq ] ; 2 uses
  %i.ml = icmp sgt i32 %.5.i, -1
  br i1 %i.ml, label %bb.as, label %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.thread.i

bb.as:                                            ; preds = %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.i
  %i.mm = zext nneg i32 %.5.i to i64
  %i.mn = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.mm
  %i.mo = sext i32 %.8.i to i64
  %i.mp = load ptr, ptr %i.mn, align 8, !tbaa !59
  %i.mq = getelementptr inbounds nuw [256 x i8], ptr %i.mp, i64 %i.mo ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 244
  %i.ms = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.i167 ; 2 uses
  %i.mt = load float, ptr %i.mr, align 4, !tbaa !60
  store float %i.mt, ptr %i.ms, align 4, !tbaa !60
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 248
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !60
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store float %i.mv, ptr %i.mw, align 4, !tbaa !60
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mq, i64 252
  br label %bb.aw

_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.thread.i: ; preds = %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.i, %.critedge.i.i, %bb.ap
  %.842.i = phi i32 [ %.23657.i, %bb.ap ], [ %.23657.i, %.critedge.i.i ], [ %.8.i, %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.i ]
  br i1 %7, label %bb.at, label %.loopexit.i163

bb.at:                                            ; preds = %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(71) @.str, i8 noundef zeroext 2)
          to label %.noexc175 unwind label %.loopexit.split-lp73.loopexit.split-lp.loopexit.split-lp

.noexc175:                                        ; preds = %bb.at
  %i.my = load ptr, ptr %i.ij, align 8, !tbaa !46
  %i.mz = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !143
  %i.nb = sext i32 %i.ho to i64
  %i.nc = getelementptr inbounds [32 x i8], ptr %i.na, i64 %i.nb ; 3 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !158
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !32
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !159
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !146
end_hunk_0
