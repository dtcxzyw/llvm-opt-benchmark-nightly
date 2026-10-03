Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_dyecoupl?download=true
inline.NumInlined: 247
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z12gmx_dyecoupliPPc:._crit_edge.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn312 = phi { ptr, i32 } [ %i.dv, %bb.v ], [ %i.du, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.eo

bb.x:                                             ; preds = %bb.q
  %puts264 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.dw = invoke noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef 23, i32 noundef 7, ptr noundef nonnull %3)
          to label %bb.y unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef null, ptr noundef %i.dw, i32 noundef 1, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, ptr noundef nonnull %i.w)
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %puts265 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.dx = invoke noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef 23, i32 noundef 7, ptr noundef nonnull %3)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef null, ptr noundef %i.dx, i32 noundef 1, ptr noundef nonnull %i.t, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
          to label %bb.ab unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load i32, ptr %i.s, align 4, !tbaa !53  ; 2 uses
  %i.dz = load i32, ptr %i.t, align 4, !tbaa !53  ; 2 uses
  %i.ea = icmp eq i32 %i.dy, %i.dz
  %i.eb = icmp sgt i32 %i.dz, 0
  %or.cond = and i1 %i.ea, %i.eb
  br i1 %or.cond, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ab
  %i.ec = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.ed = load ptr, ptr %i.u, align 8, !tbaa !74
  %wide.trip.count = zext i32 %i.dy to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.ad, !llvm.loop !29

bb.ad:                                            ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !53
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !53
  %.not = icmp eq i32 %i.ef, %i.eh
  br i1 %.not, label %bb.ac, label %bb.aj

.critedge:                                        ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(68) @.str.41, i8 noundef zeroext 2)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %.critedge
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 208, ptr noundef nonnull @.str.45) #16
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %.critedge
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn310 = phi { ptr, i32 } [ %i.ej, %bb.ah ], [ %i.ei, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.eo

bb.aj:                                            ; preds = %bb.ad
  %puts266 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef zeroext 2)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.el = invoke noundef zeroext i1 @_Z16read_first_framePK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEP10t_trxframei(ptr noundef %i.ek, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %4, i32 noundef 1)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull %i.en) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.am, %bb.al
  %i.eo = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !12
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #15
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br i1 %i.el, label %bb.an, label %bb.eh

bb.an:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %puts271 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !81 ; 6 uses
  %i.ev = load i32, ptr %i.s, align 4, !tbaa !53  ; 5 uses
  %i.ew = and i32 %i.ev, 1
  %.not272 = icmp eq i32 %i.ew, 0
  br i1 %.not272, label %bb.ao, label %.thread611

bb.ao:                                            ; preds = %bb.an
  %i.ex = load i32, ptr %i.t, align 4, !tbaa !53  ; 5 uses
  %i.ey = and i32 %i.ex, 1
  %.not273 = icmp eq i32 %i.ey, 0
  br i1 %.not273, label %.preheader619, label %.thread611

.preheader619:                                    ; preds = %bb.ao
  %i.ez = icmp sgt i32 %i.ev, 0
  br i1 %i.ez, label %iter.check, label %.preheader618

iter.check:                                       ; preds = %.preheader619
  %i.fa = load ptr, ptr %i.u, align 8, !tbaa !74  ; 3 uses
  %wide.trip.count703 = zext nneg i32 %i.ev to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ev, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check939 = icmp ult i32 %i.ev, 32
  br i1 %min.iters.check939, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fb = and i64 %wide.trip.count703, 28
  %n.vec = and i64 %wide.trip.count703, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fk, %vector.body ]
  %vec.phi940 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fl, %vector.body ]
  %vec.phi941 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fm, %vector.body ]
  %vec.phi942 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fn, %vector.body ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %index ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %wide.load = load <8 x i32>, ptr %i.fc, align 4, !tbaa !53
  %wide.load943 = load <8 x i32>, ptr %i.fd, align 4, !tbaa !53
  %wide.load944 = load <8 x i32>, ptr %i.fe, align 4, !tbaa !53
  %wide.load945 = load <8 x i32>, ptr %i.ff, align 4, !tbaa !53
  %i.fg = icmp sge <8 x i32> %wide.load, %broadcast.splat
  %i.fh = icmp sge <8 x i32> %wide.load943, %broadcast.splat
  %i.fi = icmp sge <8 x i32> %wide.load944, %broadcast.splat
  %i.fj = icmp sge <8 x i32> %wide.load945, %broadcast.splat
  %i.fk = or <8 x i1> %vec.phi, %i.fg             ; 2 uses
  %i.fl = or <8 x i1> %vec.phi940, %i.fh          ; 2 uses
  %i.fm = or <8 x i1> %vec.phi941, %i.fi          ; 2 uses
  %i.fn = or <8 x i1> %vec.phi942, %i.fj          ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.fl, %i.fk
  %bin.rdx946 = or <8 x i1> %i.fm, %bin.rdx
  %bin.rdx947 = or <8 x i1> %i.fn, %bin.rdx946
  %bin.rdx947.fr = freeze <8 x i1> %bin.rdx947
  %i.fp = bitcast <8 x i1> %bin.rdx947.fr to i8
  %.not1068 = icmp eq i8 %i.fp, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count703
  br i1 %cmp.n, label %.preheader618, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not1068, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.vec948 = and i64 %wide.trip.count703, 2147483644 ; 3 uses
  %33 = xor i1 %bc.merge.rdx, true
  %broadcast.splatinsert949 = insertelement <4 x i1> poison, i1 %33, i64 0
  %broadcast.splat950 = shufflevector <4 x i1> %broadcast.splatinsert949, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert951 = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat952 = shufflevector <4 x i32> %broadcast.splatinsert951, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index953 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next956, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi954 = phi <4 x i1> [ %broadcast.splat950, %vec.epilog.ph ], [ %.fr1069, %vec.epilog.vector.body ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %index953
  %wide.load955 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !53
  %i.fr = icmp sge <4 x i32> %wide.load955, %broadcast.splat952
  %i.fs = or <4 x i1> %vec.phi954, %i.fr
  %.fr1069 = freeze <4 x i1> %i.fs                ; 2 uses
  %index.next956 = add nuw i64 %index953, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next956, %n.vec948
  br i1 %i.ft, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fu = bitcast <4 x i1> %.fr1069 to i4
  %.not1070 = icmp eq i4 %i.fu, 0                 ; 2 uses
  %cmp.n957 = icmp eq i64 %n.vec948, %wide.trip.count703
  br i1 %cmp.n957, label %.preheader618, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv701.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec948, %vec.epilog.middle.block ]
  %.0250628.ph = phi i1 [ true, %iter.check ], [ %.not1068, %vec.epilog.iter.check ], [ %.not1070, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.ap:                                            ; preds = %bb.aj
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ak
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #14
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn267 = phi { ptr, i32 } [ %i.fw, %bb.aq ], [ %i.fv, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.eo

.preheader618:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader619
  %.0250.lcssa = phi i1 [ true, %.preheader619 ], [ %.not1070, %vec.epilog.middle.block ], [ %.not1068, %middle.block ], [ %spec.select, %vec.epilog.scalar.ph ] ; 6 uses
  %i.fx = icmp sgt i32 %i.ex, 0
  br i1 %i.fx, label %iter.check984, label %._crit_edge

iter.check984:                                    ; preds = %.preheader618
  %i.fy = load ptr, ptr %i.v, align 8, !tbaa !74  ; 3 uses
  %wide.trip.count707 = zext nneg i32 %i.ex to i64 ; 6 uses
  %min.iters.check959 = icmp ult i32 %i.ex, 4
  br i1 %min.iters.check959, label %vec.epilog.scalar.ph985.preheader, label %vector.main.loop.iter.check960

vector.main.loop.iter.check960:                   ; preds = %iter.check984
  %min.iters.check961 = icmp ult i32 %i.ex, 32
  br i1 %min.iters.check961, label %vec.epilog.ph988, label %vector.ph962

vector.ph962:                                     ; preds = %vector.main.loop.iter.check960
  %i.fz = and i64 %wide.trip.count707, 28
  %n.vec963 = and i64 %wide.trip.count707, 2147483616 ; 4 uses
  %broadcast.splatinsert964 = insertelement <8 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat965 = shufflevector <8 x i32> %broadcast.splatinsert964, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body966

vector.body966:                                   ; preds = %vector.ph962, %vector.body966
  %index967 = phi i64 [ 0, %vector.ph962 ], [ %index.next976, %vector.body966 ] ; 2 uses
  %vec.phi968 = phi <8 x i1> [ zeroinitializer, %vector.ph962 ], [ %i.gi, %vector.body966 ]
  %vec.phi969 = phi <8 x i1> [ zeroinitializer, %vector.ph962 ], [ %i.gj, %vector.body966 ]
  %vec.phi970 = phi <8 x i1> [ zeroinitializer, %vector.ph962 ], [ %i.gk, %vector.body966 ]
  %vec.phi971 = phi <8 x i1> [ zeroinitializer, %vector.ph962 ], [ %i.gl, %vector.body966 ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %index967 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  %wide.load972 = load <8 x i32>, ptr %i.ga, align 4, !tbaa !53
  %wide.load973 = load <8 x i32>, ptr %i.gb, align 4, !tbaa !53
  %wide.load974 = load <8 x i32>, ptr %i.gc, align 4, !tbaa !53
  %wide.load975 = load <8 x i32>, ptr %i.gd, align 4, !tbaa !53
  %i.ge = icmp sge <8 x i32> %wide.load972, %broadcast.splat965
  %i.gf = icmp sge <8 x i32> %wide.load973, %broadcast.splat965
  %i.gg = icmp sge <8 x i32> %wide.load974, %broadcast.splat965
  %i.gh = icmp sge <8 x i32> %wide.load975, %broadcast.splat965
  %i.gi = or <8 x i1> %vec.phi968, %i.ge          ; 2 uses
  %i.gj = or <8 x i1> %vec.phi969, %i.gf          ; 2 uses
  %i.gk = or <8 x i1> %vec.phi970, %i.gg          ; 2 uses
  %i.gl = or <8 x i1> %vec.phi971, %i.gh          ; 2 uses
  %index.next976 = add nuw i64 %index967, 32      ; 2 uses
  %i.gm = icmp eq i64 %index.next976, %n.vec963
  br i1 %i.gm, label %middle.block977, label %vector.body966, !llvm.loop !32

middle.block977:                                  ; preds = %vector.body966
  %bin.rdx978 = or <8 x i1> %i.gj, %i.gi
  %bin.rdx979 = or <8 x i1> %i.gk, %bin.rdx978
  %bin.rdx980 = or <8 x i1> %i.gl, %bin.rdx979
  %bin.rdx980.fr = freeze <8 x i1> %bin.rdx980
  %i.gn = bitcast <8 x i1> %bin.rdx980.fr to i8
  %.not1071 = icmp eq i8 %i.gn, 0
  %rdx.select = select i1 %.not1071, i1 %.0250.lcssa, i1 false ; 3 uses
  %cmp.n981 = icmp eq i64 %n.vec963, %wide.trip.count707
  br i1 %cmp.n981, label %._crit_edge, label %vec.epilog.iter.check986

vec.epilog.iter.check986:                         ; preds = %middle.block977
  %min.epilog.iters.check987 = icmp eq i64 %i.fz, 0
  br i1 %min.epilog.iters.check987, label %vec.epilog.scalar.ph985.preheader, label %vec.epilog.ph988, !prof !84

vec.epilog.ph988:                                 ; preds = %vector.main.loop.iter.check960, %vec.epilog.iter.check986
  %vec.epilog.resume.val982 = phi i64 [ %n.vec963, %vec.epilog.iter.check986 ], [ 0, %vector.main.loop.iter.check960 ]
  %bc.merge.rdx983 = phi i1 [ %rdx.select, %vec.epilog.iter.check986 ], [ %.0250.lcssa, %vector.main.loop.iter.check960 ]
  %n.vec989 = and i64 %wide.trip.count707, 2147483644 ; 3 uses
  %34 = xor i1 %bc.merge.rdx983, %.0250.lcssa
  %broadcast.splatinsert990 = insertelement <4 x i1> poison, i1 %34, i64 0
  %broadcast.splat991 = shufflevector <4 x i1> %broadcast.splatinsert990, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert992 = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat993 = shufflevector <4 x i32> %broadcast.splatinsert992, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body994

vec.epilog.vector.body994:                        ; preds = %vec.epilog.vector.body994, %vec.epilog.ph988
  %index995 = phi i64 [ %vec.epilog.resume.val982, %vec.epilog.ph988 ], [ %index.next998, %vec.epilog.vector.body994 ] ; 2 uses
  %vec.phi996 = phi <4 x i1> [ %broadcast.splat991, %vec.epilog.ph988 ], [ %.fr1072, %vec.epilog.vector.body994 ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %index995
  %wide.load997 = load <4 x i32>, ptr %i.go, align 4, !tbaa !53
  %i.gp = icmp sge <4 x i32> %wide.load997, %broadcast.splat993
  %i.gq = or <4 x i1> %vec.phi996, %i.gp
  %.fr1072 = freeze <4 x i1> %i.gq                ; 2 uses
  %index.next998 = add nuw i64 %index995, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next998, %n.vec989
  br i1 %i.gr, label %vec.epilog.middle.block999, label %vec.epilog.vector.body994, !llvm.loop !33

vec.epilog.middle.block999:                       ; preds = %vec.epilog.vector.body994
  %i.gs = bitcast <4 x i1> %.fr1072 to i4
  %.not1073 = icmp eq i4 %i.gs, 0
  %rdx.select1000 = select i1 %.not1073, i1 %.0250.lcssa, i1 false ; 2 uses
  %cmp.n1001 = icmp eq i64 %n.vec989, %wide.trip.count707
  br i1 %cmp.n1001, label %._crit_edge, label %vec.epilog.scalar.ph985.preheader

vec.epilog.scalar.ph985.preheader:                ; preds = %iter.check984, %vec.epilog.iter.check986, %vec.epilog.middle.block999
  %indvars.iv705.ph = phi i64 [ 0, %iter.check984 ], [ %n.vec963, %vec.epilog.iter.check986 ], [ %n.vec989, %vec.epilog.middle.block999 ]
  %.2252631.ph = phi i1 [ %.0250.lcssa, %iter.check984 ], [ %rdx.select, %vec.epilog.iter.check986 ], [ %rdx.select1000, %vec.epilog.middle.block999 ]
  br label %vec.epilog.scalar.ph985

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv701 = phi i64 [ %indvars.iv.next702, %vec.epilog.scalar.ph ], [ %indvars.iv701.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0250628 = phi i1 [ %spec.select, %vec.epilog.scalar.ph ], [ %.0250628.ph, %vec.epilog.scalar.ph.preheader ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv701
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !53
  %.not275 = icmp slt i32 %i.gu, %i.eu
  %spec.select = select i1 %.not275, i1 %.0250628, i1 false ; 2 uses
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1 ; 2 uses
  %exitcond704.not = icmp eq i64 %indvars.iv.next702, %wide.trip.count703
  br i1 %exitcond704.not, label %.preheader618, label %vec.epilog.scalar.ph, !llvm.loop !34

vec.epilog.scalar.ph985:                          ; preds = %vec.epilog.scalar.ph985.preheader, %vec.epilog.scalar.ph985
  %indvars.iv705 = phi i64 [ %indvars.iv.next706, %vec.epilog.scalar.ph985 ], [ %indvars.iv705.ph, %vec.epilog.scalar.ph985.preheader ] ; 2 uses
  %.2252631 = phi i1 [ %spec.select321, %vec.epilog.scalar.ph985 ], [ %.2252631.ph, %vec.epilog.scalar.ph985.preheader ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv705
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !53
  %.not274 = icmp slt i32 %i.gw, %i.eu
  %spec.select321 = select i1 %.not274, i1 %.2252631, i1 false ; 2 uses
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %exitcond708.not = icmp eq i64 %indvars.iv.next706, %wide.trip.count707
  br i1 %exitcond708.not, label %._crit_edge, label %vec.epilog.scalar.ph985, !llvm.loop !35

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph985, %middle.block977, %vec.epilog.middle.block999, %.preheader618
  %.2252.lcssa = phi i1 [ %.0250.lcssa, %.preheader618 ], [ %rdx.select1000, %vec.epilog.middle.block999 ], [ %rdx.select, %middle.block977 ], [ %spec.select321, %vec.epilog.scalar.ph985 ]
  br i1 %.2252.lcssa, label %bb.as, label %.thread611

bb.as:                                            ; preds = %._crit_edge
  br i1 %i.do, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef zeroext 2)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.gx = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull @.str.48)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.gy = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i339 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i339, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i340, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull %i.gz) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i340

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i340: ; preds = %bb.aw, %bb.av
  %i.ha = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i341: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i340
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !12
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #15
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit343

_ZNSt10filesystem7__cxx114pathD2Ev.exit343:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.ba

bb.ax:                                            ; preds = %bb.at
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #14
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn278 = phi { ptr, i32 } [ %i.hg, %bb.ay ], [ %i.hf, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.eo

bb.ba:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit343, %bb.as
  %.0234 = phi ptr [ %i.gx, %_ZNSt10filesystem7__cxx114pathD2Ev.exit343 ], [ null, %bb.as ] ; 2 uses
  br i1 %i.dl, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext 2)
          to label %._crit_edge.i.i344 unwind label %bb.be

._crit_edge.i.i344:                               ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.hh, ptr %14, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hh, ptr noundef nonnull align 1 dereferenceable(9) @.str.50, i64 9, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 9, ptr %i.hi, align 8, !tbaa !20
  %i.hj = getelementptr inbounds nuw i8, ptr %14, i64 25
  store i8 0, ptr %i.hj, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.hk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.hk, ptr %15, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i64 36, ptr %i.e, align 8, !tbaa !21
  %i.hl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc350 unwind label %bb.bf ; 3 uses

.noexc350:                                        ; preds = %._crit_edge.i.i344
  store ptr %i.hl, ptr %15, align 8, !tbaa !22
  %i.hm = load i64, ptr %i.e, align 8, !tbaa !21  ; 3 uses
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.hl, ptr noundef nonnull align 1 dereferenceable(36) @.str.51, i64 36, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm
  store i8 0, ptr %i.ho, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.hp = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.hq = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.hp)
          to label %bb.bc unwind label %bb.bg     ; 2 uses

bb.bc:                                            ; preds = %.noexc350
  %i.hr = load ptr, ptr %15, align 8, !tbaa !22   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hk
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %bb.bc
  %i.ht = load i64, ptr %i.hk, align 8, !tbaa !12
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.hv = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hh
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.hx = load i64, ptr %i.hh, align 8, !tbaa !12
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.hz = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i358 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i358, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull %i.ia) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359: ; preds = %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %i.ib = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !12
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #15
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit362

_ZNSt10filesystem7__cxx114pathD2Ev.exit362:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ih = load ptr, ptr %i.k, align 8, !tbaa !76
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.hq, ptr nonnull %5, ptr nonnull %i.ig, ptr noundef %i.ih)
          to label %bb.bi unwind label %.loopexit.split-lp

bb.be:                                            ; preds = %bb.bb
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bf:                                            ; preds = %._crit_edge.i.i344
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
end_hunk_0
