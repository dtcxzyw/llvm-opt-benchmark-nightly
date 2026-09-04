Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cv15OcvDftBasicImpl4initEiiiiPb:bb.a
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph78.i
  %indvars.iv.i.unr = phi i64 [ %i.bc, %.lr.ph78.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.bl = add nsw i64 %wide.trip.count.i, -1
  %i.bm = icmp eq i64 %i.bl, %i.bc
  br i1 %i.bm, label %.loopexit, label %.lr.ph78.i.new

.lr.ph78.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph78.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph78.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !42
  %i.bp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bq = xor i32 %i.bp, -1
  %i.br = add i32 %i.az, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !42
  store i32 %i.bu, ptr %i.bn, align 4, !tbaa !42
  store i32 %i.bo, ptr %i.bt, align 4, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !42
  %i.bx = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.by = xor i32 %i.bx, -1
  %i.bz = add i32 %i.az, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !42
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !42
  store i32 %i.bw, ptr %i.cb, align 4, !tbaa !42
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph78.i.new, !llvm.loop !0

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph78.i.new, %.loopexit71.i
  store i32 %.5.i, ptr %i.a, align 8, !tbaa !162
  %i.cd = load i32, ptr %i.t, align 4, !tbaa !42
  %i.ce = sext i32 %.5.i to i64
  %i.cf = getelementptr [4 x i8], ptr %i.t, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !42
  %i.ci = icmp eq i32 %i.cd, %i.ch
  br label %bb.k

bb.j:                                             ; preds = %.thread
  %i.cj = and i32 %4, 33
  %or.cond = icmp eq i32 %i.cj, 33
  br i1 %or.cond, label %bb.k, label %bb.z

bb.k:                                             ; preds = %.loopexit, %.thread72, %bb.j
  %i.ck = phi i1 [ false, %bb.j ], [ %i.ci, %.loopexit ], [ true, %.thread72 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.cm = load i32, ptr %i.b, align 4, !tbaa !156
  %i.cn = select i1 %i.d, i32 3, i32 4
  %i.co = shl i32 %i.cm, %i.cn                    ; 2 uses
  %i.cp = sext i32 %i.co to i64                   ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !30
  %.not.i69 = icmp ult i64 %i.cr, %i.cp
  br i1 %.not.i69, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !30
  %.pre = load ptr, ptr %i.cl, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.m:                                             ; preds = %bb.k
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !29 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i, label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = icmp eq ptr %i.cs, null
  br i1 %i.cu, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdaPv(ptr noundef nonnull %i.cs) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i

_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i: ; preds = %bb.p, %bb.m
  %i.cv = phi ptr [ %i.ct, %bb.p ], [ %i.cs, %bb.m ]
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !30
  %i.cw = icmp ugt i32 %i.co, 1032
  br i1 %i.cw, label %bb.q, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.q:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i
  %i.cx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #19 ; 2 uses
  store ptr %i.cx, ptr %i.cl, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit:     ; preds = %bb.l, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i, %bb.q
  %i.cy = phi ptr [ %.pre, %bb.l ], [ %i.cv, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i ], [ %i.cx, %bb.q ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !163
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 4 uses
  %i.db = load i32, ptr %i.b, align 4, !tbaa !156 ; 3 uses
  %i.dc = sext i32 %i.db to i64                   ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !33
  %.not.i70 = icmp ult i64 %i.de, %i.dc
  br i1 %.not.i70, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !33
  %.pre84 = load ptr, ptr %i.da, align 8, !tbaa !32
  br label %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit

bb.s:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !32 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i71, label %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = icmp eq ptr %i.df, null
  br i1 %i.dh, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZdaPv(ptr noundef nonnull %i.df) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr %i.dg, ptr %i.da, align 8, !tbaa !32
  br label %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i

_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i: ; preds = %bb.v, %bb.s
  %i.di = phi ptr [ %i.dg, %bb.v ], [ %i.df, %bb.s ]
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !33
  %i.dj = icmp ugt i32 %i.db, 264
  br i1 %i.dj, label %bb.w, label %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit

bb.w:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i
  %i.dk = icmp slt i32 %i.db, 0
  %i.dl = shl nuw nsw i64 %i.dc, 2
  %i.dm = select i1 %i.dk, i64 -1, i64 %i.dl
  %i.dn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #19 ; 2 uses
  store ptr %i.dn, ptr %i.da, align 8, !tbaa !32
  br label %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit

_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit:      ; preds = %bb.r, %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i, %bb.w
  %i.do = phi ptr [ %.pre84, %bb.r ], [ %i.di, %_ZN2cv10AutoBufferIiLm264EE10deallocateEv.exit.i ], [ %i.dn, %bb.w ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !164
  %i.dq = load i32, ptr %i.b, align 4, !tbaa !156
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !162
  %i.ds = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.dt = load ptr, ptr %i.cz, align 8, !tbaa !163
  br i1 %.not77, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit
  %i.du = load i8, ptr %i.g, align 8, !tbaa !157, !range !44, !noundef !45
  %i.dv = trunc nuw i8 %i.du to i1
  %.lobit55 = lshr exact i32 %i.i, 5
  %spec.select = select i1 %i.dv, i32 %.lobit55, i32 0
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit
  %i.dw = phi i32 [ %spec.select, %bb.x ], [ 0, %_ZN2cv10AutoBufferIiLm264EE8allocateEm.exit ]
  tail call fastcc void @_ZN2cvL7DFTInitEiiPKiPiiPvi(i32 noundef %i.dq, i32 noundef %i.dr, ptr noundef %i.ds, ptr noundef %i.do, i32 noundef %i.e, ptr noundef %i.dt, i32 noundef %i.dw)
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.y, %bb.j
  %i.dx = phi i1 [ %i.ck, %bb.y ], [ false, %bb.j ], [ true, %.thread ] ; 2 uses
  %.not56 = icmp eq ptr %5, null
  br i1 %.not56, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not77, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load i8, ptr %5, align 1, !tbaa !46, !range !44, !noundef !45
  %i.dz = trunc nuw i8 %i.dy to i1
  %.not81 = xor i1 %i.dx, true
  %or.cond3.not = select i1 %i.dz, i1 %.not81, i1 false
  %.not57 = trunc i32 %1 to i1
  %or.cond61.not = and i1 %i.j, %.not57
  %or.cond78 = or i1 %or.cond61.not, %or.cond3.not
  br i1 %or.cond78, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.dx, label %.thread75, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store i8 1, ptr %5, align 1, !tbaa !46
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.z, %bb.ad
  %i.ea = and i32 %4, 160
  %or.cond7 = icmp eq i32 %i.ea, 32
  br i1 %or.cond7, label %bb.af, label %.thread75

bb.af:                                            ; preds = %bb.ae
  %i.eb = load i8, ptr %i.g, align 8, !tbaa !157, !range !44, !noundef !45
  %i.ec = trunc nuw i8 %i.eb to i1
  %. = select i1 %i.ec, i32 2, i32 1
  br label %.thread75

.thread75:                                        ; preds = %bb.ac, %bb.af, %bb.ae
  %.049 = phi i32 [ 0, %bb.ae ], [ %., %bb.af ], [ 0, %bb.ac ] ; 2 uses
  %i.ed = icmp eq i32 %3, 6
  %6 = add nuw nsw i32 %.049, 3
  %spec.select63 = select i1 %i.ed, i32 %6, i32 %.049
  %7 = zext nneg i32 %spec.select63 to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv15OcvDftBasicImpl4initEiiiiPbE7dft_tbl, i64 %7
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !48
  %i.eh = and i32 %4, 66
  %or.cond65.not = icmp eq i32 %i.eh, 2
  br i1 %or.cond65.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.thread75
  %i.ei = and i32 %4, 132
  %or.cond68.not = icmp eq i32 %i.ei, 4
  %.0 = select i1 %or.cond68.not, i32 1, i32 %2
  %i.ej = mul nsw i32 %.0, %1
  %i.ek = sitofp i32 %i.ej to double
  %i.el = fdiv double 1.000000e+00, %i.ek
  store double %i.el, ptr %i.p, align 8, !tbaa !159
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread75
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3hal5DFT2D6createEiiiiiii(ptr dead_on_unwind noalias writable sret(%"struct.cv::Ptr.1") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp eq i32 %1, 1
  %i.b = icmp sgt i32 %7, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3hal5DFT2D6createEiiiiiii, ptr noundef nonnull @.str.1, i32 noundef 3493) #22
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %8, align 8, !tbaa !51     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !52
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(4312) ptr @_Znwm(i64 noundef 4312) #19 ; 28 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv10OcvDftImplE, i64 16), ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr %i.m, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i64 1032, ptr %i.n, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1168
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1184
  store ptr %i.p, ptr %i.o, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 1176
  store i64 1032, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 2216
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 2232
  store ptr %i.s, ptr %i.r, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 2224
  store i64 1032, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 3264
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 3280
  store ptr %i.v, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 3272
  store i64 1032, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 0, ptr %i.x, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 41
  store i8 0, ptr %i.y, align 1, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 42
  store i8 0, ptr %i.z, align 2, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i32 0, ptr %i.ab, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  store i8 0, ptr %i.ac, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 77
  store i8 0, ptr %i.ad, align 1, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 0, ptr %i.ae, align 8, !tbaa !165
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  store i32 0, ptr %i.af, align 4, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i32 0, ptr %i.ag, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %i.aa, i8 0, i64 25, i1 false)
  tail call void @_ZN2cv10OcvDftImpl4initEiiiiiii(ptr noundef nonnull align 8 dereferenceable(4312) %i.i, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  store ptr %i.i, ptr %0, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv10OcvDftImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.i)
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !166
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.35) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !73
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !51
  %i.g = load i64, ptr %i.a, align 8, !tbaa !73
  store i64 %i.g, ptr %i.b, align 8, !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !52
  store i8 %i.i, ptr %i.h, align 1, !tbaa !52
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !167
  %i.l = load ptr, ptr %0, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv10OcvDftImpl4initEiiiiiii(ptr noundef nonnull align 8 dereferenceable(4312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i32 %4, %5
  %i.b = zext i1 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %7, ptr %i.c, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  store i32 %1, ptr %i.d, align 4, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i32 %2, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 %3, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %4, ptr %i.g, align 4, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %5, ptr %i.h, align 8, !tbaa !69
  %i.i = trunc i32 %6 to i1
  %i.j = trunc i32 %6 to i8                       ; 3 uses
  %i.k = and i8 %i.j, 1
  %i.l = lshr i32 %6, 10
  %i.m = trunc i32 %i.l to i8
  %i.n = and i8 %i.m, 1
  %i.o = and i32 %6, 512
  %.not104 = icmp eq i32 %i.o, 0
  %i.p = icmp eq i32 %4, 1                        ; 2 uses
  %i.q = icmp eq i32 %5, 1                        ; 2 uses
  %or.cond7.i = and i1 %i.p, %i.q                 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.b
end_hunk_0
