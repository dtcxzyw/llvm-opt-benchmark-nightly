Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/toppush?download=true
inline.NumInlined: 3473
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z22convert_moltype_coupleP19MoleculeInformationifiibiP18InteractionsOfTypeP14WarningHandler:bb.a
  call void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %common.resume

_ZL23convert_pairs_to_pairsQRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS1_95EEEfP7t_atoms.exit: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br i1 %5, label %_ZL12set_excl_allPN3gmx11ListOfListsIiEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZL23convert_pairs_to_pairsQRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS1_95EEEfP7t_atoms.exit
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !441 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !442 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !31
  %i.di = load ptr, ptr %7, align 8, !tbaa !30
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 112
  %i.dn = uitofp i64 %i.dm to double
  %sqrt.i = call double @llvm.sqrt.f64(double %i.dn)
  %i.do = fptosi double %sqrt.i to i32            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.dq = icmp sgt i32 %i.dd, 0
  br i1 %i.dq, label %.lr.ph148.i, label %_ZL19generate_LJCpairsNBP19MoleculeInformationiP18InteractionsOfTypeP14WarningHandler.exit

.lr.ph148.i:                                      ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not.i14 = icmp eq i32 %6, 37
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8224
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dy = zext nneg i32 %i.dd to i64              ; 5 uses
  br i1 %.not.i14, label %.lr.ph148.split.us.i, label %.lr.ph148.split.i

.lr.ph148.split.us.i:                             ; preds = %.lr.ph148.i, %.loopexit.us.i
  %indvars.iv179.i = phi i64 [ %indvars.iv.next180.i, %.loopexit.us.i ], [ 0, %.lr.ph148.i ] ; 4 uses
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i, %.loopexit.us.i ], [ 1, %.lr.ph148.i ] ; 2 uses
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 3 uses
  %i.dz = icmp samesign ult i64 %indvars.iv.next180.i, %i.dy
  br i1 %i.dz, label %.lr.ph125.us.i, label %.loopexit.us.i

.lr.ph125.us.i:                                   ; preds = %.lr.ph148.split.us.i
  %i.ea = getelementptr inbounds nuw [36 x i8], ptr %i.df, i64 %indvars.iv179.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ed = trunc nuw nsw i64 %indvars.iv179.i to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %.lr.ph125.us.i
  %indvars.iv174.i = phi i64 [ %indvars.iv.next175.i, %bb.af ], [ %indvars.iv172.i, %.lr.ph125.us.i ] ; 6 uses
  %i.ee = load ptr, ptr %i.dr, align 8, !tbaa !34 ; 2 uses
  %i.ef = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.eg = getelementptr [4 x i8], ptr %i.ef, i64 %indvars.iv179.i ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !63 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eg, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !63 ; 2 uses
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ek
  %.not110120.us.us.i = icmp eq i32 %i.eh, %i.ej
  br i1 %.not110120.us.us.i, label %.critedge.i, label %iter.check225

iter.check225:                                    ; preds = %bb.z
  %i.em = sext i32 %i.eh to i64                   ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.em ; 5 uses
  %i.eo = shl nsw i64 %i.ek, 2
  %i.ep = add nsw i64 %i.eo, -4
  %i.eq = shl nsw i64 %i.em, 2
  %i.er = sub nsw i64 %i.ep, %i.eq                ; 3 uses
  %i.es = lshr exact i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 5 uses
  %min.iters.check199 = icmp ult i64 %i.er, 28
  br i1 %min.iters.check199, label %.lr.ph.us.us.i.preheader, label %vector.main.loop.iter.check200

vector.main.loop.iter.check200:                   ; preds = %iter.check225
  %min.iters.check201 = icmp ult i64 %i.er, 124
  br i1 %min.iters.check201, label %vec.epilog.ph229, label %vector.ph202

vector.ph202:                                     ; preds = %vector.main.loop.iter.check200
  %i.eu = and i64 %i.et, 24
  %n.vec203 = and i64 %i.et, 9223372036854775776  ; 4 uses
  %i.ev = shl i64 %n.vec203, 2
  %i.ew = getelementptr i8, ptr %i.en, i64 %i.ev
  %broadcast.splatinsert204 = insertelement <8 x i64> poison, i64 %indvars.iv174.i, i64 0
  %broadcast.splat205 = shufflevector <8 x i64> %broadcast.splatinsert204, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph202
  %index207 = phi i64 [ 0, %vector.ph202 ], [ %index.next217, %vector.body206 ] ; 2 uses
  %vec.phi208 = phi <8 x i1> [ zeroinitializer, %vector.ph202 ], [ %i.fj, %vector.body206 ]
  %vec.phi209 = phi <8 x i1> [ zeroinitializer, %vector.ph202 ], [ %i.fk, %vector.body206 ]
  %vec.phi210 = phi <8 x i1> [ zeroinitializer, %vector.ph202 ], [ %i.fl, %vector.body206 ]
  %vec.phi211 = phi <8 x i1> [ zeroinitializer, %vector.ph202 ], [ %i.fm, %vector.body206 ]
  %i.ex = shl i64 %index207, 2
  %next.gep212 = getelementptr i8, ptr %i.en, i64 %i.ex ; 4 uses
  %i.ey = getelementptr i8, ptr %next.gep212, i64 32
  %i.ez = getelementptr i8, ptr %next.gep212, i64 64
  %i.fa = getelementptr i8, ptr %next.gep212, i64 96
  %wide.load213 = load <8 x i32>, ptr %next.gep212, align 4, !tbaa !63
  %wide.load214 = load <8 x i32>, ptr %i.ey, align 4, !tbaa !63
  %wide.load215 = load <8 x i32>, ptr %i.ez, align 4, !tbaa !63
  %wide.load216 = load <8 x i32>, ptr %i.fa, align 4, !tbaa !63
  %i.fb = zext <8 x i32> %wide.load213 to <8 x i64>
  %i.fc = zext <8 x i32> %wide.load214 to <8 x i64>
  %i.fd = zext <8 x i32> %wide.load215 to <8 x i64>
  %i.fe = zext <8 x i32> %wide.load216 to <8 x i64>
  %i.ff = icmp eq <8 x i64> %broadcast.splat205, %i.fb
  %i.fg = icmp eq <8 x i64> %broadcast.splat205, %i.fc
  %i.fh = icmp eq <8 x i64> %broadcast.splat205, %i.fd
  %i.fi = icmp eq <8 x i64> %broadcast.splat205, %i.fe
  %i.fj = or <8 x i1> %vec.phi208, %i.ff          ; 2 uses
  %i.fk = or <8 x i1> %vec.phi209, %i.fg          ; 2 uses
  %i.fl = or <8 x i1> %vec.phi210, %i.fh          ; 2 uses
  %i.fm = or <8 x i1> %vec.phi211, %i.fi          ; 2 uses
  %index.next217 = add nuw i64 %index207, 32      ; 2 uses
  %i.fn = icmp eq i64 %index.next217, %n.vec203
  br i1 %i.fn, label %middle.block218, label %vector.body206, !llvm.loop !428

middle.block218:                                  ; preds = %vector.body206
  %bin.rdx219 = or <8 x i1> %i.fk, %i.fj
  %bin.rdx220 = or <8 x i1> %i.fl, %bin.rdx219
  %bin.rdx221 = or <8 x i1> %i.fm, %bin.rdx220
  %bin.rdx221.fr = freeze <8 x i1> %bin.rdx221
  %i.fo = bitcast <8 x i1> %bin.rdx221.fr to i8
  %i.fp = icmp ne i8 %i.fo, 0                     ; 3 uses
  %cmp.n222 = icmp eq i64 %i.et, %n.vec203
  br i1 %cmp.n222, label %._crit_edge.us.us.i, label %vec.epilog.iter.check227

vec.epilog.iter.check227:                         ; preds = %middle.block218
  %min.epilog.iters.check228 = icmp eq i64 %i.eu, 0
  br i1 %min.epilog.iters.check228, label %.lr.ph.us.us.i.preheader, label %vec.epilog.ph229, !prof !61

vec.epilog.ph229:                                 ; preds = %vector.main.loop.iter.check200, %vec.epilog.iter.check227
  %vec.epilog.resume.val223 = phi i64 [ %n.vec203, %vec.epilog.iter.check227 ], [ 0, %vector.main.loop.iter.check200 ]
  %bc.merge.rdx224 = phi i1 [ %i.fp, %vec.epilog.iter.check227 ], [ false, %vector.main.loop.iter.check200 ]
  %n.vec230 = and i64 %i.et, 9223372036854775800  ; 3 uses
  %i.fq = shl i64 %n.vec230, 2
  %i.fr = getelementptr i8, ptr %i.en, i64 %i.fq
  %broadcast.splatinsert231 = insertelement <8 x i64> poison, i64 %indvars.iv174.i, i64 0
  %broadcast.splat232 = shufflevector <8 x i64> %broadcast.splatinsert231, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <8 x i1> poison, i1 %bc.merge.rdx224, i64 0
  %broadcast.splat234 = shufflevector <8 x i1> %broadcast.splatinsert233, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body235

vec.epilog.vector.body235:                        ; preds = %vec.epilog.vector.body235, %vec.epilog.ph229
  %index236 = phi i64 [ %vec.epilog.resume.val223, %vec.epilog.ph229 ], [ %index.next240, %vec.epilog.vector.body235 ] ; 2 uses
  %vec.phi237 = phi <8 x i1> [ %broadcast.splat234, %vec.epilog.ph229 ], [ %i.fv, %vec.epilog.vector.body235 ]
  %i.fs = shl i64 %index236, 2
  %next.gep238 = getelementptr i8, ptr %i.en, i64 %i.fs
  %wide.load239 = load <8 x i32>, ptr %next.gep238, align 4, !tbaa !63
  %i.ft = zext <8 x i32> %wide.load239 to <8 x i64>
  %i.fu = icmp eq <8 x i64> %broadcast.splat232, %i.ft
  %.fr275 = freeze <8 x i1> %i.fu
  %i.fv = or <8 x i1> %vec.phi237, %.fr275        ; 2 uses
  %index.next240 = add nuw i64 %index236, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next240, %n.vec230
  br i1 %i.fw, label %vec.epilog.middle.block241, label %vec.epilog.vector.body235, !llvm.loop !429

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body235
  %i.fx = bitcast <8 x i1> %i.fv to i8
  %i.fy = icmp ne i8 %i.fx, 0                     ; 2 uses
  %cmp.n242 = icmp eq i64 %i.et, %n.vec230
  br i1 %cmp.n242, label %._crit_edge.us.us.i, label %.lr.ph.us.us.i.preheader

.lr.ph.us.us.i.preheader:                         ; preds = %iter.check225, %vec.epilog.iter.check227, %vec.epilog.middle.block241
  %.053122.us.us.i.ph = phi i1 [ false, %iter.check225 ], [ %i.fp, %vec.epilog.iter.check227 ], [ %i.fy, %vec.epilog.middle.block241 ]
  %.sroa.0107.0121.us.us.i.ph = phi ptr [ %i.en, %iter.check225 ], [ %i.ew, %vec.epilog.iter.check227 ], [ %i.fr, %vec.epilog.middle.block241 ]
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %.lr.ph.us.us.i
  %.053122.us.us.i = phi i1 [ %spec.select.us.us.i, %.lr.ph.us.us.i ], [ %.053122.us.us.i.ph, %.lr.ph.us.us.i.preheader ]
  %.sroa.0107.0121.us.us.i = phi ptr [ %i.gc, %.lr.ph.us.us.i ], [ %.sroa.0107.0121.us.us.i.ph, %.lr.ph.us.us.i.preheader ] ; 2 uses
  %i.fz = load i32, ptr %.sroa.0107.0121.us.us.i, align 4, !tbaa !63
  %i.ga = zext i32 %i.fz to i64
  %i.gb = icmp eq i64 %indvars.iv174.i, %i.ga
  %spec.select.us.us.i = select i1 %i.gb, i1 true, i1 %.053122.us.us.i ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0107.0121.us.us.i, i64 4 ; 2 uses
  %.not110.us.us.i = icmp eq ptr %i.gc, %i.el
  br i1 %.not110.us.us.i, label %._crit_edge.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !430

._crit_edge.us.us.i:                              ; preds = %.lr.ph.us.us.i, %vec.epilog.middle.block241, %middle.block218
  %spec.select.us.us.i.lcssa = phi i1 [ %i.fy, %vec.epilog.middle.block241 ], [ %i.fp, %middle.block218 ], [ %spec.select.us.us.i, %.lr.ph.us.us.i ]
  br i1 %spec.select.us.us.i.lcssa, label %bb.af, label %.critedge.i

.critedge.i:                                      ; preds = %._crit_edge.us.us.i, %bb.z
  %i.gd = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i32 %i.ed, ptr %i.gd, align 4
  %.sroa.598.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = trunc nuw nsw i64 %indvars.iv174.i to i32
  store i32 %i.gf, ptr %.sroa.598.0..sroa_idx.us.us.i, align 4
  %i.gg = load float, ptr %i.eb, align 4, !tbaa !149
  %i.gh = getelementptr inbounds nuw [36 x i8], ptr %i.df, i64 %indvars.iv174.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !149
  %i.gk = load i16, ptr %i.ec, align 4, !tbaa !148
  %i.gl = zext i16 %i.gk to i32
  %i.gm = mul nuw nsw i32 %i.gl, %i.do
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 4, !tbaa !148
  %i.gp = zext i16 %i.go to i32
  %i.gq = add nuw nsw i32 %i.gm, %i.gp
  %18 = zext nneg i32 %i.gq to i64
  %i.gr = load ptr, ptr %7, align 8, !tbaa !30
  %i.gs = getelementptr inbounds nuw [112 x i8], ptr %i.gr, i64 %18
  %i.gt = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c0Ev(ptr noundef nonnull align 8 dereferenceable(105) %i.gs)
          to label %bb.aa unwind label %.split.us.split.us.i

bb.aa:                                            ; preds = %.critedge.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !41
  %i.gv = load i16, ptr %i.ec, align 4, !tbaa !148
  %i.gw = zext i16 %i.gv to i32
  %i.gx = mul nuw nsw i32 %i.gw, %i.do
  %i.gy = load i16, ptr %i.gn, align 4, !tbaa !148
  %i.gz = zext i16 %i.gy to i32
  %i.ha = add nuw nsw i32 %i.gx, %i.gz
  %19 = zext nneg i32 %i.ha to i64
  %i.hb = load ptr, ptr %7, align 8, !tbaa !30
  %i.hc = getelementptr inbounds nuw [112 x i8], ptr %i.hb, i64 %19
  %i.hd = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c1Ev(ptr noundef nonnull align 8 dereferenceable(105) %i.hc)
          to label %bb.ab unwind label %.split.us.split.us.i

bb.ab:                                            ; preds = %bb.aa
  %i.he = load float, ptr %i.hd, align 4, !tbaa !41
  %i.hf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %._crit_edge.i.i.us.us.i unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i.split.us.split.us.i ; 8 uses

._crit_edge.i.i.us.us.i:                          ; preds = %bb.ab
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store float %i.gg, ptr %i.hf, align 4
  %.sroa.5.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store float %i.gj, ptr %.sroa.5.0..sroa_idx.us.us.i, align 4
  %.sroa.6.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store float %i.gu, ptr %.sroa.6.0..sroa_idx.us.us.i, align 4
  %.sroa.7.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store float %i.he, ptr %.sroa.7.0..sroa_idx.us.us.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr %i.dt, ptr %14, align 8, !tbaa !18
  store i64 0, ptr %i.du, align 8, !tbaa !24
  store i8 0, ptr %i.dt, align 8, !tbaa !23
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %13, ptr nonnull %i.gd, ptr nonnull %i.ge, ptr nonnull %i.hf, ptr nonnull %i.hg, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext false)
          to label %bb.ac unwind label %.split130.us.split.us.i

bb.ac:                                            ; preds = %._crit_edge.i.i.us.us.i
  invoke void @_Z17add_param_to_listP18InteractionsOfTypeRK17InteractionOfType(ptr noundef nonnull %i.ds, ptr noundef nonnull align 8 dereferenceable(105) %13)
          to label %bb.ad unwind label %.split137.us.split.us.i

bb.ad:                                            ; preds = %bb.ac
  %i.hh = load ptr, ptr %i.dv, align 8, !tbaa !22 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.dw
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us.us.i: ; preds = %bb.ad
  %i.hj = load i64, ptr %i.dw, align 8, !tbaa !23
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us.us.i
  %i.hl = load ptr, ptr %13, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i.us.us.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.us.us.i, label %_ZN17InteractionOfTypeD2Ev.exit.us.us.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i
  %i.hm = load ptr, ptr %i.dx, align 8, !tbaa !35
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hp) #31
  br label %_ZN17InteractionOfTypeD2Ev.exit.us.us.i

_ZN17InteractionOfTypeD2Ev.exit.us.us.i:          ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i
  %i.hq = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.dt
  br i1 %i.hr, label %_ZNSt6vectorIiSaIiEED2Ev.exit.us.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.us.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.us.us.i: ; preds = %_ZN17InteractionOfTypeD2Ev.exit.us.us.i
  %i.hs = load i64, ptr %i.dt, align 8, !tbaa !23
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.us.us.i

_ZNSt6vectorIiSaIiEED2Ev.exit.us.us.i:            ; preds = %_ZN17InteractionOfTypeD2Ev.exit.us.us.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 16) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef 8) #31
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.us.us.i, %._crit_edge.us.us.i
  %indvars.iv.next175.i = add nuw nsw i64 %indvars.iv174.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next175.i, %i.dy
  br i1 %exitcond178.not.i, label %.loopexit.us.i, label %bb.z, !llvm.loop !431

.loopexit.us.i:                                   ; preds = %bb.af, %.lr.ph148.split.us.i
  %indvars.iv.next173.i = add nuw nsw i64 %indvars.iv172.i, 1
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next180.i, %i.dy
  br i1 %exitcond183.not.i, label %_ZL19generate_LJCpairsNBP19MoleculeInformationiP18InteractionsOfTypeP14WarningHandler.exit, label %.lr.ph148.split.us.i, !llvm.loop !432

.split.us.split.us.i:                             ; preds = %bb.aa, %.critedge.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit84.i

_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i.split.us.split.us.i: ; preds = %bb.ab
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit84.i

.split130.us.split.us.i:                          ; preds = %._crit_edge.i.i.us.us.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.split137.us.split.us.i:                          ; preds = %bb.ac
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %13) #30
  br label %bb.al

.loopexit.i:                                      ; preds = %bb.am, %.lr.ph148.split.i
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next.i, %i.dy
  br i1 %exitcond171.not.i, label %_ZL19generate_LJCpairsNBP19MoleculeInformationiP18InteractionsOfTypeP14WarningHandler.exit, label %.lr.ph148.split.i, !llvm.loop !432

.lr.ph148.split.i:                                ; preds = %.lr.ph148.i, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 0, %.lr.ph148.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.hy = icmp samesign ult i64 %indvars.iv.next.i, %i.dy
  br i1 %i.hy, label %.lr.ph125.i, label %.loopexit.i

.lr.ph125.i:                                      ; preds = %.lr.ph148.split.i
  %i.hz = load ptr, ptr %i.dr, align 8, !tbaa !34 ; 2 uses
  %i.ia = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.ib = getelementptr [4 x i8], ptr %i.ia, i64 %indvars.iv.i ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !63 ; 2 uses
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.id ; 5 uses
  %i.if = getelementptr i8, ptr %i.ib, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !63 ; 2 uses
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ih
  %.not110120.i = icmp eq i32 %i.ic, %i.ig
  br i1 %.not110120.i, label %.split.us145.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph125.i
  %i.ij = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ik = shl nsw i64 %i.ih, 2
  %i.il = add nsw i64 %i.ik, -4
  %i.im = shl nsw i64 %i.id, 2
  %i.in = sub nsw i64 %i.il, %i.im                ; 3 uses
  %i.io = lshr exact i64 %i.in, 2
  %i.ip = add nuw nsw i64 %i.io, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.in, 28
  %min.iters.check177 = icmp ult i64 %i.in, 124
  %i.iq = and i64 %i.ip, 24
  %n.vec = and i64 %i.ip, 9223372036854775776     ; 4 uses
  %i.ir = shl i64 %n.vec, 2
  %i.is = getelementptr i8, ptr %i.ie, i64 %i.ir
  %cmp.n = icmp eq i64 %i.ip, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.iq, 0
  %n.vec186 = and i64 %i.ip, 9223372036854775800  ; 3 uses
  %i.it = shl i64 %n.vec186, 2
  %i.iu = getelementptr i8, ptr %i.ie, i64 %i.it
  %cmp.n196 = icmp eq i64 %i.ip, %n.vec186
  br label %iter.check

iter.check:                                       ; preds = %bb.am, %.lr.ph.preheader.i
  %.055123.i = phi i32 [ %i.ke, %bb.am ], [ %i.ij, %.lr.ph.preheader.i ] ; 4 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.055123.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.jd, %vector.body ]
  %vec.phi178 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.je, %vector.body ]
  %vec.phi179 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.jf, %vector.body ]
  %vec.phi180 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.jg, %vector.body ]
  %i.iv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ie, i64 %i.iv ; 4 uses
  %i.iw = getelementptr i8, ptr %next.gep, i64 32
  %i.ix = getelementptr i8, ptr %next.gep, i64 64
  %i.iy = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !63
  %wide.load181 = load <8 x i32>, ptr %i.iw, align 4, !tbaa !63
  %wide.load182 = load <8 x i32>, ptr %i.ix, align 4, !tbaa !63
  %wide.load183 = load <8 x i32>, ptr %i.iy, align 4, !tbaa !63
  %i.iz = icmp eq <8 x i32> %wide.load, %broadcast.splat
  %i.ja = icmp eq <8 x i32> %wide.load181, %broadcast.splat
  %i.jb = icmp eq <8 x i32> %wide.load182, %broadcast.splat
  %i.jc = icmp eq <8 x i32> %wide.load183, %broadcast.splat
  %i.jd = or <8 x i1> %vec.phi, %i.iz             ; 2 uses
  %i.je = or <8 x i1> %vec.phi178, %i.ja          ; 2 uses
  %i.jf = or <8 x i1> %vec.phi179, %i.jb          ; 2 uses
  %i.jg = or <8 x i1> %vec.phi180, %i.jc          ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !433

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.je, %i.jd
  %bin.rdx184 = or <8 x i1> %i.jf, %bin.rdx
  %bin.rdx185 = or <8 x i1> %i.jg, %bin.rdx184
  %bin.rdx185.fr = freeze <8 x i1> %bin.rdx185
  %i.ji = bitcast <8 x i1> %bin.rdx185.fr to i8
  %i.jj = icmp ne i8 %i.ji, 0                     ; 3 uses
  br i1 %cmp.n, label %._crit_edge.i16, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !61
end_hunk_0
