Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pyramids?download=true
inline.NumInlined: 448
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN2cv8pyrDown_INS_9FixPtCastIhLi8EEEEEvRKNS_3MatERS3_i:bb.a

bb.s:                                             ; preds = %bb.q
  %i.ay = icmp eq i32 %i.ak, 0
  %i.az = zext i1 %i.ay to i32
  br label %_ZNK2cv8MatShapeclEv.exit82

_ZNK2cv8MatShapeclEv.exit82:                      ; preds = %bb.r, %bb.s
  %i.ba = phi i32 [ %i.ax, %bb.r ], [ %i.az, %bb.s ] ; 3 uses
  %i.bb = icmp eq i32 %i.ak, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp sgt i32 %i.ak, -1
  %i.bf = zext i1 %i.be to i32
  %i.bg = select i1 %i.bb, i32 %i.bd, i32 %i.bf   ; 2 uses
  %i.bh = load i32, ptr %0, align 8, !tbaa !26
  %i.bi = lshr i32 %i.bh, 5                       ; 8 uses
  %i.bj = and i32 %i.bi, 127                      ; 9 uses
  %i.bk = add nuw nsw i32 %i.bj, 1                ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.bl = mul nsw i32 %i.bk, %i.ba                ; 7 uses
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i = icmp ugt i32 %i.bl, 264
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !35
  br i1 %.not.i.i, label %bb.t, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.t:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit82
  %i.bp = icmp slt i32 %i.bl, 0
  %i.bq = shl nuw nsw i64 %i.bm, 2
  %i.br = select i1 %i.bp, i64 -1, i64 %i.bq
  %i.bs = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.br) #18 ; 2 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %_ZNK2cv8MatShapeclEv.exit82, %bb.t
  %i.bt = phi ptr [ %i.bn, %_ZNK2cv8MatShapeclEv.exit82 ], [ %i.bs, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.bu = mul nuw nsw i32 %i.bk, 7
  %i.bv = zext nneg i32 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.bw, ptr %10, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not.i.i83 = icmp samesign ugt i32 %i.bj, 36
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !35
  br i1 %.not.i.i83, label %bb.u, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84

bb.u:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.by = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %bb.v unwind label %bb.y

_ZN2cv10AutoBufferIiLm264EEC2Em.exit84:           ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ca, ptr %11, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cb, align 8, !tbaa !35
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

bb.v:                                             ; preds = %bb.u
  store ptr %i.bz, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.cc, ptr %11, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cd, align 8, !tbaa !35
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %.noexc86 unwind label %bb.z   ; 2 uses

.noexc86:                                         ; preds = %bb.v
  store ptr %i.ce, ptr %11, align 8, !tbaa !34
  %.pre = load ptr, ptr %9, align 8, !tbaa !34
  %.pre130 = load ptr, ptr %10, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

_ZN2cv10AutoBufferIiLm264EEC2Em.exit87:           ; preds = %.noexc86, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84
  %i.cf = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.ce, %.noexc86 ] ; 30 uses
  %i.cg = phi ptr [ %i.bw, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre130, %.noexc86 ] ; 30 uses
  %i.ch = phi ptr [ %i.bt, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre, %.noexc86 ] ; 4 uses
  %i.ci = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.cc, %.noexc86 ] ; 2 uses
  %i.cj = ptrtoaddr ptr %i.cf to i64              ; 7 uses
  %i.ck = ptrtoaddr ptr %i.cg to i64              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !36
  %i.cl = icmp sgt i32 %i.ac, 0
  %i.cm = icmp sgt i32 %i.ai, 0
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  %i.cn = shl nsw i32 %i.ba, 1
  %reass.sub = sub i32 %i.cn, %i.ac
  %i.co = add i32 %reass.sub, 2
  %i.cp = icmp ult i32 %i.co, 5
  br i1 %i.cp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cq = shl nsw i32 %i.bg, 1
  %reass.sub119 = sub i32 %i.cq, %i.ai
  %i.cr = add i32 %reass.sub119, 2
  %i.cs = icmp ult i32 %i.cr, 5
  br i1 %i.cs, label %bb.af, label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit103

bb.z:                                             ; preds = %bb.v
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit100

bb.aa:                                            ; preds = %bb.x, %bb.w, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8pyrDown_INS_9FixPtCastIhLi8EEEEEvRKNS_3MatERS3_i, ptr noundef nonnull @.str.1, i32 noundef 894) #15
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ae:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %12, align 8, !tbaa !13   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ae
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.cw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bc

bb.af:                                            ; preds = %bb.x
  %i.dc = add nsw i32 %i.ac, -3
  %i.dd = sdiv i32 %i.dc, 2
  %i.de = add nsw i32 %i.dd, 1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.de)
  %i.df = shl nsw i32 %.sroa.speculated, 1        ; 7 uses
  %i.dg = zext nneg i32 %i.bk to i64              ; 30 uses
  %i.dh = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ag unwind label %bb.au

.lr.ph:                                           ; preds = %.preheader
  %i.di = shl nuw nsw i32 %i.bk, 1                ; 3 uses
  %wide.trip.count128 = zext nneg i32 %i.bl to i64 ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count128, 1
  %i.dj = icmp eq i32 %i.bl, 1
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count128, 2147483646
  br label %bb.av

bb.ag:                                            ; preds = %bb.af
  %i.dk = add i32 %i.df, -2
  %i.dl = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.dk, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ah unwind label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %i.dm = mul nsw i32 %i.dh, %i.bk                ; 4 uses
  %i.dn = mul nsw i32 %i.dl, %i.bk                ; 4 uses
  %min.iters.check = icmp samesign ult i32 %i.bj, 7
  %i.do = sub i64 %i.ck, %i.cj
  %diff.check = icmp ugt i64 %i.do, -32
  %or.cond304 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond304, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ah
  %n.vec = and i64 %i.dg, 248                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert150 = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat151 = shufflevector <4 x i32> %broadcast.splatinsert150, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  %invariant.op328 = add <4 x i32> splat (i32 4), %broadcast.splat151
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next154, %vector.body ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.dq = add <4 x i32> %broadcast.splat, %vec.ind152
  %.reass = add <4 x i32> %vec.ind152, %invariant.op
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x i32> %i.dq, ptr %i.dp, align 4, !tbaa !19
  store <4 x i32> %.reass, ptr %i.dr, align 4, !tbaa !19
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.dt = add <4 x i32> %broadcast.splat151, %vec.ind152
  %.reass329 = add <4 x i32> %vec.ind152, %invariant.op328
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x i32> %i.dt, ptr %i.ds, align 4, !tbaa !19
  store <4 x i32> %.reass329, ptr %i.du, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next154 = add <4 x i32> %vec.ind152, splat (i32 8)
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br i1 %cmp.n, label %.loopexit303, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ah, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.ah ], [ %n.vec, %middle.block ] ; 7 uses
  %i.dw = and i32 %i.bi, 127
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = and i64 %i.dx, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.ph
  %i.ea = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.eb = add i32 %i.dm, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !19
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.ph
  %i.ed = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.ee = add i32 %i.dn, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !19
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ef = icmp eq i64 %indvars.iv.ph, %i.dx
  br i1 %i.ef, label %.loopexit303, label %scalar.ph

.loopexit303:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ai unwind label %bb.au

bb.ai:                                            ; preds = %.loopexit303
  %i.eh = add i32 %i.df, -1
  %i.ei = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.eh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.ej = mul nsw i32 %i.eg, %i.bk                ; 4 uses
  %i.ek = mul nsw i32 %i.ei, %i.bk                ; 4 uses
  %min.iters.check158 = icmp samesign ult i32 %i.bj, 7
  %i.el = sub i64 %i.ck, %i.cj
  %diff.check160 = icmp ugt i64 %i.el, -32
  %or.cond305 = select i1 %min.iters.check158, i1 true, i1 %diff.check160
  br i1 %or.cond305, label %scalar.ph157.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %bb.aj
  %n.vec162 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op330 = add <4 x i32> splat (i32 4), %broadcast.splat164
  %invariant.op332 = add <4 x i32> splat (i32 4), %broadcast.splat166
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph161
  %index168 = phi i64 [ 0, %vector.ph161 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %vec.ind170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph161 ], [ %vec.ind.next175, %vector.body167 ] ; 5 uses
  %i.em = add nuw nsw i64 %index168, %i.dg        ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.em ; 2 uses
  %i.eo = add <4 x i32> %broadcast.splat164, %vec.ind170
  %.reass331 = add <4 x i32> %vec.ind170, %invariant.op330
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x i32> %i.eo, ptr %i.en, align 4, !tbaa !19
  store <4 x i32> %.reass331, ptr %i.ep, align 4, !tbaa !19
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.em ; 2 uses
  %i.er = add <4 x i32> %broadcast.splat166, %vec.ind170
  %.reass333 = add <4 x i32> %vec.ind170, %invariant.op332
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %i.er, ptr %i.eq, align 4, !tbaa !19
  store <4 x i32> %.reass333, ptr %i.es, align 4, !tbaa !19
  %index.next173 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next175 = add <4 x i32> %vec.ind170, splat (i32 8)
  %i.et = icmp eq i64 %index.next173, %n.vec162
  br i1 %i.et, label %middle.block176, label %vector.body167, !llvm.loop !114

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %n.vec162, %i.dg
  br i1 %cmp.n177, label %.loopexit302, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %bb.aj, %middle.block176
  %indvars.iv.1.ph = phi i64 [ 0, %bb.aj ], [ %n.vec162, %middle.block176 ] ; 6 uses
  %i.eu = and i32 %i.bi, 127
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %lcmp.mod314.not.not = icmp eq i64 %i.ew, 0
  br i1 %lcmp.mod314.not.not, label %scalar.ph157.prol, label %scalar.ph157.prol.loopexit

scalar.ph157.prol:                                ; preds = %scalar.ph157.preheader
  %i.ex = add nuw nsw i64 %indvars.iv.1.ph, %i.dg ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ex
  %i.ez = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fa = add i32 %i.ej, %i.ez
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ex
  %i.fc = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fd = add i32 %i.ek, %i.fc
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !19
  %indvars.iv.next.1.prol = or disjoint i64 %indvars.iv.1.ph, 1
  br label %scalar.ph157.prol.loopexit

scalar.ph157.prol.loopexit:                       ; preds = %scalar.ph157.prol, %scalar.ph157.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %scalar.ph157.preheader ], [ %indvars.iv.next.1.prol, %scalar.ph157.prol ]
  %i.fe = icmp eq i64 %indvars.iv.1.ph, %i.ev
  br i1 %i.fe, label %.loopexit302, label %scalar.ph157

scalar.ph157:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %scalar.ph157 ], [ %indvars.iv.1.unr, %scalar.ph157.prol.loopexit ] ; 5 uses
  %i.ff = add nuw nsw i64 %indvars.iv.1, %i.dg    ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ff
  %i.fh = trunc i64 %indvars.iv.1 to i32
  %i.fi = add i32 %i.ej, %i.fh
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !19
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ff
  %i.fk = trunc i64 %indvars.iv.1 to i32
  %i.fl = add i32 %i.ek, %i.fk
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.fm = add nuw nsw i64 %indvars.iv.next.1, %i.dg ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fm
  %i.fo = trunc i64 %indvars.iv.next.1 to i32
  %i.fp = add i32 %i.ej, %i.fo
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fm
  %i.fr = trunc i64 %indvars.iv.next.1 to i32
  %i.fs = add i32 %i.ek, %i.fr
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !19
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, %i.dg
  br i1 %exitcond.1.not.1, label %.loopexit302, label %scalar.ph157, !llvm.loop !115

.loopexit302:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157, %middle.block176
  %i.ft = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 0, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %.loopexit302
  %i.fu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.df, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.fv = mul nsw i32 %i.ft, %i.bk                ; 4 uses
  %i.fw = mul nsw i32 %i.fu, %i.bk                ; 4 uses
  %i.fx = shl nuw nsw i64 %i.dg, 1                ; 4 uses
  %min.iters.check182 = icmp samesign ult i32 %i.bj, 7
  %i.fy = sub i64 %i.ck, %i.cj
  %diff.check184 = icmp ugt i64 %i.fy, -32
  %or.cond306 = select i1 %min.iters.check182, i1 true, i1 %diff.check184
  br i1 %or.cond306, label %scalar.ph181.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %bb.al
  %n.vec186 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op334 = add <4 x i32> splat (i32 4), %broadcast.splat188
  %invariant.op336 = add <4 x i32> splat (i32 4), %broadcast.splat190
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph185
  %index192 = phi i64 [ 0, %vector.ph185 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %vec.ind194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph185 ], [ %vec.ind.next199, %vector.body191 ] ; 5 uses
  %i.fz = add nuw nsw i64 %index192, %i.fx        ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fz ; 2 uses
  %i.gb = add <4 x i32> %broadcast.splat188, %vec.ind194
  %.reass335 = add <4 x i32> %vec.ind194, %invariant.op334
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %i.gb, ptr %i.ga, align 4, !tbaa !19
  store <4 x i32> %.reass335, ptr %i.gc, align 4, !tbaa !19
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fz ; 2 uses
  %i.ge = add <4 x i32> %broadcast.splat190, %vec.ind194
  %.reass337 = add <4 x i32> %vec.ind194, %invariant.op336
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <4 x i32> %i.ge, ptr %i.gd, align 4, !tbaa !19
  store <4 x i32> %.reass337, ptr %i.gf, align 4, !tbaa !19
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %vec.ind.next199 = add <4 x i32> %vec.ind194, splat (i32 8)
  %i.gg = icmp eq i64 %index.next197, %n.vec186
  br i1 %i.gg, label %middle.block200, label %vector.body191, !llvm.loop !116

middle.block200:                                  ; preds = %vector.body191
  %cmp.n201 = icmp eq i64 %n.vec186, %i.dg
  br i1 %cmp.n201, label %.loopexit301, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %bb.al, %middle.block200
  %indvars.iv.2.ph = phi i64 [ 0, %bb.al ], [ %n.vec186, %middle.block200 ] ; 6 uses
  %i.gh = and i32 %i.bi, 127
  %i.gi = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %lcmp.mod316.not.not = icmp eq i64 %i.gj, 0
  br i1 %lcmp.mod316.not.not, label %scalar.ph181.prol, label %scalar.ph181.prol.loopexit

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader
  %i.gk = add nuw nsw i64 %indvars.iv.2.ph, %i.fx ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gk
  %i.gm = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gn = add i32 %i.fv, %i.gm
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !19
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gk
  %i.gp = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gq = add i32 %i.fw, %i.gp
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !19
  %indvars.iv.next.2.prol = or disjoint i64 %indvars.iv.2.ph, 1
  br label %scalar.ph181.prol.loopexit

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv.2.unr = phi i64 [ %indvars.iv.2.ph, %scalar.ph181.preheader ], [ %indvars.iv.next.2.prol, %scalar.ph181.prol ]
  %i.gr = icmp eq i64 %indvars.iv.2.ph, %i.gi
  br i1 %i.gr, label %.loopexit301, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %scalar.ph181 ], [ %indvars.iv.2.unr, %scalar.ph181.prol.loopexit ] ; 5 uses
  %i.gs = add nuw nsw i64 %indvars.iv.2, %i.fx    ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gs
  %i.gu = trunc i64 %indvars.iv.2 to i32
  %i.gv = add i32 %i.fv, %i.gu
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !19
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gs
  %i.gx = trunc i64 %indvars.iv.2 to i32
  %i.gy = add i32 %i.fw, %i.gx
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 3 uses
  %i.gz = add nuw nsw i64 %indvars.iv.next.2, %i.fx ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gz
  %i.hb = trunc i64 %indvars.iv.next.2 to i32
  %i.hc = add i32 %i.fv, %i.hb
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !19
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gz
  %i.he = trunc i64 %indvars.iv.next.2 to i32
  %i.hf = add i32 %i.fw, %i.he
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !19
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, %i.dg
  br i1 %exitcond.2.not.1, label %.loopexit301, label %scalar.ph181, !llvm.loop !117

.loopexit301:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block200
  %i.hg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %.loopexit301
  %i.hh = or disjoint i32 %i.df, 1
  %i.hi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.hh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.hj = mul nsw i32 %i.hg, %i.bk                ; 4 uses
  %i.hk = mul nsw i32 %i.hi, %i.bk                ; 4 uses
  %i.hl = mul nuw nsw i64 %i.dg, 3                ; 4 uses
  %min.iters.check206 = icmp samesign ult i32 %i.bj, 7
  %i.hm = sub i64 %i.ck, %i.cj
  %diff.check208 = icmp ugt i64 %i.hm, -32
  %or.cond307 = select i1 %min.iters.check206, i1 true, i1 %diff.check208
  br i1 %or.cond307, label %scalar.ph205.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %bb.an
  %n.vec210 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert213 = insertelement <4 x i32> poison, i32 %i.hk, i64 0
  %broadcast.splat214 = shufflevector <4 x i32> %broadcast.splatinsert213, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op338 = add <4 x i32> splat (i32 4), %broadcast.splat212
  %invariant.op340 = add <4 x i32> splat (i32 4), %broadcast.splat214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph209
  %index216 = phi i64 [ 0, %vector.ph209 ], [ %index.next221, %vector.body215 ] ; 2 uses
  %vec.ind218 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph209 ], [ %vec.ind.next223, %vector.body215 ] ; 5 uses
  %i.hn = add nuw nsw i64 %index216, %i.hl        ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hn ; 2 uses
  %i.hp = add <4 x i32> %broadcast.splat212, %vec.ind218
  %.reass339 = add <4 x i32> %vec.ind218, %invariant.op338
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %i.hp, ptr %i.ho, align 4, !tbaa !19
  store <4 x i32> %.reass339, ptr %i.hq, align 4, !tbaa !19
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hn ; 2 uses
  %i.hs = add <4 x i32> %broadcast.splat214, %vec.ind218
  %.reass341 = add <4 x i32> %vec.ind218, %invariant.op340
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <4 x i32> %i.hs, ptr %i.hr, align 4, !tbaa !19
  store <4 x i32> %.reass341, ptr %i.ht, align 4, !tbaa !19
  %index.next221 = add nuw i64 %index216, 8       ; 2 uses
  %vec.ind.next223 = add <4 x i32> %vec.ind218, splat (i32 8)
  %i.hu = icmp eq i64 %index.next221, %n.vec210
  br i1 %i.hu, label %middle.block224, label %vector.body215, !llvm.loop !118

middle.block224:                                  ; preds = %vector.body215
  %cmp.n225 = icmp eq i64 %n.vec210, %i.dg
  br i1 %cmp.n225, label %.loopexit300, label %scalar.ph205.preheader

scalar.ph205.preheader:                           ; preds = %bb.an, %middle.block224
  %indvars.iv.3.ph = phi i64 [ 0, %bb.an ], [ %n.vec210, %middle.block224 ] ; 6 uses
  %i.hv = and i32 %i.bi, 127
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = and i64 %i.hw, 1
  %lcmp.mod318.not.not = icmp eq i64 %i.hx, 0
  br i1 %lcmp.mod318.not.not, label %scalar.ph205.prol, label %scalar.ph205.prol.loopexit

scalar.ph205.prol:                                ; preds = %scalar.ph205.preheader
  %i.hy = add nuw nsw i64 %indvars.iv.3.ph, %i.hl ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ib = add i32 %i.hj, %i.ia
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !19
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hy
  %i.id = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ie = add i32 %i.hk, %i.id
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !19
  %indvars.iv.next.3.prol = or disjoint i64 %indvars.iv.3.ph, 1
  br label %scalar.ph205.prol.loopexit

scalar.ph205.prol.loopexit:                       ; preds = %scalar.ph205.prol, %scalar.ph205.preheader
  %indvars.iv.3.unr = phi i64 [ %indvars.iv.3.ph, %scalar.ph205.preheader ], [ %indvars.iv.next.3.prol, %scalar.ph205.prol ]
  %i.if = icmp eq i64 %indvars.iv.3.ph, %i.hw
  br i1 %i.if, label %.loopexit300, label %scalar.ph205

scalar.ph205:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.1, %scalar.ph205 ], [ %indvars.iv.3.unr, %scalar.ph205.prol.loopexit ] ; 5 uses
  %i.ig = add nuw nsw i64 %indvars.iv.3, %i.hl    ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ig
  %i.ii = trunc i64 %indvars.iv.3 to i32
  %i.ij = add i32 %i.hj, %i.ii
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !19
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ig
  %i.il = trunc i64 %indvars.iv.3 to i32
  %i.im = add i32 %i.hk, %i.il
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 3 uses
  %i.in = add nuw nsw i64 %indvars.iv.next.3, %i.hl ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.in
  %i.ip = trunc i64 %indvars.iv.next.3 to i32
  %i.iq = add i32 %i.hj, %i.ip
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !19
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.in
  %i.is = trunc i64 %indvars.iv.next.3 to i32
  %i.it = add i32 %i.hk, %i.is
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !19
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2 ; 2 uses
  %exitcond.3.not.1 = icmp eq i64 %indvars.iv.next.3.1, %i.dg
  br i1 %exitcond.3.not.1, label %.loopexit300, label %scalar.ph205, !llvm.loop !119

.loopexit300:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205, %middle.block224
  %i.iu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %.loopexit300
  %i.iv = add i32 %i.df, 2
  %i.iw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.iv, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ix = mul nsw i32 %i.iu, %i.bk                ; 4 uses
  %i.iy = mul nsw i32 %i.iw, %i.bk                ; 4 uses
  %i.iz = shl nuw nsw i64 %i.dg, 2                ; 4 uses
  %min.iters.check230 = icmp samesign ult i32 %i.bj, 7
  %i.ja = sub i64 %i.ck, %i.cj
  %diff.check232 = icmp ugt i64 %i.ja, -32
  %or.cond308 = select i1 %min.iters.check230, i1 true, i1 %diff.check232
  br i1 %or.cond308, label %scalar.ph229.preheader, label %vector.ph233

vector.ph233:                                     ; preds = %bb.ap
  %n.vec234 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert235 = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %broadcast.splat236 = shufflevector <4 x i32> %broadcast.splatinsert235, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op342 = add <4 x i32> splat (i32 4), %broadcast.splat236
  %invariant.op344 = add <4 x i32> splat (i32 4), %broadcast.splat238
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph233
  %index240 = phi i64 [ 0, %vector.ph233 ], [ %index.next245, %vector.body239 ] ; 2 uses
  %vec.ind242 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph233 ], [ %vec.ind.next247, %vector.body239 ] ; 5 uses
  %i.jb = add nuw nsw i64 %index240, %i.iz        ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jb ; 2 uses
  %i.jd = add <4 x i32> %broadcast.splat236, %vec.ind242
  %.reass343 = add <4 x i32> %vec.ind242, %invariant.op342
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <4 x i32> %i.jd, ptr %i.jc, align 4, !tbaa !19
  store <4 x i32> %.reass343, ptr %i.je, align 4, !tbaa !19
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jb ; 2 uses
  %i.jg = add <4 x i32> %broadcast.splat238, %vec.ind242
  %.reass345 = add <4 x i32> %vec.ind242, %invariant.op344
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> %i.jg, ptr %i.jf, align 4, !tbaa !19
  store <4 x i32> %.reass345, ptr %i.jh, align 4, !tbaa !19
  %index.next245 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next247 = add <4 x i32> %vec.ind242, splat (i32 8)
  %i.ji = icmp eq i64 %index.next245, %n.vec234
  br i1 %i.ji, label %middle.block248, label %vector.body239, !llvm.loop !120

middle.block248:                                  ; preds = %vector.body239
  %cmp.n249 = icmp eq i64 %n.vec234, %i.dg
  br i1 %cmp.n249, label %.loopexit299, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %bb.ap, %middle.block248
  %indvars.iv.4.ph = phi i64 [ 0, %bb.ap ], [ %n.vec234, %middle.block248 ] ; 6 uses
  %i.jj = and i32 %i.bi, 127
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jl = and i64 %i.jk, 1
  %lcmp.mod320.not.not = icmp eq i64 %i.jl, 0
  br i1 %lcmp.mod320.not.not, label %scalar.ph229.prol, label %scalar.ph229.prol.loopexit

scalar.ph229.prol:                                ; preds = %scalar.ph229.preheader
  %i.jm = add nuw nsw i64 %indvars.iv.4.ph, %i.iz ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jm
  %i.jo = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.jp = add i32 %i.ix, %i.jo
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !19
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jm
  %i.jr = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.js = add i32 %i.iy, %i.jr
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !19
  %indvars.iv.next.4.prol = or disjoint i64 %indvars.iv.4.ph, 1
  br label %scalar.ph229.prol.loopexit

scalar.ph229.prol.loopexit:                       ; preds = %scalar.ph229.prol, %scalar.ph229.preheader
  %indvars.iv.4.unr = phi i64 [ %indvars.iv.4.ph, %scalar.ph229.preheader ], [ %indvars.iv.next.4.prol, %scalar.ph229.prol ]
  %i.jt = icmp eq i64 %indvars.iv.4.ph, %i.jk
  br i1 %i.jt, label %.loopexit299, label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4.1, %scalar.ph229 ], [ %indvars.iv.4.unr, %scalar.ph229.prol.loopexit ] ; 5 uses
  %i.ju = add nuw nsw i64 %indvars.iv.4, %i.iz    ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ju
  %i.jw = trunc i64 %indvars.iv.4 to i32
  %i.jx = add i32 %i.ix, %i.jw
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !19
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ju
  %i.jz = trunc i64 %indvars.iv.4 to i32
  %i.ka = add i32 %i.iy, %i.jz
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !19
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 3 uses
  %i.kb = add nuw nsw i64 %indvars.iv.next.4, %i.iz ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kb
  %i.kd = trunc i64 %indvars.iv.next.4 to i32
  %i.ke = add i32 %i.ix, %i.kd
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !19
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kb
  %i.kg = trunc i64 %indvars.iv.next.4 to i32
  %i.kh = add i32 %i.iy, %i.kg
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !19
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2 ; 2 uses
  %exitcond.4.not.1 = icmp eq i64 %indvars.iv.next.4.1, %i.dg
  br i1 %exitcond.4.not.1, label %.loopexit299, label %scalar.ph229, !llvm.loop !121

.loopexit299:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229, %middle.block248
  %i.ki = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 3, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %.loopexit299
  %i.kj = add i32 %i.df, 3
  %i.kk = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.kj, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.kl = mul nsw i32 %i.ki, %i.bk                ; 4 uses
  %i.km = mul nsw i32 %i.kk, %i.bk                ; 4 uses
  %i.kn = mul nuw nsw i64 %i.dg, 5                ; 4 uses
  %min.iters.check254 = icmp samesign ult i32 %i.bj, 7
  %i.ko = sub i64 %i.ck, %i.cj
  %diff.check256 = icmp ugt i64 %i.ko, -32
  %or.cond309 = select i1 %min.iters.check254, i1 true, i1 %diff.check256
  br i1 %or.cond309, label %scalar.ph253.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %bb.ar
  %n.vec258 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert259 = insertelement <4 x i32> poison, i32 %i.kl, i64 0
  %broadcast.splat260 = shufflevector <4 x i32> %broadcast.splatinsert259, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert261 = insertelement <4 x i32> poison, i32 %i.km, i64 0
  %broadcast.splat262 = shufflevector <4 x i32> %broadcast.splatinsert261, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op346 = add <4 x i32> splat (i32 4), %broadcast.splat260
  %invariant.op348 = add <4 x i32> splat (i32 4), %broadcast.splat262
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph257
  %index264 = phi i64 [ 0, %vector.ph257 ], [ %index.next269, %vector.body263 ] ; 2 uses
  %vec.ind266 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph257 ], [ %vec.ind.next271, %vector.body263 ] ; 5 uses
  %i.kp = add nuw nsw i64 %index264, %i.kn        ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kp ; 2 uses
  %i.kr = add <4 x i32> %broadcast.splat260, %vec.ind266
  %.reass347 = add <4 x i32> %vec.ind266, %invariant.op346
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store <4 x i32> %i.kr, ptr %i.kq, align 4, !tbaa !19
  store <4 x i32> %.reass347, ptr %i.ks, align 4, !tbaa !19
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kp ; 2 uses
  %i.ku = add <4 x i32> %broadcast.splat262, %vec.ind266
  %.reass349 = add <4 x i32> %vec.ind266, %invariant.op348
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x i32> %i.ku, ptr %i.kt, align 4, !tbaa !19
  store <4 x i32> %.reass349, ptr %i.kv, align 4, !tbaa !19
  %index.next269 = add nuw i64 %index264, 8       ; 2 uses
  %vec.ind.next271 = add <4 x i32> %vec.ind266, splat (i32 8)
  %i.kw = icmp eq i64 %index.next269, %n.vec258
  br i1 %i.kw, label %middle.block272, label %vector.body263, !llvm.loop !122

middle.block272:                                  ; preds = %vector.body263
  %cmp.n273 = icmp eq i64 %n.vec258, %i.dg
  br i1 %cmp.n273, label %.loopexit, label %scalar.ph253.preheader

scalar.ph253.preheader:                           ; preds = %bb.ar, %middle.block272
  %indvars.iv.5.ph = phi i64 [ 0, %bb.ar ], [ %n.vec258, %middle.block272 ] ; 6 uses
  %i.kx = and i32 %i.bi, 127
  %i.ky = zext nneg i32 %i.kx to i64              ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %lcmp.mod322.not.not = icmp eq i64 %i.kz, 0
  br i1 %lcmp.mod322.not.not, label %scalar.ph253.prol, label %scalar.ph253.prol.loopexit

scalar.ph253.prol:                                ; preds = %scalar.ph253.preheader
  %i.la = add nuw nsw i64 %indvars.iv.5.ph, %i.kn ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.la
  %i.lc = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.ld = add i32 %i.kl, %i.lc
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !19
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.la
  %i.lf = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.lg = add i32 %i.km, %i.lf
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !19
  %indvars.iv.next.5.prol = or disjoint i64 %indvars.iv.5.ph, 1
  br label %scalar.ph253.prol.loopexit

scalar.ph253.prol.loopexit:                       ; preds = %scalar.ph253.prol, %scalar.ph253.preheader
  %indvars.iv.5.unr = phi i64 [ %indvars.iv.5.ph, %scalar.ph253.preheader ], [ %indvars.iv.next.5.prol, %scalar.ph253.prol ]
  %i.lh = icmp eq i64 %indvars.iv.5.ph, %i.ky
  br i1 %i.lh, label %.loopexit, label %scalar.ph253

scalar.ph253:                                     ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253
  %indvars.iv.5 = phi i64 [ %indvars.iv.next.5.1, %scalar.ph253 ], [ %indvars.iv.5.unr, %scalar.ph253.prol.loopexit ] ; 5 uses
  %i.li = add nuw nsw i64 %indvars.iv.5, %i.kn    ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.li
  %i.lk = trunc i64 %indvars.iv.5 to i32
  %i.ll = add i32 %i.kl, %i.lk
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !19
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.li
  %i.ln = trunc i64 %indvars.iv.5 to i32
  %i.lo = add i32 %i.km, %i.ln
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !19
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1 ; 3 uses
  %i.lp = add nuw nsw i64 %indvars.iv.next.5, %i.kn ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.lp
  %i.lr = trunc i64 %indvars.iv.next.5 to i32
  %i.ls = add i32 %i.kl, %i.lr
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !19
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.lp
  %i.lu = trunc i64 %indvars.iv.next.5 to i32
  %i.lv = add i32 %i.km, %i.lu
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !19
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2 ; 2 uses
  %exitcond.5.not.1 = icmp eq i64 %indvars.iv.next.5.1, %i.dg
  br i1 %exitcond.5.not.1, label %.loopexit, label %scalar.ph253, !llvm.loop !123

.loopexit:                                        ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253, %middle.block272
  %i.lw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 4, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %.loopexit
  %i.lx = add i32 %i.df, 4
  %i.ly = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.lx, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lz = mul nsw i32 %i.lw, %i.bk                ; 4 uses
  %i.ma = mul nsw i32 %i.ly, %i.bk                ; 4 uses
  %i.mb = mul nuw nsw i64 %i.dg, 6                ; 4 uses
  %min.iters.check278 = icmp samesign ult i32 %i.bj, 7
  %i.mc = sub i64 %i.ck, %i.cj
  %diff.check280 = icmp ugt i64 %i.mc, -32
  %or.cond310 = select i1 %min.iters.check278, i1 true, i1 %diff.check280
  br i1 %or.cond310, label %scalar.ph277.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %bb.at
  %n.vec282 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert283 = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %broadcast.splat284 = shufflevector <4 x i32> %broadcast.splatinsert283, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert285 = insertelement <4 x i32> poison, i32 %i.ma, i64 0
  %broadcast.splat286 = shufflevector <4 x i32> %broadcast.splatinsert285, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op350 = add <4 x i32> splat (i32 4), %broadcast.splat284
  %invariant.op352 = add <4 x i32> splat (i32 4), %broadcast.splat286
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph281
  %index288 = phi i64 [ 0, %vector.ph281 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %vec.ind290 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph281 ], [ %vec.ind.next295, %vector.body287 ] ; 5 uses
  %i.md = add nuw nsw i64 %index288, %i.mb        ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.md ; 2 uses
  %i.mf = add <4 x i32> %broadcast.splat284, %vec.ind290
  %.reass351 = add <4 x i32> %vec.ind290, %invariant.op350
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <4 x i32> %i.mf, ptr %i.me, align 4, !tbaa !19
  store <4 x i32> %.reass351, ptr %i.mg, align 4, !tbaa !19
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.md ; 2 uses
  %i.mi = add <4 x i32> %broadcast.splat286, %vec.ind290
  %.reass353 = add <4 x i32> %vec.ind290, %invariant.op352
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <4 x i32> %i.mi, ptr %i.mh, align 4, !tbaa !19
  store <4 x i32> %.reass353, ptr %i.mj, align 4, !tbaa !19
  %index.next293 = add nuw i64 %index288, 8       ; 2 uses
  %vec.ind.next295 = add <4 x i32> %vec.ind290, splat (i32 8)
  %i.mk = icmp eq i64 %index.next293, %n.vec282
  br i1 %i.mk, label %middle.block296, label %vector.body287, !llvm.loop !124

middle.block296:                                  ; preds = %vector.body287
  %cmp.n297 = icmp eq i64 %n.vec282, %i.dg
  br i1 %cmp.n297, label %.preheader, label %scalar.ph277.preheader

scalar.ph277.preheader:                           ; preds = %bb.at, %middle.block296
  %indvars.iv.6.ph = phi i64 [ 0, %bb.at ], [ %n.vec282, %middle.block296 ] ; 6 uses
  %i.ml = and i32 %i.bi, 127
  %i.mm = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.mn = and i64 %i.mm, 1
  %lcmp.mod324.not.not = icmp eq i64 %i.mn, 0
  br i1 %lcmp.mod324.not.not, label %scalar.ph277.prol, label %scalar.ph277.prol.loopexit

scalar.ph277.prol:                                ; preds = %scalar.ph277.preheader
  %i.mo = add nuw nsw i64 %indvars.iv.6.ph, %i.mb ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mo
  %i.mq = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mr = add i32 %i.lz, %i.mq
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !19
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mo
  %i.mt = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mu = add i32 %i.ma, %i.mt
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !19
  %indvars.iv.next.6.prol = or disjoint i64 %indvars.iv.6.ph, 1
  br label %scalar.ph277.prol.loopexit

scalar.ph277.prol.loopexit:                       ; preds = %scalar.ph277.prol, %scalar.ph277.preheader
  %indvars.iv.6.unr = phi i64 [ %indvars.iv.6.ph, %scalar.ph277.preheader ], [ %indvars.iv.next.6.prol, %scalar.ph277.prol ]
  %i.mv = icmp eq i64 %indvars.iv.6.ph, %i.mm
  br i1 %i.mv, label %.preheader, label %scalar.ph277

scalar.ph277:                                     ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277
  %indvars.iv.6 = phi i64 [ %indvars.iv.next.6.1, %scalar.ph277 ], [ %indvars.iv.6.unr, %scalar.ph277.prol.loopexit ] ; 5 uses
  %i.mw = add nuw nsw i64 %indvars.iv.6, %i.mb    ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mw
  %i.my = trunc i64 %indvars.iv.6 to i32
  %i.mz = add i32 %i.lz, %i.my
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !19
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mw
  %i.nb = trunc i64 %indvars.iv.6 to i32
  %i.nc = add i32 %i.ma, %i.nb
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !19
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1 ; 3 uses
  %i.nd = add nuw nsw i64 %indvars.iv.next.6, %i.mb ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.nd
  %i.nf = trunc i64 %indvars.iv.next.6 to i32
  %i.ng = add i32 %i.lz, %i.nf
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !19
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.nd
  %i.ni = trunc i64 %indvars.iv.next.6 to i32
  %i.nj = add i32 %i.ma, %i.ni
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !19
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2 ; 2 uses
  %exitcond.6.not.1 = icmp eq i64 %indvars.iv.next.6.1, %i.dg
  br i1 %exitcond.6.not.1, label %.preheader, label %scalar.ph277, !llvm.loop !125

.preheader:                                       ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277, %middle.block296
  %i.nk = icmp sgt i32 %i.bl, 0
  br i1 %i.nk, label %.lr.ph, label %._crit_edge

bb.au:                                            ; preds = %bb.as, %.loopexit, %bb.aq, %.loopexit299, %bb.ao, %.loopexit300, %bb.am, %.loopexit301, %bb.ak, %.loopexit302, %bb.ai, %.loopexit303, %bb.af, %bb.ag
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1312, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  %i.nn = trunc i64 %indvars.iv to i32
  %i.no = add i32 %i.dm, %i.nn
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !19
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.nq = trunc i64 %indvars.iv to i32
  %i.nr = add i32 %i.dn, %i.nq
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next
  %i.nt = trunc i64 %indvars.iv.next to i32
  %i.nu = add i32 %i.dm, %i.nt
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !19
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next
  %i.nw = trunc i64 %indvars.iv.next to i32
  %i.nx = add i32 %i.dn, %i.nw
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !19
  %indvars.iv.next.1312 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1312, %i.dg
  br i1 %exitcond.not.1, label %.loopexit303, label %scalar.ph, !llvm.loop !126

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.av
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod327 = trunc i32 %i.bl to i1
  call void @llvm.assume(i1 %lcmp.mod327)
  %i.ny = trunc nuw nsw i64 %indvars.iv125.epil.init to i32 ; 2 uses
  %i.nz = udiv i32 %i.ny, %i.bk
  %i.oa = mul i32 %i.di, %i.nz
  %i.ob = urem i32 %i.ny, %i.bk
  %i.oc = add nuw nsw i32 %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125.epil.init
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !tbaa !41
  %i.oe = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.bg, ptr %i.oe, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv14PyrDownInvokerINS_9FixPtCastIhLi8EEEEE, i64 16), ptr %15, align 8, !tbaa !44
  %i.of = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %0, ptr %i.of, align 8, !tbaa !50
  %i.og = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %1, ptr %i.og, align 8, !tbaa !51
  %i.oh = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i32 %2, ptr %i.oh, align 8, !tbaa !52
  %i.oi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.c, ptr %i.oi, align 8, !tbaa !53
  %i.oj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.a, ptr %i.oj, align 8, !tbaa !54
  %i.ok = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.b, ptr %i.ok, align 8, !tbaa !55
  %i.ol = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.aw unwind label %bb.bb

bb.av:                                            ; preds = %bb.av, %.lr.ph.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next126.1, %bb.av ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.av ]
  %i.om = trunc nuw nsw i64 %indvars.iv125 to i32 ; 2 uses
  %i.on = udiv i32 %i.om, %i.bk
  %i.oo = mul i32 %i.di, %i.on
  %i.op = urem i32 %i.om, %i.bk
  %i.oq = add nuw nsw i32 %i.oo, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !19
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.os = trunc nuw nsw i64 %indvars.iv.next126 to i32 ; 2 uses
  %i.ot = udiv i32 %i.os, %i.bk
  %i.ou = mul i32 %i.di, %i.ot
  %i.ov = urem i32 %i.os, %i.bk
  %i.ow = add nuw nsw i32 %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next126
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !19
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.av, !llvm.loop !127

bb.aw:                                            ; preds = %._crit_edge
  %i.oy = sitofp i32 %i.ol to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %i.oy)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.oz = load ptr, ptr %11, align 8, !tbaa !34   ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.oz, %i.ci
  %i.pa = icmp eq ptr %i.oz, null
  %or.cond.i = or i1 %.not.i.i91, %i.pa
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.oz) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.pb = load ptr, ptr %10, align 8, !tbaa !34   ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.pb, %i.bw
  %i.pc = icmp eq ptr %i.pb, null
  %or.cond.i93 = or i1 %.not.i.i92, %i.pc
  br i1 %or.cond.i93, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94, label %bb.az

bb.az:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.pb) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94

_ZN2cv10AutoBufferIiLm264EED2Ev.exit94:           ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.pd = load ptr, ptr %9, align 8, !tbaa !34    ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.pd, %i.bn
  %i.pe = icmp eq ptr %i.pd, null
  %or.cond.i96 = or i1 %.not.i.i95, %i.pe
  br i1 %or.cond.i96, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit97, label %bb.ba

bb.ba:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94
end_hunk_0
begin_hunk_1_@_ZN2cv8pyrDown_INS_9FixPtCastIsLi8EEEEEvRKNS_3MatERS3_i:bb.a

bb.s:                                             ; preds = %bb.q
  %i.ay = icmp eq i32 %i.ak, 0
  %i.az = zext i1 %i.ay to i32
  br label %_ZNK2cv8MatShapeclEv.exit82

_ZNK2cv8MatShapeclEv.exit82:                      ; preds = %bb.r, %bb.s
  %i.ba = phi i32 [ %i.ax, %bb.r ], [ %i.az, %bb.s ] ; 3 uses
  %i.bb = icmp eq i32 %i.ak, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp sgt i32 %i.ak, -1
  %i.bf = zext i1 %i.be to i32
  %i.bg = select i1 %i.bb, i32 %i.bd, i32 %i.bf   ; 2 uses
  %i.bh = load i32, ptr %0, align 8, !tbaa !26
  %i.bi = lshr i32 %i.bh, 5                       ; 8 uses
  %i.bj = and i32 %i.bi, 127                      ; 9 uses
  %i.bk = add nuw nsw i32 %i.bj, 1                ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.bl = mul nsw i32 %i.bk, %i.ba                ; 7 uses
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i = icmp ugt i32 %i.bl, 264
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !35
  br i1 %.not.i.i, label %bb.t, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.t:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit82
  %i.bp = icmp slt i32 %i.bl, 0
  %i.bq = shl nuw nsw i64 %i.bm, 2
  %i.br = select i1 %i.bp, i64 -1, i64 %i.bq
  %i.bs = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.br) #18 ; 2 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %_ZNK2cv8MatShapeclEv.exit82, %bb.t
  %i.bt = phi ptr [ %i.bn, %_ZNK2cv8MatShapeclEv.exit82 ], [ %i.bs, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.bu = mul nuw nsw i32 %i.bk, 7
  %i.bv = zext nneg i32 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.bw, ptr %10, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not.i.i83 = icmp samesign ugt i32 %i.bj, 36
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !35
  br i1 %.not.i.i83, label %bb.u, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84

bb.u:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.by = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %bb.v unwind label %bb.y

_ZN2cv10AutoBufferIiLm264EEC2Em.exit84:           ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ca, ptr %11, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cb, align 8, !tbaa !35
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

bb.v:                                             ; preds = %bb.u
  store ptr %i.bz, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.cc, ptr %11, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cd, align 8, !tbaa !35
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %.noexc86 unwind label %bb.z   ; 2 uses

.noexc86:                                         ; preds = %bb.v
  store ptr %i.ce, ptr %11, align 8, !tbaa !34
  %.pre = load ptr, ptr %9, align 8, !tbaa !34
  %.pre130 = load ptr, ptr %10, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

_ZN2cv10AutoBufferIiLm264EEC2Em.exit87:           ; preds = %.noexc86, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84
  %i.cf = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.ce, %.noexc86 ] ; 30 uses
  %i.cg = phi ptr [ %i.bw, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre130, %.noexc86 ] ; 30 uses
  %i.ch = phi ptr [ %i.bt, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre, %.noexc86 ] ; 4 uses
  %i.ci = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.cc, %.noexc86 ] ; 2 uses
  %i.cj = ptrtoaddr ptr %i.cf to i64              ; 7 uses
  %i.ck = ptrtoaddr ptr %i.cg to i64              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !36
  %i.cl = icmp sgt i32 %i.ac, 0
  %i.cm = icmp sgt i32 %i.ai, 0
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  %i.cn = shl nsw i32 %i.ba, 1
  %reass.sub = sub i32 %i.cn, %i.ac
  %i.co = add i32 %reass.sub, 2
  %i.cp = icmp ult i32 %i.co, 5
  br i1 %i.cp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cq = shl nsw i32 %i.bg, 1
  %reass.sub119 = sub i32 %i.cq, %i.ai
  %i.cr = add i32 %reass.sub119, 2
  %i.cs = icmp ult i32 %i.cr, 5
  br i1 %i.cs, label %bb.af, label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit103

bb.z:                                             ; preds = %bb.v
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit100

bb.aa:                                            ; preds = %bb.x, %bb.w, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8pyrDown_INS_9FixPtCastIhLi8EEEEEvRKNS_3MatERS3_i, ptr noundef nonnull @.str.1, i32 noundef 894) #15
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ae:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %12, align 8, !tbaa !13   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ae
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.cw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bc

bb.af:                                            ; preds = %bb.x
  %i.dc = add nsw i32 %i.ac, -3
  %i.dd = sdiv i32 %i.dc, 2
  %i.de = add nsw i32 %i.dd, 1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.de)
  %i.df = shl nsw i32 %.sroa.speculated, 1        ; 7 uses
  %i.dg = zext nneg i32 %i.bk to i64              ; 30 uses
  %i.dh = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ag unwind label %bb.au

.lr.ph:                                           ; preds = %.preheader
  %i.di = shl nuw nsw i32 %i.bk, 1                ; 3 uses
  %wide.trip.count128 = zext nneg i32 %i.bl to i64 ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count128, 1
  %i.dj = icmp eq i32 %i.bl, 1
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count128, 2147483646
  br label %bb.av

bb.ag:                                            ; preds = %bb.af
  %i.dk = add i32 %i.df, -2
  %i.dl = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.dk, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ah unwind label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %i.dm = mul nsw i32 %i.dh, %i.bk                ; 4 uses
  %i.dn = mul nsw i32 %i.dl, %i.bk                ; 4 uses
  %min.iters.check = icmp samesign ult i32 %i.bj, 7
  %i.do = sub i64 %i.ck, %i.cj
  %diff.check = icmp ugt i64 %i.do, -32
  %or.cond304 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond304, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ah
  %n.vec = and i64 %i.dg, 248                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert150 = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat151 = shufflevector <4 x i32> %broadcast.splatinsert150, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  %invariant.op328 = add <4 x i32> splat (i32 4), %broadcast.splat151
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next154, %vector.body ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.dq = add <4 x i32> %broadcast.splat, %vec.ind152
  %.reass = add <4 x i32> %vec.ind152, %invariant.op
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x i32> %i.dq, ptr %i.dp, align 4, !tbaa !19
  store <4 x i32> %.reass, ptr %i.dr, align 4, !tbaa !19
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.dt = add <4 x i32> %broadcast.splat151, %vec.ind152
  %.reass329 = add <4 x i32> %vec.ind152, %invariant.op328
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x i32> %i.dt, ptr %i.ds, align 4, !tbaa !19
  store <4 x i32> %.reass329, ptr %i.du, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next154 = add <4 x i32> %vec.ind152, splat (i32 8)
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br i1 %cmp.n, label %.loopexit303, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ah, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.ah ], [ %n.vec, %middle.block ] ; 7 uses
  %i.dw = and i32 %i.bi, 127
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = and i64 %i.dx, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.ph
  %i.ea = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.eb = add i32 %i.dm, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !19
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.ph
  %i.ed = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.ee = add i32 %i.dn, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !19
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ef = icmp eq i64 %indvars.iv.ph, %i.dx
  br i1 %i.ef, label %.loopexit303, label %scalar.ph

.loopexit303:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ai unwind label %bb.au

bb.ai:                                            ; preds = %.loopexit303
  %i.eh = add i32 %i.df, -1
  %i.ei = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.eh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.ej = mul nsw i32 %i.eg, %i.bk                ; 4 uses
  %i.ek = mul nsw i32 %i.ei, %i.bk                ; 4 uses
  %min.iters.check158 = icmp samesign ult i32 %i.bj, 7
  %i.el = sub i64 %i.ck, %i.cj
  %diff.check160 = icmp ugt i64 %i.el, -32
  %or.cond305 = select i1 %min.iters.check158, i1 true, i1 %diff.check160
  br i1 %or.cond305, label %scalar.ph157.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %bb.aj
  %n.vec162 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op330 = add <4 x i32> splat (i32 4), %broadcast.splat164
  %invariant.op332 = add <4 x i32> splat (i32 4), %broadcast.splat166
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph161
  %index168 = phi i64 [ 0, %vector.ph161 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %vec.ind170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph161 ], [ %vec.ind.next175, %vector.body167 ] ; 5 uses
  %i.em = add nuw nsw i64 %index168, %i.dg        ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.em ; 2 uses
  %i.eo = add <4 x i32> %broadcast.splat164, %vec.ind170
  %.reass331 = add <4 x i32> %vec.ind170, %invariant.op330
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x i32> %i.eo, ptr %i.en, align 4, !tbaa !19
  store <4 x i32> %.reass331, ptr %i.ep, align 4, !tbaa !19
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.em ; 2 uses
  %i.er = add <4 x i32> %broadcast.splat166, %vec.ind170
  %.reass333 = add <4 x i32> %vec.ind170, %invariant.op332
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %i.er, ptr %i.eq, align 4, !tbaa !19
  store <4 x i32> %.reass333, ptr %i.es, align 4, !tbaa !19
  %index.next173 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next175 = add <4 x i32> %vec.ind170, splat (i32 8)
  %i.et = icmp eq i64 %index.next173, %n.vec162
  br i1 %i.et, label %middle.block176, label %vector.body167, !llvm.loop !129

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %n.vec162, %i.dg
  br i1 %cmp.n177, label %.loopexit302, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %bb.aj, %middle.block176
  %indvars.iv.1.ph = phi i64 [ 0, %bb.aj ], [ %n.vec162, %middle.block176 ] ; 6 uses
  %i.eu = and i32 %i.bi, 127
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %lcmp.mod314.not.not = icmp eq i64 %i.ew, 0
  br i1 %lcmp.mod314.not.not, label %scalar.ph157.prol, label %scalar.ph157.prol.loopexit

scalar.ph157.prol:                                ; preds = %scalar.ph157.preheader
  %i.ex = add nuw nsw i64 %indvars.iv.1.ph, %i.dg ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ex
  %i.ez = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fa = add i32 %i.ej, %i.ez
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ex
  %i.fc = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fd = add i32 %i.ek, %i.fc
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !19
  %indvars.iv.next.1.prol = or disjoint i64 %indvars.iv.1.ph, 1
  br label %scalar.ph157.prol.loopexit

scalar.ph157.prol.loopexit:                       ; preds = %scalar.ph157.prol, %scalar.ph157.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %scalar.ph157.preheader ], [ %indvars.iv.next.1.prol, %scalar.ph157.prol ]
  %i.fe = icmp eq i64 %indvars.iv.1.ph, %i.ev
  br i1 %i.fe, label %.loopexit302, label %scalar.ph157

scalar.ph157:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %scalar.ph157 ], [ %indvars.iv.1.unr, %scalar.ph157.prol.loopexit ] ; 5 uses
  %i.ff = add nuw nsw i64 %indvars.iv.1, %i.dg    ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ff
  %i.fh = trunc i64 %indvars.iv.1 to i32
  %i.fi = add i32 %i.ej, %i.fh
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !19
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ff
  %i.fk = trunc i64 %indvars.iv.1 to i32
  %i.fl = add i32 %i.ek, %i.fk
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.fm = add nuw nsw i64 %indvars.iv.next.1, %i.dg ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fm
  %i.fo = trunc i64 %indvars.iv.next.1 to i32
  %i.fp = add i32 %i.ej, %i.fo
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fm
  %i.fr = trunc i64 %indvars.iv.next.1 to i32
  %i.fs = add i32 %i.ek, %i.fr
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !19
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, %i.dg
  br i1 %exitcond.1.not.1, label %.loopexit302, label %scalar.ph157, !llvm.loop !130

.loopexit302:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157, %middle.block176
  %i.ft = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 0, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %.loopexit302
  %i.fu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.df, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.fv = mul nsw i32 %i.ft, %i.bk                ; 4 uses
  %i.fw = mul nsw i32 %i.fu, %i.bk                ; 4 uses
  %i.fx = shl nuw nsw i64 %i.dg, 1                ; 4 uses
  %min.iters.check182 = icmp samesign ult i32 %i.bj, 7
  %i.fy = sub i64 %i.ck, %i.cj
  %diff.check184 = icmp ugt i64 %i.fy, -32
  %or.cond306 = select i1 %min.iters.check182, i1 true, i1 %diff.check184
  br i1 %or.cond306, label %scalar.ph181.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %bb.al
  %n.vec186 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op334 = add <4 x i32> splat (i32 4), %broadcast.splat188
  %invariant.op336 = add <4 x i32> splat (i32 4), %broadcast.splat190
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph185
  %index192 = phi i64 [ 0, %vector.ph185 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %vec.ind194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph185 ], [ %vec.ind.next199, %vector.body191 ] ; 5 uses
  %i.fz = add nuw nsw i64 %index192, %i.fx        ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fz ; 2 uses
  %i.gb = add <4 x i32> %broadcast.splat188, %vec.ind194
  %.reass335 = add <4 x i32> %vec.ind194, %invariant.op334
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %i.gb, ptr %i.ga, align 4, !tbaa !19
  store <4 x i32> %.reass335, ptr %i.gc, align 4, !tbaa !19
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fz ; 2 uses
  %i.ge = add <4 x i32> %broadcast.splat190, %vec.ind194
  %.reass337 = add <4 x i32> %vec.ind194, %invariant.op336
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <4 x i32> %i.ge, ptr %i.gd, align 4, !tbaa !19
  store <4 x i32> %.reass337, ptr %i.gf, align 4, !tbaa !19
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %vec.ind.next199 = add <4 x i32> %vec.ind194, splat (i32 8)
  %i.gg = icmp eq i64 %index.next197, %n.vec186
  br i1 %i.gg, label %middle.block200, label %vector.body191, !llvm.loop !131

middle.block200:                                  ; preds = %vector.body191
  %cmp.n201 = icmp eq i64 %n.vec186, %i.dg
  br i1 %cmp.n201, label %.loopexit301, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %bb.al, %middle.block200
  %indvars.iv.2.ph = phi i64 [ 0, %bb.al ], [ %n.vec186, %middle.block200 ] ; 6 uses
  %i.gh = and i32 %i.bi, 127
  %i.gi = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %lcmp.mod316.not.not = icmp eq i64 %i.gj, 0
  br i1 %lcmp.mod316.not.not, label %scalar.ph181.prol, label %scalar.ph181.prol.loopexit

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader
  %i.gk = add nuw nsw i64 %indvars.iv.2.ph, %i.fx ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gk
  %i.gm = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gn = add i32 %i.fv, %i.gm
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !19
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gk
  %i.gp = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gq = add i32 %i.fw, %i.gp
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !19
  %indvars.iv.next.2.prol = or disjoint i64 %indvars.iv.2.ph, 1
  br label %scalar.ph181.prol.loopexit

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv.2.unr = phi i64 [ %indvars.iv.2.ph, %scalar.ph181.preheader ], [ %indvars.iv.next.2.prol, %scalar.ph181.prol ]
  %i.gr = icmp eq i64 %indvars.iv.2.ph, %i.gi
  br i1 %i.gr, label %.loopexit301, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %scalar.ph181 ], [ %indvars.iv.2.unr, %scalar.ph181.prol.loopexit ] ; 5 uses
  %i.gs = add nuw nsw i64 %indvars.iv.2, %i.fx    ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gs
  %i.gu = trunc i64 %indvars.iv.2 to i32
  %i.gv = add i32 %i.fv, %i.gu
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !19
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gs
  %i.gx = trunc i64 %indvars.iv.2 to i32
  %i.gy = add i32 %i.fw, %i.gx
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 3 uses
  %i.gz = add nuw nsw i64 %indvars.iv.next.2, %i.fx ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gz
  %i.hb = trunc i64 %indvars.iv.next.2 to i32
  %i.hc = add i32 %i.fv, %i.hb
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !19
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gz
  %i.he = trunc i64 %indvars.iv.next.2 to i32
  %i.hf = add i32 %i.fw, %i.he
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !19
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, %i.dg
  br i1 %exitcond.2.not.1, label %.loopexit301, label %scalar.ph181, !llvm.loop !132

.loopexit301:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block200
  %i.hg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %.loopexit301
  %i.hh = or disjoint i32 %i.df, 1
  %i.hi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.hh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.hj = mul nsw i32 %i.hg, %i.bk                ; 4 uses
  %i.hk = mul nsw i32 %i.hi, %i.bk                ; 4 uses
  %i.hl = mul nuw nsw i64 %i.dg, 3                ; 4 uses
  %min.iters.check206 = icmp samesign ult i32 %i.bj, 7
  %i.hm = sub i64 %i.ck, %i.cj
  %diff.check208 = icmp ugt i64 %i.hm, -32
  %or.cond307 = select i1 %min.iters.check206, i1 true, i1 %diff.check208
  br i1 %or.cond307, label %scalar.ph205.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %bb.an
  %n.vec210 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert213 = insertelement <4 x i32> poison, i32 %i.hk, i64 0
  %broadcast.splat214 = shufflevector <4 x i32> %broadcast.splatinsert213, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op338 = add <4 x i32> splat (i32 4), %broadcast.splat212
  %invariant.op340 = add <4 x i32> splat (i32 4), %broadcast.splat214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph209
  %index216 = phi i64 [ 0, %vector.ph209 ], [ %index.next221, %vector.body215 ] ; 2 uses
  %vec.ind218 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph209 ], [ %vec.ind.next223, %vector.body215 ] ; 5 uses
  %i.hn = add nuw nsw i64 %index216, %i.hl        ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hn ; 2 uses
  %i.hp = add <4 x i32> %broadcast.splat212, %vec.ind218
  %.reass339 = add <4 x i32> %vec.ind218, %invariant.op338
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %i.hp, ptr %i.ho, align 4, !tbaa !19
  store <4 x i32> %.reass339, ptr %i.hq, align 4, !tbaa !19
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hn ; 2 uses
  %i.hs = add <4 x i32> %broadcast.splat214, %vec.ind218
  %.reass341 = add <4 x i32> %vec.ind218, %invariant.op340
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <4 x i32> %i.hs, ptr %i.hr, align 4, !tbaa !19
  store <4 x i32> %.reass341, ptr %i.ht, align 4, !tbaa !19
  %index.next221 = add nuw i64 %index216, 8       ; 2 uses
  %vec.ind.next223 = add <4 x i32> %vec.ind218, splat (i32 8)
  %i.hu = icmp eq i64 %index.next221, %n.vec210
  br i1 %i.hu, label %middle.block224, label %vector.body215, !llvm.loop !133

middle.block224:                                  ; preds = %vector.body215
  %cmp.n225 = icmp eq i64 %n.vec210, %i.dg
  br i1 %cmp.n225, label %.loopexit300, label %scalar.ph205.preheader

scalar.ph205.preheader:                           ; preds = %bb.an, %middle.block224
  %indvars.iv.3.ph = phi i64 [ 0, %bb.an ], [ %n.vec210, %middle.block224 ] ; 6 uses
  %i.hv = and i32 %i.bi, 127
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = and i64 %i.hw, 1
  %lcmp.mod318.not.not = icmp eq i64 %i.hx, 0
  br i1 %lcmp.mod318.not.not, label %scalar.ph205.prol, label %scalar.ph205.prol.loopexit

scalar.ph205.prol:                                ; preds = %scalar.ph205.preheader
  %i.hy = add nuw nsw i64 %indvars.iv.3.ph, %i.hl ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ib = add i32 %i.hj, %i.ia
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !19
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hy
  %i.id = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ie = add i32 %i.hk, %i.id
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !19
  %indvars.iv.next.3.prol = or disjoint i64 %indvars.iv.3.ph, 1
  br label %scalar.ph205.prol.loopexit

scalar.ph205.prol.loopexit:                       ; preds = %scalar.ph205.prol, %scalar.ph205.preheader
  %indvars.iv.3.unr = phi i64 [ %indvars.iv.3.ph, %scalar.ph205.preheader ], [ %indvars.iv.next.3.prol, %scalar.ph205.prol ]
  %i.if = icmp eq i64 %indvars.iv.3.ph, %i.hw
  br i1 %i.if, label %.loopexit300, label %scalar.ph205

scalar.ph205:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.1, %scalar.ph205 ], [ %indvars.iv.3.unr, %scalar.ph205.prol.loopexit ] ; 5 uses
  %i.ig = add nuw nsw i64 %indvars.iv.3, %i.hl    ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ig
  %i.ii = trunc i64 %indvars.iv.3 to i32
  %i.ij = add i32 %i.hj, %i.ii
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !19
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ig
  %i.il = trunc i64 %indvars.iv.3 to i32
  %i.im = add i32 %i.hk, %i.il
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 3 uses
  %i.in = add nuw nsw i64 %indvars.iv.next.3, %i.hl ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.in
  %i.ip = trunc i64 %indvars.iv.next.3 to i32
  %i.iq = add i32 %i.hj, %i.ip
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !19
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.in
  %i.is = trunc i64 %indvars.iv.next.3 to i32
  %i.it = add i32 %i.hk, %i.is
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !19
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2 ; 2 uses
  %exitcond.3.not.1 = icmp eq i64 %indvars.iv.next.3.1, %i.dg
  br i1 %exitcond.3.not.1, label %.loopexit300, label %scalar.ph205, !llvm.loop !134

.loopexit300:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205, %middle.block224
  %i.iu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %.loopexit300
  %i.iv = add i32 %i.df, 2
  %i.iw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.iv, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ix = mul nsw i32 %i.iu, %i.bk                ; 4 uses
  %i.iy = mul nsw i32 %i.iw, %i.bk                ; 4 uses
  %i.iz = shl nuw nsw i64 %i.dg, 2                ; 4 uses
  %min.iters.check230 = icmp samesign ult i32 %i.bj, 7
  %i.ja = sub i64 %i.ck, %i.cj
  %diff.check232 = icmp ugt i64 %i.ja, -32
  %or.cond308 = select i1 %min.iters.check230, i1 true, i1 %diff.check232
  br i1 %or.cond308, label %scalar.ph229.preheader, label %vector.ph233

vector.ph233:                                     ; preds = %bb.ap
  %n.vec234 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert235 = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %broadcast.splat236 = shufflevector <4 x i32> %broadcast.splatinsert235, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op342 = add <4 x i32> splat (i32 4), %broadcast.splat236
  %invariant.op344 = add <4 x i32> splat (i32 4), %broadcast.splat238
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph233
  %index240 = phi i64 [ 0, %vector.ph233 ], [ %index.next245, %vector.body239 ] ; 2 uses
  %vec.ind242 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph233 ], [ %vec.ind.next247, %vector.body239 ] ; 5 uses
  %i.jb = add nuw nsw i64 %index240, %i.iz        ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jb ; 2 uses
  %i.jd = add <4 x i32> %broadcast.splat236, %vec.ind242
  %.reass343 = add <4 x i32> %vec.ind242, %invariant.op342
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <4 x i32> %i.jd, ptr %i.jc, align 4, !tbaa !19
  store <4 x i32> %.reass343, ptr %i.je, align 4, !tbaa !19
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jb ; 2 uses
  %i.jg = add <4 x i32> %broadcast.splat238, %vec.ind242
  %.reass345 = add <4 x i32> %vec.ind242, %invariant.op344
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> %i.jg, ptr %i.jf, align 4, !tbaa !19
  store <4 x i32> %.reass345, ptr %i.jh, align 4, !tbaa !19
  %index.next245 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next247 = add <4 x i32> %vec.ind242, splat (i32 8)
  %i.ji = icmp eq i64 %index.next245, %n.vec234
  br i1 %i.ji, label %middle.block248, label %vector.body239, !llvm.loop !135

middle.block248:                                  ; preds = %vector.body239
  %cmp.n249 = icmp eq i64 %n.vec234, %i.dg
  br i1 %cmp.n249, label %.loopexit299, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %bb.ap, %middle.block248
  %indvars.iv.4.ph = phi i64 [ 0, %bb.ap ], [ %n.vec234, %middle.block248 ] ; 6 uses
  %i.jj = and i32 %i.bi, 127
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jl = and i64 %i.jk, 1
  %lcmp.mod320.not.not = icmp eq i64 %i.jl, 0
  br i1 %lcmp.mod320.not.not, label %scalar.ph229.prol, label %scalar.ph229.prol.loopexit

scalar.ph229.prol:                                ; preds = %scalar.ph229.preheader
  %i.jm = add nuw nsw i64 %indvars.iv.4.ph, %i.iz ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jm
  %i.jo = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.jp = add i32 %i.ix, %i.jo
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !19
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jm
  %i.jr = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.js = add i32 %i.iy, %i.jr
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !19
  %indvars.iv.next.4.prol = or disjoint i64 %indvars.iv.4.ph, 1
  br label %scalar.ph229.prol.loopexit

scalar.ph229.prol.loopexit:                       ; preds = %scalar.ph229.prol, %scalar.ph229.preheader
  %indvars.iv.4.unr = phi i64 [ %indvars.iv.4.ph, %scalar.ph229.preheader ], [ %indvars.iv.next.4.prol, %scalar.ph229.prol ]
  %i.jt = icmp eq i64 %indvars.iv.4.ph, %i.jk
  br i1 %i.jt, label %.loopexit299, label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4.1, %scalar.ph229 ], [ %indvars.iv.4.unr, %scalar.ph229.prol.loopexit ] ; 5 uses
  %i.ju = add nuw nsw i64 %indvars.iv.4, %i.iz    ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ju
  %i.jw = trunc i64 %indvars.iv.4 to i32
  %i.jx = add i32 %i.ix, %i.jw
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !19
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ju
  %i.jz = trunc i64 %indvars.iv.4 to i32
  %i.ka = add i32 %i.iy, %i.jz
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !19
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 3 uses
  %i.kb = add nuw nsw i64 %indvars.iv.next.4, %i.iz ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kb
  %i.kd = trunc i64 %indvars.iv.next.4 to i32
  %i.ke = add i32 %i.ix, %i.kd
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !19
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kb
  %i.kg = trunc i64 %indvars.iv.next.4 to i32
  %i.kh = add i32 %i.iy, %i.kg
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !19
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2 ; 2 uses
  %exitcond.4.not.1 = icmp eq i64 %indvars.iv.next.4.1, %i.dg
  br i1 %exitcond.4.not.1, label %.loopexit299, label %scalar.ph229, !llvm.loop !136

.loopexit299:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229, %middle.block248
  %i.ki = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 3, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %.loopexit299
  %i.kj = add i32 %i.df, 3
  %i.kk = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.kj, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.kl = mul nsw i32 %i.ki, %i.bk                ; 4 uses
  %i.km = mul nsw i32 %i.kk, %i.bk                ; 4 uses
  %i.kn = mul nuw nsw i64 %i.dg, 5                ; 4 uses
  %min.iters.check254 = icmp samesign ult i32 %i.bj, 7
  %i.ko = sub i64 %i.ck, %i.cj
  %diff.check256 = icmp ugt i64 %i.ko, -32
  %or.cond309 = select i1 %min.iters.check254, i1 true, i1 %diff.check256
  br i1 %or.cond309, label %scalar.ph253.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %bb.ar
  %n.vec258 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert259 = insertelement <4 x i32> poison, i32 %i.kl, i64 0
  %broadcast.splat260 = shufflevector <4 x i32> %broadcast.splatinsert259, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert261 = insertelement <4 x i32> poison, i32 %i.km, i64 0
  %broadcast.splat262 = shufflevector <4 x i32> %broadcast.splatinsert261, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op346 = add <4 x i32> splat (i32 4), %broadcast.splat260
  %invariant.op348 = add <4 x i32> splat (i32 4), %broadcast.splat262
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph257
  %index264 = phi i64 [ 0, %vector.ph257 ], [ %index.next269, %vector.body263 ] ; 2 uses
  %vec.ind266 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph257 ], [ %vec.ind.next271, %vector.body263 ] ; 5 uses
  %i.kp = add nuw nsw i64 %index264, %i.kn        ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kp ; 2 uses
  %i.kr = add <4 x i32> %broadcast.splat260, %vec.ind266
  %.reass347 = add <4 x i32> %vec.ind266, %invariant.op346
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store <4 x i32> %i.kr, ptr %i.kq, align 4, !tbaa !19
  store <4 x i32> %.reass347, ptr %i.ks, align 4, !tbaa !19
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kp ; 2 uses
  %i.ku = add <4 x i32> %broadcast.splat262, %vec.ind266
  %.reass349 = add <4 x i32> %vec.ind266, %invariant.op348
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x i32> %i.ku, ptr %i.kt, align 4, !tbaa !19
  store <4 x i32> %.reass349, ptr %i.kv, align 4, !tbaa !19
  %index.next269 = add nuw i64 %index264, 8       ; 2 uses
  %vec.ind.next271 = add <4 x i32> %vec.ind266, splat (i32 8)
  %i.kw = icmp eq i64 %index.next269, %n.vec258
  br i1 %i.kw, label %middle.block272, label %vector.body263, !llvm.loop !137

middle.block272:                                  ; preds = %vector.body263
  %cmp.n273 = icmp eq i64 %n.vec258, %i.dg
  br i1 %cmp.n273, label %.loopexit, label %scalar.ph253.preheader

scalar.ph253.preheader:                           ; preds = %bb.ar, %middle.block272
  %indvars.iv.5.ph = phi i64 [ 0, %bb.ar ], [ %n.vec258, %middle.block272 ] ; 6 uses
  %i.kx = and i32 %i.bi, 127
  %i.ky = zext nneg i32 %i.kx to i64              ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %lcmp.mod322.not.not = icmp eq i64 %i.kz, 0
  br i1 %lcmp.mod322.not.not, label %scalar.ph253.prol, label %scalar.ph253.prol.loopexit

scalar.ph253.prol:                                ; preds = %scalar.ph253.preheader
  %i.la = add nuw nsw i64 %indvars.iv.5.ph, %i.kn ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.la
  %i.lc = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.ld = add i32 %i.kl, %i.lc
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !19
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.la
  %i.lf = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.lg = add i32 %i.km, %i.lf
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !19
  %indvars.iv.next.5.prol = or disjoint i64 %indvars.iv.5.ph, 1
  br label %scalar.ph253.prol.loopexit

scalar.ph253.prol.loopexit:                       ; preds = %scalar.ph253.prol, %scalar.ph253.preheader
  %indvars.iv.5.unr = phi i64 [ %indvars.iv.5.ph, %scalar.ph253.preheader ], [ %indvars.iv.next.5.prol, %scalar.ph253.prol ]
  %i.lh = icmp eq i64 %indvars.iv.5.ph, %i.ky
  br i1 %i.lh, label %.loopexit, label %scalar.ph253

scalar.ph253:                                     ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253
  %indvars.iv.5 = phi i64 [ %indvars.iv.next.5.1, %scalar.ph253 ], [ %indvars.iv.5.unr, %scalar.ph253.prol.loopexit ] ; 5 uses
  %i.li = add nuw nsw i64 %indvars.iv.5, %i.kn    ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.li
  %i.lk = trunc i64 %indvars.iv.5 to i32
  %i.ll = add i32 %i.kl, %i.lk
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !19
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.li
  %i.ln = trunc i64 %indvars.iv.5 to i32
  %i.lo = add i32 %i.km, %i.ln
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !19
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1 ; 3 uses
  %i.lp = add nuw nsw i64 %indvars.iv.next.5, %i.kn ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.lp
  %i.lr = trunc i64 %indvars.iv.next.5 to i32
  %i.ls = add i32 %i.kl, %i.lr
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !19
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.lp
  %i.lu = trunc i64 %indvars.iv.next.5 to i32
  %i.lv = add i32 %i.km, %i.lu
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !19
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2 ; 2 uses
  %exitcond.5.not.1 = icmp eq i64 %indvars.iv.next.5.1, %i.dg
  br i1 %exitcond.5.not.1, label %.loopexit, label %scalar.ph253, !llvm.loop !138

.loopexit:                                        ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253, %middle.block272
  %i.lw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 4, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %.loopexit
  %i.lx = add i32 %i.df, 4
  %i.ly = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.lx, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lz = mul nsw i32 %i.lw, %i.bk                ; 4 uses
  %i.ma = mul nsw i32 %i.ly, %i.bk                ; 4 uses
  %i.mb = mul nuw nsw i64 %i.dg, 6                ; 4 uses
  %min.iters.check278 = icmp samesign ult i32 %i.bj, 7
  %i.mc = sub i64 %i.ck, %i.cj
  %diff.check280 = icmp ugt i64 %i.mc, -32
  %or.cond310 = select i1 %min.iters.check278, i1 true, i1 %diff.check280
  br i1 %or.cond310, label %scalar.ph277.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %bb.at
  %n.vec282 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert283 = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %broadcast.splat284 = shufflevector <4 x i32> %broadcast.splatinsert283, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert285 = insertelement <4 x i32> poison, i32 %i.ma, i64 0
  %broadcast.splat286 = shufflevector <4 x i32> %broadcast.splatinsert285, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op350 = add <4 x i32> splat (i32 4), %broadcast.splat284
  %invariant.op352 = add <4 x i32> splat (i32 4), %broadcast.splat286
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph281
  %index288 = phi i64 [ 0, %vector.ph281 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %vec.ind290 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph281 ], [ %vec.ind.next295, %vector.body287 ] ; 5 uses
  %i.md = add nuw nsw i64 %index288, %i.mb        ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.md ; 2 uses
  %i.mf = add <4 x i32> %broadcast.splat284, %vec.ind290
  %.reass351 = add <4 x i32> %vec.ind290, %invariant.op350
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <4 x i32> %i.mf, ptr %i.me, align 4, !tbaa !19
  store <4 x i32> %.reass351, ptr %i.mg, align 4, !tbaa !19
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.md ; 2 uses
  %i.mi = add <4 x i32> %broadcast.splat286, %vec.ind290
  %.reass353 = add <4 x i32> %vec.ind290, %invariant.op352
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <4 x i32> %i.mi, ptr %i.mh, align 4, !tbaa !19
  store <4 x i32> %.reass353, ptr %i.mj, align 4, !tbaa !19
  %index.next293 = add nuw i64 %index288, 8       ; 2 uses
  %vec.ind.next295 = add <4 x i32> %vec.ind290, splat (i32 8)
  %i.mk = icmp eq i64 %index.next293, %n.vec282
  br i1 %i.mk, label %middle.block296, label %vector.body287, !llvm.loop !139

middle.block296:                                  ; preds = %vector.body287
  %cmp.n297 = icmp eq i64 %n.vec282, %i.dg
  br i1 %cmp.n297, label %.preheader, label %scalar.ph277.preheader

scalar.ph277.preheader:                           ; preds = %bb.at, %middle.block296
  %indvars.iv.6.ph = phi i64 [ 0, %bb.at ], [ %n.vec282, %middle.block296 ] ; 6 uses
  %i.ml = and i32 %i.bi, 127
  %i.mm = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.mn = and i64 %i.mm, 1
  %lcmp.mod324.not.not = icmp eq i64 %i.mn, 0
  br i1 %lcmp.mod324.not.not, label %scalar.ph277.prol, label %scalar.ph277.prol.loopexit

scalar.ph277.prol:                                ; preds = %scalar.ph277.preheader
  %i.mo = add nuw nsw i64 %indvars.iv.6.ph, %i.mb ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mo
  %i.mq = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mr = add i32 %i.lz, %i.mq
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !19
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mo
  %i.mt = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mu = add i32 %i.ma, %i.mt
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !19
  %indvars.iv.next.6.prol = or disjoint i64 %indvars.iv.6.ph, 1
  br label %scalar.ph277.prol.loopexit

scalar.ph277.prol.loopexit:                       ; preds = %scalar.ph277.prol, %scalar.ph277.preheader
  %indvars.iv.6.unr = phi i64 [ %indvars.iv.6.ph, %scalar.ph277.preheader ], [ %indvars.iv.next.6.prol, %scalar.ph277.prol ]
  %i.mv = icmp eq i64 %indvars.iv.6.ph, %i.mm
  br i1 %i.mv, label %.preheader, label %scalar.ph277

scalar.ph277:                                     ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277
  %indvars.iv.6 = phi i64 [ %indvars.iv.next.6.1, %scalar.ph277 ], [ %indvars.iv.6.unr, %scalar.ph277.prol.loopexit ] ; 5 uses
  %i.mw = add nuw nsw i64 %indvars.iv.6, %i.mb    ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mw
  %i.my = trunc i64 %indvars.iv.6 to i32
  %i.mz = add i32 %i.lz, %i.my
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !19
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mw
  %i.nb = trunc i64 %indvars.iv.6 to i32
  %i.nc = add i32 %i.ma, %i.nb
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !19
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1 ; 3 uses
  %i.nd = add nuw nsw i64 %indvars.iv.next.6, %i.mb ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.nd
  %i.nf = trunc i64 %indvars.iv.next.6 to i32
  %i.ng = add i32 %i.lz, %i.nf
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !19
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.nd
  %i.ni = trunc i64 %indvars.iv.next.6 to i32
  %i.nj = add i32 %i.ma, %i.ni
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !19
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2 ; 2 uses
  %exitcond.6.not.1 = icmp eq i64 %indvars.iv.next.6.1, %i.dg
  br i1 %exitcond.6.not.1, label %.preheader, label %scalar.ph277, !llvm.loop !140

.preheader:                                       ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277, %middle.block296
  %i.nk = icmp sgt i32 %i.bl, 0
  br i1 %i.nk, label %.lr.ph, label %._crit_edge

bb.au:                                            ; preds = %bb.as, %.loopexit, %bb.aq, %.loopexit299, %bb.ao, %.loopexit300, %bb.am, %.loopexit301, %bb.ak, %.loopexit302, %bb.ai, %.loopexit303, %bb.af, %bb.ag
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1312, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  %i.nn = trunc i64 %indvars.iv to i32
  %i.no = add i32 %i.dm, %i.nn
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !19
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.nq = trunc i64 %indvars.iv to i32
  %i.nr = add i32 %i.dn, %i.nq
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next
  %i.nt = trunc i64 %indvars.iv.next to i32
  %i.nu = add i32 %i.dm, %i.nt
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !19
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next
  %i.nw = trunc i64 %indvars.iv.next to i32
  %i.nx = add i32 %i.dn, %i.nw
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !19
  %indvars.iv.next.1312 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1312, %i.dg
  br i1 %exitcond.not.1, label %.loopexit303, label %scalar.ph, !llvm.loop !141

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.av
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod327 = trunc i32 %i.bl to i1
  call void @llvm.assume(i1 %lcmp.mod327)
  %i.ny = trunc nuw nsw i64 %indvars.iv125.epil.init to i32 ; 2 uses
  %i.nz = udiv i32 %i.ny, %i.bk
  %i.oa = mul i32 %i.di, %i.nz
  %i.ob = urem i32 %i.ny, %i.bk
  %i.oc = add nuw nsw i32 %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125.epil.init
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !tbaa !41
  %i.oe = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.bg, ptr %i.oe, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv14PyrDownInvokerINS_9FixPtCastIsLi8EEEEE, i64 16), ptr %15, align 8, !tbaa !44
  %i.of = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %0, ptr %i.of, align 8, !tbaa !57
  %i.og = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %1, ptr %i.og, align 8, !tbaa !58
  %i.oh = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i32 %2, ptr %i.oh, align 8, !tbaa !59
  %i.oi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.c, ptr %i.oi, align 8, !tbaa !60
  %i.oj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.a, ptr %i.oj, align 8, !tbaa !61
  %i.ok = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.b, ptr %i.ok, align 8, !tbaa !62
  %i.ol = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.aw unwind label %bb.bb

bb.av:                                            ; preds = %bb.av, %.lr.ph.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next126.1, %bb.av ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.av ]
  %i.om = trunc nuw nsw i64 %indvars.iv125 to i32 ; 2 uses
  %i.on = udiv i32 %i.om, %i.bk
  %i.oo = mul i32 %i.di, %i.on
  %i.op = urem i32 %i.om, %i.bk
  %i.oq = add nuw nsw i32 %i.oo, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !19
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.os = trunc nuw nsw i64 %indvars.iv.next126 to i32 ; 2 uses
  %i.ot = udiv i32 %i.os, %i.bk
  %i.ou = mul i32 %i.di, %i.ot
  %i.ov = urem i32 %i.os, %i.bk
  %i.ow = add nuw nsw i32 %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next126
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !19
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.av, !llvm.loop !142

bb.aw:                                            ; preds = %._crit_edge
  %i.oy = sitofp i32 %i.ol to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %i.oy)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.oz = load ptr, ptr %11, align 8, !tbaa !34   ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.oz, %i.ci
  %i.pa = icmp eq ptr %i.oz, null
  %or.cond.i = or i1 %.not.i.i91, %i.pa
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.oz) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.pb = load ptr, ptr %10, align 8, !tbaa !34   ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.pb, %i.bw
  %i.pc = icmp eq ptr %i.pb, null
  %or.cond.i93 = or i1 %.not.i.i92, %i.pc
  br i1 %or.cond.i93, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94, label %bb.az

bb.az:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.pb) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94

_ZN2cv10AutoBufferIiLm264EED2Ev.exit94:           ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.pd = load ptr, ptr %9, align 8, !tbaa !34    ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.pd, %i.bn
  %i.pe = icmp eq ptr %i.pd, null
  %or.cond.i96 = or i1 %.not.i.i95, %i.pe
  br i1 %or.cond.i96, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit97, label %bb.ba

bb.ba:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94
end_hunk_1
begin_hunk_2_@_ZN2cv8pyrDown_INS_9FixPtCastItLi8EEEEEvRKNS_3MatERS3_i:bb.a

bb.s:                                             ; preds = %bb.q
  %i.ay = icmp eq i32 %i.ak, 0
  %i.az = zext i1 %i.ay to i32
  br label %_ZNK2cv8MatShapeclEv.exit82

_ZNK2cv8MatShapeclEv.exit82:                      ; preds = %bb.r, %bb.s
  %i.ba = phi i32 [ %i.ax, %bb.r ], [ %i.az, %bb.s ] ; 3 uses
  %i.bb = icmp eq i32 %i.ak, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp sgt i32 %i.ak, -1
  %i.bf = zext i1 %i.be to i32
  %i.bg = select i1 %i.bb, i32 %i.bd, i32 %i.bf   ; 2 uses
  %i.bh = load i32, ptr %0, align 8, !tbaa !26
  %i.bi = lshr i32 %i.bh, 5                       ; 8 uses
  %i.bj = and i32 %i.bi, 127                      ; 9 uses
  %i.bk = add nuw nsw i32 %i.bj, 1                ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.bl = mul nsw i32 %i.bk, %i.ba                ; 7 uses
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i = icmp ugt i32 %i.bl, 264
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !35
  br i1 %.not.i.i, label %bb.t, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.t:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit82
  %i.bp = icmp slt i32 %i.bl, 0
  %i.bq = shl nuw nsw i64 %i.bm, 2
  %i.br = select i1 %i.bp, i64 -1, i64 %i.bq
  %i.bs = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.br) #18 ; 2 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %_ZNK2cv8MatShapeclEv.exit82, %bb.t
  %i.bt = phi ptr [ %i.bn, %_ZNK2cv8MatShapeclEv.exit82 ], [ %i.bs, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.bu = mul nuw nsw i32 %i.bk, 7
  %i.bv = zext nneg i32 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.bw, ptr %10, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not.i.i83 = icmp samesign ugt i32 %i.bj, 36
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !35
  br i1 %.not.i.i83, label %bb.u, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84

bb.u:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.by = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %bb.v unwind label %bb.y

_ZN2cv10AutoBufferIiLm264EEC2Em.exit84:           ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ca, ptr %11, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cb, align 8, !tbaa !35
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

bb.v:                                             ; preds = %bb.u
  store ptr %i.bz, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.cc, ptr %11, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cd, align 8, !tbaa !35
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %.noexc86 unwind label %bb.z   ; 2 uses

.noexc86:                                         ; preds = %bb.v
  store ptr %i.ce, ptr %11, align 8, !tbaa !34
  %.pre = load ptr, ptr %9, align 8, !tbaa !34
  %.pre130 = load ptr, ptr %10, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

_ZN2cv10AutoBufferIiLm264EEC2Em.exit87:           ; preds = %.noexc86, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84
  %i.cf = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.ce, %.noexc86 ] ; 30 uses
  %i.cg = phi ptr [ %i.bw, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre130, %.noexc86 ] ; 30 uses
  %i.ch = phi ptr [ %i.bt, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre, %.noexc86 ] ; 4 uses
  %i.ci = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.cc, %.noexc86 ] ; 2 uses
  %i.cj = ptrtoaddr ptr %i.cf to i64              ; 7 uses
  %i.ck = ptrtoaddr ptr %i.cg to i64              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !36
  %i.cl = icmp sgt i32 %i.ac, 0
  %i.cm = icmp sgt i32 %i.ai, 0
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  %i.cn = shl nsw i32 %i.ba, 1
  %reass.sub = sub i32 %i.cn, %i.ac
  %i.co = add i32 %reass.sub, 2
  %i.cp = icmp ult i32 %i.co, 5
  br i1 %i.cp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cq = shl nsw i32 %i.bg, 1
  %reass.sub119 = sub i32 %i.cq, %i.ai
  %i.cr = add i32 %reass.sub119, 2
  %i.cs = icmp ult i32 %i.cr, 5
  br i1 %i.cs, label %bb.af, label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit103

bb.z:                                             ; preds = %bb.v
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit100

bb.aa:                                            ; preds = %bb.x, %bb.w, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8pyrDown_INS_9FixPtCastIhLi8EEEEEvRKNS_3MatERS3_i, ptr noundef nonnull @.str.1, i32 noundef 894) #15
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ae:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %12, align 8, !tbaa !13   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ae
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.cw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bc

bb.af:                                            ; preds = %bb.x
  %i.dc = add nsw i32 %i.ac, -3
  %i.dd = sdiv i32 %i.dc, 2
  %i.de = add nsw i32 %i.dd, 1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.de)
  %i.df = shl nsw i32 %.sroa.speculated, 1        ; 7 uses
  %i.dg = zext nneg i32 %i.bk to i64              ; 30 uses
  %i.dh = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ag unwind label %bb.au

.lr.ph:                                           ; preds = %.preheader
  %i.di = shl nuw nsw i32 %i.bk, 1                ; 3 uses
  %wide.trip.count128 = zext nneg i32 %i.bl to i64 ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count128, 1
  %i.dj = icmp eq i32 %i.bl, 1
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count128, 2147483646
  br label %bb.av

bb.ag:                                            ; preds = %bb.af
  %i.dk = add i32 %i.df, -2
  %i.dl = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.dk, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ah unwind label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %i.dm = mul nsw i32 %i.dh, %i.bk                ; 4 uses
  %i.dn = mul nsw i32 %i.dl, %i.bk                ; 4 uses
  %min.iters.check = icmp samesign ult i32 %i.bj, 7
  %i.do = sub i64 %i.ck, %i.cj
  %diff.check = icmp ugt i64 %i.do, -32
  %or.cond304 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond304, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ah
  %n.vec = and i64 %i.dg, 248                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert150 = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat151 = shufflevector <4 x i32> %broadcast.splatinsert150, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  %invariant.op328 = add <4 x i32> splat (i32 4), %broadcast.splat151
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next154, %vector.body ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.dq = add <4 x i32> %broadcast.splat, %vec.ind152
  %.reass = add <4 x i32> %vec.ind152, %invariant.op
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x i32> %i.dq, ptr %i.dp, align 4, !tbaa !19
  store <4 x i32> %.reass, ptr %i.dr, align 4, !tbaa !19
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.dt = add <4 x i32> %broadcast.splat151, %vec.ind152
  %.reass329 = add <4 x i32> %vec.ind152, %invariant.op328
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x i32> %i.dt, ptr %i.ds, align 4, !tbaa !19
  store <4 x i32> %.reass329, ptr %i.du, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next154 = add <4 x i32> %vec.ind152, splat (i32 8)
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br i1 %cmp.n, label %.loopexit303, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ah, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.ah ], [ %n.vec, %middle.block ] ; 7 uses
  %i.dw = and i32 %i.bi, 127
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = and i64 %i.dx, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.ph
  %i.ea = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.eb = add i32 %i.dm, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !19
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.ph
  %i.ed = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.ee = add i32 %i.dn, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !19
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ef = icmp eq i64 %indvars.iv.ph, %i.dx
  br i1 %i.ef, label %.loopexit303, label %scalar.ph

.loopexit303:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ai unwind label %bb.au

bb.ai:                                            ; preds = %.loopexit303
  %i.eh = add i32 %i.df, -1
  %i.ei = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.eh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.ej = mul nsw i32 %i.eg, %i.bk                ; 4 uses
  %i.ek = mul nsw i32 %i.ei, %i.bk                ; 4 uses
  %min.iters.check158 = icmp samesign ult i32 %i.bj, 7
  %i.el = sub i64 %i.ck, %i.cj
  %diff.check160 = icmp ugt i64 %i.el, -32
  %or.cond305 = select i1 %min.iters.check158, i1 true, i1 %diff.check160
  br i1 %or.cond305, label %scalar.ph157.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %bb.aj
  %n.vec162 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op330 = add <4 x i32> splat (i32 4), %broadcast.splat164
  %invariant.op332 = add <4 x i32> splat (i32 4), %broadcast.splat166
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph161
  %index168 = phi i64 [ 0, %vector.ph161 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %vec.ind170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph161 ], [ %vec.ind.next175, %vector.body167 ] ; 5 uses
  %i.em = add nuw nsw i64 %index168, %i.dg        ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.em ; 2 uses
  %i.eo = add <4 x i32> %broadcast.splat164, %vec.ind170
  %.reass331 = add <4 x i32> %vec.ind170, %invariant.op330
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x i32> %i.eo, ptr %i.en, align 4, !tbaa !19
  store <4 x i32> %.reass331, ptr %i.ep, align 4, !tbaa !19
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.em ; 2 uses
  %i.er = add <4 x i32> %broadcast.splat166, %vec.ind170
  %.reass333 = add <4 x i32> %vec.ind170, %invariant.op332
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %i.er, ptr %i.eq, align 4, !tbaa !19
  store <4 x i32> %.reass333, ptr %i.es, align 4, !tbaa !19
  %index.next173 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next175 = add <4 x i32> %vec.ind170, splat (i32 8)
  %i.et = icmp eq i64 %index.next173, %n.vec162
  br i1 %i.et, label %middle.block176, label %vector.body167, !llvm.loop !144

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %n.vec162, %i.dg
  br i1 %cmp.n177, label %.loopexit302, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %bb.aj, %middle.block176
  %indvars.iv.1.ph = phi i64 [ 0, %bb.aj ], [ %n.vec162, %middle.block176 ] ; 6 uses
  %i.eu = and i32 %i.bi, 127
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %lcmp.mod314.not.not = icmp eq i64 %i.ew, 0
  br i1 %lcmp.mod314.not.not, label %scalar.ph157.prol, label %scalar.ph157.prol.loopexit

scalar.ph157.prol:                                ; preds = %scalar.ph157.preheader
  %i.ex = add nuw nsw i64 %indvars.iv.1.ph, %i.dg ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ex
  %i.ez = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fa = add i32 %i.ej, %i.ez
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ex
  %i.fc = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fd = add i32 %i.ek, %i.fc
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !19
  %indvars.iv.next.1.prol = or disjoint i64 %indvars.iv.1.ph, 1
  br label %scalar.ph157.prol.loopexit

scalar.ph157.prol.loopexit:                       ; preds = %scalar.ph157.prol, %scalar.ph157.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %scalar.ph157.preheader ], [ %indvars.iv.next.1.prol, %scalar.ph157.prol ]
  %i.fe = icmp eq i64 %indvars.iv.1.ph, %i.ev
  br i1 %i.fe, label %.loopexit302, label %scalar.ph157

scalar.ph157:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %scalar.ph157 ], [ %indvars.iv.1.unr, %scalar.ph157.prol.loopexit ] ; 5 uses
  %i.ff = add nuw nsw i64 %indvars.iv.1, %i.dg    ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ff
  %i.fh = trunc i64 %indvars.iv.1 to i32
  %i.fi = add i32 %i.ej, %i.fh
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !19
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ff
  %i.fk = trunc i64 %indvars.iv.1 to i32
  %i.fl = add i32 %i.ek, %i.fk
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.fm = add nuw nsw i64 %indvars.iv.next.1, %i.dg ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fm
  %i.fo = trunc i64 %indvars.iv.next.1 to i32
  %i.fp = add i32 %i.ej, %i.fo
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fm
  %i.fr = trunc i64 %indvars.iv.next.1 to i32
  %i.fs = add i32 %i.ek, %i.fr
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !19
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, %i.dg
  br i1 %exitcond.1.not.1, label %.loopexit302, label %scalar.ph157, !llvm.loop !145

.loopexit302:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157, %middle.block176
  %i.ft = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 0, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %.loopexit302
  %i.fu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.df, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.fv = mul nsw i32 %i.ft, %i.bk                ; 4 uses
  %i.fw = mul nsw i32 %i.fu, %i.bk                ; 4 uses
  %i.fx = shl nuw nsw i64 %i.dg, 1                ; 4 uses
  %min.iters.check182 = icmp samesign ult i32 %i.bj, 7
  %i.fy = sub i64 %i.ck, %i.cj
  %diff.check184 = icmp ugt i64 %i.fy, -32
  %or.cond306 = select i1 %min.iters.check182, i1 true, i1 %diff.check184
  br i1 %or.cond306, label %scalar.ph181.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %bb.al
  %n.vec186 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op334 = add <4 x i32> splat (i32 4), %broadcast.splat188
  %invariant.op336 = add <4 x i32> splat (i32 4), %broadcast.splat190
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph185
  %index192 = phi i64 [ 0, %vector.ph185 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %vec.ind194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph185 ], [ %vec.ind.next199, %vector.body191 ] ; 5 uses
  %i.fz = add nuw nsw i64 %index192, %i.fx        ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fz ; 2 uses
  %i.gb = add <4 x i32> %broadcast.splat188, %vec.ind194
  %.reass335 = add <4 x i32> %vec.ind194, %invariant.op334
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %i.gb, ptr %i.ga, align 4, !tbaa !19
  store <4 x i32> %.reass335, ptr %i.gc, align 4, !tbaa !19
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fz ; 2 uses
  %i.ge = add <4 x i32> %broadcast.splat190, %vec.ind194
  %.reass337 = add <4 x i32> %vec.ind194, %invariant.op336
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <4 x i32> %i.ge, ptr %i.gd, align 4, !tbaa !19
  store <4 x i32> %.reass337, ptr %i.gf, align 4, !tbaa !19
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %vec.ind.next199 = add <4 x i32> %vec.ind194, splat (i32 8)
  %i.gg = icmp eq i64 %index.next197, %n.vec186
  br i1 %i.gg, label %middle.block200, label %vector.body191, !llvm.loop !146

middle.block200:                                  ; preds = %vector.body191
  %cmp.n201 = icmp eq i64 %n.vec186, %i.dg
  br i1 %cmp.n201, label %.loopexit301, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %bb.al, %middle.block200
  %indvars.iv.2.ph = phi i64 [ 0, %bb.al ], [ %n.vec186, %middle.block200 ] ; 6 uses
  %i.gh = and i32 %i.bi, 127
  %i.gi = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %lcmp.mod316.not.not = icmp eq i64 %i.gj, 0
  br i1 %lcmp.mod316.not.not, label %scalar.ph181.prol, label %scalar.ph181.prol.loopexit

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader
  %i.gk = add nuw nsw i64 %indvars.iv.2.ph, %i.fx ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gk
  %i.gm = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gn = add i32 %i.fv, %i.gm
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !19
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gk
  %i.gp = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gq = add i32 %i.fw, %i.gp
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !19
  %indvars.iv.next.2.prol = or disjoint i64 %indvars.iv.2.ph, 1
  br label %scalar.ph181.prol.loopexit

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv.2.unr = phi i64 [ %indvars.iv.2.ph, %scalar.ph181.preheader ], [ %indvars.iv.next.2.prol, %scalar.ph181.prol ]
  %i.gr = icmp eq i64 %indvars.iv.2.ph, %i.gi
  br i1 %i.gr, label %.loopexit301, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %scalar.ph181 ], [ %indvars.iv.2.unr, %scalar.ph181.prol.loopexit ] ; 5 uses
  %i.gs = add nuw nsw i64 %indvars.iv.2, %i.fx    ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gs
  %i.gu = trunc i64 %indvars.iv.2 to i32
  %i.gv = add i32 %i.fv, %i.gu
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !19
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gs
  %i.gx = trunc i64 %indvars.iv.2 to i32
  %i.gy = add i32 %i.fw, %i.gx
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 3 uses
  %i.gz = add nuw nsw i64 %indvars.iv.next.2, %i.fx ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gz
  %i.hb = trunc i64 %indvars.iv.next.2 to i32
  %i.hc = add i32 %i.fv, %i.hb
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !19
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gz
  %i.he = trunc i64 %indvars.iv.next.2 to i32
  %i.hf = add i32 %i.fw, %i.he
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !19
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, %i.dg
  br i1 %exitcond.2.not.1, label %.loopexit301, label %scalar.ph181, !llvm.loop !147

.loopexit301:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block200
  %i.hg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %.loopexit301
  %i.hh = or disjoint i32 %i.df, 1
  %i.hi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.hh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.hj = mul nsw i32 %i.hg, %i.bk                ; 4 uses
  %i.hk = mul nsw i32 %i.hi, %i.bk                ; 4 uses
  %i.hl = mul nuw nsw i64 %i.dg, 3                ; 4 uses
  %min.iters.check206 = icmp samesign ult i32 %i.bj, 7
  %i.hm = sub i64 %i.ck, %i.cj
  %diff.check208 = icmp ugt i64 %i.hm, -32
  %or.cond307 = select i1 %min.iters.check206, i1 true, i1 %diff.check208
  br i1 %or.cond307, label %scalar.ph205.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %bb.an
  %n.vec210 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert213 = insertelement <4 x i32> poison, i32 %i.hk, i64 0
  %broadcast.splat214 = shufflevector <4 x i32> %broadcast.splatinsert213, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op338 = add <4 x i32> splat (i32 4), %broadcast.splat212
  %invariant.op340 = add <4 x i32> splat (i32 4), %broadcast.splat214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph209
  %index216 = phi i64 [ 0, %vector.ph209 ], [ %index.next221, %vector.body215 ] ; 2 uses
  %vec.ind218 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph209 ], [ %vec.ind.next223, %vector.body215 ] ; 5 uses
  %i.hn = add nuw nsw i64 %index216, %i.hl        ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hn ; 2 uses
  %i.hp = add <4 x i32> %broadcast.splat212, %vec.ind218
  %.reass339 = add <4 x i32> %vec.ind218, %invariant.op338
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %i.hp, ptr %i.ho, align 4, !tbaa !19
  store <4 x i32> %.reass339, ptr %i.hq, align 4, !tbaa !19
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hn ; 2 uses
  %i.hs = add <4 x i32> %broadcast.splat214, %vec.ind218
  %.reass341 = add <4 x i32> %vec.ind218, %invariant.op340
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <4 x i32> %i.hs, ptr %i.hr, align 4, !tbaa !19
  store <4 x i32> %.reass341, ptr %i.ht, align 4, !tbaa !19
  %index.next221 = add nuw i64 %index216, 8       ; 2 uses
  %vec.ind.next223 = add <4 x i32> %vec.ind218, splat (i32 8)
  %i.hu = icmp eq i64 %index.next221, %n.vec210
  br i1 %i.hu, label %middle.block224, label %vector.body215, !llvm.loop !148

middle.block224:                                  ; preds = %vector.body215
  %cmp.n225 = icmp eq i64 %n.vec210, %i.dg
  br i1 %cmp.n225, label %.loopexit300, label %scalar.ph205.preheader

scalar.ph205.preheader:                           ; preds = %bb.an, %middle.block224
  %indvars.iv.3.ph = phi i64 [ 0, %bb.an ], [ %n.vec210, %middle.block224 ] ; 6 uses
  %i.hv = and i32 %i.bi, 127
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = and i64 %i.hw, 1
  %lcmp.mod318.not.not = icmp eq i64 %i.hx, 0
  br i1 %lcmp.mod318.not.not, label %scalar.ph205.prol, label %scalar.ph205.prol.loopexit

scalar.ph205.prol:                                ; preds = %scalar.ph205.preheader
  %i.hy = add nuw nsw i64 %indvars.iv.3.ph, %i.hl ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ib = add i32 %i.hj, %i.ia
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !19
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hy
  %i.id = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ie = add i32 %i.hk, %i.id
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !19
  %indvars.iv.next.3.prol = or disjoint i64 %indvars.iv.3.ph, 1
  br label %scalar.ph205.prol.loopexit

scalar.ph205.prol.loopexit:                       ; preds = %scalar.ph205.prol, %scalar.ph205.preheader
  %indvars.iv.3.unr = phi i64 [ %indvars.iv.3.ph, %scalar.ph205.preheader ], [ %indvars.iv.next.3.prol, %scalar.ph205.prol ]
  %i.if = icmp eq i64 %indvars.iv.3.ph, %i.hw
  br i1 %i.if, label %.loopexit300, label %scalar.ph205

scalar.ph205:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.1, %scalar.ph205 ], [ %indvars.iv.3.unr, %scalar.ph205.prol.loopexit ] ; 5 uses
  %i.ig = add nuw nsw i64 %indvars.iv.3, %i.hl    ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ig
  %i.ii = trunc i64 %indvars.iv.3 to i32
  %i.ij = add i32 %i.hj, %i.ii
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !19
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ig
  %i.il = trunc i64 %indvars.iv.3 to i32
  %i.im = add i32 %i.hk, %i.il
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 3 uses
  %i.in = add nuw nsw i64 %indvars.iv.next.3, %i.hl ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.in
  %i.ip = trunc i64 %indvars.iv.next.3 to i32
  %i.iq = add i32 %i.hj, %i.ip
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !19
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.in
  %i.is = trunc i64 %indvars.iv.next.3 to i32
  %i.it = add i32 %i.hk, %i.is
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !19
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2 ; 2 uses
  %exitcond.3.not.1 = icmp eq i64 %indvars.iv.next.3.1, %i.dg
  br i1 %exitcond.3.not.1, label %.loopexit300, label %scalar.ph205, !llvm.loop !149

.loopexit300:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205, %middle.block224
  %i.iu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %.loopexit300
  %i.iv = add i32 %i.df, 2
  %i.iw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.iv, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ix = mul nsw i32 %i.iu, %i.bk                ; 4 uses
  %i.iy = mul nsw i32 %i.iw, %i.bk                ; 4 uses
  %i.iz = shl nuw nsw i64 %i.dg, 2                ; 4 uses
  %min.iters.check230 = icmp samesign ult i32 %i.bj, 7
  %i.ja = sub i64 %i.ck, %i.cj
  %diff.check232 = icmp ugt i64 %i.ja, -32
  %or.cond308 = select i1 %min.iters.check230, i1 true, i1 %diff.check232
  br i1 %or.cond308, label %scalar.ph229.preheader, label %vector.ph233

vector.ph233:                                     ; preds = %bb.ap
  %n.vec234 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert235 = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %broadcast.splat236 = shufflevector <4 x i32> %broadcast.splatinsert235, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op342 = add <4 x i32> splat (i32 4), %broadcast.splat236
  %invariant.op344 = add <4 x i32> splat (i32 4), %broadcast.splat238
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph233
  %index240 = phi i64 [ 0, %vector.ph233 ], [ %index.next245, %vector.body239 ] ; 2 uses
  %vec.ind242 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph233 ], [ %vec.ind.next247, %vector.body239 ] ; 5 uses
  %i.jb = add nuw nsw i64 %index240, %i.iz        ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jb ; 2 uses
  %i.jd = add <4 x i32> %broadcast.splat236, %vec.ind242
  %.reass343 = add <4 x i32> %vec.ind242, %invariant.op342
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <4 x i32> %i.jd, ptr %i.jc, align 4, !tbaa !19
  store <4 x i32> %.reass343, ptr %i.je, align 4, !tbaa !19
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jb ; 2 uses
  %i.jg = add <4 x i32> %broadcast.splat238, %vec.ind242
  %.reass345 = add <4 x i32> %vec.ind242, %invariant.op344
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> %i.jg, ptr %i.jf, align 4, !tbaa !19
  store <4 x i32> %.reass345, ptr %i.jh, align 4, !tbaa !19
  %index.next245 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next247 = add <4 x i32> %vec.ind242, splat (i32 8)
  %i.ji = icmp eq i64 %index.next245, %n.vec234
  br i1 %i.ji, label %middle.block248, label %vector.body239, !llvm.loop !150

middle.block248:                                  ; preds = %vector.body239
  %cmp.n249 = icmp eq i64 %n.vec234, %i.dg
  br i1 %cmp.n249, label %.loopexit299, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %bb.ap, %middle.block248
  %indvars.iv.4.ph = phi i64 [ 0, %bb.ap ], [ %n.vec234, %middle.block248 ] ; 6 uses
  %i.jj = and i32 %i.bi, 127
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jl = and i64 %i.jk, 1
  %lcmp.mod320.not.not = icmp eq i64 %i.jl, 0
  br i1 %lcmp.mod320.not.not, label %scalar.ph229.prol, label %scalar.ph229.prol.loopexit

scalar.ph229.prol:                                ; preds = %scalar.ph229.preheader
  %i.jm = add nuw nsw i64 %indvars.iv.4.ph, %i.iz ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jm
  %i.jo = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.jp = add i32 %i.ix, %i.jo
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !19
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jm
  %i.jr = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.js = add i32 %i.iy, %i.jr
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !19
  %indvars.iv.next.4.prol = or disjoint i64 %indvars.iv.4.ph, 1
  br label %scalar.ph229.prol.loopexit

scalar.ph229.prol.loopexit:                       ; preds = %scalar.ph229.prol, %scalar.ph229.preheader
  %indvars.iv.4.unr = phi i64 [ %indvars.iv.4.ph, %scalar.ph229.preheader ], [ %indvars.iv.next.4.prol, %scalar.ph229.prol ]
  %i.jt = icmp eq i64 %indvars.iv.4.ph, %i.jk
  br i1 %i.jt, label %.loopexit299, label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4.1, %scalar.ph229 ], [ %indvars.iv.4.unr, %scalar.ph229.prol.loopexit ] ; 5 uses
  %i.ju = add nuw nsw i64 %indvars.iv.4, %i.iz    ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ju
  %i.jw = trunc i64 %indvars.iv.4 to i32
  %i.jx = add i32 %i.ix, %i.jw
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !19
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ju
  %i.jz = trunc i64 %indvars.iv.4 to i32
  %i.ka = add i32 %i.iy, %i.jz
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !19
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 3 uses
  %i.kb = add nuw nsw i64 %indvars.iv.next.4, %i.iz ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kb
  %i.kd = trunc i64 %indvars.iv.next.4 to i32
  %i.ke = add i32 %i.ix, %i.kd
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !19
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kb
  %i.kg = trunc i64 %indvars.iv.next.4 to i32
  %i.kh = add i32 %i.iy, %i.kg
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !19
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2 ; 2 uses
  %exitcond.4.not.1 = icmp eq i64 %indvars.iv.next.4.1, %i.dg
  br i1 %exitcond.4.not.1, label %.loopexit299, label %scalar.ph229, !llvm.loop !151

.loopexit299:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229, %middle.block248
  %i.ki = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 3, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %.loopexit299
  %i.kj = add i32 %i.df, 3
  %i.kk = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.kj, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.kl = mul nsw i32 %i.ki, %i.bk                ; 4 uses
  %i.km = mul nsw i32 %i.kk, %i.bk                ; 4 uses
  %i.kn = mul nuw nsw i64 %i.dg, 5                ; 4 uses
  %min.iters.check254 = icmp samesign ult i32 %i.bj, 7
  %i.ko = sub i64 %i.ck, %i.cj
  %diff.check256 = icmp ugt i64 %i.ko, -32
  %or.cond309 = select i1 %min.iters.check254, i1 true, i1 %diff.check256
  br i1 %or.cond309, label %scalar.ph253.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %bb.ar
  %n.vec258 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert259 = insertelement <4 x i32> poison, i32 %i.kl, i64 0
  %broadcast.splat260 = shufflevector <4 x i32> %broadcast.splatinsert259, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert261 = insertelement <4 x i32> poison, i32 %i.km, i64 0
  %broadcast.splat262 = shufflevector <4 x i32> %broadcast.splatinsert261, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op346 = add <4 x i32> splat (i32 4), %broadcast.splat260
  %invariant.op348 = add <4 x i32> splat (i32 4), %broadcast.splat262
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph257
  %index264 = phi i64 [ 0, %vector.ph257 ], [ %index.next269, %vector.body263 ] ; 2 uses
  %vec.ind266 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph257 ], [ %vec.ind.next271, %vector.body263 ] ; 5 uses
  %i.kp = add nuw nsw i64 %index264, %i.kn        ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kp ; 2 uses
  %i.kr = add <4 x i32> %broadcast.splat260, %vec.ind266
  %.reass347 = add <4 x i32> %vec.ind266, %invariant.op346
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store <4 x i32> %i.kr, ptr %i.kq, align 4, !tbaa !19
  store <4 x i32> %.reass347, ptr %i.ks, align 4, !tbaa !19
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kp ; 2 uses
  %i.ku = add <4 x i32> %broadcast.splat262, %vec.ind266
  %.reass349 = add <4 x i32> %vec.ind266, %invariant.op348
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x i32> %i.ku, ptr %i.kt, align 4, !tbaa !19
  store <4 x i32> %.reass349, ptr %i.kv, align 4, !tbaa !19
  %index.next269 = add nuw i64 %index264, 8       ; 2 uses
  %vec.ind.next271 = add <4 x i32> %vec.ind266, splat (i32 8)
  %i.kw = icmp eq i64 %index.next269, %n.vec258
  br i1 %i.kw, label %middle.block272, label %vector.body263, !llvm.loop !152

middle.block272:                                  ; preds = %vector.body263
  %cmp.n273 = icmp eq i64 %n.vec258, %i.dg
  br i1 %cmp.n273, label %.loopexit, label %scalar.ph253.preheader

scalar.ph253.preheader:                           ; preds = %bb.ar, %middle.block272
  %indvars.iv.5.ph = phi i64 [ 0, %bb.ar ], [ %n.vec258, %middle.block272 ] ; 6 uses
  %i.kx = and i32 %i.bi, 127
  %i.ky = zext nneg i32 %i.kx to i64              ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %lcmp.mod322.not.not = icmp eq i64 %i.kz, 0
  br i1 %lcmp.mod322.not.not, label %scalar.ph253.prol, label %scalar.ph253.prol.loopexit

scalar.ph253.prol:                                ; preds = %scalar.ph253.preheader
  %i.la = add nuw nsw i64 %indvars.iv.5.ph, %i.kn ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.la
  %i.lc = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.ld = add i32 %i.kl, %i.lc
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !19
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.la
  %i.lf = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.lg = add i32 %i.km, %i.lf
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !19
  %indvars.iv.next.5.prol = or disjoint i64 %indvars.iv.5.ph, 1
  br label %scalar.ph253.prol.loopexit

scalar.ph253.prol.loopexit:                       ; preds = %scalar.ph253.prol, %scalar.ph253.preheader
  %indvars.iv.5.unr = phi i64 [ %indvars.iv.5.ph, %scalar.ph253.preheader ], [ %indvars.iv.next.5.prol, %scalar.ph253.prol ]
  %i.lh = icmp eq i64 %indvars.iv.5.ph, %i.ky
  br i1 %i.lh, label %.loopexit, label %scalar.ph253

scalar.ph253:                                     ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253
  %indvars.iv.5 = phi i64 [ %indvars.iv.next.5.1, %scalar.ph253 ], [ %indvars.iv.5.unr, %scalar.ph253.prol.loopexit ] ; 5 uses
  %i.li = add nuw nsw i64 %indvars.iv.5, %i.kn    ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.li
  %i.lk = trunc i64 %indvars.iv.5 to i32
  %i.ll = add i32 %i.kl, %i.lk
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !19
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.li
  %i.ln = trunc i64 %indvars.iv.5 to i32
  %i.lo = add i32 %i.km, %i.ln
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !19
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1 ; 3 uses
  %i.lp = add nuw nsw i64 %indvars.iv.next.5, %i.kn ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.lp
  %i.lr = trunc i64 %indvars.iv.next.5 to i32
  %i.ls = add i32 %i.kl, %i.lr
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !19
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.lp
  %i.lu = trunc i64 %indvars.iv.next.5 to i32
  %i.lv = add i32 %i.km, %i.lu
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !19
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2 ; 2 uses
  %exitcond.5.not.1 = icmp eq i64 %indvars.iv.next.5.1, %i.dg
  br i1 %exitcond.5.not.1, label %.loopexit, label %scalar.ph253, !llvm.loop !153

.loopexit:                                        ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253, %middle.block272
  %i.lw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 4, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %.loopexit
  %i.lx = add i32 %i.df, 4
  %i.ly = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.lx, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lz = mul nsw i32 %i.lw, %i.bk                ; 4 uses
  %i.ma = mul nsw i32 %i.ly, %i.bk                ; 4 uses
  %i.mb = mul nuw nsw i64 %i.dg, 6                ; 4 uses
  %min.iters.check278 = icmp samesign ult i32 %i.bj, 7
  %i.mc = sub i64 %i.ck, %i.cj
  %diff.check280 = icmp ugt i64 %i.mc, -32
  %or.cond310 = select i1 %min.iters.check278, i1 true, i1 %diff.check280
  br i1 %or.cond310, label %scalar.ph277.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %bb.at
  %n.vec282 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert283 = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %broadcast.splat284 = shufflevector <4 x i32> %broadcast.splatinsert283, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert285 = insertelement <4 x i32> poison, i32 %i.ma, i64 0
  %broadcast.splat286 = shufflevector <4 x i32> %broadcast.splatinsert285, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op350 = add <4 x i32> splat (i32 4), %broadcast.splat284
  %invariant.op352 = add <4 x i32> splat (i32 4), %broadcast.splat286
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph281
  %index288 = phi i64 [ 0, %vector.ph281 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %vec.ind290 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph281 ], [ %vec.ind.next295, %vector.body287 ] ; 5 uses
  %i.md = add nuw nsw i64 %index288, %i.mb        ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.md ; 2 uses
  %i.mf = add <4 x i32> %broadcast.splat284, %vec.ind290
  %.reass351 = add <4 x i32> %vec.ind290, %invariant.op350
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <4 x i32> %i.mf, ptr %i.me, align 4, !tbaa !19
  store <4 x i32> %.reass351, ptr %i.mg, align 4, !tbaa !19
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.md ; 2 uses
  %i.mi = add <4 x i32> %broadcast.splat286, %vec.ind290
  %.reass353 = add <4 x i32> %vec.ind290, %invariant.op352
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <4 x i32> %i.mi, ptr %i.mh, align 4, !tbaa !19
  store <4 x i32> %.reass353, ptr %i.mj, align 4, !tbaa !19
  %index.next293 = add nuw i64 %index288, 8       ; 2 uses
  %vec.ind.next295 = add <4 x i32> %vec.ind290, splat (i32 8)
  %i.mk = icmp eq i64 %index.next293, %n.vec282
  br i1 %i.mk, label %middle.block296, label %vector.body287, !llvm.loop !154

middle.block296:                                  ; preds = %vector.body287
  %cmp.n297 = icmp eq i64 %n.vec282, %i.dg
  br i1 %cmp.n297, label %.preheader, label %scalar.ph277.preheader

scalar.ph277.preheader:                           ; preds = %bb.at, %middle.block296
  %indvars.iv.6.ph = phi i64 [ 0, %bb.at ], [ %n.vec282, %middle.block296 ] ; 6 uses
  %i.ml = and i32 %i.bi, 127
  %i.mm = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.mn = and i64 %i.mm, 1
  %lcmp.mod324.not.not = icmp eq i64 %i.mn, 0
  br i1 %lcmp.mod324.not.not, label %scalar.ph277.prol, label %scalar.ph277.prol.loopexit

scalar.ph277.prol:                                ; preds = %scalar.ph277.preheader
  %i.mo = add nuw nsw i64 %indvars.iv.6.ph, %i.mb ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mo
  %i.mq = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mr = add i32 %i.lz, %i.mq
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !19
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mo
  %i.mt = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mu = add i32 %i.ma, %i.mt
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !19
  %indvars.iv.next.6.prol = or disjoint i64 %indvars.iv.6.ph, 1
  br label %scalar.ph277.prol.loopexit

scalar.ph277.prol.loopexit:                       ; preds = %scalar.ph277.prol, %scalar.ph277.preheader
  %indvars.iv.6.unr = phi i64 [ %indvars.iv.6.ph, %scalar.ph277.preheader ], [ %indvars.iv.next.6.prol, %scalar.ph277.prol ]
  %i.mv = icmp eq i64 %indvars.iv.6.ph, %i.mm
  br i1 %i.mv, label %.preheader, label %scalar.ph277

scalar.ph277:                                     ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277
  %indvars.iv.6 = phi i64 [ %indvars.iv.next.6.1, %scalar.ph277 ], [ %indvars.iv.6.unr, %scalar.ph277.prol.loopexit ] ; 5 uses
  %i.mw = add nuw nsw i64 %indvars.iv.6, %i.mb    ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mw
  %i.my = trunc i64 %indvars.iv.6 to i32
  %i.mz = add i32 %i.lz, %i.my
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !19
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mw
  %i.nb = trunc i64 %indvars.iv.6 to i32
  %i.nc = add i32 %i.ma, %i.nb
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !19
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1 ; 3 uses
  %i.nd = add nuw nsw i64 %indvars.iv.next.6, %i.mb ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.nd
  %i.nf = trunc i64 %indvars.iv.next.6 to i32
  %i.ng = add i32 %i.lz, %i.nf
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !19
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.nd
  %i.ni = trunc i64 %indvars.iv.next.6 to i32
  %i.nj = add i32 %i.ma, %i.ni
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !19
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2 ; 2 uses
  %exitcond.6.not.1 = icmp eq i64 %indvars.iv.next.6.1, %i.dg
  br i1 %exitcond.6.not.1, label %.preheader, label %scalar.ph277, !llvm.loop !155

.preheader:                                       ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277, %middle.block296
  %i.nk = icmp sgt i32 %i.bl, 0
  br i1 %i.nk, label %.lr.ph, label %._crit_edge

bb.au:                                            ; preds = %bb.as, %.loopexit, %bb.aq, %.loopexit299, %bb.ao, %.loopexit300, %bb.am, %.loopexit301, %bb.ak, %.loopexit302, %bb.ai, %.loopexit303, %bb.af, %bb.ag
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1312, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  %i.nn = trunc i64 %indvars.iv to i32
  %i.no = add i32 %i.dm, %i.nn
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !19
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.nq = trunc i64 %indvars.iv to i32
  %i.nr = add i32 %i.dn, %i.nq
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next
  %i.nt = trunc i64 %indvars.iv.next to i32
  %i.nu = add i32 %i.dm, %i.nt
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !19
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next
  %i.nw = trunc i64 %indvars.iv.next to i32
  %i.nx = add i32 %i.dn, %i.nw
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !19
  %indvars.iv.next.1312 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1312, %i.dg
  br i1 %exitcond.not.1, label %.loopexit303, label %scalar.ph, !llvm.loop !156

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.av
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod327 = trunc i32 %i.bl to i1
  call void @llvm.assume(i1 %lcmp.mod327)
  %i.ny = trunc nuw nsw i64 %indvars.iv125.epil.init to i32 ; 2 uses
  %i.nz = udiv i32 %i.ny, %i.bk
  %i.oa = mul i32 %i.di, %i.nz
  %i.ob = urem i32 %i.ny, %i.bk
  %i.oc = add nuw nsw i32 %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125.epil.init
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !tbaa !41
  %i.oe = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.bg, ptr %i.oe, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv14PyrDownInvokerINS_9FixPtCastItLi8EEEEE, i64 16), ptr %15, align 8, !tbaa !44
  %i.of = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %0, ptr %i.of, align 8, !tbaa !64
  %i.og = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %1, ptr %i.og, align 8, !tbaa !65
  %i.oh = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i32 %2, ptr %i.oh, align 8, !tbaa !66
  %i.oi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.c, ptr %i.oi, align 8, !tbaa !67
  %i.oj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.a, ptr %i.oj, align 8, !tbaa !68
  %i.ok = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.b, ptr %i.ok, align 8, !tbaa !69
  %i.ol = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.aw unwind label %bb.bb

bb.av:                                            ; preds = %bb.av, %.lr.ph.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next126.1, %bb.av ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.av ]
  %i.om = trunc nuw nsw i64 %indvars.iv125 to i32 ; 2 uses
  %i.on = udiv i32 %i.om, %i.bk
  %i.oo = mul i32 %i.di, %i.on
  %i.op = urem i32 %i.om, %i.bk
  %i.oq = add nuw nsw i32 %i.oo, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !19
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.os = trunc nuw nsw i64 %indvars.iv.next126 to i32 ; 2 uses
  %i.ot = udiv i32 %i.os, %i.bk
  %i.ou = mul i32 %i.di, %i.ot
  %i.ov = urem i32 %i.os, %i.bk
  %i.ow = add nuw nsw i32 %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next126
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !19
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.av, !llvm.loop !157

bb.aw:                                            ; preds = %._crit_edge
  %i.oy = sitofp i32 %i.ol to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %i.oy)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.oz = load ptr, ptr %11, align 8, !tbaa !34   ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.oz, %i.ci
  %i.pa = icmp eq ptr %i.oz, null
  %or.cond.i = or i1 %.not.i.i91, %i.pa
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.oz) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.pb = load ptr, ptr %10, align 8, !tbaa !34   ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.pb, %i.bw
  %i.pc = icmp eq ptr %i.pb, null
  %or.cond.i93 = or i1 %.not.i.i92, %i.pc
  br i1 %or.cond.i93, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94, label %bb.az

bb.az:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.pb) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94

_ZN2cv10AutoBufferIiLm264EED2Ev.exit94:           ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.pd = load ptr, ptr %9, align 8, !tbaa !34    ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.pd, %i.bn
  %i.pe = icmp eq ptr %i.pd, null
  %or.cond.i96 = or i1 %.not.i.i95, %i.pe
  br i1 %or.cond.i96, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit97, label %bb.ba

bb.ba:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94
end_hunk_2
begin_hunk_3_@_ZN2cv8pyrDown_INS_7FltCastIfLi8EEEEEvRKNS_3MatERS3_i:bb.a

bb.s:                                             ; preds = %bb.q
  %i.ay = icmp eq i32 %i.ak, 0
  %i.az = zext i1 %i.ay to i32
  br label %_ZNK2cv8MatShapeclEv.exit82

_ZNK2cv8MatShapeclEv.exit82:                      ; preds = %bb.r, %bb.s
  %i.ba = phi i32 [ %i.ax, %bb.r ], [ %i.az, %bb.s ] ; 3 uses
  %i.bb = icmp eq i32 %i.ak, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp sgt i32 %i.ak, -1
  %i.bf = zext i1 %i.be to i32
  %i.bg = select i1 %i.bb, i32 %i.bd, i32 %i.bf   ; 2 uses
  %i.bh = load i32, ptr %0, align 8, !tbaa !26
  %i.bi = lshr i32 %i.bh, 5                       ; 8 uses
  %i.bj = and i32 %i.bi, 127                      ; 9 uses
  %i.bk = add nuw nsw i32 %i.bj, 1                ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.bl = mul nsw i32 %i.bk, %i.ba                ; 7 uses
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i = icmp ugt i32 %i.bl, 264
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !35
  br i1 %.not.i.i, label %bb.t, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.t:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit82
  %i.bp = icmp slt i32 %i.bl, 0
  %i.bq = shl nuw nsw i64 %i.bm, 2
  %i.br = select i1 %i.bp, i64 -1, i64 %i.bq
  %i.bs = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.br) #18 ; 2 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %_ZNK2cv8MatShapeclEv.exit82, %bb.t
  %i.bt = phi ptr [ %i.bn, %_ZNK2cv8MatShapeclEv.exit82 ], [ %i.bs, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.bu = mul nuw nsw i32 %i.bk, 7
  %i.bv = zext nneg i32 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.bw, ptr %10, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not.i.i83 = icmp samesign ugt i32 %i.bj, 36
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !35
  br i1 %.not.i.i83, label %bb.u, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84

bb.u:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.by = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %bb.v unwind label %bb.y

_ZN2cv10AutoBufferIiLm264EEC2Em.exit84:           ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ca, ptr %11, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cb, align 8, !tbaa !35
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

bb.v:                                             ; preds = %bb.u
  store ptr %i.bz, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.cc, ptr %11, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cd, align 8, !tbaa !35
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %.noexc86 unwind label %bb.z   ; 2 uses

.noexc86:                                         ; preds = %bb.v
  store ptr %i.ce, ptr %11, align 8, !tbaa !34
  %.pre = load ptr, ptr %9, align 8, !tbaa !34
  %.pre130 = load ptr, ptr %10, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

_ZN2cv10AutoBufferIiLm264EEC2Em.exit87:           ; preds = %.noexc86, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84
  %i.cf = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.ce, %.noexc86 ] ; 30 uses
  %i.cg = phi ptr [ %i.bw, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre130, %.noexc86 ] ; 30 uses
  %i.ch = phi ptr [ %i.bt, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre, %.noexc86 ] ; 4 uses
  %i.ci = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.cc, %.noexc86 ] ; 2 uses
  %i.cj = ptrtoaddr ptr %i.cf to i64              ; 7 uses
  %i.ck = ptrtoaddr ptr %i.cg to i64              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !36
  %i.cl = icmp sgt i32 %i.ac, 0
  %i.cm = icmp sgt i32 %i.ai, 0
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  %i.cn = shl nsw i32 %i.ba, 1
  %reass.sub = sub i32 %i.cn, %i.ac
  %i.co = add i32 %reass.sub, 2
  %i.cp = icmp ult i32 %i.co, 5
  br i1 %i.cp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cq = shl nsw i32 %i.bg, 1
  %reass.sub119 = sub i32 %i.cq, %i.ai
  %i.cr = add i32 %reass.sub119, 2
  %i.cs = icmp ult i32 %i.cr, 5
  br i1 %i.cs, label %bb.af, label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit103

bb.z:                                             ; preds = %bb.v
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit100

bb.aa:                                            ; preds = %bb.x, %bb.w, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8pyrDown_INS_9FixPtCastIhLi8EEEEEvRKNS_3MatERS3_i, ptr noundef nonnull @.str.1, i32 noundef 894) #15
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ae:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %12, align 8, !tbaa !13   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ae
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.cw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bc

bb.af:                                            ; preds = %bb.x
  %i.dc = add nsw i32 %i.ac, -3
  %i.dd = sdiv i32 %i.dc, 2
  %i.de = add nsw i32 %i.dd, 1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.de)
  %i.df = shl nsw i32 %.sroa.speculated, 1        ; 7 uses
  %i.dg = zext nneg i32 %i.bk to i64              ; 30 uses
  %i.dh = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ag unwind label %bb.au

.lr.ph:                                           ; preds = %.preheader
  %i.di = shl nuw nsw i32 %i.bk, 1                ; 3 uses
  %wide.trip.count128 = zext nneg i32 %i.bl to i64 ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count128, 1
  %i.dj = icmp eq i32 %i.bl, 1
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count128, 2147483646
  br label %bb.av

bb.ag:                                            ; preds = %bb.af
  %i.dk = add i32 %i.df, -2
  %i.dl = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.dk, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ah unwind label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %i.dm = mul nsw i32 %i.dh, %i.bk                ; 4 uses
  %i.dn = mul nsw i32 %i.dl, %i.bk                ; 4 uses
  %min.iters.check = icmp samesign ult i32 %i.bj, 7
  %i.do = sub i64 %i.ck, %i.cj
  %diff.check = icmp ugt i64 %i.do, -32
  %or.cond304 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond304, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ah
  %n.vec = and i64 %i.dg, 248                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert150 = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat151 = shufflevector <4 x i32> %broadcast.splatinsert150, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  %invariant.op328 = add <4 x i32> splat (i32 4), %broadcast.splat151
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next154, %vector.body ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.dq = add <4 x i32> %broadcast.splat, %vec.ind152
  %.reass = add <4 x i32> %vec.ind152, %invariant.op
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x i32> %i.dq, ptr %i.dp, align 4, !tbaa !19
  store <4 x i32> %.reass, ptr %i.dr, align 4, !tbaa !19
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.dt = add <4 x i32> %broadcast.splat151, %vec.ind152
  %.reass329 = add <4 x i32> %vec.ind152, %invariant.op328
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x i32> %i.dt, ptr %i.ds, align 4, !tbaa !19
  store <4 x i32> %.reass329, ptr %i.du, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next154 = add <4 x i32> %vec.ind152, splat (i32 8)
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br i1 %cmp.n, label %.loopexit303, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ah, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.ah ], [ %n.vec, %middle.block ] ; 7 uses
  %i.dw = and i32 %i.bi, 127
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = and i64 %i.dx, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.ph
  %i.ea = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.eb = add i32 %i.dm, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !19
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.ph
  %i.ed = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.ee = add i32 %i.dn, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !19
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ef = icmp eq i64 %indvars.iv.ph, %i.dx
  br i1 %i.ef, label %.loopexit303, label %scalar.ph

.loopexit303:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ai unwind label %bb.au

bb.ai:                                            ; preds = %.loopexit303
  %i.eh = add i32 %i.df, -1
  %i.ei = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.eh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.ej = mul nsw i32 %i.eg, %i.bk                ; 4 uses
  %i.ek = mul nsw i32 %i.ei, %i.bk                ; 4 uses
  %min.iters.check158 = icmp samesign ult i32 %i.bj, 7
  %i.el = sub i64 %i.ck, %i.cj
  %diff.check160 = icmp ugt i64 %i.el, -32
  %or.cond305 = select i1 %min.iters.check158, i1 true, i1 %diff.check160
  br i1 %or.cond305, label %scalar.ph157.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %bb.aj
  %n.vec162 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op330 = add <4 x i32> splat (i32 4), %broadcast.splat164
  %invariant.op332 = add <4 x i32> splat (i32 4), %broadcast.splat166
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph161
  %index168 = phi i64 [ 0, %vector.ph161 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %vec.ind170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph161 ], [ %vec.ind.next175, %vector.body167 ] ; 5 uses
  %i.em = add nuw nsw i64 %index168, %i.dg        ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.em ; 2 uses
  %i.eo = add <4 x i32> %broadcast.splat164, %vec.ind170
  %.reass331 = add <4 x i32> %vec.ind170, %invariant.op330
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x i32> %i.eo, ptr %i.en, align 4, !tbaa !19
  store <4 x i32> %.reass331, ptr %i.ep, align 4, !tbaa !19
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.em ; 2 uses
  %i.er = add <4 x i32> %broadcast.splat166, %vec.ind170
  %.reass333 = add <4 x i32> %vec.ind170, %invariant.op332
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %i.er, ptr %i.eq, align 4, !tbaa !19
  store <4 x i32> %.reass333, ptr %i.es, align 4, !tbaa !19
  %index.next173 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next175 = add <4 x i32> %vec.ind170, splat (i32 8)
  %i.et = icmp eq i64 %index.next173, %n.vec162
  br i1 %i.et, label %middle.block176, label %vector.body167, !llvm.loop !159

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %n.vec162, %i.dg
  br i1 %cmp.n177, label %.loopexit302, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %bb.aj, %middle.block176
  %indvars.iv.1.ph = phi i64 [ 0, %bb.aj ], [ %n.vec162, %middle.block176 ] ; 6 uses
  %i.eu = and i32 %i.bi, 127
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %lcmp.mod314.not.not = icmp eq i64 %i.ew, 0
  br i1 %lcmp.mod314.not.not, label %scalar.ph157.prol, label %scalar.ph157.prol.loopexit

scalar.ph157.prol:                                ; preds = %scalar.ph157.preheader
  %i.ex = add nuw nsw i64 %indvars.iv.1.ph, %i.dg ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ex
  %i.ez = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fa = add i32 %i.ej, %i.ez
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ex
  %i.fc = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fd = add i32 %i.ek, %i.fc
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !19
  %indvars.iv.next.1.prol = or disjoint i64 %indvars.iv.1.ph, 1
  br label %scalar.ph157.prol.loopexit

scalar.ph157.prol.loopexit:                       ; preds = %scalar.ph157.prol, %scalar.ph157.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %scalar.ph157.preheader ], [ %indvars.iv.next.1.prol, %scalar.ph157.prol ]
  %i.fe = icmp eq i64 %indvars.iv.1.ph, %i.ev
  br i1 %i.fe, label %.loopexit302, label %scalar.ph157

scalar.ph157:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %scalar.ph157 ], [ %indvars.iv.1.unr, %scalar.ph157.prol.loopexit ] ; 5 uses
  %i.ff = add nuw nsw i64 %indvars.iv.1, %i.dg    ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ff
  %i.fh = trunc i64 %indvars.iv.1 to i32
  %i.fi = add i32 %i.ej, %i.fh
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !19
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ff
  %i.fk = trunc i64 %indvars.iv.1 to i32
  %i.fl = add i32 %i.ek, %i.fk
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.fm = add nuw nsw i64 %indvars.iv.next.1, %i.dg ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fm
  %i.fo = trunc i64 %indvars.iv.next.1 to i32
  %i.fp = add i32 %i.ej, %i.fo
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fm
  %i.fr = trunc i64 %indvars.iv.next.1 to i32
  %i.fs = add i32 %i.ek, %i.fr
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !19
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, %i.dg
  br i1 %exitcond.1.not.1, label %.loopexit302, label %scalar.ph157, !llvm.loop !160

.loopexit302:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157, %middle.block176
  %i.ft = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 0, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %.loopexit302
  %i.fu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.df, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.fv = mul nsw i32 %i.ft, %i.bk                ; 4 uses
  %i.fw = mul nsw i32 %i.fu, %i.bk                ; 4 uses
  %i.fx = shl nuw nsw i64 %i.dg, 1                ; 4 uses
  %min.iters.check182 = icmp samesign ult i32 %i.bj, 7
  %i.fy = sub i64 %i.ck, %i.cj
  %diff.check184 = icmp ugt i64 %i.fy, -32
  %or.cond306 = select i1 %min.iters.check182, i1 true, i1 %diff.check184
  br i1 %or.cond306, label %scalar.ph181.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %bb.al
  %n.vec186 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op334 = add <4 x i32> splat (i32 4), %broadcast.splat188
  %invariant.op336 = add <4 x i32> splat (i32 4), %broadcast.splat190
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph185
  %index192 = phi i64 [ 0, %vector.ph185 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %vec.ind194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph185 ], [ %vec.ind.next199, %vector.body191 ] ; 5 uses
  %i.fz = add nuw nsw i64 %index192, %i.fx        ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fz ; 2 uses
  %i.gb = add <4 x i32> %broadcast.splat188, %vec.ind194
  %.reass335 = add <4 x i32> %vec.ind194, %invariant.op334
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %i.gb, ptr %i.ga, align 4, !tbaa !19
  store <4 x i32> %.reass335, ptr %i.gc, align 4, !tbaa !19
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fz ; 2 uses
  %i.ge = add <4 x i32> %broadcast.splat190, %vec.ind194
  %.reass337 = add <4 x i32> %vec.ind194, %invariant.op336
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <4 x i32> %i.ge, ptr %i.gd, align 4, !tbaa !19
  store <4 x i32> %.reass337, ptr %i.gf, align 4, !tbaa !19
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %vec.ind.next199 = add <4 x i32> %vec.ind194, splat (i32 8)
  %i.gg = icmp eq i64 %index.next197, %n.vec186
  br i1 %i.gg, label %middle.block200, label %vector.body191, !llvm.loop !161

middle.block200:                                  ; preds = %vector.body191
  %cmp.n201 = icmp eq i64 %n.vec186, %i.dg
  br i1 %cmp.n201, label %.loopexit301, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %bb.al, %middle.block200
  %indvars.iv.2.ph = phi i64 [ 0, %bb.al ], [ %n.vec186, %middle.block200 ] ; 6 uses
  %i.gh = and i32 %i.bi, 127
  %i.gi = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %lcmp.mod316.not.not = icmp eq i64 %i.gj, 0
  br i1 %lcmp.mod316.not.not, label %scalar.ph181.prol, label %scalar.ph181.prol.loopexit

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader
  %i.gk = add nuw nsw i64 %indvars.iv.2.ph, %i.fx ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gk
  %i.gm = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gn = add i32 %i.fv, %i.gm
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !19
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gk
  %i.gp = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gq = add i32 %i.fw, %i.gp
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !19
  %indvars.iv.next.2.prol = or disjoint i64 %indvars.iv.2.ph, 1
  br label %scalar.ph181.prol.loopexit

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv.2.unr = phi i64 [ %indvars.iv.2.ph, %scalar.ph181.preheader ], [ %indvars.iv.next.2.prol, %scalar.ph181.prol ]
  %i.gr = icmp eq i64 %indvars.iv.2.ph, %i.gi
  br i1 %i.gr, label %.loopexit301, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %scalar.ph181 ], [ %indvars.iv.2.unr, %scalar.ph181.prol.loopexit ] ; 5 uses
  %i.gs = add nuw nsw i64 %indvars.iv.2, %i.fx    ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gs
  %i.gu = trunc i64 %indvars.iv.2 to i32
  %i.gv = add i32 %i.fv, %i.gu
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !19
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gs
  %i.gx = trunc i64 %indvars.iv.2 to i32
  %i.gy = add i32 %i.fw, %i.gx
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 3 uses
  %i.gz = add nuw nsw i64 %indvars.iv.next.2, %i.fx ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gz
  %i.hb = trunc i64 %indvars.iv.next.2 to i32
  %i.hc = add i32 %i.fv, %i.hb
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !19
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gz
  %i.he = trunc i64 %indvars.iv.next.2 to i32
  %i.hf = add i32 %i.fw, %i.he
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !19
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, %i.dg
  br i1 %exitcond.2.not.1, label %.loopexit301, label %scalar.ph181, !llvm.loop !162

.loopexit301:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block200
  %i.hg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %.loopexit301
  %i.hh = or disjoint i32 %i.df, 1
  %i.hi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.hh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.hj = mul nsw i32 %i.hg, %i.bk                ; 4 uses
  %i.hk = mul nsw i32 %i.hi, %i.bk                ; 4 uses
  %i.hl = mul nuw nsw i64 %i.dg, 3                ; 4 uses
  %min.iters.check206 = icmp samesign ult i32 %i.bj, 7
  %i.hm = sub i64 %i.ck, %i.cj
  %diff.check208 = icmp ugt i64 %i.hm, -32
  %or.cond307 = select i1 %min.iters.check206, i1 true, i1 %diff.check208
  br i1 %or.cond307, label %scalar.ph205.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %bb.an
  %n.vec210 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert213 = insertelement <4 x i32> poison, i32 %i.hk, i64 0
  %broadcast.splat214 = shufflevector <4 x i32> %broadcast.splatinsert213, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op338 = add <4 x i32> splat (i32 4), %broadcast.splat212
  %invariant.op340 = add <4 x i32> splat (i32 4), %broadcast.splat214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph209
  %index216 = phi i64 [ 0, %vector.ph209 ], [ %index.next221, %vector.body215 ] ; 2 uses
  %vec.ind218 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph209 ], [ %vec.ind.next223, %vector.body215 ] ; 5 uses
  %i.hn = add nuw nsw i64 %index216, %i.hl        ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hn ; 2 uses
  %i.hp = add <4 x i32> %broadcast.splat212, %vec.ind218
  %.reass339 = add <4 x i32> %vec.ind218, %invariant.op338
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %i.hp, ptr %i.ho, align 4, !tbaa !19
  store <4 x i32> %.reass339, ptr %i.hq, align 4, !tbaa !19
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hn ; 2 uses
  %i.hs = add <4 x i32> %broadcast.splat214, %vec.ind218
  %.reass341 = add <4 x i32> %vec.ind218, %invariant.op340
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <4 x i32> %i.hs, ptr %i.hr, align 4, !tbaa !19
  store <4 x i32> %.reass341, ptr %i.ht, align 4, !tbaa !19
  %index.next221 = add nuw i64 %index216, 8       ; 2 uses
  %vec.ind.next223 = add <4 x i32> %vec.ind218, splat (i32 8)
  %i.hu = icmp eq i64 %index.next221, %n.vec210
  br i1 %i.hu, label %middle.block224, label %vector.body215, !llvm.loop !163

middle.block224:                                  ; preds = %vector.body215
  %cmp.n225 = icmp eq i64 %n.vec210, %i.dg
  br i1 %cmp.n225, label %.loopexit300, label %scalar.ph205.preheader

scalar.ph205.preheader:                           ; preds = %bb.an, %middle.block224
  %indvars.iv.3.ph = phi i64 [ 0, %bb.an ], [ %n.vec210, %middle.block224 ] ; 6 uses
  %i.hv = and i32 %i.bi, 127
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = and i64 %i.hw, 1
  %lcmp.mod318.not.not = icmp eq i64 %i.hx, 0
  br i1 %lcmp.mod318.not.not, label %scalar.ph205.prol, label %scalar.ph205.prol.loopexit

scalar.ph205.prol:                                ; preds = %scalar.ph205.preheader
  %i.hy = add nuw nsw i64 %indvars.iv.3.ph, %i.hl ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ib = add i32 %i.hj, %i.ia
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !19
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hy
  %i.id = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ie = add i32 %i.hk, %i.id
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !19
  %indvars.iv.next.3.prol = or disjoint i64 %indvars.iv.3.ph, 1
  br label %scalar.ph205.prol.loopexit

scalar.ph205.prol.loopexit:                       ; preds = %scalar.ph205.prol, %scalar.ph205.preheader
  %indvars.iv.3.unr = phi i64 [ %indvars.iv.3.ph, %scalar.ph205.preheader ], [ %indvars.iv.next.3.prol, %scalar.ph205.prol ]
  %i.if = icmp eq i64 %indvars.iv.3.ph, %i.hw
  br i1 %i.if, label %.loopexit300, label %scalar.ph205

scalar.ph205:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.1, %scalar.ph205 ], [ %indvars.iv.3.unr, %scalar.ph205.prol.loopexit ] ; 5 uses
  %i.ig = add nuw nsw i64 %indvars.iv.3, %i.hl    ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ig
  %i.ii = trunc i64 %indvars.iv.3 to i32
  %i.ij = add i32 %i.hj, %i.ii
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !19
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ig
  %i.il = trunc i64 %indvars.iv.3 to i32
  %i.im = add i32 %i.hk, %i.il
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 3 uses
  %i.in = add nuw nsw i64 %indvars.iv.next.3, %i.hl ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.in
  %i.ip = trunc i64 %indvars.iv.next.3 to i32
  %i.iq = add i32 %i.hj, %i.ip
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !19
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.in
  %i.is = trunc i64 %indvars.iv.next.3 to i32
  %i.it = add i32 %i.hk, %i.is
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !19
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2 ; 2 uses
  %exitcond.3.not.1 = icmp eq i64 %indvars.iv.next.3.1, %i.dg
  br i1 %exitcond.3.not.1, label %.loopexit300, label %scalar.ph205, !llvm.loop !164

.loopexit300:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205, %middle.block224
  %i.iu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %.loopexit300
  %i.iv = add i32 %i.df, 2
  %i.iw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.iv, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ix = mul nsw i32 %i.iu, %i.bk                ; 4 uses
  %i.iy = mul nsw i32 %i.iw, %i.bk                ; 4 uses
  %i.iz = shl nuw nsw i64 %i.dg, 2                ; 4 uses
  %min.iters.check230 = icmp samesign ult i32 %i.bj, 7
  %i.ja = sub i64 %i.ck, %i.cj
  %diff.check232 = icmp ugt i64 %i.ja, -32
  %or.cond308 = select i1 %min.iters.check230, i1 true, i1 %diff.check232
  br i1 %or.cond308, label %scalar.ph229.preheader, label %vector.ph233

vector.ph233:                                     ; preds = %bb.ap
  %n.vec234 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert235 = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %broadcast.splat236 = shufflevector <4 x i32> %broadcast.splatinsert235, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op342 = add <4 x i32> splat (i32 4), %broadcast.splat236
  %invariant.op344 = add <4 x i32> splat (i32 4), %broadcast.splat238
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph233
  %index240 = phi i64 [ 0, %vector.ph233 ], [ %index.next245, %vector.body239 ] ; 2 uses
  %vec.ind242 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph233 ], [ %vec.ind.next247, %vector.body239 ] ; 5 uses
  %i.jb = add nuw nsw i64 %index240, %i.iz        ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jb ; 2 uses
  %i.jd = add <4 x i32> %broadcast.splat236, %vec.ind242
  %.reass343 = add <4 x i32> %vec.ind242, %invariant.op342
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <4 x i32> %i.jd, ptr %i.jc, align 4, !tbaa !19
  store <4 x i32> %.reass343, ptr %i.je, align 4, !tbaa !19
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jb ; 2 uses
  %i.jg = add <4 x i32> %broadcast.splat238, %vec.ind242
  %.reass345 = add <4 x i32> %vec.ind242, %invariant.op344
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> %i.jg, ptr %i.jf, align 4, !tbaa !19
  store <4 x i32> %.reass345, ptr %i.jh, align 4, !tbaa !19
  %index.next245 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next247 = add <4 x i32> %vec.ind242, splat (i32 8)
  %i.ji = icmp eq i64 %index.next245, %n.vec234
  br i1 %i.ji, label %middle.block248, label %vector.body239, !llvm.loop !165

middle.block248:                                  ; preds = %vector.body239
  %cmp.n249 = icmp eq i64 %n.vec234, %i.dg
  br i1 %cmp.n249, label %.loopexit299, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %bb.ap, %middle.block248
  %indvars.iv.4.ph = phi i64 [ 0, %bb.ap ], [ %n.vec234, %middle.block248 ] ; 6 uses
  %i.jj = and i32 %i.bi, 127
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jl = and i64 %i.jk, 1
  %lcmp.mod320.not.not = icmp eq i64 %i.jl, 0
  br i1 %lcmp.mod320.not.not, label %scalar.ph229.prol, label %scalar.ph229.prol.loopexit

scalar.ph229.prol:                                ; preds = %scalar.ph229.preheader
  %i.jm = add nuw nsw i64 %indvars.iv.4.ph, %i.iz ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jm
  %i.jo = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.jp = add i32 %i.ix, %i.jo
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !19
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jm
  %i.jr = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.js = add i32 %i.iy, %i.jr
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !19
  %indvars.iv.next.4.prol = or disjoint i64 %indvars.iv.4.ph, 1
  br label %scalar.ph229.prol.loopexit

scalar.ph229.prol.loopexit:                       ; preds = %scalar.ph229.prol, %scalar.ph229.preheader
  %indvars.iv.4.unr = phi i64 [ %indvars.iv.4.ph, %scalar.ph229.preheader ], [ %indvars.iv.next.4.prol, %scalar.ph229.prol ]
  %i.jt = icmp eq i64 %indvars.iv.4.ph, %i.jk
  br i1 %i.jt, label %.loopexit299, label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4.1, %scalar.ph229 ], [ %indvars.iv.4.unr, %scalar.ph229.prol.loopexit ] ; 5 uses
  %i.ju = add nuw nsw i64 %indvars.iv.4, %i.iz    ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ju
  %i.jw = trunc i64 %indvars.iv.4 to i32
  %i.jx = add i32 %i.ix, %i.jw
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !19
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ju
  %i.jz = trunc i64 %indvars.iv.4 to i32
  %i.ka = add i32 %i.iy, %i.jz
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !19
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 3 uses
  %i.kb = add nuw nsw i64 %indvars.iv.next.4, %i.iz ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kb
  %i.kd = trunc i64 %indvars.iv.next.4 to i32
  %i.ke = add i32 %i.ix, %i.kd
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !19
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kb
  %i.kg = trunc i64 %indvars.iv.next.4 to i32
  %i.kh = add i32 %i.iy, %i.kg
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !19
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2 ; 2 uses
  %exitcond.4.not.1 = icmp eq i64 %indvars.iv.next.4.1, %i.dg
  br i1 %exitcond.4.not.1, label %.loopexit299, label %scalar.ph229, !llvm.loop !166

.loopexit299:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229, %middle.block248
  %i.ki = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 3, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %.loopexit299
  %i.kj = add i32 %i.df, 3
  %i.kk = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.kj, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.kl = mul nsw i32 %i.ki, %i.bk                ; 4 uses
  %i.km = mul nsw i32 %i.kk, %i.bk                ; 4 uses
  %i.kn = mul nuw nsw i64 %i.dg, 5                ; 4 uses
  %min.iters.check254 = icmp samesign ult i32 %i.bj, 7
  %i.ko = sub i64 %i.ck, %i.cj
  %diff.check256 = icmp ugt i64 %i.ko, -32
  %or.cond309 = select i1 %min.iters.check254, i1 true, i1 %diff.check256
  br i1 %or.cond309, label %scalar.ph253.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %bb.ar
  %n.vec258 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert259 = insertelement <4 x i32> poison, i32 %i.kl, i64 0
  %broadcast.splat260 = shufflevector <4 x i32> %broadcast.splatinsert259, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert261 = insertelement <4 x i32> poison, i32 %i.km, i64 0
  %broadcast.splat262 = shufflevector <4 x i32> %broadcast.splatinsert261, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op346 = add <4 x i32> splat (i32 4), %broadcast.splat260
  %invariant.op348 = add <4 x i32> splat (i32 4), %broadcast.splat262
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph257
  %index264 = phi i64 [ 0, %vector.ph257 ], [ %index.next269, %vector.body263 ] ; 2 uses
  %vec.ind266 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph257 ], [ %vec.ind.next271, %vector.body263 ] ; 5 uses
  %i.kp = add nuw nsw i64 %index264, %i.kn        ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kp ; 2 uses
  %i.kr = add <4 x i32> %broadcast.splat260, %vec.ind266
  %.reass347 = add <4 x i32> %vec.ind266, %invariant.op346
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store <4 x i32> %i.kr, ptr %i.kq, align 4, !tbaa !19
  store <4 x i32> %.reass347, ptr %i.ks, align 4, !tbaa !19
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kp ; 2 uses
  %i.ku = add <4 x i32> %broadcast.splat262, %vec.ind266
  %.reass349 = add <4 x i32> %vec.ind266, %invariant.op348
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x i32> %i.ku, ptr %i.kt, align 4, !tbaa !19
  store <4 x i32> %.reass349, ptr %i.kv, align 4, !tbaa !19
  %index.next269 = add nuw i64 %index264, 8       ; 2 uses
  %vec.ind.next271 = add <4 x i32> %vec.ind266, splat (i32 8)
  %i.kw = icmp eq i64 %index.next269, %n.vec258
  br i1 %i.kw, label %middle.block272, label %vector.body263, !llvm.loop !167

middle.block272:                                  ; preds = %vector.body263
  %cmp.n273 = icmp eq i64 %n.vec258, %i.dg
  br i1 %cmp.n273, label %.loopexit, label %scalar.ph253.preheader

scalar.ph253.preheader:                           ; preds = %bb.ar, %middle.block272
  %indvars.iv.5.ph = phi i64 [ 0, %bb.ar ], [ %n.vec258, %middle.block272 ] ; 6 uses
  %i.kx = and i32 %i.bi, 127
  %i.ky = zext nneg i32 %i.kx to i64              ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %lcmp.mod322.not.not = icmp eq i64 %i.kz, 0
  br i1 %lcmp.mod322.not.not, label %scalar.ph253.prol, label %scalar.ph253.prol.loopexit

scalar.ph253.prol:                                ; preds = %scalar.ph253.preheader
  %i.la = add nuw nsw i64 %indvars.iv.5.ph, %i.kn ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.la
  %i.lc = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.ld = add i32 %i.kl, %i.lc
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !19
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.la
  %i.lf = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.lg = add i32 %i.km, %i.lf
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !19
  %indvars.iv.next.5.prol = or disjoint i64 %indvars.iv.5.ph, 1
  br label %scalar.ph253.prol.loopexit

scalar.ph253.prol.loopexit:                       ; preds = %scalar.ph253.prol, %scalar.ph253.preheader
  %indvars.iv.5.unr = phi i64 [ %indvars.iv.5.ph, %scalar.ph253.preheader ], [ %indvars.iv.next.5.prol, %scalar.ph253.prol ]
  %i.lh = icmp eq i64 %indvars.iv.5.ph, %i.ky
  br i1 %i.lh, label %.loopexit, label %scalar.ph253

scalar.ph253:                                     ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253
  %indvars.iv.5 = phi i64 [ %indvars.iv.next.5.1, %scalar.ph253 ], [ %indvars.iv.5.unr, %scalar.ph253.prol.loopexit ] ; 5 uses
  %i.li = add nuw nsw i64 %indvars.iv.5, %i.kn    ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.li
  %i.lk = trunc i64 %indvars.iv.5 to i32
  %i.ll = add i32 %i.kl, %i.lk
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !19
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.li
  %i.ln = trunc i64 %indvars.iv.5 to i32
  %i.lo = add i32 %i.km, %i.ln
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !19
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1 ; 3 uses
  %i.lp = add nuw nsw i64 %indvars.iv.next.5, %i.kn ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.lp
  %i.lr = trunc i64 %indvars.iv.next.5 to i32
  %i.ls = add i32 %i.kl, %i.lr
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !19
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.lp
  %i.lu = trunc i64 %indvars.iv.next.5 to i32
  %i.lv = add i32 %i.km, %i.lu
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !19
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2 ; 2 uses
  %exitcond.5.not.1 = icmp eq i64 %indvars.iv.next.5.1, %i.dg
  br i1 %exitcond.5.not.1, label %.loopexit, label %scalar.ph253, !llvm.loop !168

.loopexit:                                        ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253, %middle.block272
  %i.lw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 4, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %.loopexit
  %i.lx = add i32 %i.df, 4
  %i.ly = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.lx, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lz = mul nsw i32 %i.lw, %i.bk                ; 4 uses
  %i.ma = mul nsw i32 %i.ly, %i.bk                ; 4 uses
  %i.mb = mul nuw nsw i64 %i.dg, 6                ; 4 uses
  %min.iters.check278 = icmp samesign ult i32 %i.bj, 7
  %i.mc = sub i64 %i.ck, %i.cj
  %diff.check280 = icmp ugt i64 %i.mc, -32
  %or.cond310 = select i1 %min.iters.check278, i1 true, i1 %diff.check280
  br i1 %or.cond310, label %scalar.ph277.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %bb.at
  %n.vec282 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert283 = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %broadcast.splat284 = shufflevector <4 x i32> %broadcast.splatinsert283, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert285 = insertelement <4 x i32> poison, i32 %i.ma, i64 0
  %broadcast.splat286 = shufflevector <4 x i32> %broadcast.splatinsert285, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op350 = add <4 x i32> splat (i32 4), %broadcast.splat284
  %invariant.op352 = add <4 x i32> splat (i32 4), %broadcast.splat286
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph281
  %index288 = phi i64 [ 0, %vector.ph281 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %vec.ind290 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph281 ], [ %vec.ind.next295, %vector.body287 ] ; 5 uses
  %i.md = add nuw nsw i64 %index288, %i.mb        ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.md ; 2 uses
  %i.mf = add <4 x i32> %broadcast.splat284, %vec.ind290
  %.reass351 = add <4 x i32> %vec.ind290, %invariant.op350
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <4 x i32> %i.mf, ptr %i.me, align 4, !tbaa !19
  store <4 x i32> %.reass351, ptr %i.mg, align 4, !tbaa !19
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.md ; 2 uses
  %i.mi = add <4 x i32> %broadcast.splat286, %vec.ind290
  %.reass353 = add <4 x i32> %vec.ind290, %invariant.op352
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <4 x i32> %i.mi, ptr %i.mh, align 4, !tbaa !19
  store <4 x i32> %.reass353, ptr %i.mj, align 4, !tbaa !19
  %index.next293 = add nuw i64 %index288, 8       ; 2 uses
  %vec.ind.next295 = add <4 x i32> %vec.ind290, splat (i32 8)
  %i.mk = icmp eq i64 %index.next293, %n.vec282
  br i1 %i.mk, label %middle.block296, label %vector.body287, !llvm.loop !169

middle.block296:                                  ; preds = %vector.body287
  %cmp.n297 = icmp eq i64 %n.vec282, %i.dg
  br i1 %cmp.n297, label %.preheader, label %scalar.ph277.preheader

scalar.ph277.preheader:                           ; preds = %bb.at, %middle.block296
  %indvars.iv.6.ph = phi i64 [ 0, %bb.at ], [ %n.vec282, %middle.block296 ] ; 6 uses
  %i.ml = and i32 %i.bi, 127
  %i.mm = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.mn = and i64 %i.mm, 1
  %lcmp.mod324.not.not = icmp eq i64 %i.mn, 0
  br i1 %lcmp.mod324.not.not, label %scalar.ph277.prol, label %scalar.ph277.prol.loopexit

scalar.ph277.prol:                                ; preds = %scalar.ph277.preheader
  %i.mo = add nuw nsw i64 %indvars.iv.6.ph, %i.mb ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mo
  %i.mq = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mr = add i32 %i.lz, %i.mq
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !19
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mo
  %i.mt = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mu = add i32 %i.ma, %i.mt
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !19
  %indvars.iv.next.6.prol = or disjoint i64 %indvars.iv.6.ph, 1
  br label %scalar.ph277.prol.loopexit

scalar.ph277.prol.loopexit:                       ; preds = %scalar.ph277.prol, %scalar.ph277.preheader
  %indvars.iv.6.unr = phi i64 [ %indvars.iv.6.ph, %scalar.ph277.preheader ], [ %indvars.iv.next.6.prol, %scalar.ph277.prol ]
  %i.mv = icmp eq i64 %indvars.iv.6.ph, %i.mm
  br i1 %i.mv, label %.preheader, label %scalar.ph277

scalar.ph277:                                     ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277
  %indvars.iv.6 = phi i64 [ %indvars.iv.next.6.1, %scalar.ph277 ], [ %indvars.iv.6.unr, %scalar.ph277.prol.loopexit ] ; 5 uses
  %i.mw = add nuw nsw i64 %indvars.iv.6, %i.mb    ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mw
  %i.my = trunc i64 %indvars.iv.6 to i32
  %i.mz = add i32 %i.lz, %i.my
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !19
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mw
  %i.nb = trunc i64 %indvars.iv.6 to i32
  %i.nc = add i32 %i.ma, %i.nb
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !19
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1 ; 3 uses
  %i.nd = add nuw nsw i64 %indvars.iv.next.6, %i.mb ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.nd
  %i.nf = trunc i64 %indvars.iv.next.6 to i32
  %i.ng = add i32 %i.lz, %i.nf
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !19
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.nd
  %i.ni = trunc i64 %indvars.iv.next.6 to i32
  %i.nj = add i32 %i.ma, %i.ni
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !19
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2 ; 2 uses
  %exitcond.6.not.1 = icmp eq i64 %indvars.iv.next.6.1, %i.dg
  br i1 %exitcond.6.not.1, label %.preheader, label %scalar.ph277, !llvm.loop !170

.preheader:                                       ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277, %middle.block296
  %i.nk = icmp sgt i32 %i.bl, 0
  br i1 %i.nk, label %.lr.ph, label %._crit_edge

bb.au:                                            ; preds = %bb.as, %.loopexit, %bb.aq, %.loopexit299, %bb.ao, %.loopexit300, %bb.am, %.loopexit301, %bb.ak, %.loopexit302, %bb.ai, %.loopexit303, %bb.af, %bb.ag
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1312, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  %i.nn = trunc i64 %indvars.iv to i32
  %i.no = add i32 %i.dm, %i.nn
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !19
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.nq = trunc i64 %indvars.iv to i32
  %i.nr = add i32 %i.dn, %i.nq
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next
  %i.nt = trunc i64 %indvars.iv.next to i32
  %i.nu = add i32 %i.dm, %i.nt
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !19
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next
  %i.nw = trunc i64 %indvars.iv.next to i32
  %i.nx = add i32 %i.dn, %i.nw
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !19
  %indvars.iv.next.1312 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1312, %i.dg
  br i1 %exitcond.not.1, label %.loopexit303, label %scalar.ph, !llvm.loop !171

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.av
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod327 = trunc i32 %i.bl to i1
  call void @llvm.assume(i1 %lcmp.mod327)
  %i.ny = trunc nuw nsw i64 %indvars.iv125.epil.init to i32 ; 2 uses
  %i.nz = udiv i32 %i.ny, %i.bk
  %i.oa = mul i32 %i.di, %i.nz
  %i.ob = urem i32 %i.ny, %i.bk
  %i.oc = add nuw nsw i32 %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125.epil.init
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !tbaa !41
  %i.oe = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.bg, ptr %i.oe, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv14PyrDownInvokerINS_7FltCastIfLi8EEEEE, i64 16), ptr %15, align 8, !tbaa !44
  %i.of = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %0, ptr %i.of, align 8, !tbaa !71
  %i.og = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %1, ptr %i.og, align 8, !tbaa !72
  %i.oh = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i32 %2, ptr %i.oh, align 8, !tbaa !73
  %i.oi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.c, ptr %i.oi, align 8, !tbaa !74
  %i.oj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.a, ptr %i.oj, align 8, !tbaa !75
  %i.ok = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.b, ptr %i.ok, align 8, !tbaa !76
  %i.ol = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.aw unwind label %bb.bb

bb.av:                                            ; preds = %bb.av, %.lr.ph.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next126.1, %bb.av ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.av ]
  %i.om = trunc nuw nsw i64 %indvars.iv125 to i32 ; 2 uses
  %i.on = udiv i32 %i.om, %i.bk
  %i.oo = mul i32 %i.di, %i.on
  %i.op = urem i32 %i.om, %i.bk
  %i.oq = add nuw nsw i32 %i.oo, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !19
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.os = trunc nuw nsw i64 %indvars.iv.next126 to i32 ; 2 uses
  %i.ot = udiv i32 %i.os, %i.bk
  %i.ou = mul i32 %i.di, %i.ot
  %i.ov = urem i32 %i.os, %i.bk
  %i.ow = add nuw nsw i32 %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next126
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !19
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.av, !llvm.loop !172

bb.aw:                                            ; preds = %._crit_edge
  %i.oy = sitofp i32 %i.ol to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %i.oy)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.oz = load ptr, ptr %11, align 8, !tbaa !34   ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.oz, %i.ci
  %i.pa = icmp eq ptr %i.oz, null
  %or.cond.i = or i1 %.not.i.i91, %i.pa
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.oz) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.pb = load ptr, ptr %10, align 8, !tbaa !34   ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.pb, %i.bw
  %i.pc = icmp eq ptr %i.pb, null
  %or.cond.i93 = or i1 %.not.i.i92, %i.pc
  br i1 %or.cond.i93, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94, label %bb.az

bb.az:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.pb) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94

_ZN2cv10AutoBufferIiLm264EED2Ev.exit94:           ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.pd = load ptr, ptr %9, align 8, !tbaa !34    ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.pd, %i.bn
  %i.pe = icmp eq ptr %i.pd, null
  %or.cond.i96 = or i1 %.not.i.i95, %i.pe
  br i1 %or.cond.i96, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit97, label %bb.ba

bb.ba:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94
end_hunk_3
begin_hunk_4_@_ZN2cv8pyrDown_INS_7FltCastIdLi8EEEEEvRKNS_3MatERS3_i:bb.a

bb.s:                                             ; preds = %bb.q
  %i.ay = icmp eq i32 %i.ak, 0
  %i.az = zext i1 %i.ay to i32
  br label %_ZNK2cv8MatShapeclEv.exit82

_ZNK2cv8MatShapeclEv.exit82:                      ; preds = %bb.r, %bb.s
  %i.ba = phi i32 [ %i.ax, %bb.r ], [ %i.az, %bb.s ] ; 3 uses
  %i.bb = icmp eq i32 %i.ak, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp sgt i32 %i.ak, -1
  %i.bf = zext i1 %i.be to i32
  %i.bg = select i1 %i.bb, i32 %i.bd, i32 %i.bf   ; 2 uses
  %i.bh = load i32, ptr %0, align 8, !tbaa !26
  %i.bi = lshr i32 %i.bh, 5                       ; 8 uses
  %i.bj = and i32 %i.bi, 127                      ; 9 uses
  %i.bk = add nuw nsw i32 %i.bj, 1                ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.bl = mul nsw i32 %i.bk, %i.ba                ; 7 uses
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i = icmp ugt i32 %i.bl, 264
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !35
  br i1 %.not.i.i, label %bb.t, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.t:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit82
  %i.bp = icmp slt i32 %i.bl, 0
  %i.bq = shl nuw nsw i64 %i.bm, 2
  %i.br = select i1 %i.bp, i64 -1, i64 %i.bq
  %i.bs = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.br) #18 ; 2 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %_ZNK2cv8MatShapeclEv.exit82, %bb.t
  %i.bt = phi ptr [ %i.bn, %_ZNK2cv8MatShapeclEv.exit82 ], [ %i.bs, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.bu = mul nuw nsw i32 %i.bk, 7
  %i.bv = zext nneg i32 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.bw, ptr %10, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not.i.i83 = icmp samesign ugt i32 %i.bj, 36
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !35
  br i1 %.not.i.i83, label %bb.u, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84

bb.u:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.by = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %bb.v unwind label %bb.y

_ZN2cv10AutoBufferIiLm264EEC2Em.exit84:           ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ca, ptr %11, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cb, align 8, !tbaa !35
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

bb.v:                                             ; preds = %bb.u
  store ptr %i.bz, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.cc, ptr %11, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.cd, align 8, !tbaa !35
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #18
          to label %.noexc86 unwind label %bb.z   ; 2 uses

.noexc86:                                         ; preds = %bb.v
  store ptr %i.ce, ptr %11, align 8, !tbaa !34
  %.pre = load ptr, ptr %9, align 8, !tbaa !34
  %.pre130 = load ptr, ptr %10, align 8, !tbaa !34
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87

_ZN2cv10AutoBufferIiLm264EEC2Em.exit87:           ; preds = %.noexc86, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84
  %i.cf = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.ce, %.noexc86 ] ; 30 uses
  %i.cg = phi ptr [ %i.bw, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre130, %.noexc86 ] ; 30 uses
  %i.ch = phi ptr [ %i.bt, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %.pre, %.noexc86 ] ; 4 uses
  %i.ci = phi ptr [ %i.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit84 ], [ %i.cc, %.noexc86 ] ; 2 uses
  %i.cj = ptrtoaddr ptr %i.cf to i64              ; 7 uses
  %i.ck = ptrtoaddr ptr %i.cg to i64              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !36
  %i.cl = icmp sgt i32 %i.ac, 0
  %i.cm = icmp sgt i32 %i.ai, 0
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  %i.cn = shl nsw i32 %i.ba, 1
  %reass.sub = sub i32 %i.cn, %i.ac
  %i.co = add i32 %reass.sub, 2
  %i.cp = icmp ult i32 %i.co, 5
  br i1 %i.cp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cq = shl nsw i32 %i.bg, 1
  %reass.sub119 = sub i32 %i.cq, %i.ai
  %i.cr = add i32 %reass.sub119, 2
  %i.cs = icmp ult i32 %i.cr, 5
  br i1 %i.cs, label %bb.af, label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit103

bb.z:                                             ; preds = %bb.v
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit100

bb.aa:                                            ; preds = %bb.x, %bb.w, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8pyrDown_INS_9FixPtCastIhLi8EEEEEvRKNS_3MatERS3_i, ptr noundef nonnull @.str.1, i32 noundef 894) #15
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ae:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %12, align 8, !tbaa !13   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ae
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.cw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bc

bb.af:                                            ; preds = %bb.x
  %i.dc = add nsw i32 %i.ac, -3
  %i.dd = sdiv i32 %i.dc, 2
  %i.de = add nsw i32 %i.dd, 1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.de)
  %i.df = shl nsw i32 %.sroa.speculated, 1        ; 7 uses
  %i.dg = zext nneg i32 %i.bk to i64              ; 30 uses
  %i.dh = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ag unwind label %bb.au

.lr.ph:                                           ; preds = %.preheader
  %i.di = shl nuw nsw i32 %i.bk, 1                ; 3 uses
  %wide.trip.count128 = zext nneg i32 %i.bl to i64 ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count128, 1
  %i.dj = icmp eq i32 %i.bl, 1
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count128, 2147483646
  br label %bb.av

bb.ag:                                            ; preds = %bb.af
  %i.dk = add i32 %i.df, -2
  %i.dl = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.dk, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ah unwind label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %i.dm = mul nsw i32 %i.dh, %i.bk                ; 4 uses
  %i.dn = mul nsw i32 %i.dl, %i.bk                ; 4 uses
  %min.iters.check = icmp samesign ult i32 %i.bj, 7
  %i.do = sub i64 %i.ck, %i.cj
  %diff.check = icmp ugt i64 %i.do, -32
  %or.cond304 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond304, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ah
  %n.vec = and i64 %i.dg, 248                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert150 = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat151 = shufflevector <4 x i32> %broadcast.splatinsert150, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  %invariant.op328 = add <4 x i32> splat (i32 4), %broadcast.splat151
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next154, %vector.body ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.dq = add <4 x i32> %broadcast.splat, %vec.ind152
  %.reass = add <4 x i32> %vec.ind152, %invariant.op
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x i32> %i.dq, ptr %i.dp, align 4, !tbaa !19
  store <4 x i32> %.reass, ptr %i.dr, align 4, !tbaa !19
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.dt = add <4 x i32> %broadcast.splat151, %vec.ind152
  %.reass329 = add <4 x i32> %vec.ind152, %invariant.op328
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x i32> %i.dt, ptr %i.ds, align 4, !tbaa !19
  store <4 x i32> %.reass329, ptr %i.du, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next154 = add <4 x i32> %vec.ind152, splat (i32 8)
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br i1 %cmp.n, label %.loopexit303, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ah, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.ah ], [ %n.vec, %middle.block ] ; 7 uses
  %i.dw = and i32 %i.bi, 127
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = and i64 %i.dx, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.ph
  %i.ea = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.eb = add i32 %i.dm, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !19
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.ph
  %i.ed = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.ee = add i32 %i.dn, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !19
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ef = icmp eq i64 %indvars.iv.ph, %i.dx
  br i1 %i.ef, label %.loopexit303, label %scalar.ph

.loopexit303:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ai unwind label %bb.au

bb.ai:                                            ; preds = %.loopexit303
  %i.eh = add i32 %i.df, -1
  %i.ei = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.eh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.ej = mul nsw i32 %i.eg, %i.bk                ; 4 uses
  %i.ek = mul nsw i32 %i.ei, %i.bk                ; 4 uses
  %min.iters.check158 = icmp samesign ult i32 %i.bj, 7
  %i.el = sub i64 %i.ck, %i.cj
  %diff.check160 = icmp ugt i64 %i.el, -32
  %or.cond305 = select i1 %min.iters.check158, i1 true, i1 %diff.check160
  br i1 %or.cond305, label %scalar.ph157.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %bb.aj
  %n.vec162 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op330 = add <4 x i32> splat (i32 4), %broadcast.splat164
  %invariant.op332 = add <4 x i32> splat (i32 4), %broadcast.splat166
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph161
  %index168 = phi i64 [ 0, %vector.ph161 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %vec.ind170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph161 ], [ %vec.ind.next175, %vector.body167 ] ; 5 uses
  %i.em = add nuw nsw i64 %index168, %i.dg        ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.em ; 2 uses
  %i.eo = add <4 x i32> %broadcast.splat164, %vec.ind170
  %.reass331 = add <4 x i32> %vec.ind170, %invariant.op330
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x i32> %i.eo, ptr %i.en, align 4, !tbaa !19
  store <4 x i32> %.reass331, ptr %i.ep, align 4, !tbaa !19
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.em ; 2 uses
  %i.er = add <4 x i32> %broadcast.splat166, %vec.ind170
  %.reass333 = add <4 x i32> %vec.ind170, %invariant.op332
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %i.er, ptr %i.eq, align 4, !tbaa !19
  store <4 x i32> %.reass333, ptr %i.es, align 4, !tbaa !19
  %index.next173 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next175 = add <4 x i32> %vec.ind170, splat (i32 8)
  %i.et = icmp eq i64 %index.next173, %n.vec162
  br i1 %i.et, label %middle.block176, label %vector.body167, !llvm.loop !174

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %n.vec162, %i.dg
  br i1 %cmp.n177, label %.loopexit302, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %bb.aj, %middle.block176
  %indvars.iv.1.ph = phi i64 [ 0, %bb.aj ], [ %n.vec162, %middle.block176 ] ; 6 uses
  %i.eu = and i32 %i.bi, 127
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %lcmp.mod314.not.not = icmp eq i64 %i.ew, 0
  br i1 %lcmp.mod314.not.not, label %scalar.ph157.prol, label %scalar.ph157.prol.loopexit

scalar.ph157.prol:                                ; preds = %scalar.ph157.preheader
  %i.ex = add nuw nsw i64 %indvars.iv.1.ph, %i.dg ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ex
  %i.ez = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fa = add i32 %i.ej, %i.ez
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ex
  %i.fc = trunc nuw nsw i64 %indvars.iv.1.ph to i32
  %i.fd = add i32 %i.ek, %i.fc
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !19
  %indvars.iv.next.1.prol = or disjoint i64 %indvars.iv.1.ph, 1
  br label %scalar.ph157.prol.loopexit

scalar.ph157.prol.loopexit:                       ; preds = %scalar.ph157.prol, %scalar.ph157.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %scalar.ph157.preheader ], [ %indvars.iv.next.1.prol, %scalar.ph157.prol ]
  %i.fe = icmp eq i64 %indvars.iv.1.ph, %i.ev
  br i1 %i.fe, label %.loopexit302, label %scalar.ph157

scalar.ph157:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %scalar.ph157 ], [ %indvars.iv.1.unr, %scalar.ph157.prol.loopexit ] ; 5 uses
  %i.ff = add nuw nsw i64 %indvars.iv.1, %i.dg    ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ff
  %i.fh = trunc i64 %indvars.iv.1 to i32
  %i.fi = add i32 %i.ej, %i.fh
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !19
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ff
  %i.fk = trunc i64 %indvars.iv.1 to i32
  %i.fl = add i32 %i.ek, %i.fk
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.fm = add nuw nsw i64 %indvars.iv.next.1, %i.dg ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fm
  %i.fo = trunc i64 %indvars.iv.next.1 to i32
  %i.fp = add i32 %i.ej, %i.fo
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fm
  %i.fr = trunc i64 %indvars.iv.next.1 to i32
  %i.fs = add i32 %i.ek, %i.fr
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !19
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, %i.dg
  br i1 %exitcond.1.not.1, label %.loopexit302, label %scalar.ph157, !llvm.loop !175

.loopexit302:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157, %middle.block176
  %i.ft = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 0, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %.loopexit302
  %i.fu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.df, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.fv = mul nsw i32 %i.ft, %i.bk                ; 4 uses
  %i.fw = mul nsw i32 %i.fu, %i.bk                ; 4 uses
  %i.fx = shl nuw nsw i64 %i.dg, 1                ; 4 uses
  %min.iters.check182 = icmp samesign ult i32 %i.bj, 7
  %i.fy = sub i64 %i.ck, %i.cj
  %diff.check184 = icmp ugt i64 %i.fy, -32
  %or.cond306 = select i1 %min.iters.check182, i1 true, i1 %diff.check184
  br i1 %or.cond306, label %scalar.ph181.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %bb.al
  %n.vec186 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op334 = add <4 x i32> splat (i32 4), %broadcast.splat188
  %invariant.op336 = add <4 x i32> splat (i32 4), %broadcast.splat190
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph185
  %index192 = phi i64 [ 0, %vector.ph185 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %vec.ind194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph185 ], [ %vec.ind.next199, %vector.body191 ] ; 5 uses
  %i.fz = add nuw nsw i64 %index192, %i.fx        ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.fz ; 2 uses
  %i.gb = add <4 x i32> %broadcast.splat188, %vec.ind194
  %.reass335 = add <4 x i32> %vec.ind194, %invariant.op334
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %i.gb, ptr %i.ga, align 4, !tbaa !19
  store <4 x i32> %.reass335, ptr %i.gc, align 4, !tbaa !19
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.fz ; 2 uses
  %i.ge = add <4 x i32> %broadcast.splat190, %vec.ind194
  %.reass337 = add <4 x i32> %vec.ind194, %invariant.op336
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <4 x i32> %i.ge, ptr %i.gd, align 4, !tbaa !19
  store <4 x i32> %.reass337, ptr %i.gf, align 4, !tbaa !19
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %vec.ind.next199 = add <4 x i32> %vec.ind194, splat (i32 8)
  %i.gg = icmp eq i64 %index.next197, %n.vec186
  br i1 %i.gg, label %middle.block200, label %vector.body191, !llvm.loop !176

middle.block200:                                  ; preds = %vector.body191
  %cmp.n201 = icmp eq i64 %n.vec186, %i.dg
  br i1 %cmp.n201, label %.loopexit301, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %bb.al, %middle.block200
  %indvars.iv.2.ph = phi i64 [ 0, %bb.al ], [ %n.vec186, %middle.block200 ] ; 6 uses
  %i.gh = and i32 %i.bi, 127
  %i.gi = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %lcmp.mod316.not.not = icmp eq i64 %i.gj, 0
  br i1 %lcmp.mod316.not.not, label %scalar.ph181.prol, label %scalar.ph181.prol.loopexit

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader
  %i.gk = add nuw nsw i64 %indvars.iv.2.ph, %i.fx ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gk
  %i.gm = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gn = add i32 %i.fv, %i.gm
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !19
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gk
  %i.gp = trunc nuw nsw i64 %indvars.iv.2.ph to i32
  %i.gq = add i32 %i.fw, %i.gp
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !19
  %indvars.iv.next.2.prol = or disjoint i64 %indvars.iv.2.ph, 1
  br label %scalar.ph181.prol.loopexit

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv.2.unr = phi i64 [ %indvars.iv.2.ph, %scalar.ph181.preheader ], [ %indvars.iv.next.2.prol, %scalar.ph181.prol ]
  %i.gr = icmp eq i64 %indvars.iv.2.ph, %i.gi
  br i1 %i.gr, label %.loopexit301, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %scalar.ph181 ], [ %indvars.iv.2.unr, %scalar.ph181.prol.loopexit ] ; 5 uses
  %i.gs = add nuw nsw i64 %indvars.iv.2, %i.fx    ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gs
  %i.gu = trunc i64 %indvars.iv.2 to i32
  %i.gv = add i32 %i.fv, %i.gu
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !19
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gs
  %i.gx = trunc i64 %indvars.iv.2 to i32
  %i.gy = add i32 %i.fw, %i.gx
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 3 uses
  %i.gz = add nuw nsw i64 %indvars.iv.next.2, %i.fx ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gz
  %i.hb = trunc i64 %indvars.iv.next.2 to i32
  %i.hc = add i32 %i.fv, %i.hb
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !19
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.gz
  %i.he = trunc i64 %indvars.iv.next.2 to i32
  %i.hf = add i32 %i.fw, %i.he
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !19
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, %i.dg
  br i1 %exitcond.2.not.1, label %.loopexit301, label %scalar.ph181, !llvm.loop !177

.loopexit301:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block200
  %i.hg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 1, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %.loopexit301
  %i.hh = or disjoint i32 %i.df, 1
  %i.hi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.hh, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.hj = mul nsw i32 %i.hg, %i.bk                ; 4 uses
  %i.hk = mul nsw i32 %i.hi, %i.bk                ; 4 uses
  %i.hl = mul nuw nsw i64 %i.dg, 3                ; 4 uses
  %min.iters.check206 = icmp samesign ult i32 %i.bj, 7
  %i.hm = sub i64 %i.ck, %i.cj
  %diff.check208 = icmp ugt i64 %i.hm, -32
  %or.cond307 = select i1 %min.iters.check206, i1 true, i1 %diff.check208
  br i1 %or.cond307, label %scalar.ph205.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %bb.an
  %n.vec210 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert213 = insertelement <4 x i32> poison, i32 %i.hk, i64 0
  %broadcast.splat214 = shufflevector <4 x i32> %broadcast.splatinsert213, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op338 = add <4 x i32> splat (i32 4), %broadcast.splat212
  %invariant.op340 = add <4 x i32> splat (i32 4), %broadcast.splat214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph209
  %index216 = phi i64 [ 0, %vector.ph209 ], [ %index.next221, %vector.body215 ] ; 2 uses
  %vec.ind218 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph209 ], [ %vec.ind.next223, %vector.body215 ] ; 5 uses
  %i.hn = add nuw nsw i64 %index216, %i.hl        ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hn ; 2 uses
  %i.hp = add <4 x i32> %broadcast.splat212, %vec.ind218
  %.reass339 = add <4 x i32> %vec.ind218, %invariant.op338
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %i.hp, ptr %i.ho, align 4, !tbaa !19
  store <4 x i32> %.reass339, ptr %i.hq, align 4, !tbaa !19
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hn ; 2 uses
  %i.hs = add <4 x i32> %broadcast.splat214, %vec.ind218
  %.reass341 = add <4 x i32> %vec.ind218, %invariant.op340
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <4 x i32> %i.hs, ptr %i.hr, align 4, !tbaa !19
  store <4 x i32> %.reass341, ptr %i.ht, align 4, !tbaa !19
  %index.next221 = add nuw i64 %index216, 8       ; 2 uses
  %vec.ind.next223 = add <4 x i32> %vec.ind218, splat (i32 8)
  %i.hu = icmp eq i64 %index.next221, %n.vec210
  br i1 %i.hu, label %middle.block224, label %vector.body215, !llvm.loop !178

middle.block224:                                  ; preds = %vector.body215
  %cmp.n225 = icmp eq i64 %n.vec210, %i.dg
  br i1 %cmp.n225, label %.loopexit300, label %scalar.ph205.preheader

scalar.ph205.preheader:                           ; preds = %bb.an, %middle.block224
  %indvars.iv.3.ph = phi i64 [ 0, %bb.an ], [ %n.vec210, %middle.block224 ] ; 6 uses
  %i.hv = and i32 %i.bi, 127
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = and i64 %i.hw, 1
  %lcmp.mod318.not.not = icmp eq i64 %i.hx, 0
  br i1 %lcmp.mod318.not.not, label %scalar.ph205.prol, label %scalar.ph205.prol.loopexit

scalar.ph205.prol:                                ; preds = %scalar.ph205.preheader
  %i.hy = add nuw nsw i64 %indvars.iv.3.ph, %i.hl ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ib = add i32 %i.hj, %i.ia
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !19
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hy
  %i.id = trunc nuw nsw i64 %indvars.iv.3.ph to i32
  %i.ie = add i32 %i.hk, %i.id
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !19
  %indvars.iv.next.3.prol = or disjoint i64 %indvars.iv.3.ph, 1
  br label %scalar.ph205.prol.loopexit

scalar.ph205.prol.loopexit:                       ; preds = %scalar.ph205.prol, %scalar.ph205.preheader
  %indvars.iv.3.unr = phi i64 [ %indvars.iv.3.ph, %scalar.ph205.preheader ], [ %indvars.iv.next.3.prol, %scalar.ph205.prol ]
  %i.if = icmp eq i64 %indvars.iv.3.ph, %i.hw
  br i1 %i.if, label %.loopexit300, label %scalar.ph205

scalar.ph205:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.1, %scalar.ph205 ], [ %indvars.iv.3.unr, %scalar.ph205.prol.loopexit ] ; 5 uses
  %i.ig = add nuw nsw i64 %indvars.iv.3, %i.hl    ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ig
  %i.ii = trunc i64 %indvars.iv.3 to i32
  %i.ij = add i32 %i.hj, %i.ii
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !19
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ig
  %i.il = trunc i64 %indvars.iv.3 to i32
  %i.im = add i32 %i.hk, %i.il
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 3 uses
  %i.in = add nuw nsw i64 %indvars.iv.next.3, %i.hl ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.in
  %i.ip = trunc i64 %indvars.iv.next.3 to i32
  %i.iq = add i32 %i.hj, %i.ip
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !19
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.in
  %i.is = trunc i64 %indvars.iv.next.3 to i32
  %i.it = add i32 %i.hk, %i.is
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !19
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2 ; 2 uses
  %exitcond.3.not.1 = icmp eq i64 %indvars.iv.next.3.1, %i.dg
  br i1 %exitcond.3.not.1, label %.loopexit300, label %scalar.ph205, !llvm.loop !179

.loopexit300:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205, %middle.block224
  %i.iu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 2, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %.loopexit300
  %i.iv = add i32 %i.df, 2
  %i.iw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.iv, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ix = mul nsw i32 %i.iu, %i.bk                ; 4 uses
  %i.iy = mul nsw i32 %i.iw, %i.bk                ; 4 uses
  %i.iz = shl nuw nsw i64 %i.dg, 2                ; 4 uses
  %min.iters.check230 = icmp samesign ult i32 %i.bj, 7
  %i.ja = sub i64 %i.ck, %i.cj
  %diff.check232 = icmp ugt i64 %i.ja, -32
  %or.cond308 = select i1 %min.iters.check230, i1 true, i1 %diff.check232
  br i1 %or.cond308, label %scalar.ph229.preheader, label %vector.ph233

vector.ph233:                                     ; preds = %bb.ap
  %n.vec234 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert235 = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %broadcast.splat236 = shufflevector <4 x i32> %broadcast.splatinsert235, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op342 = add <4 x i32> splat (i32 4), %broadcast.splat236
  %invariant.op344 = add <4 x i32> splat (i32 4), %broadcast.splat238
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph233
  %index240 = phi i64 [ 0, %vector.ph233 ], [ %index.next245, %vector.body239 ] ; 2 uses
  %vec.ind242 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph233 ], [ %vec.ind.next247, %vector.body239 ] ; 5 uses
  %i.jb = add nuw nsw i64 %index240, %i.iz        ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jb ; 2 uses
  %i.jd = add <4 x i32> %broadcast.splat236, %vec.ind242
  %.reass343 = add <4 x i32> %vec.ind242, %invariant.op342
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <4 x i32> %i.jd, ptr %i.jc, align 4, !tbaa !19
  store <4 x i32> %.reass343, ptr %i.je, align 4, !tbaa !19
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jb ; 2 uses
  %i.jg = add <4 x i32> %broadcast.splat238, %vec.ind242
  %.reass345 = add <4 x i32> %vec.ind242, %invariant.op344
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> %i.jg, ptr %i.jf, align 4, !tbaa !19
  store <4 x i32> %.reass345, ptr %i.jh, align 4, !tbaa !19
  %index.next245 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next247 = add <4 x i32> %vec.ind242, splat (i32 8)
  %i.ji = icmp eq i64 %index.next245, %n.vec234
  br i1 %i.ji, label %middle.block248, label %vector.body239, !llvm.loop !180

middle.block248:                                  ; preds = %vector.body239
  %cmp.n249 = icmp eq i64 %n.vec234, %i.dg
  br i1 %cmp.n249, label %.loopexit299, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %bb.ap, %middle.block248
  %indvars.iv.4.ph = phi i64 [ 0, %bb.ap ], [ %n.vec234, %middle.block248 ] ; 6 uses
  %i.jj = and i32 %i.bi, 127
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jl = and i64 %i.jk, 1
  %lcmp.mod320.not.not = icmp eq i64 %i.jl, 0
  br i1 %lcmp.mod320.not.not, label %scalar.ph229.prol, label %scalar.ph229.prol.loopexit

scalar.ph229.prol:                                ; preds = %scalar.ph229.preheader
  %i.jm = add nuw nsw i64 %indvars.iv.4.ph, %i.iz ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.jm
  %i.jo = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.jp = add i32 %i.ix, %i.jo
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !19
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.jm
  %i.jr = trunc nuw nsw i64 %indvars.iv.4.ph to i32
  %i.js = add i32 %i.iy, %i.jr
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !19
  %indvars.iv.next.4.prol = or disjoint i64 %indvars.iv.4.ph, 1
  br label %scalar.ph229.prol.loopexit

scalar.ph229.prol.loopexit:                       ; preds = %scalar.ph229.prol, %scalar.ph229.preheader
  %indvars.iv.4.unr = phi i64 [ %indvars.iv.4.ph, %scalar.ph229.preheader ], [ %indvars.iv.next.4.prol, %scalar.ph229.prol ]
  %i.jt = icmp eq i64 %indvars.iv.4.ph, %i.jk
  br i1 %i.jt, label %.loopexit299, label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4.1, %scalar.ph229 ], [ %indvars.iv.4.unr, %scalar.ph229.prol.loopexit ] ; 5 uses
  %i.ju = add nuw nsw i64 %indvars.iv.4, %i.iz    ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ju
  %i.jw = trunc i64 %indvars.iv.4 to i32
  %i.jx = add i32 %i.ix, %i.jw
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !19
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ju
  %i.jz = trunc i64 %indvars.iv.4 to i32
  %i.ka = add i32 %i.iy, %i.jz
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !19
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 3 uses
  %i.kb = add nuw nsw i64 %indvars.iv.next.4, %i.iz ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kb
  %i.kd = trunc i64 %indvars.iv.next.4 to i32
  %i.ke = add i32 %i.ix, %i.kd
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !19
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kb
  %i.kg = trunc i64 %indvars.iv.next.4 to i32
  %i.kh = add i32 %i.iy, %i.kg
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !19
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2 ; 2 uses
  %exitcond.4.not.1 = icmp eq i64 %indvars.iv.next.4.1, %i.dg
  br i1 %exitcond.4.not.1, label %.loopexit299, label %scalar.ph229, !llvm.loop !181

.loopexit299:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229, %middle.block248
  %i.ki = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 3, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %.loopexit299
  %i.kj = add i32 %i.df, 3
  %i.kk = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.kj, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.kl = mul nsw i32 %i.ki, %i.bk                ; 4 uses
  %i.km = mul nsw i32 %i.kk, %i.bk                ; 4 uses
  %i.kn = mul nuw nsw i64 %i.dg, 5                ; 4 uses
  %min.iters.check254 = icmp samesign ult i32 %i.bj, 7
  %i.ko = sub i64 %i.ck, %i.cj
  %diff.check256 = icmp ugt i64 %i.ko, -32
  %or.cond309 = select i1 %min.iters.check254, i1 true, i1 %diff.check256
  br i1 %or.cond309, label %scalar.ph253.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %bb.ar
  %n.vec258 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert259 = insertelement <4 x i32> poison, i32 %i.kl, i64 0
  %broadcast.splat260 = shufflevector <4 x i32> %broadcast.splatinsert259, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert261 = insertelement <4 x i32> poison, i32 %i.km, i64 0
  %broadcast.splat262 = shufflevector <4 x i32> %broadcast.splatinsert261, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op346 = add <4 x i32> splat (i32 4), %broadcast.splat260
  %invariant.op348 = add <4 x i32> splat (i32 4), %broadcast.splat262
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph257
  %index264 = phi i64 [ 0, %vector.ph257 ], [ %index.next269, %vector.body263 ] ; 2 uses
  %vec.ind266 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph257 ], [ %vec.ind.next271, %vector.body263 ] ; 5 uses
  %i.kp = add nuw nsw i64 %index264, %i.kn        ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.kp ; 2 uses
  %i.kr = add <4 x i32> %broadcast.splat260, %vec.ind266
  %.reass347 = add <4 x i32> %vec.ind266, %invariant.op346
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store <4 x i32> %i.kr, ptr %i.kq, align 4, !tbaa !19
  store <4 x i32> %.reass347, ptr %i.ks, align 4, !tbaa !19
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kp ; 2 uses
  %i.ku = add <4 x i32> %broadcast.splat262, %vec.ind266
  %.reass349 = add <4 x i32> %vec.ind266, %invariant.op348
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x i32> %i.ku, ptr %i.kt, align 4, !tbaa !19
  store <4 x i32> %.reass349, ptr %i.kv, align 4, !tbaa !19
  %index.next269 = add nuw i64 %index264, 8       ; 2 uses
  %vec.ind.next271 = add <4 x i32> %vec.ind266, splat (i32 8)
  %i.kw = icmp eq i64 %index.next269, %n.vec258
  br i1 %i.kw, label %middle.block272, label %vector.body263, !llvm.loop !182

middle.block272:                                  ; preds = %vector.body263
  %cmp.n273 = icmp eq i64 %n.vec258, %i.dg
  br i1 %cmp.n273, label %.loopexit, label %scalar.ph253.preheader

scalar.ph253.preheader:                           ; preds = %bb.ar, %middle.block272
  %indvars.iv.5.ph = phi i64 [ 0, %bb.ar ], [ %n.vec258, %middle.block272 ] ; 6 uses
  %i.kx = and i32 %i.bi, 127
  %i.ky = zext nneg i32 %i.kx to i64              ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %lcmp.mod322.not.not = icmp eq i64 %i.kz, 0
  br i1 %lcmp.mod322.not.not, label %scalar.ph253.prol, label %scalar.ph253.prol.loopexit

scalar.ph253.prol:                                ; preds = %scalar.ph253.preheader
  %i.la = add nuw nsw i64 %indvars.iv.5.ph, %i.kn ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.la
  %i.lc = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.ld = add i32 %i.kl, %i.lc
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !19
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.la
  %i.lf = trunc nuw nsw i64 %indvars.iv.5.ph to i32
  %i.lg = add i32 %i.km, %i.lf
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !19
  %indvars.iv.next.5.prol = or disjoint i64 %indvars.iv.5.ph, 1
  br label %scalar.ph253.prol.loopexit

scalar.ph253.prol.loopexit:                       ; preds = %scalar.ph253.prol, %scalar.ph253.preheader
  %indvars.iv.5.unr = phi i64 [ %indvars.iv.5.ph, %scalar.ph253.preheader ], [ %indvars.iv.next.5.prol, %scalar.ph253.prol ]
  %i.lh = icmp eq i64 %indvars.iv.5.ph, %i.ky
  br i1 %i.lh, label %.loopexit, label %scalar.ph253

scalar.ph253:                                     ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253
  %indvars.iv.5 = phi i64 [ %indvars.iv.next.5.1, %scalar.ph253 ], [ %indvars.iv.5.unr, %scalar.ph253.prol.loopexit ] ; 5 uses
  %i.li = add nuw nsw i64 %indvars.iv.5, %i.kn    ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.li
  %i.lk = trunc i64 %indvars.iv.5 to i32
  %i.ll = add i32 %i.kl, %i.lk
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !19
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.li
  %i.ln = trunc i64 %indvars.iv.5 to i32
  %i.lo = add i32 %i.km, %i.ln
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !19
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1 ; 3 uses
  %i.lp = add nuw nsw i64 %indvars.iv.next.5, %i.kn ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.lp
  %i.lr = trunc i64 %indvars.iv.next.5 to i32
  %i.ls = add i32 %i.kl, %i.lr
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !19
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.lp
  %i.lu = trunc i64 %indvars.iv.next.5 to i32
  %i.lv = add i32 %i.km, %i.lu
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !19
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2 ; 2 uses
  %exitcond.5.not.1 = icmp eq i64 %indvars.iv.next.5.1, %i.dg
  br i1 %exitcond.5.not.1, label %.loopexit, label %scalar.ph253, !llvm.loop !183

.loopexit:                                        ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253, %middle.block272
  %i.lw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef 4, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %.loopexit
  %i.lx = add i32 %i.df, 4
  %i.ly = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.lx, i32 noundef %i.ac, i32 noundef %2)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lz = mul nsw i32 %i.lw, %i.bk                ; 4 uses
  %i.ma = mul nsw i32 %i.ly, %i.bk                ; 4 uses
  %i.mb = mul nuw nsw i64 %i.dg, 6                ; 4 uses
  %min.iters.check278 = icmp samesign ult i32 %i.bj, 7
  %i.mc = sub i64 %i.ck, %i.cj
  %diff.check280 = icmp ugt i64 %i.mc, -32
  %or.cond310 = select i1 %min.iters.check278, i1 true, i1 %diff.check280
  br i1 %or.cond310, label %scalar.ph277.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %bb.at
  %n.vec282 = and i64 %i.dg, 248                  ; 3 uses
  %broadcast.splatinsert283 = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %broadcast.splat284 = shufflevector <4 x i32> %broadcast.splatinsert283, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert285 = insertelement <4 x i32> poison, i32 %i.ma, i64 0
  %broadcast.splat286 = shufflevector <4 x i32> %broadcast.splatinsert285, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op350 = add <4 x i32> splat (i32 4), %broadcast.splat284
  %invariant.op352 = add <4 x i32> splat (i32 4), %broadcast.splat286
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph281
  %index288 = phi i64 [ 0, %vector.ph281 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %vec.ind290 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph281 ], [ %vec.ind.next295, %vector.body287 ] ; 5 uses
  %i.md = add nuw nsw i64 %index288, %i.mb        ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.md ; 2 uses
  %i.mf = add <4 x i32> %broadcast.splat284, %vec.ind290
  %.reass351 = add <4 x i32> %vec.ind290, %invariant.op350
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <4 x i32> %i.mf, ptr %i.me, align 4, !tbaa !19
  store <4 x i32> %.reass351, ptr %i.mg, align 4, !tbaa !19
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.md ; 2 uses
  %i.mi = add <4 x i32> %broadcast.splat286, %vec.ind290
  %.reass353 = add <4 x i32> %vec.ind290, %invariant.op352
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <4 x i32> %i.mi, ptr %i.mh, align 4, !tbaa !19
  store <4 x i32> %.reass353, ptr %i.mj, align 4, !tbaa !19
  %index.next293 = add nuw i64 %index288, 8       ; 2 uses
  %vec.ind.next295 = add <4 x i32> %vec.ind290, splat (i32 8)
  %i.mk = icmp eq i64 %index.next293, %n.vec282
  br i1 %i.mk, label %middle.block296, label %vector.body287, !llvm.loop !184

middle.block296:                                  ; preds = %vector.body287
  %cmp.n297 = icmp eq i64 %n.vec282, %i.dg
  br i1 %cmp.n297, label %.preheader, label %scalar.ph277.preheader

scalar.ph277.preheader:                           ; preds = %bb.at, %middle.block296
  %indvars.iv.6.ph = phi i64 [ 0, %bb.at ], [ %n.vec282, %middle.block296 ] ; 6 uses
  %i.ml = and i32 %i.bi, 127
  %i.mm = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.mn = and i64 %i.mm, 1
  %lcmp.mod324.not.not = icmp eq i64 %i.mn, 0
  br i1 %lcmp.mod324.not.not, label %scalar.ph277.prol, label %scalar.ph277.prol.loopexit

scalar.ph277.prol:                                ; preds = %scalar.ph277.preheader
  %i.mo = add nuw nsw i64 %indvars.iv.6.ph, %i.mb ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mo
  %i.mq = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mr = add i32 %i.lz, %i.mq
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !19
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mo
  %i.mt = trunc nuw nsw i64 %indvars.iv.6.ph to i32
  %i.mu = add i32 %i.ma, %i.mt
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !19
  %indvars.iv.next.6.prol = or disjoint i64 %indvars.iv.6.ph, 1
  br label %scalar.ph277.prol.loopexit

scalar.ph277.prol.loopexit:                       ; preds = %scalar.ph277.prol, %scalar.ph277.preheader
  %indvars.iv.6.unr = phi i64 [ %indvars.iv.6.ph, %scalar.ph277.preheader ], [ %indvars.iv.next.6.prol, %scalar.ph277.prol ]
  %i.mv = icmp eq i64 %indvars.iv.6.ph, %i.mm
  br i1 %i.mv, label %.preheader, label %scalar.ph277

scalar.ph277:                                     ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277
  %indvars.iv.6 = phi i64 [ %indvars.iv.next.6.1, %scalar.ph277 ], [ %indvars.iv.6.unr, %scalar.ph277.prol.loopexit ] ; 5 uses
  %i.mw = add nuw nsw i64 %indvars.iv.6, %i.mb    ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mw
  %i.my = trunc i64 %indvars.iv.6 to i32
  %i.mz = add i32 %i.lz, %i.my
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !19
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.mw
  %i.nb = trunc i64 %indvars.iv.6 to i32
  %i.nc = add i32 %i.ma, %i.nb
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !19
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1 ; 3 uses
  %i.nd = add nuw nsw i64 %indvars.iv.next.6, %i.mb ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.nd
  %i.nf = trunc i64 %indvars.iv.next.6 to i32
  %i.ng = add i32 %i.lz, %i.nf
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !19
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.nd
  %i.ni = trunc i64 %indvars.iv.next.6 to i32
  %i.nj = add i32 %i.ma, %i.ni
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !19
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2 ; 2 uses
  %exitcond.6.not.1 = icmp eq i64 %indvars.iv.next.6.1, %i.dg
  br i1 %exitcond.6.not.1, label %.preheader, label %scalar.ph277, !llvm.loop !185

.preheader:                                       ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277, %middle.block296
  %i.nk = icmp sgt i32 %i.bl, 0
  br i1 %i.nk, label %.lr.ph, label %._crit_edge

bb.au:                                            ; preds = %bb.as, %.loopexit, %bb.aq, %.loopexit299, %bb.ao, %.loopexit300, %bb.am, %.loopexit301, %bb.ak, %.loopexit302, %bb.ai, %.loopexit303, %bb.af, %bb.ag
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1312, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  %i.nn = trunc i64 %indvars.iv to i32
  %i.no = add i32 %i.dm, %i.nn
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !19
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.nq = trunc i64 %indvars.iv to i32
  %i.nr = add i32 %i.dn, %i.nq
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next
  %i.nt = trunc i64 %indvars.iv.next to i32
  %i.nu = add i32 %i.dm, %i.nt
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !19
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next
  %i.nw = trunc i64 %indvars.iv.next to i32
  %i.nx = add i32 %i.dn, %i.nw
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !19
  %indvars.iv.next.1312 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1312, %i.dg
  br i1 %exitcond.not.1, label %.loopexit303, label %scalar.ph, !llvm.loop !186

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.av
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod327 = trunc i32 %i.bl to i1
  call void @llvm.assume(i1 %lcmp.mod327)
  %i.ny = trunc nuw nsw i64 %indvars.iv125.epil.init to i32 ; 2 uses
  %i.nz = udiv i32 %i.ny, %i.bk
  %i.oa = mul i32 %i.di, %i.nz
  %i.ob = urem i32 %i.ny, %i.bk
  %i.oc = add nuw nsw i32 %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125.epil.init
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !tbaa !41
  %i.oe = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.bg, ptr %i.oe, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv14PyrDownInvokerINS_7FltCastIdLi8EEEEE, i64 16), ptr %15, align 8, !tbaa !44
  %i.of = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %0, ptr %i.of, align 8, !tbaa !78
  %i.og = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %1, ptr %i.og, align 8, !tbaa !79
  %i.oh = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i32 %2, ptr %i.oh, align 8, !tbaa !80
  %i.oi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.c, ptr %i.oi, align 8, !tbaa !81
  %i.oj = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.a, ptr %i.oj, align 8, !tbaa !82
  %i.ok = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.b, ptr %i.ok, align 8, !tbaa !83
  %i.ol = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.aw unwind label %bb.bb

bb.av:                                            ; preds = %bb.av, %.lr.ph.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next126.1, %bb.av ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.av ]
  %i.om = trunc nuw nsw i64 %indvars.iv125 to i32 ; 2 uses
  %i.on = udiv i32 %i.om, %i.bk
  %i.oo = mul i32 %i.di, %i.on
  %i.op = urem i32 %i.om, %i.bk
  %i.oq = add nuw nsw i32 %i.oo, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv125
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !19
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.os = trunc nuw nsw i64 %indvars.iv.next126 to i32 ; 2 uses
  %i.ot = udiv i32 %i.os, %i.bk
  %i.ou = mul i32 %i.di, %i.ot
  %i.ov = urem i32 %i.os, %i.bk
  %i.ow = add nuw nsw i32 %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next126
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !19
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.av, !llvm.loop !187

bb.aw:                                            ; preds = %._crit_edge
  %i.oy = sitofp i32 %i.ol to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %i.oy)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.oz = load ptr, ptr %11, align 8, !tbaa !34   ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.oz, %i.ci
  %i.pa = icmp eq ptr %i.oz, null
  %or.cond.i = or i1 %.not.i.i91, %i.pa
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.oz) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.pb = load ptr, ptr %10, align 8, !tbaa !34   ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.pb, %i.bw
  %i.pc = icmp eq ptr %i.pb, null
  %or.cond.i93 = or i1 %.not.i.i92, %i.pc
  br i1 %or.cond.i93, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94, label %bb.az

bb.az:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.pb) #16
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94

_ZN2cv10AutoBufferIiLm264EED2Ev.exit94:           ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.pd = load ptr, ptr %9, align 8, !tbaa !34    ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.pd, %i.bn
  %i.pe = icmp eq ptr %i.pd, null
  %or.cond.i96 = or i1 %.not.i.i95, %i.pe
  br i1 %or.cond.i96, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit97, label %bb.ba

bb.ba:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit94
end_hunk_4
