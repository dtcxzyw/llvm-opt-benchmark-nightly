Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/imgwarp?download=true
inline.NumInlined: 4250
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cvL13remapBilinearINS_4CastIddEENS_10RemapNoVecILb0EEEfLb0EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE:bb.a
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1148
  %index1159 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1164, %vector.body1158 ] ; 6 uses
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %.0567, i64 %index1159
  %wide.load1160 = load <2 x double>, ptr %i.aey, align 8, !tbaa !58
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %.0566, i64 %index1159
  %wide.load1161 = load <2 x double>, ptr %i.aez, align 8, !tbaa !58
  %i.afa = fmul <2 x double> %wide.load1161, %broadcast.splat1153
  %i.afb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1160, <2 x double> %broadcast.splat1151, <2 x double> %i.afa)
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %.0565, i64 %index1159
  %wide.load1162 = load <2 x double>, ptr %i.afc, align 8, !tbaa !58
  %i.afd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1162, <2 x double> %broadcast.splat1155, <2 x double> %i.afb)
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %.0564, i64 %index1159
  %wide.load1163 = load <2 x double>, ptr %i.afe, align 8, !tbaa !58
  %i.aff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1163, <2 x double> %broadcast.splat1157, <2 x double> %i.afd)
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %.9814, i64 %index1159
  store <2 x double> %i.aff, ptr %i.afg, align 8, !tbaa !58
  %index.next1164 = add nuw i64 %index1159, 2     ; 2 uses
  %i.afh = icmp eq i64 %index.next1164, %n.vec1149
  br i1 %i.afh, label %middle.block1165, label %vector.body1158, !llvm.loop !525

middle.block1165:                                 ; preds = %vector.body1158
  br i1 %cmp.n1166, label %.loopexit, label %scalar.ph1146.preheader

scalar.ph1146.preheader:                          ; preds = %vector.memcheck1134, %bb.aq, %middle.block1165
  %indvars.iv903.ph = phi i64 [ 0, %vector.memcheck1134 ], [ 0, %bb.aq ], [ %n.vec1149, %middle.block1165 ]
  br label %scalar.ph1146

scalar.ph1146:                                    ; preds = %scalar.ph1146.preheader, %scalar.ph1146
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %scalar.ph1146 ], [ %indvars.iv903.ph, %scalar.ph1146.preheader ] ; 6 uses
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %.0567, i64 %indvars.iv903
  %i.afj = load double, ptr %i.afi, align 8, !tbaa !58
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %.0566, i64 %indvars.iv903
  %i.afl = load double, ptr %i.afk, align 8, !tbaa !58
  %i.afm = fmul double %i.afl, %i.aen
  %i.afn = tail call double @llvm.fmuladd.f64(double %i.afj, double %i.aek, double %i.afm)
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %.0565, i64 %indvars.iv903
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !58
  %i.afq = tail call double @llvm.fmuladd.f64(double %i.afp, double %i.aeq, double %i.afn)
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %.0564, i64 %indvars.iv903
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !58
  %i.aft = tail call double @llvm.fmuladd.f64(double %i.afs, double %i.aet, double %i.afq)
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %.9814, i64 %indvars.iv903
  store double %i.aft, ptr %i.afu, align 8, !tbaa !58
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond907.not = icmp eq i64 %indvars.iv.next904, %wide.trip.count
  br i1 %exitcond907.not, label %.loopexit, label %scalar.ph1146, !llvm.loop !526

.loopexit:                                        ; preds = %scalar.ph1146, %.preheader.prol.loopexit, %.preheader, %middle.block1165, %middle.block1131
  %indvars.iv.next914 = add nsw i64 %indvars.iv913, 1 ; 2 uses
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %.9814, i64 %wide.trip.count ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next914 to i32
  %exitcond916.not = icmp eq i32 %.0593838, %lftr.wideiv
  %indvar.next1120 = add i64 %indvar1119, 1
  br i1 %exitcond916.not, label %.loopexit768, label %.lr.ph815, !llvm.loop !527

.loopexit768:                                     ; preds = %.lr.ph, %.lr.ph790, %.lr.ph795, %.lr.ph800, %.loopexit1200, %.loopexit, %bb.al, %.critedge, %.preheader781, %.preheader779, %.preheader777, %.preheader775, %.preheader773, %.preheader771, %.preheader769, %.preheader767, %.thread, %bb.w
  %.12605 = phi i32 [ %.0593838, %bb.w ], [ %.0593838, %.critedge ], [ %.0593838, %.lr.ph795 ], [ %.0593838, %.lr.ph790 ], [ %.0593838, %.thread ], [ %.0593838, %bb.al ], [ %.0593838, %.loopexit ], [ %.0593838, %.loopexit1200 ], [ %.0593838, %.lr.ph800 ], [ %.0589840, %.preheader767 ], [ %.0589840, %.preheader769 ], [ %.0589840, %.preheader771 ], [ %.0589840, %.preheader773 ], [ %.0589840, %.preheader775 ], [ %.0589840, %.preheader777 ], [ %.0589840, %.preheader779 ], [ %.0589840, %.preheader781 ], [ %.0593838, %.lr.ph ] ; 2 uses
  %.1592 = phi i8 [ %.0591839, %bb.w ], [ %i.gb, %.critedge ], [ 0, %.lr.ph795 ], [ 0, %.lr.ph790 ], [ 0, %.thread ], [ %i.gb, %bb.al ], [ %i.gb, %.loopexit ], [ 0, %.loopexit1200 ], [ 0, %.lr.ph800 ], [ 1, %.preheader767 ], [ 1, %.preheader769 ], [ 1, %.preheader771 ], [ 0, %.preheader773 ], [ 0, %.preheader775 ], [ 0, %.preheader777 ], [ 0, %.preheader779 ], [ 0, %.preheader781 ], [ 0, %.lr.ph ]
  %.1590 = phi i32 [ %.0589840, %bb.w ], [ %.0593838, %.critedge ], [ %.0593838, %.lr.ph795 ], [ %.0593838, %.lr.ph790 ], [ %.0589840, %.thread ], [ %.0593838, %bb.al ], [ %.0593838, %.loopexit ], [ %.0593838, %.loopexit1200 ], [ %.0593838, %.lr.ph800 ], [ %.0593838, %.preheader767 ], [ %.0593838, %.preheader769 ], [ %.0593838, %.preheader771 ], [ %.0593838, %.preheader773 ], [ %.0593838, %.preheader775 ], [ %.0593838, %.preheader777 ], [ %.0593838, %.preheader779 ], [ %.0593838, %.preheader781 ], [ %.0593838, %.lr.ph ]
  %.12 = phi ptr [ %.0585841, %bb.w ], [ %i.xr, %.critedge ], [ %i.iv, %.lr.ph795 ], [ %i.kr, %.lr.ph790 ], [ %.0585841, %.thread ], [ %i.aaq, %bb.al ], [ %i.afv, %.loopexit ], [ %i.op, %.loopexit1200 ], [ %i.ho, %.lr.ph800 ], [ %.0585841, %.preheader767 ], [ %.0585841, %.preheader769 ], [ %.0585841, %.preheader771 ], [ %.0585841, %.preheader773 ], [ %.0585841, %.preheader775 ], [ %.0585841, %.preheader777 ], [ %.0585841, %.preheader779 ], [ %.0585841, %.preheader781 ], [ %i.ml, %.lr.ph ]
  %i.afw = add nsw i32 %.12605, 1
  %.not.not = icmp slt i32 %.12605, %i.ar
  br i1 %.not.not, label %bb.s, label %._crit_edge, !llvm.loop !528
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cvL13remapBilinearINS_11FixedPtCastIihLi15EEENS_10RemapNoVecILb1EEEsLb1EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca [128 x i8], align 16              ; 30 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !67   ; 6 uses
  %i.e = icmp slt i32 %i.d, 3
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %11)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %10, align 8, !tbaa !61    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !53
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i686, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i686 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.d, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = icmp eq i32 %i.d, 2
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i32 %i.d, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.t = phi i32 [ %i.q, %bb.f ], [ %i.s, %bb.g ] ; 9 uses
  %i.u = icmp eq i32 %i.d, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp sgt i32 %i.d, -1
  %i.y = zext i1 %i.x to i32
  %i.z = select i1 %i.u, i32 %i.w, i32 %i.y       ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !67 ; 6 uses
  %i.ac = icmp slt i32 %i.ab, 3
  br i1 %i.ac, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #27
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i686, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i685

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i685: ; preds = %bb.j
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !53
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i686

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i686: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i685
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

bb.k:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.aj = icmp sgt i32 %i.ab, 0
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.al = icmp eq i32 %i.ab, 2
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  br label %_ZNK2cv8MatShapeclEv.exit692

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp eq i32 %i.ab, 0
  %i.aq = zext i1 %i.ap to i32
  br label %_ZNK2cv8MatShapeclEv.exit692

_ZNK2cv8MatShapeclEv.exit692:                     ; preds = %bb.l, %bb.m
  %i.ar = phi i32 [ %i.ao, %bb.l ], [ %i.aq, %bb.m ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.at = load i32, ptr %i.as, align 4
  %i.au = load i32, ptr %0, align 8, !tbaa !72
  %i.av = lshr i32 %i.au, 5                       ; 3 uses
  %i.aw = and i32 %i.av, 127                      ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73 ; 19 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !15 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bb = add nuw nsw i32 %i.aw, 1                ; 9 uses
  %wide.trip.count = zext nneg i32 %i.bb to i64   ; 43 uses
  %i.bc = and i32 %i.av, 127                      ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.be = icmp eq i32 %i.bc, 0
  br i1 %i.be, label %.epil.preheader, label %_ZNK2cv8MatShapeclEv.exit692.new

_ZNK2cv8MatShapeclEv.exit692.new:                 ; preds = %_ZNK2cv8MatShapeclEv.exit692
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.o

.unr-lcssa:                                       ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.n, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %_ZNK2cv8MatShapeclEv.exit692
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeclEv.exit692 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod1223 = trunc i32 %i.bb to i1
  call void @llvm.assume(i1 %lcmp.mod1223)
  %i.bf = and i64 %indvars.iv.epil.init, 3
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !58
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bi)
  %i.bk = tail call i32 @llvm.smax.i32(i32 %i.bj, i32 0)
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 255)
  %i.bm = trunc nuw i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.epil.init
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.bo = icmp eq i32 %i.ab, 2
  %i.bp = icmp sgt i32 %i.ab, -1
  %i.bq = zext i1 %i.bp to i32
  %i.br = select i1 %i.bo, i32 %i.at, i32 %i.bq   ; 2 uses
  %i.bs = add nsw i32 %i.t, -1                    ; 6 uses
  %.sroa.speculated704 = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bt = add nsw i32 %i.z, -1                    ; 7 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bu = icmp slt i32 %i.t, 1
  %i.bv = icmp slt i32 %i.z, 1
  %i.bw = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %i.bw, label %bb.p, label %.preheader813

.preheader813:                                    ; preds = %bb.n
  %i.bx = icmp sgt i32 %i.br, 0
  br i1 %i.bx, label %.lr.ph874, label %._crit_edge875.split

.lr.ph874:                                        ; preds = %.preheader813
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.not867 = icmp slt i32 %i.ar, 0
  %trunc = trunc nuw i32 %i.bb to i8
  %i.cf = icmp eq i32 %5, 5
  %i.cg = icmp eq i32 %i.aw, 0
  %i.ch = icmp eq i32 %5, 0                       ; 2 uses
  %i.ci = icmp eq i32 %5, 1                       ; 2 uses
  br i1 %.not867, label %._crit_edge875.split, label %.lr.ph872.preheader

.lr.ph872.preheader:                              ; preds = %.lr.ph874
  %wide.trip.count974 = zext nneg i32 %i.br to i64
  %scevgep1038.a = getelementptr i8, ptr %i.ay, i64 %wide.trip.count
  %scevgep1055.a = getelementptr i8, ptr %i.ay, i64 %wide.trip.count
  %scevgep1153.a = getelementptr i8, ptr %i.ay, i64 %wide.trip.count
  %i.cj = shl nuw nsw i32 %i.av, 1
  %i.ck = and i32 %i.cj, 254
  %narrow = add nuw nsw i32 %i.ck, 2
  %i.cl = zext nneg i32 %narrow to i64            ; 2 uses
  %scevgep1155.a = getelementptr i8, ptr %i.ay, i64 %i.cl
  %scevgep1157.a = getelementptr i8, ptr %i.ay, i64 %i.cl
  %scevgep1159.a = getelementptr i8, ptr %4, i64 8
  %i.cm = add nuw nsw i64 %i.bd, 1
  %min.iters.check1181 = icmp samesign ult i32 %i.aw, 7
  %n.vec1183 = and i64 %wide.trip.count, 248      ; 3 uses
  %cmp.n1200 = icmp eq i64 %n.vec1183, %wide.trip.count
  %min.iters.check1129 = icmp samesign ult i32 %i.aw, 7
  %n.vec1131 = and i64 %wide.trip.count, 248      ; 3 uses
  %cmp.n1148 = icmp eq i64 %n.vec1131, %wide.trip.count
  %min.iters.check1084.a = icmp samesign ult i32 %i.aw, 3
  %invariant.op1233 = sub i64 -1, %i.b
  %min.iters.check1085 = icmp samesign ult i32 %i.aw, 31
  %i.cn = and i64 %wide.trip.count, 28
  %n.vec1087 = and i64 %wide.trip.count, 224      ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cp = icmp eq i64 %n.vec1087, 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cs = icmp eq i64 %n.vec1087, 64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cv = icmp eq i64 %n.vec1087, 96
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %cmp.n1094 = icmp eq i64 %n.vec1087, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.cn, 0
  %n.vec1095 = and i64 %wide.trip.count, 252      ; 3 uses
  %cmp.n1099 = icmp eq i64 %n.vec1095, %wide.trip.count
  %xtraiter1224 = and i64 %i.cm, 3                ; 2 uses
  %lcmp.mod1225.not = icmp eq i64 %xtraiter1224, 0
  %min.iters.check = icmp samesign ult i32 %i.aw, 7 ; 2 uses
  %n.vec1067 = and i64 %wide.trip.count, 248      ; 3 uses
  %cmp.n1079 = icmp eq i64 %n.vec1067, %wide.trip.count
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph872

bb.o:                                             ; preds = %bb.o, %_ZNK2cv8MatShapeclEv.exit692.new
  %indvars.iv = phi i64 [ 0, %_ZNK2cv8MatShapeclEv.exit692.new ], [ %indvars.iv.next.1, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeclEv.exit692.new ], [ %niter.next.1, %bb.o ]
  %i.cy = and i64 %indvars.iv, 2
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !58
  %i.db = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dc = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.db)
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 255)
  %i.df = trunc nuw i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.df, ptr %i.dg, align 2, !tbaa !53
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dh = and i64 %indvars.iv.next, 3
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !58
  %i.dk = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dl = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dk)
  %i.dm = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 255)
  %i.do = trunc nuw i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !53
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.o, !llvm.loop !529

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cvL13remapBilinearINS_11FixedPtCastIihLi15EEENS_10RemapNoVecILb0EEEsLb0EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE, ptr noundef nonnull @.str.1, i32 noundef 770) #27
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !53
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.s
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.s ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dr, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %common.resume

._crit_edge875.split:                             ; preds = %._crit_edge, %.lr.ph874, %.preheader813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph872:                                        ; preds = %.lr.ph872.preheader, %._crit_edge
  %indvars.iv971 = phi i64 [ 0, %.lr.ph872.preheader ], [ %indvars.iv.next972, %._crit_edge ] ; 5 uses
  %i.dx = load ptr, ptr %i.by, align 8, !tbaa !73
  %i.dy = load i64, ptr %i.bz, align 8, !tbaa !15
  %i.dz = mul i64 %i.dy, %indvars.iv971
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.eb = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.ec = load i64, ptr %i.cb, align 8, !tbaa !15
  %i.ed = mul i64 %i.ec, %indvars.iv971
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 9 uses
  %i.ef = load ptr, ptr %i.cc, align 8, !tbaa !73
  %i.eg = load i64, ptr %i.cd, align 8, !tbaa !15
  %i.eh = mul i64 %i.eg, %indvars.iv971
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN2cvL13remapBilinearINS_11FixedPtCastIihLi15EEENS_10RemapNoVecILb1EEEsLb1EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE:bb.a
  %i.vn = sext <8 x i16> %broadcast.splat1187 to <8 x i32>
  %i.vo = load i16, ptr %i.ve, align 2, !tbaa !56, !alias.scope !575
  %broadcast.splatinsert1188 = insertelement <8 x i16> poison, i16 %i.vo, i64 0
  %broadcast.splat1189 = shufflevector <8 x i16> %broadcast.splatinsert1188, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.vp = sext <8 x i16> %broadcast.splat1189 to <8 x i32>
  %i.vq = load i16, ptr %i.vf, align 2, !tbaa !56, !alias.scope !575
  %broadcast.splatinsert1190 = insertelement <8 x i16> poison, i16 %i.vq, i64 0
  %broadcast.splat1191 = shufflevector <8 x i16> %broadcast.splatinsert1190, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.vr = sext <8 x i16> %broadcast.splat1191 to <8 x i32>
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1182
  %index1193 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1198, %vector.body1192 ] ; 5 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vb, i64 %index1193
  %wide.load1194.a = load <8 x i8>, ptr %i.vs, align 1, !tbaa !53, !alias.scope !576
  %i.vt = zext <8 x i8> %wide.load1194.a to <8 x i32>
  %i.vu = mul nsw <8 x i32> %i.vl, %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %invariant.gep1016, i64 %index1193
  %wide.load1195.a = load <8 x i8>, ptr %i.vv, align 1, !tbaa !53, !alias.scope !577
  %i.vw = zext <8 x i8> %wide.load1195.a to <8 x i32>
  %i.vx = mul nsw <8 x i32> %i.vn, %i.vw
  %i.vy = getelementptr i8, ptr %i.vd, i64 %index1193 ; 2 uses
  %wide.load1196.a = load <8 x i8>, ptr %i.vy, align 1, !tbaa !53, !alias.scope !578
  %i.vz = zext <8 x i8> %wide.load1196.a to <8 x i32>
  %i.wa = mul nsw <8 x i32> %i.vp, %i.vz
  %i.wb = getelementptr i8, ptr %i.vy, i64 %wide.trip.count
  %wide.load1197 = load <8 x i8>, ptr %i.wb, align 1, !tbaa !53, !alias.scope !579
  %i.wc = zext <8 x i8> %wide.load1197 to <8 x i32>
  %i.wd = mul nsw <8 x i32> %i.vr, %i.wc
  %i.we = add nsw <8 x i32> %i.vu, splat (i32 16384)
  %i.wf = add nsw <8 x i32> %i.we, %i.vx
  %i.wg = add nsw <8 x i32> %i.wf, %i.wa
  %i.wh = add nsw <8 x i32> %i.wg, %i.wd
  %i.wi = ashr <8 x i32> %i.wh, splat (i32 15)
  %i.wj = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.wi, <8 x i32> zeroinitializer)
  %i.wk = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.wj, <8 x i32> splat (i32 255))
  %i.wl = trunc nuw <8 x i32> %i.wk to <8 x i8>
  %i.wm = getelementptr inbounds nuw i8, ptr %.5835, i64 %index1193
  store <8 x i8> %i.wl, ptr %i.wm, align 1, !tbaa !53, !alias.scope !580, !noalias !581
  %index.next1198 = add nuw i64 %index1193, 8     ; 2 uses
  %i.wn = icmp eq i64 %index.next1198, %n.vec1183
  br i1 %i.wn, label %middle.block1199, label %vector.body1192, !llvm.loop !542

middle.block1199:                                 ; preds = %vector.body1192
  br i1 %cmp.n1200, label %.loopexit1202, label %scalar.ph1180.preheader

scalar.ph1180.preheader:                          ; preds = %vector.memcheck1150, %.lr.ph836, %middle.block1199
  %indvars.iv922.ph = phi i64 [ 0, %vector.memcheck1150 ], [ 0, %.lr.ph836 ], [ %n.vec1183, %middle.block1199 ]
  br label %scalar.ph1180

.loopexit1202:                                    ; preds = %scalar.ph1180, %middle.block1199
  %indvars.iv.next928 = add nsw i64 %indvars.iv927, 1 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.5835, i64 %wide.trip.count ; 2 uses
  %exitcond931.not = icmp eq i64 %indvars.iv.next928, %wide.trip.count930
  br i1 %exitcond931.not, label %.loopexit798, label %.lr.ph836, !llvm.loop !543

scalar.ph1180:                                    ; preds = %scalar.ph1180.preheader, %scalar.ph1180
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %scalar.ph1180 ], [ %indvars.iv922.ph, %scalar.ph1180.preheader ] ; 5 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv922
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !53
  %i.wr = zext i8 %i.wq to i32
  %i.ws = load i16, ptr %i.uv, align 2, !tbaa !56
  %i.wt = sext i16 %i.ws to i32
  %i.wu = mul nsw i32 %i.wt, %i.wr
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep1016, i64 %indvars.iv922
  %i.wv = load i8, ptr %gep, align 1, !tbaa !53
  %i.ww = zext i8 %i.wv to i32
  %i.wx = load i16, ptr %i.vc, align 2, !tbaa !56
  %i.wy = sext i16 %i.wx to i32
  %i.wz = mul nsw i32 %i.wy, %i.ww
  %i.xa = getelementptr i8, ptr %i.vd, i64 %indvars.iv922 ; 2 uses
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !53
  %i.xc = zext i8 %i.xb to i32
  %i.xd = load i16, ptr %i.ve, align 2, !tbaa !56
  %i.xe = sext i16 %i.xd to i32
  %i.xf = mul nsw i32 %i.xe, %i.xc
  %i.xg = getelementptr i8, ptr %i.xa, i64 %wide.trip.count
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !53
  %i.xi = zext i8 %i.xh to i32
  %i.xj = load i16, ptr %i.vf, align 2, !tbaa !56
  %i.xk = sext i16 %i.xj to i32
  %i.xl = mul nsw i32 %i.xk, %i.xi
  %i.xm = add nsw i32 %i.wu, 16384
  %i.xn = add nsw i32 %i.xm, %i.wz
  %i.xo = add nsw i32 %i.xn, %i.xf
  %i.xp = add nsw i32 %i.xo, %i.xl
  %i.xq = ashr i32 %i.xp, 15
  %i.xr = tail call i32 @llvm.smax.i32(i32 %i.xq, i32 0)
  %i.xs = tail call i32 @llvm.umin.i32(i32 %i.xr, i32 255)
  %i.xt = trunc nuw i32 %i.xs to i8
  %i.xu = getelementptr inbounds nuw i8, ptr %.5835, i64 %indvars.iv922
  store i8 %i.xt, ptr %i.xu, align 1, !tbaa !53
  %indvars.iv.next923 = add nuw nsw i64 %indvars.iv922, 1 ; 2 uses
  %exitcond926.not = icmp eq i64 %indvars.iv.next923, %wide.trip.count
  br i1 %exitcond926.not, label %.loopexit1202, label %scalar.ph1180, !llvm.loop !544

bb.aa:                                            ; preds = %bb.z
  %i.xv = icmp slt i32 %.0618870, %.0622868       ; 3 uses
  br i1 %i.cf, label %.preheader797, label %bb.ah

.preheader797:                                    ; preds = %bb.aa
  br i1 %i.xv, label %.lr.ph864.preheader, label %.loopexit798

.lr.ph864.preheader:                              ; preds = %.preheader797
  %i.xw = sext i32 %.0618870 to i64               ; 2 uses
  %wide.trip.count969 = sext i32 %.0622868 to i64 ; 2 uses
  %scevgep = getelementptr i8, ptr %.0614871, i64 %wide.trip.count
  %i.xx = xor i64 %i.xw, -1
  %i.xy = add nsw i64 %i.xx, %wide.trip.count969
  %i.xz = mul nsw i64 %i.xy, %wide.trip.count
  %scevgep1036 = getelementptr i8, ptr %scevgep, i64 %i.xz ; 5 uses
  br label %.lr.ph864

.lr.ph864:                                        ; preds = %.lr.ph864.preheader, %.critedge
  %indvars.iv966 = phi i64 [ %i.xw, %.lr.ph864.preheader ], [ %indvars.iv.next967, %.critedge ] ; 4 uses
  %.7861 = phi ptr [ %.0614871, %.lr.ph864.preheader ], [ %i.aet, %.critedge ] ; 6 uses
  %.idx998 = shl nsw i64 %indvars.iv966, 2
  %i.ya = getelementptr inbounds i8, ptr %i.ee, i64 %.idx998 ; 2 uses
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !56
  %i.yc = sext i16 %i.yb to i32
  %i.yd = load i32, ptr %7, align 4, !tbaa !106
  %i.ye = trunc nsw i64 %indvars.iv966 to i32
  %i.yf = add nsw i32 %i.yd, %i.ye
  %i.yg = add nsw i32 %i.yf, %i.yc                ; 4 uses
  %i.yh = getelementptr i8, ptr %i.ya, i64 2
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !56
  %i.yj = sext i16 %i.yi to i32
  %i.yk = add i32 %i.el, %i.yj                    ; 5 uses
  %i.yl = icmp sgt i32 %i.yg, -1
  br i1 %i.yl, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %.lr.ph864
  %i.ym = icmp slt i32 %i.yg, %i.t
  %i.yn = icmp sgt i32 %i.yk, -1
  %or.cond = select i1 %i.ym, i1 %i.yn, i1 false
  %.not674.not = icmp slt i32 %i.yk, %i.z
  %or.cond678 = select i1 %or.cond, i1 %.not674.not, i1 false
  br i1 %or.cond678, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.yo = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %indvars.iv966
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !56
  %i.yq = zext i16 %i.yp to i64
  %.idx675 = shl nuw nsw i64 %i.yq, 3
  %i.yr = getelementptr inbounds nuw i8, ptr %4, i64 %.idx675 ; 15 uses
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !56
  %i.yt = sext i16 %i.ys to i32                   ; 4 uses
  %i.yu = icmp samesign ult i32 %i.yg, %i.bs      ; 2 uses
  br i1 %i.yu, label %bb.ad, label %.thread759

bb.ad:                                            ; preds = %bb.ac
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 2
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !56
  %i.yx = sext i16 %i.yw to i32
  %i.yy = add nsw i32 %i.yx, %i.yt                ; 2 uses
  %i.yz = icmp slt i32 %i.yk, %i.bt
  br i1 %i.yz, label %bb.ae, label %.thread748

.thread759:                                       ; preds = %bb.ac
  %i.za = icmp slt i32 %i.yk, %i.bt
  br i1 %i.za, label %.thread763, label %.thread748

.thread763:                                       ; preds = %.thread759
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !56
  %i.zd = sext i16 %i.zc to i32
  %i.ze = add nsw i32 %i.zd, %i.yt
  br label %.thread748

bb.ae:                                            ; preds = %bb.ad
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !56
  %i.zh = sext i16 %i.zg to i32
  %i.zi = add nsw i32 %i.yy, %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yr, i64 6
  %i.zk = load i16, ptr %i.zj, align 2, !tbaa !56
  %i.zl = sext i16 %i.zk to i32
  %i.zm = add nsw i32 %i.zi, %i.zl
  br label %.thread748

.thread748:                                       ; preds = %bb.ad, %.thread759, %.thread763, %bb.ae
  %i.zn = phi i1 [ true, %bb.ae ], [ true, %.thread763 ], [ false, %.thread759 ], [ false, %bb.ad ] ; 2 uses
  %.3607 = phi i32 [ %i.zm, %bb.ae ], [ %i.ze, %.thread763 ], [ %i.yt, %.thread759 ], [ %i.yy, %bb.ad ] ; 2 uses
  %i.zo = sitofp i32 %.3607 to float              ; 5 uses
  %.not676 = icmp eq i32 %.3607, 0
  br i1 %.not676, label %.critedge, label %bb.af

bb.af:                                            ; preds = %.thread748
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yr, i64 2 ; 3 uses
  %i.zq = load i16, ptr %i.zp, align 2, !tbaa !56
  %i.zr = sext i16 %i.zq to i32
  %i.zs = add nsw i32 %i.zr, %i.yt
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yr, i64 4 ; 4 uses
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !56
  %i.zv = sext i16 %i.zu to i32
  %i.zw = add nsw i32 %i.zs, %i.zv
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yr, i64 6 ; 3 uses
  %i.zy = load i16, ptr %i.zx, align 2, !tbaa !56
  %i.zz = sext i16 %i.zy to i32
  %i.aaa = add nsw i32 %i.zw, %i.zz
  %i.aab = zext nneg i32 %i.yk to i64
  %i.aac = mul i64 %i.ba, %i.aab                  ; 3 uses
  %i.aad = getelementptr i8, ptr %i.ay, i64 %i.aac
  %i.aae = mul i32 %i.yg, %i.bb
  %i.aaf = zext i32 %i.aae to i64                 ; 3 uses
  %i.aag = getelementptr i8, ptr %i.aad, i64 %i.aaf ; 9 uses
  %i.aah = sitofp i32 %i.aaa to float             ; 5 uses
  %i.aai = getelementptr i8, ptr %i.aag, i64 %i.ba ; 5 uses
  %invariant.gep = getelementptr i8, ptr %i.aai, i64 %wide.trip.count ; 2 uses
  br i1 %i.yu, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.af
  %invariant.gep1017 = getelementptr inbounds nuw i8, ptr %i.aag, i64 %wide.trip.count
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.thread753.us
  %indvars.iv961 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next962, %.thread753.us ] ; 6 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 %indvars.iv961
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !53
  %i.aal = zext i8 %i.aak to i32
  %i.aam = load i16, ptr %i.yr, align 2, !tbaa !56
  %i.aan = sext i16 %i.aam to i32
  %i.aao = mul nsw i32 %i.aan, %i.aal
  %gep1018 = getelementptr inbounds nuw i8, ptr %invariant.gep1017, i64 %indvars.iv961
  %i.aap = load i8, ptr %gep1018, align 1, !tbaa !53
  %i.aaq = zext i8 %i.aap to i32
  %i.aar = load i16, ptr %i.zp, align 2, !tbaa !56
  %i.aas = sext i16 %i.aar to i32
  %i.aat = mul nsw i32 %i.aas, %i.aaq
  %i.aau = add nsw i32 %i.aat, %i.aao             ; 2 uses
  br i1 %i.zn, label %bb.ag, label %.thread753.us

bb.ag:                                            ; preds = %.split.us
  %i.aav = getelementptr i8, ptr %i.aai, i64 %indvars.iv961
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !53
  %i.aax = zext i8 %i.aaw to i32
  %i.aay = load i16, ptr %i.zt, align 2, !tbaa !56
  %i.aaz = sext i16 %i.aay to i32
  %i.aba = mul nsw i32 %i.aaz, %i.aax
  %i.abb = add nsw i32 %i.aba, %i.aau
  %gep.us = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv961
  %i.abc = load i8, ptr %gep.us, align 1, !tbaa !53
  %i.abd = zext i8 %i.abc to i32
  %i.abe = load i16, ptr %i.zx, align 2, !tbaa !56
  %i.abf = sext i16 %i.abe to i32
  %i.abg = mul nsw i32 %i.abf, %i.abd
  %i.abh = add nsw i32 %i.abb, %i.abg
  br label %.thread753.us

.thread753.us:                                    ; preds = %bb.ag, %.split.us
  %.3.us = phi i32 [ %i.abh, %bb.ag ], [ %i.aau, %.split.us ]
  %i.abi = sitofp i32 %.3.us to float
  %i.abj = fmul nnan float %i.aah, %i.abi
  %i.abk = fdiv float %i.abj, %i.zo
  %i.abl = fptosi float %i.abk to i32
  %i.abm = add nsw i32 %i.abl, 16384
  %i.abn = ashr i32 %i.abm, 15
  %i.abo = tail call i32 @llvm.smax.i32(i32 %i.abn, i32 0)
  %i.abp = tail call i32 @llvm.umin.i32(i32 %i.abo, i32 255)
  %i.abq = trunc nuw i32 %i.abp to i8
  %i.abr = getelementptr inbounds nuw i8, ptr %.7861, i64 %indvars.iv961
  store i8 %i.abq, ptr %i.abr, align 1, !tbaa !53
  %indvars.iv.next962 = add nuw nsw i64 %indvars.iv961, 1 ; 2 uses
  %exitcond965.not = icmp eq i64 %indvars.iv.next962, %wide.trip.count
  br i1 %exitcond965.not, label %.critedge, label %.split.us, !llvm.loop !545

.split:                                           ; preds = %bb.af
  br i1 %i.zn, label %.thread766.us.preheader, label %.thread766.preheader

.thread766.preheader:                             ; preds = %.split
  br i1 %min.iters.check, label %.thread766.preheader1206, label %vector.memcheck1054

vector.memcheck1054:                              ; preds = %.thread766.preheader
  %i.abs = getelementptr i8, ptr %scevgep1055.a, i64 %i.aac
  %scevgep1056 = getelementptr i8, ptr %i.abs, i64 %i.aaf
  %bound01057 = icmp ult ptr %.0614871, %scevgep1056
  %bound11058 = icmp ult ptr %i.aag, %scevgep1036
  %found.conflict1059 = and i1 %bound01057, %bound11058
  %bound01060 = icmp ult ptr %.0614871, %i.zp
  %bound11061 = icmp ult ptr %i.yr, %scevgep1036
  %found.conflict1062 = and i1 %bound01060, %bound11061
  %conflict.rdx1063 = or i1 %found.conflict1059, %found.conflict1062
  br i1 %conflict.rdx1063, label %.thread766.preheader1206, label %vector.ph1066

vector.ph1066:                                    ; preds = %vector.memcheck1054
  %i.abt = load i16, ptr %i.yr, align 2, !tbaa !56, !alias.scope !582
  %broadcast.splatinsert1068 = insertelement <8 x i16> poison, i16 %i.abt, i64 0
  %broadcast.splat1069 = shufflevector <8 x i16> %broadcast.splatinsert1068, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.abu = sext <8 x i16> %broadcast.splat1069 to <8 x i32>
  %broadcast.splatinsert1070 = insertelement <8 x float> poison, float %i.aah, i64 0
  %broadcast.splat1071 = shufflevector <8 x float> %broadcast.splatinsert1070, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1072 = insertelement <8 x float> poison, float %i.zo, i64 0
  %broadcast.splat1073 = shufflevector <8 x float> %broadcast.splatinsert1072, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %vector.ph1066
  %index1075 = phi i64 [ 0, %vector.ph1066 ], [ %index.next1077, %vector.body1074 ] ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aag, i64 %index1075
  %wide.load1076 = load <8 x i8>, ptr %i.abv, align 1, !tbaa !53, !alias.scope !583
  %i.abw = zext <8 x i8> %wide.load1076 to <8 x i32>
  %i.abx = mul nsw <8 x i32> %i.abu, %i.abw
  %i.aby = sitofp <8 x i32> %i.abx to <8 x float>
  %i.abz = fmul nnan <8 x float> %broadcast.splat1071, %i.aby
  %i.aca = fdiv <8 x float> %i.abz, %broadcast.splat1073
  %i.acb = fptosi <8 x float> %i.aca to <8 x i32>
  %i.acc = add nsw <8 x i32> %i.acb, splat (i32 16384)
  %i.acd = ashr <8 x i32> %i.acc, splat (i32 15)
  %i.ace = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.acd, <8 x i32> zeroinitializer)
  %i.acf = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ace, <8 x i32> splat (i32 255))
  %i.acg = trunc nuw <8 x i32> %i.acf to <8 x i8>
  %i.ach = getelementptr inbounds nuw i8, ptr %.7861, i64 %index1075
  store <8 x i8> %i.acg, ptr %i.ach, align 1, !tbaa !53, !alias.scope !584, !noalias !585
  %index.next1077 = add nuw i64 %index1075, 8     ; 2 uses
  %i.aci = icmp eq i64 %index.next1077, %n.vec1067
  br i1 %i.aci, label %middle.block1078, label %vector.body1074, !llvm.loop !550

middle.block1078:                                 ; preds = %vector.body1074
  br i1 %cmp.n1079, label %.critedge, label %.thread766.preheader1206

.thread766.preheader1206:                         ; preds = %vector.memcheck1054, %.thread766.preheader, %middle.block1078
  %indvars.iv951.ph = phi i64 [ 0, %vector.memcheck1054 ], [ 0, %.thread766.preheader ], [ %n.vec1067, %middle.block1078 ]
  br label %.thread766

.thread766.us.preheader:                          ; preds = %.split
  br i1 %min.iters.check, label %.thread766.us.preheader1204, label %vector.memcheck

vector.memcheck:                                  ; preds = %.thread766.us.preheader
  %i.acj = getelementptr i8, ptr %scevgep1038.a, i64 %i.aac
  %scevgep1039 = getelementptr i8, ptr %i.acj, i64 %i.aaf
  %bound0 = icmp ult ptr %.0614871, %invariant.gep
  %bound1 = icmp ult ptr %i.aai, %scevgep1036
  %found.conflict = and i1 %bound0, %bound1
  %bound01040 = icmp ult ptr %.0614871, %scevgep1039
  %bound11041 = icmp ult ptr %i.aag, %scevgep1036
  %found.conflict1042 = and i1 %bound01040, %bound11041
  %conflict.rdx = or i1 %found.conflict, %found.conflict1042
  %bound01043 = icmp ult ptr %.0614871, %i.zx
  %bound11044 = icmp ult ptr %i.yr, %scevgep1036
  %found.conflict1045 = and i1 %bound01043, %bound11044
  %conflict.rdx1046 = or i1 %conflict.rdx, %found.conflict1045
  br i1 %conflict.rdx1046, label %.thread766.us.preheader1204, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ack = load i16, ptr %i.yr, align 2, !tbaa !56, !alias.scope !586
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ack, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.acl = sext <8 x i16> %broadcast.splat to <8 x i32>
  %i.acm = load i16, ptr %i.zt, align 2, !tbaa !56, !alias.scope !586
  %broadcast.splatinsert1047 = insertelement <8 x i16> poison, i16 %i.acm, i64 0
  %broadcast.splat1048 = shufflevector <8 x i16> %broadcast.splatinsert1047, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.acn = sext <8 x i16> %broadcast.splat1048 to <8 x i32>
  %broadcast.splatinsert1049 = insertelement <8 x float> poison, float %i.aah, i64 0
  %broadcast.splat1050 = shufflevector <8 x float> %broadcast.splatinsert1049, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1051 = insertelement <8 x float> poison, float %i.zo, i64 0
  %broadcast.splat1052 = shufflevector <8 x float> %broadcast.splatinsert1051, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.aag, i64 %index
  %wide.load = load <8 x i8>, ptr %i.aco, align 1, !tbaa !53, !alias.scope !587
  %i.acp = zext <8 x i8> %wide.load to <8 x i32>
  %i.acq = mul nsw <8 x i32> %i.acl, %i.acp
  %i.acr = getelementptr i8, ptr %i.aai, i64 %index
  %wide.load1053 = load <8 x i8>, ptr %i.acr, align 1, !tbaa !53, !alias.scope !588
  %i.acs = zext <8 x i8> %wide.load1053 to <8 x i32>
  %i.act = mul nsw <8 x i32> %i.acn, %i.acs
  %i.acu = add nsw <8 x i32> %i.act, %i.acq
  %i.acv = sitofp <8 x i32> %i.acu to <8 x float>
  %i.acw = fmul nnan <8 x float> %broadcast.splat1050, %i.acv
  %i.acx = fdiv <8 x float> %i.acw, %broadcast.splat1052
  %i.acy = fptosi <8 x float> %i.acx to <8 x i32>
  %i.acz = add nsw <8 x i32> %i.acy, splat (i32 16384)
  %i.ada = ashr <8 x i32> %i.acz, splat (i32 15)
  %i.adb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ada, <8 x i32> zeroinitializer)
  %i.adc = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.adb, <8 x i32> splat (i32 255))
  %i.add = trunc nuw <8 x i32> %i.adc to <8 x i8>
  %i.ade = getelementptr inbounds nuw i8, ptr %.7861, i64 %index
  store <8 x i8> %i.add, ptr %i.ade, align 1, !tbaa !53, !alias.scope !589, !noalias !590
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.adf = icmp eq i64 %index.next, %n.vec
  br i1 %i.adf, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge, label %.thread766.us.preheader1204

.thread766.us.preheader1204:                      ; preds = %vector.memcheck, %.thread766.us.preheader, %middle.block
  %indvars.iv956.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.thread766.us.preheader ], [ %n.vec, %middle.block ]
  br label %.thread766.us

.thread766.us:                                    ; preds = %.thread766.us.preheader1204, %.thread766.us
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %.thread766.us ], [ %indvars.iv956.ph, %.thread766.us.preheader1204 ] ; 4 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.aag, i64 %indvars.iv956
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !53
  %i.adi = zext i8 %i.adh to i32
  %i.adj = load i16, ptr %i.yr, align 2, !tbaa !56
  %i.adk = sext i16 %i.adj to i32
  %i.adl = mul nsw i32 %i.adk, %i.adi
  %i.adm = getelementptr i8, ptr %i.aai, i64 %indvars.iv956
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !53
  %i.ado = zext i8 %i.adn to i32
  %i.adp = load i16, ptr %i.zt, align 2, !tbaa !56
  %i.adq = sext i16 %i.adp to i32
  %i.adr = mul nsw i32 %i.adq, %i.ado
  %i.ads = add nsw i32 %i.adr, %i.adl
  %i.adt = sitofp i32 %i.ads to float
  %i.adu = fmul nnan float %i.aah, %i.adt
  %i.adv = fdiv float %i.adu, %i.zo
  %i.adw = fptosi float %i.adv to i32
  %i.adx = add nsw i32 %i.adw, 16384
  %i.ady = ashr i32 %i.adx, 15
  %i.adz = tail call i32 @llvm.smax.i32(i32 %i.ady, i32 0)
  %i.aea = tail call i32 @llvm.umin.i32(i32 %i.adz, i32 255)
  %i.aeb = trunc nuw i32 %i.aea to i8
  %i.aec = getelementptr inbounds nuw i8, ptr %.7861, i64 %indvars.iv956
  store i8 %i.aeb, ptr %i.aec, align 1, !tbaa !53
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %exitcond960.not = icmp eq i64 %indvars.iv.next957, %wide.trip.count
  br i1 %exitcond960.not, label %.critedge, label %.thread766.us, !llvm.loop !557

.thread766:                                       ; preds = %.thread766.preheader1206, %.thread766
  %indvars.iv951 = phi i64 [ %indvars.iv.next952, %.thread766 ], [ %indvars.iv951.ph, %.thread766.preheader1206 ] ; 3 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aag, i64 %indvars.iv951
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !53
  %i.aef = zext i8 %i.aee to i32
  %i.aeg = load i16, ptr %i.yr, align 2, !tbaa !56
  %i.aeh = sext i16 %i.aeg to i32
  %i.aei = mul nsw i32 %i.aeh, %i.aef
  %i.aej = sitofp i32 %i.aei to float
  %i.aek = fmul nnan float %i.aah, %i.aej
  %i.ael = fdiv float %i.aek, %i.zo
  %i.aem = fptosi float %i.ael to i32
  %i.aen = add nsw i32 %i.aem, 16384
  %i.aeo = ashr i32 %i.aen, 15
  %i.aep = tail call i32 @llvm.smax.i32(i32 %i.aeo, i32 0)
  %i.aeq = tail call i32 @llvm.umin.i32(i32 %i.aep, i32 255)
  %i.aer = trunc nuw i32 %i.aeq to i8
  %i.aes = getelementptr inbounds nuw i8, ptr %.7861, i64 %indvars.iv951
  store i8 %i.aer, ptr %i.aes, align 1, !tbaa !53
  %indvars.iv.next952 = add nuw nsw i64 %indvars.iv951, 1 ; 2 uses
  %exitcond955.not = icmp eq i64 %indvars.iv.next952, %wide.trip.count
  br i1 %exitcond955.not, label %.critedge, label %.thread766, !llvm.loop !558

.critedge:                                        ; preds = %.thread766, %.thread766.us, %.thread753.us, %middle.block1078, %middle.block, %bb.ab, %.lr.ph864, %.thread748
  %indvars.iv.next967 = add nsw i64 %indvars.iv966, 1 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.7861, i64 %wide.trip.count ; 2 uses
  %exitcond970.not = icmp eq i64 %indvars.iv.next967, %wide.trip.count969
  br i1 %exitcond970.not, label %.loopexit798, label %.lr.ph864, !llvm.loop !559

bb.ah:                                            ; preds = %bb.aa
  br i1 %i.cg, label %.preheader799, label %.preheader801

.preheader801:                                    ; preds = %bb.ah
  br i1 %i.xv, label %.lr.ph845.preheader, label %.loopexit798

.lr.ph845.preheader:                              ; preds = %.preheader801
  %i.aeu = sext i32 %.0618870 to i64
  %scevgep1102.a = getelementptr i8, ptr %.0614871, i64 %wide.trip.count
  %i.aev = xor i32 %.0618870, -1
  %i.aew = add i32 %.0622868, %i.aev
  %i.aex = zext i32 %i.aew to i64
  %i.aey = mul nuw nsw i64 %wide.trip.count, %i.aex
  %scevgep1103.a = getelementptr i8, ptr %scevgep1102.a, i64 %i.aey ; 5 uses
  %invariant.op.reass = add i64 %.06148711082, %invariant.op1233
  br label %.lr.ph845

.preheader799:                                    ; preds = %bb.ah
  br i1 %i.xv, label %.lr.ph852.preheader, label %.loopexit798

.lr.ph852.preheader:                              ; preds = %.preheader799
  %i.aez = sext i32 %.0618870 to i64
  br label %.lr.ph852

.lr.ph852:                                        ; preds = %.lr.ph852.preheader, %bb.ao
  %indvars.iv946 = phi i64 [ %i.aez, %.lr.ph852.preheader ], [ %indvars.iv.next947, %bb.ao ] ; 5 uses
  %.8851 = phi ptr [ %.0614871, %.lr.ph852.preheader ], [ %i.ais, %bb.ao ] ; 2 uses
  %.idx997 = shl nsw i64 %indvars.iv946, 2
  %i.afa = getelementptr inbounds i8, ptr %i.ee, i64 %.idx997 ; 2 uses
  %i.afb = load i16, ptr %i.afa, align 2, !tbaa !56
  %i.afc = sext i16 %i.afb to i32
  %i.afd = load i32, ptr %7, align 4, !tbaa !106
  %i.afe = trunc nsw i64 %indvars.iv946 to i32
  %i.aff = add nsw i32 %i.afd, %i.afe
  %i.afg = add nsw i32 %i.aff, %i.afc             ; 8 uses
  %i.afh = getelementptr i8, ptr %i.afa, i64 2
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !56
  %i.afj = sext i16 %i.afi to i32
  %i.afk = add nsw i32 %i.el, %i.afj              ; 8 uses
  br i1 %i.ch, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph852
  %.not667 = icmp sge i32 %i.afg, %i.t
  %i.afl = icmp slt i32 %i.afg, -1
  %or.cond679.not787.not790 = or i1 %.not667, %i.afl
  %.not668 = icmp sge i32 %i.afk, %i.z
  %i.afm = icmp slt i32 %i.afk, -1
  %i.afn = or i1 %.not668, %i.afm
  %or.cond681 = select i1 %or.cond679.not787.not790, i1 true, i1 %i.afn
  br i1 %or.cond681, label %bb.aj, label %.thread755

.thread755:                                       ; preds = %bb.ai
  %i.afo = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %indvars.iv946
  %i.afp = load i16, ptr %i.afo, align 2, !tbaa !56
  %i.afq = zext i16 %i.afp to i64
  %.idx669756 = shl nuw nsw i64 %i.afq, 3
  %i.afr = getelementptr inbounds nuw i8, ptr %4, i64 %.idx669756
  br label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.afs = load i8, ptr %i.a, align 16, !tbaa !53
  br label %bb.ao

bb.ak:                                            ; preds = %.lr.ph852
  %i.aft = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %indvars.iv946
  %i.afu = load i16, ptr %i.aft, align 2, !tbaa !56
  %i.afv = zext i16 %i.afu to i64
  %.idx669 = shl nuw nsw i64 %i.afv, 3
  %i.afw = getelementptr inbounds nuw i8, ptr %4, i64 %.idx669 ; 2 uses
  br i1 %i.ci, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.afx = tail call i32 @llvm.smin.i32(i32 %i.afg, i32 %i.bs)
  %.inv.i = icmp slt i32 %i.afg, 0
  %i.afy = select i1 %.inv.i, i32 0, i32 %i.afx
  %i.afz = add nsw i32 %i.afg, 1
  %i.aga = tail call i32 @llvm.smin.i32(i32 %i.afz, i32 %i.bs)
  %.inv.i694 = icmp slt i32 %i.afg, -1
  %i.agb = select i1 %.inv.i694, i32 0, i32 %i.aga
  %i.agc = tail call i32 @llvm.smin.i32(i32 %i.afk, i32 %i.bt)
  %.inv.i695 = icmp slt i32 %i.afk, 0
  %i.agd = select i1 %.inv.i695, i32 0, i32 %i.agc
end_hunk_1
begin_hunk_2_@_ZN2cvL13remapBilinearINS_4CastIfsEENS_10RemapNoVecILb1EEEfLb1EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE:bb.a
  %i.agb = getelementptr inbounds [2 x i8], ptr %i.afx, i64 %i.afr
  %or.cond21781 = icmp slt i32 %i.aga, 0
  %i.agc = select i1 %or.cond21781, ptr %i.a, ptr %i.agb
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.agd = phi ptr [ %i.aeb, %bb.au ], [ %i.afa, %bb.av ] ; 4 uses
  %.0596 = phi ptr [ %i.aer, %bb.au ], [ %i.afo, %bb.av ]
  %.0595 = phi ptr [ %i.aeu, %bb.au ], [ %i.aft, %bb.av ]
  %.0594 = phi ptr [ %i.aey, %bb.au ], [ %i.afz, %bb.av ]
  %.0593 = phi ptr [ %i.aez, %bb.au ], [ %i.agc, %bb.av ]
  %i.age = load float, ptr %i.agd, align 4, !tbaa !52
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 4
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !52
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !52
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agd, i64 12
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !52
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ax
  %indvars.iv930 = phi i64 [ 0, %bb.aw ], [ %indvars.iv.next931, %bb.ax ] ; 6 uses
  %i.agl = getelementptr inbounds nuw [2 x i8], ptr %.0596, i64 %indvars.iv930
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !56
  %i.agn = sitofp i16 %i.agm to float
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr %.0595, i64 %indvars.iv930
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !56
  %i.agq = sitofp i16 %i.agp to float
  %i.agr = fmul float %i.agg, %i.agq
  %i.ags = tail call float @llvm.fmuladd.f32(float %i.agn, float %i.age, float %i.agr)
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %.0594, i64 %indvars.iv930
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !56
  %i.agv = sitofp i16 %i.agu to float
  %i.agw = tail call float @llvm.fmuladd.f32(float %i.agv, float %i.agi, float %i.ags)
  %i.agx = getelementptr inbounds nuw [2 x i8], ptr %.0593, i64 %indvars.iv930
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !56
  %i.agz = sitofp i16 %i.agy to float
  %i.aha = tail call float @llvm.fmuladd.f32(float %i.agz, float %i.agk, float %i.agw)
  %i.ahb = insertelement <4 x float> poison, float %i.aha, i64 0
  %i.ahc = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ahb)
  %i.ahd = tail call i32 @llvm.smax.i32(i32 %i.ahc, i32 -32768)
  %i.ahe = tail call i32 @llvm.smin.i32(i32 %i.ahd, i32 32767)
  %i.ahf = trunc nsw i32 %i.ahe to i16
  %i.ahg = getelementptr inbounds nuw [2 x i8], ptr %.9842, i64 %indvars.iv930
  store i16 %i.ahf, ptr %i.ahg, align 2, !tbaa !56
  %indvars.iv.next931 = add nuw nsw i64 %indvars.iv930, 1 ; 2 uses
  %exitcond934.not = icmp eq i64 %indvars.iv.next931, %wide.trip.count
  br i1 %exitcond934.not, label %.loopexit, label %bb.ax, !llvm.loop !629

.loopexit:                                        ; preds = %bb.ax, %.preheader.prol.loopexit, %.preheader, %middle.block, %vec.epilog.middle.block
  %indvars.iv.next941 = add nsw i64 %indvars.iv940, 1 ; 2 uses
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %.9842, i64 %wide.trip.count ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next941 to i32
  %exitcond943.not = icmp eq i32 %.0622866, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond943.not, label %.loopexit796, label %.lr.ph843, !llvm.loop !630

.loopexit796:                                     ; preds = %.lr.ph, %.lr.ph818, %.lr.ph823, %.lr.ph828, %bb.aa, %.loopexit, %bb.ar, %.critedge, %.preheader809, %.preheader807, %.preheader805, %.preheader803, %.preheader801, %.preheader799, %.preheader797, %.preheader795, %.thread, %bb.y
  %.12634 = phi i32 [ %.0622866, %bb.y ], [ %.0622866, %.critedge ], [ %.0622866, %.lr.ph823 ], [ %.0622866, %.lr.ph818 ], [ %.0622866, %.thread ], [ %.0622866, %bb.ar ], [ %.0622866, %.loopexit ], [ %.0622866, %bb.aa ], [ %.0622866, %.lr.ph828 ], [ %.0618868, %.preheader795 ], [ %.0618868, %.preheader797 ], [ %.0618868, %.preheader799 ], [ %.0618868, %.preheader801 ], [ %.0618868, %.preheader803 ], [ %.0618868, %.preheader805 ], [ %.0618868, %.preheader807 ], [ %.0618868, %.preheader809 ], [ %.0622866, %.lr.ph ] ; 2 uses
  %.1621 = phi i8 [ %.0620867, %bb.y ], [ %i.fr, %.critedge ], [ 0, %.lr.ph823 ], [ 0, %.lr.ph818 ], [ 0, %.thread ], [ %i.fr, %bb.ar ], [ %i.fr, %.loopexit ], [ 0, %bb.aa ], [ 0, %.lr.ph828 ], [ 1, %.preheader795 ], [ 1, %.preheader797 ], [ 1, %.preheader799 ], [ 0, %.preheader801 ], [ 0, %.preheader803 ], [ 0, %.preheader805 ], [ 0, %.preheader807 ], [ 0, %.preheader809 ], [ 0, %.lr.ph ]
  %.1619 = phi i32 [ %.0618868, %bb.y ], [ %.0622866, %.critedge ], [ %.0622866, %.lr.ph823 ], [ %.0622866, %.lr.ph818 ], [ %.0618868, %.thread ], [ %.0622866, %bb.ar ], [ %.0622866, %.loopexit ], [ %.0622866, %bb.aa ], [ %.0622866, %.lr.ph828 ], [ %.0622866, %.preheader795 ], [ %.0622866, %.preheader797 ], [ %.0622866, %.preheader799 ], [ %.0622866, %.preheader801 ], [ %.0622866, %.preheader803 ], [ %.0622866, %.preheader805 ], [ %.0622866, %.preheader807 ], [ %.0622866, %.preheader809 ], [ %.0622866, %.lr.ph ]
  %.12 = phi ptr [ %.0614869, %bb.y ], [ %i.yh, %.critedge ], [ %i.km, %.lr.ph823 ], [ %i.oa, %.lr.ph818 ], [ %.0614869, %.thread ], [ %i.abv, %bb.ar ], [ %i.ahh, %.loopexit ], [ %i.tn, %bb.aa ], [ %i.hu, %.lr.ph828 ], [ %.0614869, %.preheader795 ], [ %.0614869, %.preheader797 ], [ %.0614869, %.preheader799 ], [ %.0614869, %.preheader801 ], [ %.0614869, %.preheader803 ], [ %.0614869, %.preheader805 ], [ %.0614869, %.preheader807 ], [ %.0614869, %.preheader809 ], [ %i.sk, %.lr.ph ]
  %i.ahi = add nsw i32 %.12634, 1
  %.not.not = icmp slt i32 %.12634, %i.ar
  br i1 %.not.not, label %bb.u, label %._crit_edge, !llvm.loop !631
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cvL13remapBilinearINS_4CastIffEENS_10RemapNoVecILb1EEEfLb1EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca [128 x float], align 16           ; 25 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !67   ; 6 uses
  %i.e = icmp slt i32 %i.d, 3
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %11)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %10, align 8, !tbaa !61    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !53
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i684, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i684 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.d, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = icmp eq i32 %i.d, 2
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i32 %i.d, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.t = phi i32 [ %i.q, %bb.f ], [ %i.s, %bb.g ] ; 9 uses
  %i.u = icmp eq i32 %i.d, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp sgt i32 %i.d, -1
  %i.y = zext i1 %i.x to i32
  %i.z = select i1 %i.u, i32 %i.w, i32 %i.y       ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !67 ; 6 uses
  %i.ac = icmp slt i32 %i.ab, 3
  br i1 %i.ac, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #27
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i684, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i683

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i683: ; preds = %bb.j
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !53
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i684

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i684: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i683
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

bb.k:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.aj = icmp sgt i32 %i.ab, 0
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.al = icmp eq i32 %i.ab, 2
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  br label %_ZNK2cv8MatShapeclEv.exit690

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp eq i32 %i.ab, 0
  %i.aq = zext i1 %i.ap to i32
  br label %_ZNK2cv8MatShapeclEv.exit690

_ZNK2cv8MatShapeclEv.exit690:                     ; preds = %bb.l, %bb.m
  %i.ar = phi i32 [ %i.ao, %bb.l ], [ %i.aq, %bb.m ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.at = load i32, ptr %i.as, align 4
  %i.au = load i32, ptr %0, align 8, !tbaa !72    ; 2 uses
  %i.av = lshr i32 %i.au, 5                       ; 8 uses
  %i.aw = and i32 %i.av, 127                      ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73 ; 19 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bb = add nuw nsw i32 %i.aw, 1                ; 8 uses
  %wide.trip.count = zext nneg i32 %i.bb to i64   ; 27 uses
  %min.iters.check = icmp samesign ugt i32 %i.aw, 2
  %i.bc = and i32 %i.au, 3968
  %.not = icmp eq i32 %i.bc, 0
  %or.cond1218 = and i1 %min.iters.check, %.not
  br i1 %or.cond1218, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %_ZNK2cv8MatShapeclEv.exit690
  %n.vec = and i64 %wide.trip.count, 4            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load = load <2 x double>, ptr %6, align 8, !tbaa !58
  %wide.load1037 = load <2 x double>, ptr %i.bd, align 8, !tbaa !58
  %i.be = fptrunc <2 x double> %wide.load to <2 x float>
  %i.bf = fptrunc <2 x double> %wide.load1037 to <2 x float>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store <2 x float> %i.be, ptr %i.bg, align 16, !tbaa !52
  store <2 x float> %i.bf, ptr %i.bh, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit1214, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZNK2cv8MatShapeclEv.exit690, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZNK2cv8MatShapeclEv.exit690 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.bj = and i32 %i.av, 127
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1
  %i.bm = sub nsw i64 %i.bk, %indvars.iv.ph
  %xtraiter = and i64 %i.bl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bn = and i64 %indvars.iv.prol, 3
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !58
  %i.bq = fptrunc double %i.bp to float
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.prol
  store float %i.bq, ptr %i.br, align 4, !tbaa !52
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !633

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ] ; 5 uses
  %i.bs = icmp ult i64 %i.bm, 3
  br i1 %i.bs, label %.loopexit1214, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.bt = add i64 %indvars.iv.unr, 1
  %i.bu = and i64 %i.bt, 3
  %i.bv = and i64 %indvars.iv.unr, 3
  %i.bw = xor i64 %i.bv, 2
  %i.bx = add i64 %indvars.iv.unr, 3
  %i.by = and i64 %i.bx, 3
  %i.bz = and i64 %indvars.iv.unr, 3
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !58
  %i.cc = fptrunc double %i.cb to float
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bu
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !58
  %i.cf = fptrunc double %i.ce to float
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bw
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !58
  %i.ci = fptrunc double %i.ch to float
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.by
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !58
  %i.cl = fptrunc double %i.ck to float
  br label %scalar.ph

.loopexit1214:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cm = icmp eq i32 %i.ab, 2
  %i.cn = icmp sgt i32 %i.ab, -1
  %i.co = zext i1 %i.cn to i32
  %i.cp = select i1 %i.cm, i32 %i.at, i32 %i.co   ; 2 uses
  %i.cq = lshr i64 %i.ba, 2                       ; 21 uses
  %i.cr = add nsw i32 %i.t, -1                    ; 6 uses
  %.sroa.speculated702 = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  %i.cs = add nsw i32 %i.z, -1                    ; 7 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 0)
  %i.ct = icmp slt i32 %i.t, 1
  %i.cu = icmp slt i32 %i.z, 1
  %i.cv = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %i.cv, label %bb.n, label %.preheader811

.preheader811:                                    ; preds = %.loopexit1214
  %i.cw = icmp sgt i32 %i.cp, 0
  br i1 %i.cw, label %.lr.ph872, label %._crit_edge873.split

.lr.ph872:                                        ; preds = %.preheader811
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.not865 = icmp slt i32 %i.ar, 0
  %trunc = trunc nuw i32 %i.bb to i8
  %i.de = icmp eq i32 %5, 5
  %i.df = icmp eq i32 %i.aw, 0
  %i.dg = icmp eq i32 %5, 0                       ; 2 uses
  %i.dh = icmp eq i32 %5, 1                       ; 2 uses
  br i1 %.not865, label %._crit_edge873.split, label %.lr.ph870.preheader

.lr.ph870.preheader:                              ; preds = %.lr.ph872
  %wide.trip.count972 = zext nneg i32 %i.cp to i64
  %i.di = shl nuw nsw i32 %i.av, 2
  %i.dj = and i32 %i.di, 508
  %narrow = add nuw nsw i32 %i.dj, 4
  %i.dk = zext nneg i32 %narrow to i64            ; 3 uses
  %scevgep1042 = getelementptr i8, ptr %i.ay, i64 %i.dk
  %i.dl = and i64 %i.ba, -4
  %i.dm = shl nuw nsw i32 %i.av, 2
  %i.dn = and i32 %i.dm, 508
  %narrow1215 = add nuw nsw i32 %i.dn, 4
  %i.do = zext nneg i32 %narrow1215 to i64        ; 3 uses
  %scevgep1072 = getelementptr i8, ptr %i.ay, i64 %i.do
  %i.dp = and i64 %i.ba, -4
  %i.dq = shl nuw nsw i32 %i.av, 2
  %i.dr = and i32 %i.dq, 508
  %narrow1216 = add nuw nsw i32 %i.dr, 4
  %i.ds = zext nneg i32 %narrow1216 to i64
  %i.dt = shl nuw nsw i32 %i.av, 2
  %i.du = and i32 %i.dt, 508
  %narrow1217 = add nuw nsw i32 %i.du, 4
  %i.dv = zext nneg i32 %narrow1217 to i64        ; 6 uses
  %i.dw = and i32 %i.av, 127
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 4                ; 3 uses
  %scevgep1164.a = getelementptr i8, ptr %i.ay, i64 %i.dz
  %i.ea = shl nuw nsw i64 %i.dx, 3
  %i.eb = add nuw nsw i64 %i.ea, 8                ; 2 uses
  %scevgep1166.a = getelementptr i8, ptr %i.ay, i64 %i.eb
  %scevgep1168.a = getelementptr i8, ptr %i.ay, i64 %i.eb
  %i.ec = and i64 %i.ba, -4
  %scevgep1170 = getelementptr i8, ptr %4, i64 16
  %i.ed = and i32 %i.av, 127
  %i.ee = zext nneg i32 %i.ed to i64              ; 6 uses
  %i.ef = add nuw nsw i64 %i.ee, 1
  %min.iters.check1192 = icmp samesign ult i32 %i.aw, 7
  %n.vec1194 = and i64 %wide.trip.count, 252      ; 3 uses
  %cmp.n1211 = icmp eq i64 %n.vec1194, %wide.trip.count
  %min.iters.check1140 = icmp samesign ult i32 %i.aw, 3
  %n.vec1142 = and i64 %wide.trip.count, 252      ; 3 uses
  %cmp.n1159 = icmp eq i64 %n.vec1142, %wide.trip.count
  %min.iters.check1101 = icmp samesign ult i32 %i.aw, 7
  %invariant.op1256 = sub i64 -1, %i.b
  %n.vec1103 = and i64 %wide.trip.count, 248      ; 3 uses
  %cmp.n1110 = icmp eq i64 %n.vec1103, %wide.trip.count
  %xtraiter1240 = and i64 %i.ef, 3                ; 2 uses
  %lcmp.mod1241.not = icmp eq i64 %xtraiter1240, 0
  %min.iters.check1052 = icmp samesign ult i32 %i.aw, 3 ; 2 uses
  %n.vec1084 = and i64 %wide.trip.count, 252      ; 3 uses
  %cmp.n1096 = icmp eq i64 %n.vec1084, %wide.trip.count
  %i.eg = and i64 %i.ee, 1
  %lcmp.mod1244.not.not.a = icmp eq i64 %i.eg, 0
  %n.vec1054 = and i64 %wide.trip.count, 252      ; 3 uses
  %cmp.n1067 = icmp eq i64 %n.vec1054, %wide.trip.count
  %i.eh = and i64 %i.ee, 1
  %lcmp.mod1247.not.not = icmp eq i64 %i.eh, 0
  br label %.lr.ph870

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.cc, ptr %i.ei, align 4, !tbaa !52
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store float %i.cf, ptr %i.ek, align 4, !tbaa !52
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store float %i.ci, ptr %i.em, align 4, !tbaa !52
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store float %i.cl, ptr %i.eo, align 4, !tbaa !52
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit1214, label %scalar.ph, !llvm.loop !634

bb.n:                                             ; preds = %.loopexit1214
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cvL13remapBilinearINS_11FixedPtCastIihLi15EEENS_10RemapNoVecILb0EEEsLb0EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE, ptr noundef nonnull @.str.1, i32 noundef 770) #27
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !53
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.q ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eq, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %common.resume

._crit_edge873.split:                             ; preds = %._crit_edge, %.lr.ph872, %.preheader811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph870:                                        ; preds = %.lr.ph870.preheader, %._crit_edge
  %indvars.iv969 = phi i64 [ 0, %.lr.ph870.preheader ], [ %indvars.iv.next970, %._crit_edge ] ; 5 uses
  %i.ew = load ptr, ptr %i.cx, align 8, !tbaa !73
  %i.ex = load i64, ptr %i.cy, align 8, !tbaa !15
  %i.ey = mul i64 %i.ex, %indvars.iv969
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ey
  %i.fa = load ptr, ptr %i.cz, align 8, !tbaa !73
  %i.fb = load i64, ptr %i.da, align 8, !tbaa !15
  %i.fc = mul i64 %i.fb, %indvars.iv969
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fc ; 9 uses
  %i.fe = load ptr, ptr %i.db, align 8, !tbaa !73
  %i.ff = load i64, ptr %i.dc, align 8, !tbaa !15
  %i.fg = mul i64 %i.ff, %indvars.iv969
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fg ; 10 uses
  %i.fi = load i32, ptr %i.dd, align 4, !tbaa !105
  %i.fj = trunc i64 %indvars.iv969 to i32
  %i.fk = add i32 %i.fi, %i.fj                    ; 9 uses
  br label %bb.s

._crit_edge:                                      ; preds = %.loopexit796
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1 ; 2 uses
  %exitcond973.not = icmp eq i64 %indvars.iv.next970, %wide.trip.count972
  br i1 %exitcond973.not, label %._crit_edge873.split, label %.lr.ph870, !llvm.loop !635

bb.s:                                             ; preds = %.lr.ph870, %.loopexit796
  %.0614869 = phi ptr [ %i.ez, %.lr.ph870 ], [ %.12, %.loopexit796 ] ; 38 uses
  %.0618868 = phi i32 [ 0, %.lr.ph870 ], [ %.1619, %.loopexit796 ] ; 21 uses
  %.0620867 = phi i8 [ 0, %.lr.ph870 ], [ %.1621, %.loopexit796 ] ; 4 uses
  %.0622866 = phi i32 [ 0, %.lr.ph870 ], [ %i.aer, %.loopexit796 ] ; 40 uses
  %.06148691099 = ptrtoaddr ptr %.0614869 to i64
  %i.fl = icmp slt i32 %.0622866, %i.ar
  br i1 %i.fl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fm = shl nsw i32 %.0622866, 1
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.fn ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !56
  %i.fq = sext i16 %i.fp to i32
  %i.fr = load i32, ptr %7, align 4, !tbaa !106   ; 2 uses
  %i.fs = add nsw i32 %i.fr, %.0622866
  %i.ft = add i32 %i.fs, %i.fq
  %i.fu = icmp ult i32 %i.ft, %.sroa.speculated702
  br i1 %i.fu, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.fv = getelementptr i8, ptr %i.fo, i64 2
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !56
  %i.fx = sext i16 %i.fw to i32
  %i.fy = add i32 %i.fk, %i.fx
  %i.fz = icmp ult i32 %i.fy, %.sroa.speculated
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ga = trunc nuw i8 %.0620867 to i1
  %i.gb = xor i1 %i.ga, true
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.gc = phi i1 [ %i.gb, %bb.v ], [ %i.fz, %bb.u ] ; 2 uses
  %i.gd = zext i1 %i.gc to i8                     ; 4 uses
  %i.ge = icmp eq i8 %.0620867, %i.gd
  br i1 %i.ge, label %.loopexit796, label %bb.x

.thread:                                          ; preds = %bb.t
  %i.gf = icmp eq i8 %.0620867, 0
  br i1 %i.gf, label %.loopexit796, label %.thread742

bb.x:                                             ; preds = %bb.w
  br i1 %i.gc, label %bb.y, label %..thread742_crit_edge

..thread742_crit_edge:                            ; preds = %bb.x
  %.pre = load i32, ptr %7, align 4, !tbaa !106
  br label %.thread742

.thread742:                                       ; preds = %..thread742_crit_edge, %.thread
  %i.gg = phi i32 [ %.pre, %..thread742_crit_edge ], [ %i.fr, %.thread ] ; 5 uses
  %i.gh = icmp slt i32 %.0618868, %.0622866       ; 5 uses
  switch i8 %trunc, label %.preheader801 [
    i8 1, label %.preheader803
    i8 2, label %.preheader805
    i8 3, label %.preheader807
    i8 4, label %.preheader809
  ]

.preheader809:                                    ; preds = %.thread742
  br i1 %i.gh, label %.lr.ph.preheader, label %.loopexit796
end_hunk_2
begin_hunk_3_@_ZN2cvL13remapBilinearINS_4CastIffEENS_10RemapNoVecILb1EEEfLb1EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE:bb.a
  %i.ox = mul i64 %i.cq, %i.ow
  %i.oy = shl nsw i64 %i.op, 2                    ; 2 uses
  %i.oz = add i64 %i.ox, %i.oy                    ; 2 uses
  %scevgep1165 = getelementptr i8, ptr %scevgep1164.a, i64 %i.oz ; 2 uses
  %scevgep1167 = getelementptr i8, ptr %scevgep1166.a, i64 %i.oz
  %i.pa = mul i64 %i.ec, %i.ol
  %i.pb = getelementptr i8, ptr %scevgep1168.a, i64 %i.pa
  %scevgep1169 = getelementptr i8, ptr %i.pb, i64 %i.oy
  %scevgep1171 = getelementptr i8, ptr %scevgep1170, i64 %.idx
  %bound01172.a = icmp ult ptr %.0614869, %scevgep1167
  %bound11173.a = icmp ult ptr %scevgep1165, %scevgep1163
  %found.conflict1174.a = and i1 %bound01172.a, %bound11173.a
  %bound01175 = icmp ult ptr %.0614869, %scevgep1165
  %bound11176 = icmp ult ptr %i.os, %scevgep1163
  %found.conflict1177 = and i1 %bound01175, %bound11176
  %conflict.rdx1178 = or i1 %found.conflict1174.a, %found.conflict1177
  %bound01179 = icmp ult ptr %.0614869, %scevgep1169
  %bound11180 = icmp ult ptr %invariant.gep1014, %scevgep1163
  %found.conflict1181 = and i1 %bound01179, %bound11180
  %conflict.rdx1182 = or i1 %conflict.rdx1178, %found.conflict1181
  %bound01183 = icmp ult ptr %.0614869, %invariant.gep1014
  %bound11184 = icmp ult ptr %i.oq, %scevgep1163
  %found.conflict1185 = and i1 %bound01183, %bound11184
  %conflict.rdx1186 = or i1 %conflict.rdx1182, %found.conflict1185
  %bound01187 = icmp ult ptr %.0614869, %scevgep1171
  %bound11188 = icmp ult ptr %i.ok, %scevgep1163
  %found.conflict1189 = and i1 %bound01187, %bound11188
  %conflict.rdx1190 = or i1 %conflict.rdx1186, %found.conflict1189
  br i1 %conflict.rdx1190, label %scalar.ph1191.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %vector.memcheck1161
  %i.pc = load float, ptr %i.ok, align 4, !tbaa !52, !alias.scope !680
  %broadcast.splatinsert1201.a = insertelement <4 x float> poison, float %i.pc, i64 0
  %broadcast.splat1202.a = shufflevector <4 x float> %broadcast.splatinsert1201.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pd = load float, ptr %i.or, align 4, !tbaa !52, !alias.scope !680
  %broadcast.splatinsert1199 = insertelement <4 x float> poison, float %i.pd, i64 0
  %broadcast.splat1200 = shufflevector <4 x float> %broadcast.splatinsert1199, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pe = load float, ptr %i.ot, align 4, !tbaa !52, !alias.scope !680
  %broadcast.splatinsert1204.a = insertelement <4 x float> poison, float %i.pe, i64 0
  %broadcast.splat1205.a = shufflevector <4 x float> %broadcast.splatinsert1204.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pf = load float, ptr %i.ou, align 4, !tbaa !52, !alias.scope !680
  %broadcast.splatinsert1207 = insertelement <4 x float> poison, float %i.pf, i64 0
  %broadcast.splat1208 = shufflevector <4 x float> %broadcast.splatinsert1207, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1209, %vector.body1195 ] ; 5 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %index1196
  %wide.load1197 = load <4 x float>, ptr %i.pg, align 4, !tbaa !52, !alias.scope !681
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1014, i64 %index1196
  %wide.load1198 = load <4 x float>, ptr %i.ph, align 4, !tbaa !52, !alias.scope !682
  %i.pi = fmul <4 x float> %wide.load1198, %broadcast.splat1200
  %i.pj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1197, <4 x float> %broadcast.splat1202.a, <4 x float> %i.pi)
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %index1196 ; 2 uses
  %wide.load1203.a = load <4 x float>, ptr %i.pk, align 4, !tbaa !52, !alias.scope !683
  %i.pl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1203.a, <4 x float> %broadcast.splat1205.a, <4 x float> %i.pj)
  %i.pm = getelementptr [4 x i8], ptr %i.pk, i64 %wide.trip.count
  %wide.load1206 = load <4 x float>, ptr %i.pm, align 4, !tbaa !52, !alias.scope !684
  %i.pn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1206, <4 x float> %broadcast.splat1208, <4 x float> %i.pl)
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.5833, i64 %index1196
  store <4 x float> %i.pn, ptr %i.po, align 4, !tbaa !52, !alias.scope !685, !noalias !686
  %index.next1209 = add nuw i64 %index1196, 4     ; 2 uses
  %i.pp = icmp eq i64 %index.next1209, %n.vec1194
  br i1 %i.pp, label %middle.block1210, label %vector.body1195, !llvm.loop !647

middle.block1210:                                 ; preds = %vector.body1195
  br i1 %cmp.n1211, label %.loopexit1213, label %scalar.ph1191.preheader

scalar.ph1191.preheader:                          ; preds = %vector.memcheck1161, %.lr.ph834, %middle.block1210
  %indvars.iv920.ph = phi i64 [ 0, %vector.memcheck1161 ], [ 0, %.lr.ph834 ], [ %n.vec1194, %middle.block1210 ]
  br label %scalar.ph1191

.loopexit1213:                                    ; preds = %scalar.ph1191, %middle.block1210
  %indvars.iv.next926 = add nsw i64 %indvars.iv925, 1 ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.5833, i64 %wide.trip.count ; 2 uses
  %exitcond929.not = icmp eq i64 %indvars.iv.next926, %wide.trip.count928
  br i1 %exitcond929.not, label %.loopexit796, label %.lr.ph834, !llvm.loop !648

scalar.ph1191:                                    ; preds = %scalar.ph1191.preheader, %scalar.ph1191
  %indvars.iv920 = phi i64 [ %indvars.iv.next921, %scalar.ph1191 ], [ %indvars.iv920.ph, %scalar.ph1191.preheader ] ; 5 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv920
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !52
  %i.pt = load float, ptr %i.ok, align 4, !tbaa !52
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1014, i64 %indvars.iv920
  %i.pu = load float, ptr %gep, align 4, !tbaa !52
  %i.pv = load float, ptr %i.or, align 4, !tbaa !52
  %i.pw = fmul float %i.pu, %i.pv
  %i.px = tail call float @llvm.fmuladd.f32(float %i.ps, float %i.pt, float %i.pw)
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv920 ; 2 uses
  %i.pz = load float, ptr %i.py, align 4, !tbaa !52
  %i.qa = load float, ptr %i.ot, align 4, !tbaa !52
  %i.qb = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.qa, float %i.px)
  %i.qc = getelementptr [4 x i8], ptr %i.py, i64 %wide.trip.count
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !52
  %i.qe = load float, ptr %i.ou, align 4, !tbaa !52
  %i.qf = tail call float @llvm.fmuladd.f32(float %i.qd, float %i.qe, float %i.qb)
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.5833, i64 %indvars.iv920
  store float %i.qf, ptr %i.qg, align 4, !tbaa !52
  %indvars.iv.next921 = add nuw nsw i64 %indvars.iv920, 1 ; 2 uses
  %exitcond924.not = icmp eq i64 %indvars.iv.next921, %wide.trip.count
  br i1 %exitcond924.not, label %.loopexit1213, label %scalar.ph1191, !llvm.loop !649

bb.y:                                             ; preds = %bb.x
  %i.qh = icmp slt i32 %.0618868, %.0622866       ; 3 uses
  br i1 %i.de, label %.preheader795, label %bb.ag

.preheader795:                                    ; preds = %bb.y
  br i1 %i.qh, label %.lr.ph862, label %.loopexit796

.lr.ph862:                                        ; preds = %.preheader795
  %i.qi = load i32, ptr %7, align 4, !tbaa !106
  %i.qj = sext i32 %.0618868 to i64               ; 2 uses
  %wide.trip.count967 = sext i32 %.0622866 to i64 ; 2 uses
  %scevgep = getelementptr i8, ptr %.0614869, i64 %i.dk
  %i.qk = xor i64 %i.qj, -1
  %i.ql = add nsw i64 %i.qk, %wide.trip.count967  ; 2 uses
  %i.qm = mul nsw i64 %i.ql, %i.dk
  %scevgep1038 = getelementptr i8, ptr %scevgep, i64 %i.qm ; 3 uses
  %scevgep1070.a = getelementptr i8, ptr %.0614869, i64 %i.do
  %i.qn = mul nsw i64 %i.ql, %i.do
  %scevgep1071 = getelementptr i8, ptr %scevgep1070.a, i64 %i.qn ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph862, %.critedge
  %indvars.iv964 = phi i64 [ %i.qj, %.lr.ph862 ], [ %indvars.iv.next965, %.critedge ] ; 4 uses
  %.7859 = phi ptr [ %.0614869, %.lr.ph862 ], [ %i.wd, %.critedge ] ; 10 uses
  %.idx996 = shl nsw i64 %indvars.iv964, 2
  %i.qo = getelementptr inbounds i8, ptr %i.fd, i64 %.idx996 ; 2 uses
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !56
  %i.qq = sext i16 %i.qp to i32
  %i.qr = trunc i64 %indvars.iv964 to i32
  %i.qs = add i32 %i.qi, %i.qr
  %i.qt = add nsw i32 %i.qs, %i.qq                ; 4 uses
  %i.qu = getelementptr i8, ptr %i.qo, i64 2
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !56
  %i.qw = sext i16 %i.qv to i32
  %i.qx = add i32 %i.fk, %i.qw                    ; 5 uses
  %i.qy = icmp sgt i32 %i.qt, -1
  br i1 %i.qy, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.qz = icmp slt i32 %i.qt, %i.t
  %i.ra = icmp sgt i32 %i.qx, -1
  %or.cond = select i1 %i.qz, i1 %i.ra, i1 false
  %.not673.not = icmp slt i32 %i.qx, %i.z
  %or.cond676 = select i1 %or.cond, i1 %.not673.not, i1 false
  br i1 %or.cond676, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.rb = getelementptr inbounds [2 x i8], ptr %i.fh, i64 %indvars.iv964
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !56
  %i.rd = zext i16 %i.rc to i64
  %.idx674 = shl nuw nsw i64 %i.rd, 4
  %i.re = getelementptr inbounds nuw i8, ptr %4, i64 %.idx674 ; 18 uses
  %i.rf = load float, ptr %i.re, align 4, !tbaa !52 ; 2 uses
  %i.rg = fadd float %i.rf, 0.000000e+00          ; 3 uses
  %i.rh = icmp samesign ult i32 %i.qt, %i.cr      ; 2 uses
  br i1 %i.rh, label %bb.ac, label %.thread757

bb.ac:                                            ; preds = %bb.ab
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !52
  %i.rk = fadd float %i.rg, %i.rj                 ; 2 uses
  %i.rl = icmp slt i32 %i.qx, %i.cs
  br i1 %i.rl, label %bb.ad, label %.thread746

.thread757:                                       ; preds = %bb.ab
  %i.rm = icmp slt i32 %i.qx, %i.cs
  br i1 %i.rm, label %.thread746.sink.split, label %.thread746

bb.ad:                                            ; preds = %bb.ac
  %i.rn = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !52
  %i.rp = fadd float %i.rk, %i.ro
  br label %.thread746.sink.split

.thread746.sink.split:                            ; preds = %.thread757, %bb.ad
  %.sink1019 = phi i64 [ 12, %bb.ad ], [ 8, %.thread757 ]
  %.sink = phi float [ %i.rp, %bb.ad ], [ %i.rg, %.thread757 ]
  %i.rq = getelementptr inbounds nuw i8, ptr %i.re, i64 %.sink1019
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !52
  %i.rs = fadd float %.sink, %i.rr
  br label %.thread746

.thread746:                                       ; preds = %.thread746.sink.split, %bb.ac, %.thread757
  %i.rt = phi i1 [ false, %.thread757 ], [ false, %bb.ac ], [ true, %.thread746.sink.split ] ; 2 uses
  %.3607 = phi float [ %i.rg, %.thread757 ], [ %i.rk, %bb.ac ], [ %i.rs, %.thread746.sink.split ] ; 10 uses
  %i.ru = fcmp une float %.3607, 0.000000e+00
  br i1 %i.ru, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %.thread746
  %i.rv = getelementptr inbounds nuw i8, ptr %i.re, i64 4 ; 3 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !52
  %i.rx = fadd float %i.rf, %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %i.re, i64 8 ; 6 uses
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !52
  %i.sa = fadd float %i.rx, %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.re, i64 12 ; 3 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !52
  %i.sd = fadd float %i.sa, %i.sc                 ; 9 uses
  %i.se = zext nneg i32 %i.qx to i64              ; 3 uses
  %i.sf = mul i64 %i.cq, %i.se
  %i.sg = getelementptr [4 x i8], ptr %i.ay, i64 %i.sf
  %i.sh = mul i32 %i.qt, %i.bb
  %i.si = zext i32 %i.sh to i64                   ; 3 uses
  %i.sj = getelementptr [4 x i8], ptr %i.sg, i64 %i.si ; 13 uses
  %i.sk = getelementptr [4 x i8], ptr %i.sj, i64 %i.cq ; 7 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.sk, i64 %wide.trip.count ; 2 uses
  br i1 %i.rh, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.ae
  %invariant.gep1015 = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %wide.trip.count
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.thread751.us
  %indvars.iv959 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next960, %.thread751.us ] ; 6 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv959
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !52
  %i.sn = load float, ptr %i.re, align 4, !tbaa !52
  %i.so = tail call float @llvm.fmuladd.f32(float %i.sm, float %i.sn, float 0.000000e+00)
  %gep1016 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1015, i64 %indvars.iv959
  %i.sp = load float, ptr %gep1016, align 4, !tbaa !52
  %i.sq = load float, ptr %i.rv, align 4, !tbaa !52
  %i.sr = tail call float @llvm.fmuladd.f32(float %i.sp, float %i.sq, float %i.so) ; 2 uses
  br i1 %i.rt, label %bb.af, label %.thread751.us

bb.af:                                            ; preds = %.split.us
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv959
  %i.st = load float, ptr %i.ss, align 4, !tbaa !52
  %i.su = load float, ptr %i.ry, align 4, !tbaa !52
  %i.sv = tail call float @llvm.fmuladd.f32(float %i.st, float %i.su, float %i.sr)
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv959
  %i.sw = load float, ptr %gep.us, align 4, !tbaa !52
  %i.sx = load float, ptr %i.sb, align 4, !tbaa !52
  %i.sy = tail call float @llvm.fmuladd.f32(float %i.sw, float %i.sx, float %i.sv)
  br label %.thread751.us

.thread751.us:                                    ; preds = %bb.af, %.split.us
  %.3.us = phi float [ %i.sy, %bb.af ], [ %i.sr, %.split.us ]
  %i.sz = fmul float %i.sd, %.3.us
  %i.ta = fdiv float %i.sz, %.3607
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %indvars.iv959
  store float %i.ta, ptr %i.tb, align 4, !tbaa !52
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 2 uses
  %exitcond963.not = icmp eq i64 %indvars.iv.next960, %wide.trip.count
  br i1 %exitcond963.not, label %.critedge, label %.split.us, !llvm.loop !650

.split:                                           ; preds = %bb.ae
  br i1 %i.rt, label %.thread764.us.preheader, label %.thread764.preheader

.thread764.preheader:                             ; preds = %.split
  br i1 %min.iters.check1052, label %.thread764.preheader1222, label %vector.memcheck1069

vector.memcheck1069:                              ; preds = %.thread764.preheader
  %i.tc = mul i64 %i.dp, %i.se
  %i.td = shl nuw nsw i64 %i.si, 2
  %i.te = getelementptr i8, ptr %scevgep1072, i64 %i.tc
  %scevgep1073 = getelementptr i8, ptr %i.te, i64 %i.td
  %bound01074.a = icmp ult ptr %.0614869, %scevgep1073
  %bound11075.a = icmp ult ptr %i.sj, %scevgep1071
  %found.conflict1076.a = and i1 %bound01074.a, %bound11075.a
  %bound01077 = icmp ult ptr %.0614869, %i.rv
  %bound11078 = icmp ult ptr %i.re, %scevgep1071
  %found.conflict1079 = and i1 %bound01077, %bound11078
  %conflict.rdx1080 = or i1 %found.conflict1076.a, %found.conflict1079
  br i1 %conflict.rdx1080, label %.thread764.preheader1222, label %vector.ph1083

vector.ph1083:                                    ; preds = %vector.memcheck1069
  %i.tf = load float, ptr %i.re, align 4, !tbaa !52, !alias.scope !687
  %broadcast.splatinsert1092 = insertelement <4 x float> poison, float %i.tf, i64 0
  %broadcast.splat1093 = shufflevector <4 x float> %broadcast.splatinsert1092, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1085 = insertelement <4 x float> poison, float %i.sd, i64 0
  %broadcast.splat1086 = shufflevector <4 x float> %broadcast.splatinsert1085, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1087 = insertelement <4 x float> poison, float %.3607, i64 0
  %broadcast.splat1088 = shufflevector <4 x float> %broadcast.splatinsert1087, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %vector.ph1083
  %index1090 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1094, %vector.body1089 ] ; 3 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %index1090
  %wide.load1091 = load <4 x float>, ptr %i.tg, align 4, !tbaa !52, !alias.scope !688
  %i.th = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1091, <4 x float> %broadcast.splat1093, <4 x float> zeroinitializer)
  %i.ti = fmul <4 x float> %broadcast.splat1086, %i.th
  %i.tj = fdiv <4 x float> %i.ti, %broadcast.splat1088
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %index1090
  store <4 x float> %i.tj, ptr %i.tk, align 4, !tbaa !52, !alias.scope !689, !noalias !690
  %index.next1094 = add nuw i64 %index1090, 4     ; 2 uses
  %i.tl = icmp eq i64 %index.next1094, %n.vec1084
  br i1 %i.tl, label %middle.block1095, label %vector.body1089, !llvm.loop !655

middle.block1095:                                 ; preds = %vector.body1089
  br i1 %cmp.n1096, label %.critedge, label %.thread764.preheader1222

.thread764.preheader1222:                         ; preds = %vector.memcheck1069, %.thread764.preheader, %middle.block1095
  %indvars.iv949.ph = phi i64 [ 0, %vector.memcheck1069 ], [ 0, %.thread764.preheader ], [ %n.vec1084, %middle.block1095 ] ; 5 uses
  br i1 %lcmp.mod1244.not.not.a, label %.thread764.prol, label %.thread764.prol.loopexit

.thread764.prol:                                  ; preds = %.thread764.preheader1222
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv949.ph
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !52
  %i.to = load float, ptr %i.re, align 4, !tbaa !52
  %i.tp = tail call float @llvm.fmuladd.f32(float %i.tn, float %i.to, float 0.000000e+00)
  %i.tq = fmul float %i.sd, %i.tp
  %i.tr = fdiv float %i.tq, %.3607
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %indvars.iv949.ph
  store float %i.tr, ptr %i.ts, align 4, !tbaa !52
  %indvars.iv.next950.prol = or disjoint i64 %indvars.iv949.ph, 1
  br label %.thread764.prol.loopexit

.thread764.prol.loopexit:                         ; preds = %.thread764.prol, %.thread764.preheader1222
  %indvars.iv949.unr = phi i64 [ %indvars.iv949.ph, %.thread764.preheader1222 ], [ %indvars.iv.next950.prol, %.thread764.prol ]
  %i.tt = icmp eq i64 %indvars.iv949.ph, %i.ee
  br i1 %i.tt, label %.critedge, label %.thread764

.thread764.us.preheader:                          ; preds = %.split
  br i1 %min.iters.check1052, label %.thread764.us.preheader1220, label %vector.memcheck

vector.memcheck:                                  ; preds = %.thread764.us.preheader
  %i.tu = mul i64 %i.dl, %i.se
  %i.tv = shl nuw nsw i64 %i.si, 2
  %i.tw = getelementptr i8, ptr %scevgep1042, i64 %i.tu
  %scevgep1043 = getelementptr i8, ptr %i.tw, i64 %i.tv
  %bound0 = icmp ult ptr %.0614869, %invariant.gep
  %bound1 = icmp ult ptr %i.sk, %scevgep1038
  %found.conflict = and i1 %bound0, %bound1
  %bound01044.a = icmp ult ptr %.0614869, %scevgep1043
  %bound11045.a = icmp ult ptr %i.sj, %scevgep1038
  %found.conflict1046.a = and i1 %bound01044.a, %bound11045.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict1046.a
  %bound01047 = icmp ult ptr %.0614869, %i.sb
  %bound11048 = icmp ult ptr %i.re, %scevgep1038
  %found.conflict1049 = and i1 %bound01047, %bound11048
  %conflict.rdx1050 = or i1 %conflict.rdx, %found.conflict1049
  br i1 %conflict.rdx1050, label %.thread764.us.preheader1220, label %vector.ph1053

vector.ph1053:                                    ; preds = %vector.memcheck
  %i.tx = load float, ptr %i.re, align 4, !tbaa !52, !alias.scope !691
  %broadcast.splatinsert1060.a = insertelement <4 x float> poison, float %i.tx, i64 0
  %broadcast.splat1061.a = shufflevector <4 x float> %broadcast.splatinsert1060.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ty = load float, ptr %i.ry, align 4, !tbaa !52, !alias.scope !691
  %broadcast.splatinsert1063 = insertelement <4 x float> poison, float %i.ty, i64 0
  %broadcast.splat1064 = shufflevector <4 x float> %broadcast.splatinsert1063, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.sd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1055 = insertelement <4 x float> poison, float %.3607, i64 0
  %broadcast.splat1056 = shufflevector <4 x float> %broadcast.splatinsert1055, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %vector.ph1053
  %index1058 = phi i64 [ 0, %vector.ph1053 ], [ %index.next1065, %vector.body1057 ] ; 4 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %index1058
  %wide.load1059.a = load <4 x float>, ptr %i.tz, align 4, !tbaa !52, !alias.scope !692
  %i.ua = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1059.a, <4 x float> %broadcast.splat1061.a, <4 x float> zeroinitializer)
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %index1058
  %wide.load1062 = load <4 x float>, ptr %i.ub, align 4, !tbaa !52, !alias.scope !693
  %i.uc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1062, <4 x float> %broadcast.splat1064, <4 x float> %i.ua)
  %i.ud = fmul <4 x float> %broadcast.splat, %i.uc
  %i.ue = fdiv <4 x float> %i.ud, %broadcast.splat1056
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %index1058
  store <4 x float> %i.ue, ptr %i.uf, align 4, !tbaa !52, !alias.scope !694, !noalias !695
  %index.next1065 = add nuw i64 %index1058, 4     ; 2 uses
  %i.ug = icmp eq i64 %index.next1065, %n.vec1054
  br i1 %i.ug, label %middle.block1066, label %vector.body1057, !llvm.loop !661

middle.block1066:                                 ; preds = %vector.body1057
  br i1 %cmp.n1067, label %.critedge, label %.thread764.us.preheader1220

.thread764.us.preheader1220:                      ; preds = %vector.memcheck, %.thread764.us.preheader, %middle.block1066
  %indvars.iv954.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.thread764.us.preheader ], [ %n.vec1054, %middle.block1066 ] ; 6 uses
  br i1 %lcmp.mod1247.not.not, label %.thread764.us.prol, label %.thread764.us.prol.loopexit

.thread764.us.prol:                               ; preds = %.thread764.us.preheader1220
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv954.ph
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !52
  %i.uj = load float, ptr %i.re, align 4, !tbaa !52
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.ui, float %i.uj, float 0.000000e+00)
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv954.ph
  %i.um = load float, ptr %i.ul, align 4, !tbaa !52
  %i.un = load float, ptr %i.ry, align 4, !tbaa !52
  %i.uo = tail call float @llvm.fmuladd.f32(float %i.um, float %i.un, float %i.uk)
  %i.up = fmul float %i.sd, %i.uo
  %i.uq = fdiv float %i.up, %.3607
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %indvars.iv954.ph
  store float %i.uq, ptr %i.ur, align 4, !tbaa !52
  %indvars.iv.next955.prol = or disjoint i64 %indvars.iv954.ph, 1
  br label %.thread764.us.prol.loopexit

.thread764.us.prol.loopexit:                      ; preds = %.thread764.us.prol, %.thread764.us.preheader1220
  %indvars.iv954.unr = phi i64 [ %indvars.iv954.ph, %.thread764.us.preheader1220 ], [ %indvars.iv.next955.prol, %.thread764.us.prol ]
  %i.us = icmp eq i64 %indvars.iv954.ph, %i.ee
  br i1 %i.us, label %.critedge, label %.thread764.us

.thread764.us:                                    ; preds = %.thread764.us.prol.loopexit, %.thread764.us
  %indvars.iv954 = phi i64 [ %indvars.iv.next955.1, %.thread764.us ], [ %indvars.iv954.unr, %.thread764.us.prol.loopexit ] ; 5 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv954
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !52
  %i.uv = load float, ptr %i.re, align 4, !tbaa !52
  %i.uw = tail call float @llvm.fmuladd.f32(float %i.uu, float %i.uv, float 0.000000e+00)
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv954
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !52
  %i.uz = load float, ptr %i.ry, align 4, !tbaa !52
  %i.va = tail call float @llvm.fmuladd.f32(float %i.uy, float %i.uz, float %i.uw)
  %i.vb = fmul float %i.sd, %i.va
  %i.vc = fdiv float %i.vb, %.3607
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %indvars.iv954
  store float %i.vc, ptr %i.vd, align 4, !tbaa !52
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1 ; 3 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv.next955
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !52
  %i.vg = load float, ptr %i.re, align 4, !tbaa !52
  %i.vh = tail call float @llvm.fmuladd.f32(float %i.vf, float %i.vg, float 0.000000e+00)
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv.next955
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !52
  %i.vk = load float, ptr %i.ry, align 4, !tbaa !52
  %i.vl = tail call float @llvm.fmuladd.f32(float %i.vj, float %i.vk, float %i.vh)
  %i.vm = fmul float %i.sd, %i.vl
  %i.vn = fdiv float %i.vm, %.3607
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %indvars.iv.next955
  store float %i.vn, ptr %i.vo, align 4, !tbaa !52
  %indvars.iv.next955.1 = add nuw nsw i64 %indvars.iv954, 2 ; 2 uses
  %exitcond958.not.1 = icmp eq i64 %indvars.iv.next955.1, %wide.trip.count
  br i1 %exitcond958.not.1, label %.critedge, label %.thread764.us, !llvm.loop !662

.thread764:                                       ; preds = %.thread764.prol.loopexit, %.thread764
  %indvars.iv949 = phi i64 [ %indvars.iv.next950.1, %.thread764 ], [ %indvars.iv949.unr, %.thread764.prol.loopexit ] ; 4 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv949
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !52
  %i.vr = load float, ptr %i.re, align 4, !tbaa !52
  %i.vs = tail call float @llvm.fmuladd.f32(float %i.vq, float %i.vr, float 0.000000e+00)
  %i.vt = fmul float %i.sd, %i.vs
  %i.vu = fdiv float %i.vt, %.3607
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %indvars.iv949
  store float %i.vu, ptr %i.vv, align 4, !tbaa !52
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv.next950
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !52
  %i.vy = load float, ptr %i.re, align 4, !tbaa !52
  %i.vz = tail call float @llvm.fmuladd.f32(float %i.vx, float %i.vy, float 0.000000e+00)
  %i.wa = fmul float %i.sd, %i.vz
  %i.wb = fdiv float %i.wa, %.3607
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %indvars.iv.next950
  store float %i.wb, ptr %i.wc, align 4, !tbaa !52
  %indvars.iv.next950.1 = add nuw nsw i64 %indvars.iv949, 2 ; 2 uses
  %exitcond953.not.1 = icmp eq i64 %indvars.iv.next950.1, %wide.trip.count
  br i1 %exitcond953.not.1, label %.critedge, label %.thread764, !llvm.loop !663

.critedge:                                        ; preds = %.thread764.prol.loopexit, %.thread764, %.thread764.us.prol.loopexit, %.thread764.us, %.thread751.us, %middle.block1095, %middle.block1066, %bb.aa, %bb.z, %.thread746
  %indvars.iv.next965 = add nsw i64 %indvars.iv964, 1 ; 2 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.7859, i64 %wide.trip.count ; 2 uses
  %exitcond968.not = icmp eq i64 %indvars.iv.next965, %wide.trip.count967
  br i1 %exitcond968.not, label %.loopexit796, label %bb.z, !llvm.loop !664

bb.ag:                                            ; preds = %bb.y
  br i1 %i.df, label %.preheader797, label %.preheader799

.preheader799:                                    ; preds = %bb.ag
  br i1 %i.qh, label %.lr.ph843.preheader, label %.loopexit796

.lr.ph843.preheader:                              ; preds = %.preheader799
  %i.we = sext i32 %.0618868 to i64
  %scevgep1113.a = getelementptr i8, ptr %.0614869, i64 %i.dv
  %i.wf = xor i32 %.0618868, -1
  %i.wg = add i32 %.0622866, %i.wf
  %i.wh = zext i32 %i.wg to i64
  %i.wi = mul nuw nsw i64 %i.dv, %i.wh
  %scevgep1114.a = getelementptr i8, ptr %scevgep1113.a, i64 %i.wi ; 5 uses
  %invariant.op.reass = add i64 %.06148691099, %invariant.op1256
  br label %.lr.ph843

.preheader797:                                    ; preds = %bb.ag
  br i1 %i.qh, label %.lr.ph850.preheader, label %.loopexit796

.lr.ph850.preheader:                              ; preds = %.preheader797
  %i.wj = sext i32 %.0618868 to i64
  br label %.lr.ph850

.lr.ph850:                                        ; preds = %.lr.ph850.preheader, %bb.an
  %indvars.iv944 = phi i64 [ %i.wj, %.lr.ph850.preheader ], [ %indvars.iv.next945, %bb.an ] ; 5 uses
  %.8849 = phi ptr [ %.0614869, %.lr.ph850.preheader ], [ %i.zm, %bb.an ] ; 2 uses
  %.idx995 = shl nsw i64 %indvars.iv944, 2
  %i.wk = getelementptr inbounds i8, ptr %i.fd, i64 %.idx995 ; 2 uses
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !56
  %i.wm = sext i16 %i.wl to i32
  %i.wn = load i32, ptr %7, align 4, !tbaa !106
  %i.wo = trunc nsw i64 %indvars.iv944 to i32
  %i.wp = add nsw i32 %i.wn, %i.wo
  %i.wq = add nsw i32 %i.wp, %i.wm                ; 8 uses
  %i.wr = getelementptr i8, ptr %i.wk, i64 2
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !56
  %i.wt = sext i16 %i.ws to i32
  %i.wu = add nsw i32 %i.fk, %i.wt                ; 8 uses
  br i1 %i.dg, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.lr.ph850
  %.not666 = icmp sge i32 %i.wq, %i.t
  %i.wv = icmp slt i32 %i.wq, -1
  %or.cond677.not785.not788 = or i1 %.not666, %i.wv
  %.not667 = icmp sge i32 %i.wu, %i.z
  %i.ww = icmp slt i32 %i.wu, -1
  %i.wx = or i1 %.not667, %i.ww
  %or.cond679 = select i1 %or.cond677.not785.not788, i1 true, i1 %i.wx
  br i1 %or.cond679, label %bb.ai, label %.thread753

.thread753:                                       ; preds = %bb.ah
  %i.wy = getelementptr inbounds [2 x i8], ptr %i.fh, i64 %indvars.iv944
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !56
  %i.xa = zext i16 %i.wz to i64
  %.idx668754 = shl nuw nsw i64 %i.xa, 4
  %i.xb = getelementptr inbounds nuw i8, ptr %4, i64 %.idx668754
  br label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.xc = load float, ptr %i.a, align 16, !tbaa !52
  br label %bb.an

bb.aj:                                            ; preds = %.lr.ph850
  %i.xd = getelementptr inbounds [2 x i8], ptr %i.fh, i64 %indvars.iv944
  %i.xe = load i16, ptr %i.xd, align 2, !tbaa !56
  %i.xf = zext i16 %i.xe to i64
  %.idx668 = shl nuw nsw i64 %i.xf, 4
  %i.xg = getelementptr inbounds nuw i8, ptr %4, i64 %.idx668 ; 2 uses
  br i1 %i.dh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
end_hunk_3
begin_hunk_4_@_ZN2cvL13remapLanczos4INS_4CastIffEEfLi1ELb1EEEvRKNS_3MatERS3_S5_S5_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE:bb.a

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bn = and i64 %indvars.iv.prol, 3
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !58
  %i.bq = fptrunc double %i.bp to float
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.prol
  store float %i.bq, ptr %i.br, align 4, !tbaa !52
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1568

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ] ; 5 uses
  %i.bs = icmp ult i64 %i.bm, 3
  br i1 %i.bs, label %.loopexit1177, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.bt = add i64 %indvars.iv.unr, 1
  %i.bu = and i64 %i.bt, 3
  %i.bv = and i64 %indvars.iv.unr, 3
  %i.bw = xor i64 %i.bv, 2
  %i.bx = add i64 %indvars.iv.unr, 3
  %i.by = and i64 %i.bx, 3
  %i.bz = and i64 %indvars.iv.unr, 3
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !58
  %i.cc = fptrunc double %i.cb to float
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bu
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !58
  %i.cf = fptrunc double %i.ce to float
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bw
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !58
  %i.ci = fptrunc double %i.ch to float
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.by
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !58
  %i.cl = fptrunc double %i.ck to float
  br label %scalar.ph

.loopexit1177:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cm = icmp eq i32 %i.ab, 2
  %i.cn = icmp sgt i32 %i.ab, -1
  %i.co = zext i1 %i.cn to i32
  %i.cp = select i1 %i.cm, i32 %i.at, i32 %i.co   ; 2 uses
  %i.cq = lshr i64 %i.ba, 2                       ; 25 uses
  %.not = icmp eq i32 %5, 5                       ; 2 uses
  %i.cr = select i1 %.not, i32 4, i32 %5          ; 17 uses
  %i.cs = tail call i32 @llvm.smax.i32(i32 %i.t, i32 7)
  %.sroa.speculated231 = add nsw i32 %i.cs, -7
  %i.ct = tail call i32 @llvm.smax.i32(i32 %i.z, i32 7)
  %.sroa.speculated = add nsw i32 %i.ct, -7
  %i.cu = icmp sgt i32 %i.cp, 0
  br i1 %i.cu, label %.lr.ph273, label %._crit_edge274.split

.lr.ph273:                                        ; preds = %.loopexit1177
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dc = icmp sgt i32 %i.ar, 0
  %i.dd = icmp eq i32 %i.cr, 0
  %i.de = sub nsw i64 0, %wide.trip.count
  %i.df = shl nuw nsw i32 %i.bb, 1
  %i.dg = zext nneg i32 %i.df to i64              ; 16 uses
  %i.dh = mul nuw nsw i32 %i.bb, 3
  %i.di = zext nneg i32 %i.dh to i64              ; 16 uses
  %i.dj = shl nuw nsw i32 %i.bb, 2
  %i.dk = zext nneg i32 %i.dj to i64              ; 25 uses
  %i.dl = mul nuw nsw i32 %i.bb, 5
  %i.dm = zext nneg i32 %i.dl to i64              ; 16 uses
  %i.dn = mul nuw nsw i32 %i.bb, 6
  %i.do = zext nneg i32 %i.dn to i64              ; 16 uses
  %i.dp = mul nuw nsw i32 %i.bb, 7
  %i.dq = zext nneg i32 %i.dp to i64              ; 16 uses
  %i.dr = shl i64 %i.cq, 3
  %i.ds = sub i64 1, %i.dr
  br i1 %i.dc, label %.lr.ph.preheader, label %._crit_edge274.split

.lr.ph.preheader:                                 ; preds = %.lr.ph273
  %i.dt = shl nuw nsw i32 %i.av, 2
  %i.du = and i32 %i.dt, 508
  %narrow = add nuw nsw i32 %i.du, 4
  %i.dv = zext nneg i32 %narrow to i64
  %i.dw = shl i64 %i.cq, 5
  %wide.trip.count310 = zext nneg i32 %i.cp to i64
  %wide.trip.count305 = zext nneg i32 %i.ar to i64 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ee = add nsw i64 %wide.trip.count305, -1
  %i.ef = mul nsw i64 %i.ee, %i.dk
  %i.eg = and i32 %i.av, 127
  %i.eh = zext nneg i32 %i.eg to i64              ; 8 uses
  %i.ei = shl nuw nsw i64 %i.eh, 2
  %i.ej = mul nuw nsw i64 %i.eh, 28
  %i.ek = add nuw nsw i64 %i.ej, 28               ; 9 uses
  %i.el = shl nuw nsw i64 %i.eh, 5
  %i.em = add nuw nsw i64 %i.el, 32               ; 8 uses
  %i.en = mul nuw nsw i64 %i.eh, 24
  %i.eo = add nuw nsw i64 %i.en, 24               ; 8 uses
  %i.ep = mul nuw nsw i64 %i.eh, 20
  %i.eq = add nuw nsw i64 %i.ep, 20               ; 8 uses
  %i.er = shl nuw nsw i64 %i.eh, 4
  %i.es = add nuw nsw i64 %i.er, 16               ; 8 uses
  %i.et = mul nuw nsw i64 %i.eh, 12
  %i.eu = add nuw nsw i64 %i.et, 12               ; 8 uses
  %i.ev = shl nuw nsw i64 %i.eh, 3
  %i.ew = add nuw nsw i64 %i.ev, 8                ; 8 uses
  %i.ex = and i64 %i.ba, -4
  %scevgep467.a = getelementptr i8, ptr %4, i64 256
  %min.iters.check977 = icmp samesign ult i32 %i.aw, 7
  %n.vec979 = and i64 %wide.trip.count, 252       ; 4 uses
  %i.ey = shl nuw nsw i64 %n.vec979, 2
  %cmp.n1174 = icmp eq i64 %n.vec979, %wide.trip.count
  br label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.cc, ptr %i.ez, align 4, !tbaa !52
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store float %i.cf, ptr %i.fb, align 4, !tbaa !52
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store float %i.ci, ptr %i.fd, align 4, !tbaa !52
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  store float %i.cl, ptr %i.ff, align 4, !tbaa !52
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit1177, label %scalar.ph, !llvm.loop !1569

._crit_edge274.split:                             ; preds = %._crit_edge, %.lr.ph273, %.loopexit1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv307 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next308, %._crit_edge ] ; 5 uses
  %.0191270 = phi ptr [ %i.ay, %.lr.ph.preheader ], [ %.5196, %._crit_edge ]
  %i.fg = load ptr, ptr %i.cv, align 8, !tbaa !73 ; 2 uses
  %i.fh = load i64, ptr %i.cw, align 8, !tbaa !15
  %i.fi = mul i64 %i.fh, %indvars.iv307           ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fg, i64 %i.fi  ; 6 uses
  %i.fk = load ptr, ptr %i.cx, align 8, !tbaa !73
  %i.fl = load i64, ptr %i.cy, align 8, !tbaa !15
  %i.fm = mul i64 %i.fl, %indvars.iv307
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fm
  %i.fo = load ptr, ptr %i.cz, align 8, !tbaa !73
  %i.fp = load i64, ptr %i.da, align 8, !tbaa !15
  %i.fq = mul i64 %i.fp, %indvars.iv307
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq
  %i.fs = load i32, ptr %i.db, align 4, !tbaa !105
  %i.ft = trunc i64 %indvars.iv307 to i32
  %i.fu = add i32 %i.fs, %i.ft                    ; 3 uses
  %i.fv = add i32 %i.fu, -3
  %i.fw = getelementptr i8, ptr %i.fg, i64 %i.ef
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.ei
  %scevgep = getelementptr i8, ptr %i.fx, i64 4
  %scevgep324 = getelementptr i8, ptr %scevgep, i64 %i.fi ; 5 uses
  %i.fy = insertelement <64 x ptr> poison, ptr %i.fj, i64 0
  %i.fz = shufflevector <64 x ptr> %i.fy, <64 x ptr> poison, <64 x i32> zeroinitializer
  %i.ga = insertelement <64 x ptr> poison, ptr %scevgep324, i64 0
  %i.gb = shufflevector <64 x ptr> %i.ga, <64 x ptr> poison, <64 x i32> zeroinitializer
  %i.gc = insertelement <16 x ptr> poison, ptr %i.fj, i64 0
  %i.gd = shufflevector <16 x ptr> %i.gc, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.ge = insertelement <16 x ptr> poison, ptr %scevgep324, i64 0
  %i.gf = shufflevector <16 x ptr> %i.ge, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.gg = insertelement <8 x ptr> poison, ptr %i.fj, i64 0
  %i.gh = shufflevector <8 x ptr> %i.gg, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gi = insertelement <8 x ptr> poison, ptr %scevgep324, i64 0
  %i.gj = shufflevector <8 x ptr> %i.gi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gk = insertelement <4 x ptr> poison, ptr %i.fj, i64 0
  %i.gl = shufflevector <4 x ptr> %i.gk, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gm = insertelement <4 x ptr> poison, ptr %scevgep324, i64 0
  %i.gn = shufflevector <4 x ptr> %i.gm, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.go = insertelement <32 x ptr> poison, ptr %i.fj, i64 0
  %i.gp = shufflevector <32 x ptr> %i.go, <32 x ptr> poison, <32 x i32> zeroinitializer
  %i.gq = insertelement <32 x ptr> poison, ptr %scevgep324, i64 0
  %i.gr = shufflevector <32 x ptr> %i.gq, <32 x ptr> poison, <32 x i32> zeroinitializer
  br label %bb.n

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge274.split, label %.lr.ph, !llvm.loop !1570

bb.n:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv302 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next303, %.loopexit ] ; 4 uses
  %.0187267 = phi ptr [ %i.fj, %.lr.ph ], [ %i.api, %.loopexit ] ; 5 uses
  %.1192266 = phi ptr [ %.0191270, %.lr.ph ], [ %.5196, %.loopexit ] ; 78 uses
  %i.gs = load i32, ptr %7, align 4, !tbaa !106
  %i.gt = trunc nuw nsw i64 %indvars.iv302 to i32
  %i.gu = add nsw i32 %i.gs, %i.gt
  %.idx322 = shl nuw nsw i64 %indvars.iv302, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx322 ; 2 uses
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !56
  %i.gx = sext i16 %i.gw to i32
  %i.gy = add i32 %i.gu, %i.gx                    ; 9 uses
  %i.gz = add i32 %i.gy, -3                       ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !56
  %i.hc = sext i16 %i.hb to i32                   ; 3 uses
  %i.hd = add i32 %i.fv, %i.hc                    ; 11 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv302
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !56
  %i.hg = zext i16 %i.hf to i64
  %.idx = shl nuw nsw i64 %i.hg, 8                ; 2 uses
  %i.hh = getelementptr i8, ptr %4, i64 %.idx     ; 90 uses
  %i.hi = icmp ult i32 %i.gz, %.sroa.speculated231
  %i.hj = icmp ult i32 %i.hd, %.sroa.speculated
  %or.cond = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hk = zext i32 %i.hd to i64                   ; 3 uses
  %i.hl = mul i64 %i.cq, %i.hk                    ; 2 uses
  %i.hm = getelementptr [4 x i8], ptr %.1192266, i64 %i.hl
  %i.hn = mul i32 %i.gz, %i.bb
  %i.ho = zext i32 %i.hn to i64                   ; 3 uses
  %i.hp = getelementptr [4 x i8], ptr %i.hm, i64 %i.ho ; 5 uses
  %i.hq = getelementptr i8, ptr %i.hh, i64 4      ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hh, i64 8
  %i.hs = getelementptr i8, ptr %i.hh, i64 12
  %i.ht = getelementptr i8, ptr %i.hh, i64 16
  %i.hu = getelementptr i8, ptr %i.hh, i64 20
  %i.hv = getelementptr i8, ptr %i.hh, i64 24
  %i.hw = getelementptr i8, ptr %i.hh, i64 28
  %i.hx = getelementptr i8, ptr %i.hh, i64 32
  %i.hy = getelementptr i8, ptr %i.hh, i64 36
  %i.hz = getelementptr i8, ptr %i.hh, i64 40
  %i.ia = getelementptr i8, ptr %i.hh, i64 44
  %i.ib = getelementptr i8, ptr %i.hh, i64 48
  %i.ic = getelementptr i8, ptr %i.hh, i64 52
  %i.id = getelementptr i8, ptr %i.hh, i64 56
  %i.ie = getelementptr i8, ptr %i.hh, i64 60
  %i.if = getelementptr i8, ptr %i.hh, i64 64
  %i.ig = getelementptr i8, ptr %i.hh, i64 68
  %i.ih = getelementptr i8, ptr %i.hh, i64 72
  %i.ii = getelementptr i8, ptr %i.hh, i64 76
  %i.ij = getelementptr i8, ptr %i.hh, i64 80
  %i.ik = getelementptr i8, ptr %i.hh, i64 84
  %i.il = getelementptr i8, ptr %i.hh, i64 88
  %i.im = getelementptr i8, ptr %i.hh, i64 92
  %i.in = getelementptr i8, ptr %i.hh, i64 96
  %i.io = getelementptr i8, ptr %i.hh, i64 100
  %i.ip = getelementptr i8, ptr %i.hh, i64 104
  %i.iq = getelementptr i8, ptr %i.hh, i64 108
  %i.ir = getelementptr i8, ptr %i.hh, i64 112
  %i.is = getelementptr i8, ptr %i.hh, i64 116
  %i.it = getelementptr i8, ptr %i.hh, i64 120
  %i.iu = getelementptr i8, ptr %i.hh, i64 124
  %i.iv = getelementptr i8, ptr %i.hh, i64 128
  %i.iw = getelementptr i8, ptr %i.hh, i64 132
  %i.ix = getelementptr i8, ptr %i.hh, i64 136
  %i.iy = getelementptr i8, ptr %i.hh, i64 140
  %i.iz = getelementptr i8, ptr %i.hh, i64 144
  %i.ja = getelementptr i8, ptr %i.hh, i64 148
  %i.jb = getelementptr i8, ptr %i.hh, i64 152
  %i.jc = getelementptr i8, ptr %i.hh, i64 156
  %i.jd = getelementptr i8, ptr %i.hh, i64 160
  %i.je = getelementptr i8, ptr %i.hh, i64 164
  %i.jf = getelementptr i8, ptr %i.hh, i64 168
  %i.jg = getelementptr i8, ptr %i.hh, i64 172
  %i.jh = getelementptr i8, ptr %i.hh, i64 176
  %i.ji = getelementptr i8, ptr %i.hh, i64 180
  %i.jj = getelementptr i8, ptr %i.hh, i64 184
  %i.jk = getelementptr i8, ptr %i.hh, i64 188
  %i.jl = getelementptr i8, ptr %i.hh, i64 192
  %i.jm = getelementptr i8, ptr %i.hh, i64 196
  %i.jn = getelementptr i8, ptr %i.hh, i64 200
  %i.jo = getelementptr i8, ptr %i.hh, i64 204
  %i.jp = getelementptr i8, ptr %i.hh, i64 208
  %i.jq = getelementptr i8, ptr %i.hh, i64 212
  %i.jr = getelementptr i8, ptr %i.hh, i64 216
  %i.js = getelementptr i8, ptr %i.hh, i64 220
  %i.jt = getelementptr i8, ptr %i.hh, i64 224
  %i.ju = getelementptr i8, ptr %i.hh, i64 228
  %i.jv = getelementptr i8, ptr %i.hh, i64 232
  %i.jw = getelementptr i8, ptr %i.hh, i64 236
  %i.jx = getelementptr i8, ptr %i.hh, i64 240
  %i.jy = getelementptr i8, ptr %i.hh, i64 244
  %i.jz = getelementptr i8, ptr %i.hh, i64 248
  %i.ka = getelementptr i8, ptr %i.hh, i64 252
  br i1 %min.iters.check977, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.o
  %i.kb = getelementptr i8, ptr %i.hh, <2 x i64> <i64 252, i64 248>
  %i.kc = getelementptr i8, ptr %i.hh, <2 x i64> <i64 244, i64 240>
  %i.kd = getelementptr i8, ptr %i.hh, <2 x i64> <i64 236, i64 232>
  %i.ke = getelementptr i8, ptr %i.hh, <2 x i64> <i64 228, i64 224>
  %i.kf = getelementptr i8, ptr %i.hh, <2 x i64> <i64 220, i64 216>
  %i.kg = getelementptr i8, ptr %i.hh, <2 x i64> <i64 212, i64 208>
  %i.kh = getelementptr i8, ptr %i.hh, <2 x i64> <i64 204, i64 200>
  %i.ki = getelementptr i8, ptr %i.hh, <2 x i64> <i64 196, i64 192>
  %i.kj = getelementptr i8, ptr %i.hh, <2 x i64> <i64 188, i64 184>
  %i.kk = getelementptr i8, ptr %i.hh, <2 x i64> <i64 180, i64 176>
  %i.kl = getelementptr i8, ptr %i.hh, <2 x i64> <i64 172, i64 168>
  %i.km = getelementptr i8, ptr %i.hh, <2 x i64> <i64 164, i64 160>
  %i.kn = getelementptr i8, ptr %i.hh, <2 x i64> <i64 156, i64 152>
  %i.ko = getelementptr i8, ptr %i.hh, <2 x i64> <i64 148, i64 144>
  %i.kp = getelementptr i8, ptr %i.hh, <2 x i64> <i64 140, i64 136>
  %i.kq = getelementptr i8, ptr %i.hh, <2 x i64> <i64 132, i64 128>
  %i.kr = getelementptr i8, ptr %i.hh, <2 x i64> <i64 124, i64 120>
  %i.ks = getelementptr i8, ptr %i.hh, <16 x i64> <i64 116, i64 112, i64 108, i64 104, i64 100, i64 96, i64 92, i64 88, i64 84, i64 80, i64 76, i64 72, i64 68, i64 64, i64 60, i64 56> ; 2 uses
  %i.kt = getelementptr i8, ptr %i.hh, <16 x i64> <i64 112, i64 108, i64 104, i64 100, i64 96, i64 92, i64 88, i64 84, i64 80, i64 76, i64 72, i64 68, i64 64, i64 60, i64 56, i64 52>
  %i.ku = getelementptr i8, ptr %i.hh, <8 x i64> <i64 52, i64 48, i64 44, i64 40, i64 36, i64 32, i64 28, i64 24>
  %i.kv = getelementptr i8, ptr %i.hh, <8 x i64> <i64 48, i64 44, i64 40, i64 36, i64 32, i64 28, i64 24, i64 20>
  %i.kw = getelementptr i8, ptr %i.hh, <4 x i64> <i64 20, i64 16, i64 12, i64 8>
  %i.kx = getelementptr i8, ptr %i.hh, <4 x i64> <i64 16, i64 12, i64 8, i64 4>
  %scevgep325 = getelementptr i8, ptr %.1192266, i64 %i.ek
  %i.ky = shl nuw nsw i64 %i.hk, 2                ; 7 uses
  %i.kz = add nuw nsw i64 %i.ky, 28
  %i.la = mul i64 %i.cq, %i.kz
  %i.lb = shl nuw nsw i64 %i.ho, 2                ; 8 uses
  %i.lc = add i64 %i.la, %i.lb                    ; 9 uses
  %scevgep326 = getelementptr i8, ptr %scevgep325, i64 %i.lc ; 2 uses
  %scevgep327 = getelementptr i8, ptr %.1192266, i64 %i.em
  %scevgep328 = getelementptr i8, ptr %scevgep327, i64 %i.lc
  %scevgep329 = getelementptr i8, ptr %.1192266, i64 %i.eo
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.lc ; 2 uses
  %scevgep331 = getelementptr i8, ptr %.1192266, i64 %i.eq
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.lc ; 2 uses
  %scevgep333 = getelementptr i8, ptr %.1192266, i64 %i.es
  %scevgep334 = getelementptr i8, ptr %scevgep333, i64 %i.lc ; 2 uses
  %scevgep335 = getelementptr i8, ptr %.1192266, i64 %i.eu
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.lc ; 2 uses
  %scevgep337 = getelementptr i8, ptr %.1192266, i64 %i.ew
  %scevgep338 = getelementptr i8, ptr %scevgep337, i64 %i.lc ; 2 uses
  %scevgep339 = getelementptr i8, ptr %.1192266, i64 %i.dk
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %i.lc ; 2 uses
  %scevgep341 = getelementptr i8, ptr %.1192266, i64 %i.lc
  %scevgep342 = getelementptr i8, ptr %.1192266, i64 %i.ek
  %i.ld = add nuw nsw i64 %i.ky, 24
  %i.le = mul i64 %i.cq, %i.ld
  %i.lf = add i64 %i.le, %i.lb                    ; 9 uses
  %scevgep343 = getelementptr i8, ptr %scevgep342, i64 %i.lf ; 2 uses
  %scevgep344 = getelementptr i8, ptr %.1192266, i64 %i.em
  %scevgep345 = getelementptr i8, ptr %scevgep344, i64 %i.lf
  %scevgep346 = getelementptr i8, ptr %.1192266, i64 %i.eo
  %scevgep347 = getelementptr i8, ptr %scevgep346, i64 %i.lf ; 2 uses
  %scevgep348 = getelementptr i8, ptr %.1192266, i64 %i.eq
  %scevgep349 = getelementptr i8, ptr %scevgep348, i64 %i.lf ; 2 uses
  %scevgep350 = getelementptr i8, ptr %.1192266, i64 %i.es
  %scevgep351 = getelementptr i8, ptr %scevgep350, i64 %i.lf ; 2 uses
  %scevgep352 = getelementptr i8, ptr %.1192266, i64 %i.eu
  %scevgep353 = getelementptr i8, ptr %scevgep352, i64 %i.lf ; 2 uses
  %scevgep354 = getelementptr i8, ptr %.1192266, i64 %i.ew
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.lf ; 2 uses
  %scevgep356 = getelementptr i8, ptr %.1192266, i64 %i.dk
  %scevgep357 = getelementptr i8, ptr %scevgep356, i64 %i.lf ; 2 uses
  %scevgep358 = getelementptr i8, ptr %.1192266, i64 %i.lf
  %scevgep359 = getelementptr i8, ptr %.1192266, i64 %i.ek
  %i.lg = add nuw nsw i64 %i.ky, 20
  %i.lh = mul i64 %i.cq, %i.lg
  %i.li = add i64 %i.lh, %i.lb                    ; 9 uses
  %scevgep360 = getelementptr i8, ptr %scevgep359, i64 %i.li ; 2 uses
  %scevgep361 = getelementptr i8, ptr %.1192266, i64 %i.em
  %scevgep362 = getelementptr i8, ptr %scevgep361, i64 %i.li
  %scevgep363 = getelementptr i8, ptr %.1192266, i64 %i.eo
  %scevgep364 = getelementptr i8, ptr %scevgep363, i64 %i.li ; 2 uses
  %scevgep365 = getelementptr i8, ptr %.1192266, i64 %i.eq
  %scevgep366 = getelementptr i8, ptr %scevgep365, i64 %i.li ; 2 uses
  %scevgep367 = getelementptr i8, ptr %.1192266, i64 %i.es
  %scevgep368 = getelementptr i8, ptr %scevgep367, i64 %i.li ; 2 uses
  %scevgep369 = getelementptr i8, ptr %.1192266, i64 %i.eu
  %scevgep370 = getelementptr i8, ptr %scevgep369, i64 %i.li ; 2 uses
  %scevgep371 = getelementptr i8, ptr %.1192266, i64 %i.ew
  %scevgep372 = getelementptr i8, ptr %scevgep371, i64 %i.li ; 2 uses
  %scevgep373 = getelementptr i8, ptr %.1192266, i64 %i.dk
  %scevgep374 = getelementptr i8, ptr %scevgep373, i64 %i.li ; 2 uses
  %scevgep375 = getelementptr i8, ptr %.1192266, i64 %i.li
  %scevgep376 = getelementptr i8, ptr %.1192266, i64 %i.ek
  %i.lj = add nuw nsw i64 %i.ky, 16
  %i.lk = mul i64 %i.cq, %i.lj
  %i.ll = add i64 %i.lk, %i.lb                    ; 9 uses
  %scevgep377 = getelementptr i8, ptr %scevgep376, i64 %i.ll ; 2 uses
  %scevgep378 = getelementptr i8, ptr %.1192266, i64 %i.em
  %scevgep379 = getelementptr i8, ptr %scevgep378, i64 %i.ll
  %scevgep380 = getelementptr i8, ptr %.1192266, i64 %i.eo
  %scevgep381 = getelementptr i8, ptr %scevgep380, i64 %i.ll ; 2 uses
  %scevgep382 = getelementptr i8, ptr %.1192266, i64 %i.eq
  %scevgep383 = getelementptr i8, ptr %scevgep382, i64 %i.ll ; 2 uses
  %scevgep384 = getelementptr i8, ptr %.1192266, i64 %i.es
  %scevgep385 = getelementptr i8, ptr %scevgep384, i64 %i.ll ; 2 uses
  %scevgep386 = getelementptr i8, ptr %.1192266, i64 %i.eu
  %scevgep387 = getelementptr i8, ptr %scevgep386, i64 %i.ll ; 2 uses
  %scevgep388 = getelementptr i8, ptr %.1192266, i64 %i.ew
  %scevgep389 = getelementptr i8, ptr %scevgep388, i64 %i.ll ; 2 uses
  %scevgep390 = getelementptr i8, ptr %.1192266, i64 %i.dk
  %scevgep391 = getelementptr i8, ptr %scevgep390, i64 %i.ll ; 2 uses
  %scevgep392 = getelementptr i8, ptr %.1192266, i64 %i.ll
  %scevgep393 = getelementptr i8, ptr %.1192266, i64 %i.ek
  %i.lm = add nuw nsw i64 %i.ky, 12
  %i.ln = mul i64 %i.cq, %i.lm
  %i.lo = add i64 %i.ln, %i.lb                    ; 9 uses
  %scevgep394 = getelementptr i8, ptr %scevgep393, i64 %i.lo ; 2 uses
  %scevgep395 = getelementptr i8, ptr %.1192266, i64 %i.em
  %scevgep396 = getelementptr i8, ptr %scevgep395, i64 %i.lo
  %scevgep397 = getelementptr i8, ptr %.1192266, i64 %i.eo
  %scevgep398 = getelementptr i8, ptr %scevgep397, i64 %i.lo ; 2 uses
  %scevgep399 = getelementptr i8, ptr %.1192266, i64 %i.eq
  %scevgep400 = getelementptr i8, ptr %scevgep399, i64 %i.lo ; 2 uses
  %scevgep401 = getelementptr i8, ptr %.1192266, i64 %i.es
  %scevgep402 = getelementptr i8, ptr %scevgep401, i64 %i.lo ; 2 uses
  %scevgep403 = getelementptr i8, ptr %.1192266, i64 %i.eu
  %scevgep404 = getelementptr i8, ptr %scevgep403, i64 %i.lo ; 2 uses
  %scevgep405 = getelementptr i8, ptr %.1192266, i64 %i.ew
  %scevgep406 = getelementptr i8, ptr %scevgep405, i64 %i.lo ; 2 uses
  %scevgep407 = getelementptr i8, ptr %.1192266, i64 %i.dk
  %scevgep408 = getelementptr i8, ptr %scevgep407, i64 %i.lo ; 2 uses
  %scevgep409 = getelementptr i8, ptr %.1192266, i64 %i.lo
  %scevgep410 = getelementptr i8, ptr %.1192266, i64 %i.ek
  %i.lp = add nuw nsw i64 %i.ky, 8
  %i.lq = mul i64 %i.cq, %i.lp
  %i.lr = add i64 %i.lq, %i.lb                    ; 9 uses
  %scevgep411 = getelementptr i8, ptr %scevgep410, i64 %i.lr ; 2 uses
  %scevgep412 = getelementptr i8, ptr %.1192266, i64 %i.em
  %scevgep413 = getelementptr i8, ptr %scevgep412, i64 %i.lr
  %scevgep414 = getelementptr i8, ptr %.1192266, i64 %i.eo
  %scevgep415 = getelementptr i8, ptr %scevgep414, i64 %i.lr ; 2 uses
  %scevgep416 = getelementptr i8, ptr %.1192266, i64 %i.eq
  %scevgep417 = getelementptr i8, ptr %scevgep416, i64 %i.lr ; 2 uses
  %scevgep418 = getelementptr i8, ptr %.1192266, i64 %i.es
  %scevgep419 = getelementptr i8, ptr %scevgep418, i64 %i.lr ; 2 uses
  %scevgep420 = getelementptr i8, ptr %.1192266, i64 %i.eu
  %scevgep421 = getelementptr i8, ptr %scevgep420, i64 %i.lr ; 2 uses
  %scevgep422 = getelementptr i8, ptr %.1192266, i64 %i.ew
  %scevgep423 = getelementptr i8, ptr %scevgep422, i64 %i.lr ; 2 uses
  %scevgep424 = getelementptr i8, ptr %.1192266, i64 %i.dk
  %scevgep425 = getelementptr i8, ptr %scevgep424, i64 %i.lr ; 2 uses
  %scevgep426 = getelementptr i8, ptr %.1192266, i64 %i.lr
  %scevgep427 = getelementptr i8, ptr %.1192266, i64 %i.ek
  %i.ls = add nuw nsw i64 %i.ky, 4
  %i.lt = mul i64 %i.cq, %i.ls
  %i.lu = add i64 %i.lt, %i.lb                    ; 9 uses
  %scevgep428 = getelementptr i8, ptr %scevgep427, i64 %i.lu ; 2 uses
  %scevgep429 = getelementptr i8, ptr %.1192266, i64 %i.em
  %scevgep430 = getelementptr i8, ptr %scevgep429, i64 %i.lu
  %scevgep431 = getelementptr i8, ptr %.1192266, i64 %i.eo
  %scevgep432 = getelementptr i8, ptr %scevgep431, i64 %i.lu ; 2 uses
  %scevgep433 = getelementptr i8, ptr %.1192266, i64 %i.eq
  %scevgep434 = getelementptr i8, ptr %scevgep433, i64 %i.lu ; 2 uses
  %scevgep435 = getelementptr i8, ptr %.1192266, i64 %i.es
  %scevgep436 = getelementptr i8, ptr %scevgep435, i64 %i.lu ; 2 uses
  %scevgep437 = getelementptr i8, ptr %.1192266, i64 %i.eu
  %scevgep438 = getelementptr i8, ptr %scevgep437, i64 %i.lu ; 2 uses
  %scevgep439 = getelementptr i8, ptr %.1192266, i64 %i.ew
  %scevgep440 = getelementptr i8, ptr %scevgep439, i64 %i.lu ; 2 uses
  %scevgep441 = getelementptr i8, ptr %.1192266, i64 %i.dk
  %scevgep442 = getelementptr i8, ptr %scevgep441, i64 %i.lu ; 2 uses
  %scevgep443 = getelementptr i8, ptr %.1192266, i64 %i.lu
  %scevgep444 = getelementptr i8, ptr %.1192266, i64 %i.ek
  %i.lv = mul i64 %i.ex, %i.hk
  %i.lw = add i64 %i.lv, %i.lb                    ; 7 uses
  %scevgep445 = getelementptr i8, ptr %scevgep444, i64 %i.lw
  %scevgep446 = getelementptr i8, ptr %.1192266, i64 %i.em
  %i.lx = add i64 %i.hl, %i.ho
  %i.ly = shl i64 %i.lx, 2                        ; 6 uses
  %scevgep447 = getelementptr i8, ptr %scevgep446, i64 %i.ly
  %scevgep448 = getelementptr i8, ptr %.1192266, i64 %i.eo ; 2 uses
  %scevgep449 = getelementptr i8, ptr %scevgep448, i64 %i.lw
  %scevgep450 = getelementptr i8, ptr %.1192266, i64 %i.ek
  %scevgep451 = getelementptr i8, ptr %scevgep450, i64 %i.ly
  %scevgep452 = getelementptr i8, ptr %.1192266, i64 %i.eq ; 2 uses
  %scevgep453 = getelementptr i8, ptr %scevgep452, i64 %i.lw
  %scevgep454 = getelementptr i8, ptr %scevgep448, i64 %i.ly
  %scevgep455 = getelementptr i8, ptr %.1192266, i64 %i.es ; 2 uses
  %scevgep456 = getelementptr i8, ptr %scevgep455, i64 %i.lw
  %scevgep457 = getelementptr i8, ptr %scevgep452, i64 %i.ly
  %scevgep458 = getelementptr i8, ptr %.1192266, i64 %i.eu ; 2 uses
  %scevgep459 = getelementptr i8, ptr %scevgep458, i64 %i.lw
  %scevgep460 = getelementptr i8, ptr %scevgep455, i64 %i.ly
  %scevgep461 = getelementptr i8, ptr %.1192266, i64 %i.ew
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.lw ; 2 uses
  %scevgep463 = getelementptr i8, ptr %scevgep458, i64 %i.ly
  %scevgep464 = getelementptr i8, ptr %.1192266, i64 %i.dk
  %scevgep466 = getelementptr i8, ptr %scevgep464, i64 %i.lw ; 2 uses
  %scevgep468 = getelementptr i8, ptr %scevgep467.a, i64 %.idx
  %i.lz = insertelement <32 x ptr> poison, ptr %scevgep328, i64 0
  %i.ma = insertelement <32 x ptr> %i.lz, ptr %scevgep326, i64 1
  %i.mb = insertelement <32 x ptr> %i.ma, ptr %scevgep330, i64 2
  %i.mc = insertelement <32 x ptr> %i.mb, ptr %scevgep332, i64 3
  %i.md = insertelement <32 x ptr> %i.mc, ptr %scevgep334, i64 4
  %i.me = insertelement <32 x ptr> %i.md, ptr %scevgep336, i64 5
  %i.mf = insertelement <32 x ptr> %i.me, ptr %scevgep338, i64 6
  %i.mg = insertelement <32 x ptr> %i.mf, ptr %scevgep340, i64 7
  %i.mh = insertelement <32 x ptr> %i.mg, ptr %scevgep345, i64 8
  %i.mi = insertelement <32 x ptr> %i.mh, ptr %scevgep343, i64 9
  %i.mj = insertelement <32 x ptr> %i.mi, ptr %scevgep347, i64 10
  %i.mk = insertelement <32 x ptr> %i.mj, ptr %scevgep349, i64 11
  %i.ml = insertelement <32 x ptr> %i.mk, ptr %scevgep351, i64 12
  %i.mm = insertelement <32 x ptr> %i.ml, ptr %scevgep353, i64 13
  %i.mn = insertelement <32 x ptr> %i.mm, ptr %scevgep355, i64 14
  %i.mo = insertelement <32 x ptr> %i.mn, ptr %scevgep357, i64 15
  %i.mp = insertelement <32 x ptr> %i.mo, ptr %scevgep362, i64 16
  %i.mq = insertelement <32 x ptr> %i.mp, ptr %scevgep360, i64 17
  %i.mr = insertelement <32 x ptr> %i.mq, ptr %scevgep364, i64 18
  %i.ms = insertelement <32 x ptr> %i.mr, ptr %scevgep366, i64 19
  %i.mt = insertelement <32 x ptr> %i.ms, ptr %scevgep368, i64 20
  %i.mu = insertelement <32 x ptr> %i.mt, ptr %scevgep370, i64 21
  %i.mv = insertelement <32 x ptr> %i.mu, ptr %scevgep372, i64 22
  %i.mw = insertelement <32 x ptr> %i.mv, ptr %scevgep374, i64 23
  %i.mx = insertelement <32 x ptr> %i.mw, ptr %scevgep379, i64 24
  %i.my = insertelement <32 x ptr> %i.mx, ptr %scevgep377, i64 25
  %i.mz = insertelement <32 x ptr> %i.my, ptr %scevgep381, i64 26
  %i.na = insertelement <32 x ptr> %i.mz, ptr %scevgep383, i64 27
  %i.nb = insertelement <32 x ptr> %i.na, ptr %scevgep385, i64 28
  %i.nc = insertelement <32 x ptr> %i.nb, ptr %scevgep387, i64 29
  %i.nd = insertelement <32 x ptr> %i.nc, ptr %scevgep389, i64 30
  %i.ne = insertelement <32 x ptr> %i.nd, ptr %scevgep391, i64 31
  %i.nf = icmp ult <32 x ptr> %i.gp, %i.ne
  %i.ng = insertelement <32 x ptr> poison, ptr %scevgep326, i64 0
  %i.nh = insertelement <32 x ptr> %i.ng, ptr %scevgep330, i64 1
  %i.ni = insertelement <32 x ptr> %i.nh, ptr %scevgep332, i64 2
  %i.nj = insertelement <32 x ptr> %i.ni, ptr %scevgep334, i64 3
  %i.nk = insertelement <32 x ptr> %i.nj, ptr %scevgep336, i64 4
  %i.nl = insertelement <32 x ptr> %i.nk, ptr %scevgep338, i64 5
  %i.nm = insertelement <32 x ptr> %i.nl, ptr %scevgep340, i64 6
  %i.nn = insertelement <32 x ptr> %i.nm, ptr %scevgep341, i64 7
  %i.no = insertelement <32 x ptr> %i.nn, ptr %scevgep343, i64 8
  %i.np = insertelement <32 x ptr> %i.no, ptr %scevgep347, i64 9
  %i.nq = insertelement <32 x ptr> %i.np, ptr %scevgep349, i64 10
  %i.nr = insertelement <32 x ptr> %i.nq, ptr %scevgep351, i64 11
  %i.ns = insertelement <32 x ptr> %i.nr, ptr %scevgep353, i64 12
  %i.nt = insertelement <32 x ptr> %i.ns, ptr %scevgep355, i64 13
  %i.nu = insertelement <32 x ptr> %i.nt, ptr %scevgep357, i64 14
  %i.nv = insertelement <32 x ptr> %i.nu, ptr %scevgep358, i64 15
  %i.nw = insertelement <32 x ptr> %i.nv, ptr %scevgep360, i64 16
  %i.nx = insertelement <32 x ptr> %i.nw, ptr %scevgep364, i64 17
  %i.ny = insertelement <32 x ptr> %i.nx, ptr %scevgep366, i64 18
  %i.nz = insertelement <32 x ptr> %i.ny, ptr %scevgep368, i64 19
  %i.oa = insertelement <32 x ptr> %i.nz, ptr %scevgep370, i64 20
  %i.ob = insertelement <32 x ptr> %i.oa, ptr %scevgep372, i64 21
  %i.oc = insertelement <32 x ptr> %i.ob, ptr %scevgep374, i64 22
  %i.od = insertelement <32 x ptr> %i.oc, ptr %scevgep375, i64 23
  %i.oe = insertelement <32 x ptr> %i.od, ptr %scevgep377, i64 24
  %i.of = insertelement <32 x ptr> %i.oe, ptr %scevgep381, i64 25
  %i.og = insertelement <32 x ptr> %i.of, ptr %scevgep383, i64 26
  %i.oh = insertelement <32 x ptr> %i.og, ptr %scevgep385, i64 27
  %i.oi = insertelement <32 x ptr> %i.oh, ptr %scevgep387, i64 28
  %i.oj = insertelement <32 x ptr> %i.oi, ptr %scevgep389, i64 29
  %i.ok = insertelement <32 x ptr> %i.oj, ptr %scevgep391, i64 30
  %i.ol = insertelement <32 x ptr> %i.ok, ptr %scevgep392, i64 31
  %i.om = icmp ult <32 x ptr> %i.ol, %i.gr
  %i.on = and <32 x i1> %i.nf, %i.om              ; 2 uses
  %i.oo = insertelement <64 x ptr> poison, ptr %scevgep400, i64 0
  %i.op = insertelement <64 x ptr> %i.oo, ptr %scevgep402, i64 1
  %i.oq = insertelement <64 x ptr> %i.op, ptr %scevgep404, i64 2
  %i.or = insertelement <64 x ptr> %i.oq, ptr %scevgep406, i64 3
  %i.os = insertelement <64 x ptr> %i.or, ptr %scevgep408, i64 4
  %i.ot = insertelement <64 x ptr> %i.os, ptr %scevgep413, i64 5
  %i.ou = insertelement <64 x ptr> %i.ot, ptr %scevgep411, i64 6
  %i.ov = insertelement <64 x ptr> %i.ou, ptr %scevgep415, i64 7
  %i.ow = insertelement <64 x ptr> %i.ov, ptr %scevgep417, i64 8
  %i.ox = insertelement <64 x ptr> %i.ow, ptr %scevgep419, i64 9
  %i.oy = insertelement <64 x ptr> %i.ox, ptr %scevgep421, i64 10
  %i.oz = insertelement <64 x ptr> %i.oy, ptr %scevgep423, i64 11
  %i.pa = insertelement <64 x ptr> %i.oz, ptr %scevgep425, i64 12
  %i.pb = insertelement <64 x ptr> %i.pa, ptr %scevgep430, i64 13
  %i.pc = insertelement <64 x ptr> %i.pb, ptr %scevgep428, i64 14
  %i.pd = insertelement <64 x ptr> %i.pc, ptr %scevgep432, i64 15
  %i.pe = insertelement <64 x ptr> %i.pd, ptr %scevgep434, i64 16
  %i.pf = insertelement <64 x ptr> %i.pe, ptr %scevgep436, i64 17
  %i.pg = insertelement <64 x ptr> %i.pf, ptr %scevgep438, i64 18
  %i.ph = insertelement <64 x ptr> %i.pg, ptr %scevgep440, i64 19
  %i.pi = insertelement <64 x ptr> %i.ph, ptr %scevgep442, i64 20
  %i.pj = insertelement <64 x ptr> %i.pi, ptr %scevgep447, i64 21
  %i.pk = insertelement <64 x ptr> %i.pj, ptr %scevgep451, i64 22
  %i.pl = insertelement <64 x ptr> %i.pk, ptr %scevgep454, i64 23
  %i.pm = insertelement <64 x ptr> %i.pl, ptr %scevgep457, i64 24
  %i.pn = insertelement <64 x ptr> %i.pm, ptr %scevgep460, i64 25
  %i.po = insertelement <64 x ptr> %i.pn, ptr %scevgep463, i64 26
  %i.pp = insertelement <64 x ptr> %i.po, ptr %scevgep462, i64 27
  %i.pq = insertelement <64 x ptr> %i.pp, ptr %scevgep466, i64 28
  %i.pr = insertelement <64 x ptr> %i.pq, ptr %scevgep468, i64 29
  %i.ps = shufflevector <2 x ptr> %i.kr, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.pt = shufflevector <64 x ptr> %i.pr, <64 x ptr> %i.ps, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65>
  %i.pu = shufflevector <2 x ptr> %i.kq, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.pv = shufflevector <64 x ptr> %i.pt, <64 x ptr> %i.pu, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 62, i32 63>
  %i.pw = shufflevector <2 x ptr> %i.kp, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.px = shufflevector <64 x ptr> %i.pv, <64 x ptr> %i.pw, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 60, i32 61, i32 62, i32 63>
  %i.py = shufflevector <2 x ptr> %i.ko, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.pz = shufflevector <64 x ptr> %i.px, <64 x ptr> %i.py, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qa = shufflevector <2 x ptr> %i.kn, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qb = shufflevector <64 x ptr> %i.pz, <64 x ptr> %i.qa, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qc = shufflevector <2 x ptr> %i.km, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qd = shufflevector <64 x ptr> %i.qb, <64 x ptr> %i.qc, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qe = shufflevector <2 x ptr> %i.kl, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qf = shufflevector <64 x ptr> %i.qd, <64 x ptr> %i.qe, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qg = shufflevector <2 x ptr> %i.kk, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qh = shufflevector <64 x ptr> %i.qf, <64 x ptr> %i.qg, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qi = shufflevector <2 x ptr> %i.kj, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qj = shufflevector <64 x ptr> %i.qh, <64 x ptr> %i.qi, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qk = shufflevector <2 x ptr> %i.ki, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ql = shufflevector <64 x ptr> %i.qj, <64 x ptr> %i.qk, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qm = shufflevector <2 x ptr> %i.kh, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qn = shufflevector <64 x ptr> %i.ql, <64 x ptr> %i.qm, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qo = shufflevector <2 x ptr> %i.kg, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qp = shufflevector <64 x ptr> %i.qn, <64 x ptr> %i.qo, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qq = shufflevector <2 x ptr> %i.kf, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qr = shufflevector <64 x ptr> %i.qp, <64 x ptr> %i.qq, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qs = shufflevector <2 x ptr> %i.ke, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qt = shufflevector <64 x ptr> %i.qr, <64 x ptr> %i.qs, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qu = shufflevector <2 x ptr> %i.kd, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qv = shufflevector <64 x ptr> %i.qt, <64 x ptr> %i.qu, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 64, i32 65, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qw = shufflevector <2 x ptr> %i.kc, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qx = shufflevector <64 x ptr> %i.qv, <64 x ptr> %i.qw, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 poison, i32 poison, i32 64, i32 65, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qy = shufflevector <2 x ptr> %i.kb, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.qz = shufflevector <64 x ptr> %i.qx, <64 x ptr> %i.qy, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 64, i32 65, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ra = icmp ult <64 x ptr> %i.fz, %i.qz
  %i.rb = insertelement <64 x ptr> poison, ptr %scevgep402, i64 0
  %i.rc = insertelement <64 x ptr> %i.rb, ptr %scevgep404, i64 1
  %i.rd = insertelement <64 x ptr> %i.rc, ptr %scevgep406, i64 2
  %i.re = insertelement <64 x ptr> %i.rd, ptr %scevgep408, i64 3
  %i.rf = insertelement <64 x ptr> %i.re, ptr %scevgep409, i64 4
  %i.rg = insertelement <64 x ptr> %i.rf, ptr %scevgep411, i64 5
  %i.rh = insertelement <64 x ptr> %i.rg, ptr %scevgep415, i64 6
  %i.ri = insertelement <64 x ptr> %i.rh, ptr %scevgep417, i64 7
  %i.rj = insertelement <64 x ptr> %i.ri, ptr %scevgep419, i64 8
  %i.rk = insertelement <64 x ptr> %i.rj, ptr %scevgep421, i64 9
  %i.rl = insertelement <64 x ptr> %i.rk, ptr %scevgep423, i64 10
  %i.rm = insertelement <64 x ptr> %i.rl, ptr %scevgep425, i64 11
  %i.rn = insertelement <64 x ptr> %i.rm, ptr %scevgep426, i64 12
  %i.ro = insertelement <64 x ptr> %i.rn, ptr %scevgep428, i64 13
  %i.rp = insertelement <64 x ptr> %i.ro, ptr %scevgep432, i64 14
  %i.rq = insertelement <64 x ptr> %i.rp, ptr %scevgep434, i64 15
  %i.rr = insertelement <64 x ptr> %i.rq, ptr %scevgep436, i64 16
  %i.rs = insertelement <64 x ptr> %i.rr, ptr %scevgep438, i64 17
  %i.rt = insertelement <64 x ptr> %i.rs, ptr %scevgep440, i64 18
  %i.ru = insertelement <64 x ptr> %i.rt, ptr %scevgep442, i64 19
  %i.rv = insertelement <64 x ptr> %i.ru, ptr %scevgep443, i64 20
  %i.rw = insertelement <64 x ptr> %i.rv, ptr %scevgep445, i64 21
  %i.rx = insertelement <64 x ptr> %i.rw, ptr %scevgep449, i64 22
  %i.ry = insertelement <64 x ptr> %i.rx, ptr %scevgep453, i64 23
  %i.rz = insertelement <64 x ptr> %i.ry, ptr %scevgep456, i64 24
  %i.sa = insertelement <64 x ptr> %i.rz, ptr %scevgep459, i64 25
  %i.sb = insertelement <64 x ptr> %i.sa, ptr %scevgep462, i64 26
  %i.sc = insertelement <64 x ptr> %i.sb, ptr %scevgep466, i64 27
  %i.sd = insertelement <64 x ptr> %i.sc, ptr %i.hp, i64 28
  %i.se = shufflevector <64 x ptr> %i.sd, <64 x ptr> %i.qy, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sf = shufflevector <64 x ptr> %i.se, <64 x ptr> %i.qw, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sg = shufflevector <64 x ptr> %i.sf, <64 x ptr> %i.qu, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sh = shufflevector <64 x ptr> %i.sg, <64 x ptr> %i.qs, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.si = shufflevector <64 x ptr> %i.sh, <64 x ptr> %i.qq, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sj = shufflevector <64 x ptr> %i.si, <64 x ptr> %i.qo, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sk = shufflevector <64 x ptr> %i.sj, <64 x ptr> %i.qm, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sl = shufflevector <64 x ptr> %i.sk, <64 x ptr> %i.qk, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sm = shufflevector <64 x ptr> %i.sl, <64 x ptr> %i.qi, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sn = shufflevector <64 x ptr> %i.sm, <64 x ptr> %i.qg, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.so = shufflevector <64 x ptr> %i.sn, <64 x ptr> %i.qe, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sp = shufflevector <64 x ptr> %i.so, <64 x ptr> %i.qc, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sq = shufflevector <64 x ptr> %i.sp, <64 x ptr> %i.qa, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sr = shufflevector <64 x ptr> %i.sq, <64 x ptr> %i.py, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ss = shufflevector <64 x ptr> %i.sr, <64 x ptr> %i.pw, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.st = shufflevector <64 x ptr> %i.ss, <64 x ptr> %i.pu, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 64, i32 65, i32 poison, i32 poison, i32 poison>
  %i.su = shufflevector <64 x ptr> %i.st, <64 x ptr> %i.ps, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 64, i32 65, i32 poison>
  %i.sv = shufflevector <16 x ptr> %i.ks, <16 x ptr> poison, <64 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sw = shufflevector <64 x ptr> %i.su, <64 x ptr> %i.sv, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 64>
  %i.sx = icmp ult <64 x ptr> %i.sw, %i.gb
  %i.sy = and <64 x i1> %i.ra, %i.sx              ; 2 uses
  %i.sz = icmp ult <16 x ptr> %i.gd, %i.ks
  %i.ta = icmp ult <16 x ptr> %i.kt, %i.gf
  %i.tb = and <16 x i1> %i.sz, %i.ta
  %i.tc = icmp ult <8 x ptr> %i.gh, %i.ku
  %i.td = icmp ult <8 x ptr> %i.kv, %i.gj
  %i.te = and <8 x i1> %i.tc, %i.td
  %i.tf = icmp ult <4 x ptr> %i.gl, %i.kw
  %i.tg = icmp ult <4 x ptr> %i.kx, %i.gn
  %i.th = and <4 x i1> %i.tf, %i.tg
  %i.ti = insertelement <4 x ptr> poison, ptr %scevgep396, i64 0
  %i.tj = insertelement <4 x ptr> %i.ti, ptr %scevgep394, i64 1
  %i.tk = insertelement <4 x ptr> %i.tj, ptr %scevgep398, i64 2
  %i.tl = insertelement <4 x ptr> %i.tk, ptr %i.hq, i64 3
  %i.tm = icmp ult <4 x ptr> %i.gl, %i.tl
  %i.tn = insertelement <4 x ptr> poison, ptr %scevgep394, i64 0
  %i.to = insertelement <4 x ptr> %i.tn, ptr %scevgep398, i64 1
  %i.tp = insertelement <4 x ptr> %i.to, ptr %scevgep400, i64 2
  %i.tq = insertelement <4 x ptr> %i.tp, ptr %i.hh, i64 3
  %i.tr = icmp ult <4 x ptr> %i.tq, %i.gn
  %i.ts = and <4 x i1> %i.tm, %i.tr
  %i.tt = shufflevector <64 x i1> %i.sy, <64 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %rdx.op = or <16 x i1> %i.tt, %i.tb             ; 2 uses
  %i.tu = shufflevector <16 x i1> %rdx.op, <16 x i1> poison, <64 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tv = shufflevector <64 x i1> %i.tu, <64 x i1> %i.sy, <64 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.tw = shufflevector <16 x i1> %rdx.op, <16 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op1180.a = or <8 x i1> %i.tw, %i.te        ; 2 uses
  %i.tx = shufflevector <8 x i1> %rdx.op1180.a, <8 x i1> poison, <64 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ty = shufflevector <64 x i1> %i.tx, <64 x i1> %i.tv, <64 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.tz = shufflevector <8 x i1> %rdx.op1180.a, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1181 = or <4 x i1> %i.tz, %i.th
  %i.ua = shufflevector <4 x i1> %rdx.op1181, <4 x i1> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ub = shufflevector <64 x i1> %i.ua, <64 x i1> %i.ty, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.uc = bitcast <64 x i1> %i.ub to i64
  %i.ud = icmp ne i64 %i.uc, 0
  %i.ue = shufflevector <32 x i1> %i.on, <32 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1217 = or <4 x i1> %i.ue, %i.ts
  %i.uf = shufflevector <4 x i1> %rdx.op1217, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ug = shufflevector <32 x i1> %i.uf, <32 x i1> %i.on, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.uh = bitcast <32 x i1> %i.ug to i32
  %i.ui = icmp ne i32 %i.uh, 0
  %op.rdx1218 = or i1 %i.ui, %i.ud
  br i1 %op.rdx1218, label %.preheader.preheader, label %vector.ph978

vector.ph978:                                     ; preds = %vector.memcheck
  %i.uj = getelementptr i8, ptr %i.hp, i64 %i.ey
  %i.uk = load float, ptr %i.hh, align 4, !tbaa !52, !alias.scope !1706
  %broadcast.splatinsert984 = insertelement <4 x float> poison, float %i.uk, i64 0
  %broadcast.splat985 = shufflevector <4 x float> %broadcast.splatinsert984, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ul = load float, ptr %i.hq, align 4, !tbaa !52, !alias.scope !1707
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ul, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.um = load float, ptr %i.hr, align 4, !tbaa !52, !alias.scope !1708
  %broadcast.splatinsert987 = insertelement <4 x float> poison, float %i.um, i64 0
  %broadcast.splat988 = shufflevector <4 x float> %broadcast.splatinsert987, <4 x float> poison, <4 x i32> zeroinitializer
  %i.un = load float, ptr %i.hs, align 4, !tbaa !52, !alias.scope !1709
  %broadcast.splatinsert990 = insertelement <4 x float> poison, float %i.un, i64 0
  %broadcast.splat991 = shufflevector <4 x float> %broadcast.splatinsert990, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uo = load float, ptr %i.ht, align 4, !tbaa !52, !alias.scope !1710
  %broadcast.splatinsert993 = insertelement <4 x float> poison, float %i.uo, i64 0
  %broadcast.splat994 = shufflevector <4 x float> %broadcast.splatinsert993, <4 x float> poison, <4 x i32> zeroinitializer
  %i.up = load float, ptr %i.hu, align 4, !tbaa !52, !alias.scope !1711
  %broadcast.splatinsert996 = insertelement <4 x float> poison, float %i.up, i64 0
  %broadcast.splat997 = shufflevector <4 x float> %broadcast.splatinsert996, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uq = load float, ptr %i.hv, align 4, !tbaa !52, !alias.scope !1712
  %broadcast.splatinsert999 = insertelement <4 x float> poison, float %i.uq, i64 0
  %broadcast.splat1000 = shufflevector <4 x float> %broadcast.splatinsert999, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ur = load float, ptr %i.hw, align 4, !tbaa !52, !alias.scope !1713
  %broadcast.splatinsert1002 = insertelement <4 x float> poison, float %i.ur, i64 0
  %broadcast.splat1003 = shufflevector <4 x float> %broadcast.splatinsert1002, <4 x float> poison, <4 x i32> zeroinitializer
  %i.us = load float, ptr %i.hx, align 4, !tbaa !52, !alias.scope !1714
  %broadcast.splatinsert1008 = insertelement <4 x float> poison, float %i.us, i64 0
  %broadcast.splat1009 = shufflevector <4 x float> %broadcast.splatinsert1008, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ut = load float, ptr %i.hy, align 4, !tbaa !52, !alias.scope !1715
  %broadcast.splatinsert1006 = insertelement <4 x float> poison, float %i.ut, i64 0
  %broadcast.splat1007 = shufflevector <4 x float> %broadcast.splatinsert1006, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uu = load float, ptr %i.hz, align 4, !tbaa !52, !alias.scope !1716
  %broadcast.splatinsert1011 = insertelement <4 x float> poison, float %i.uu, i64 0
  %broadcast.splat1012 = shufflevector <4 x float> %broadcast.splatinsert1011, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uv = load float, ptr %i.ia, align 4, !tbaa !52, !alias.scope !1717
  %broadcast.splatinsert1014 = insertelement <4 x float> poison, float %i.uv, i64 0
  %broadcast.splat1015 = shufflevector <4 x float> %broadcast.splatinsert1014, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uw = load float, ptr %i.ib, align 4, !tbaa !52, !alias.scope !1718
  %broadcast.splatinsert1017 = insertelement <4 x float> poison, float %i.uw, i64 0
  %broadcast.splat1018 = shufflevector <4 x float> %broadcast.splatinsert1017, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ux = load float, ptr %i.ic, align 4, !tbaa !52, !alias.scope !1719
  %broadcast.splatinsert1020 = insertelement <4 x float> poison, float %i.ux, i64 0
  %broadcast.splat1021 = shufflevector <4 x float> %broadcast.splatinsert1020, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = load float, ptr %i.id, align 4, !tbaa !52, !alias.scope !1720
  %broadcast.splatinsert1023 = insertelement <4 x float> poison, float %i.uy, i64 0
  %broadcast.splat1024 = shufflevector <4 x float> %broadcast.splatinsert1023, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uz = load float, ptr %i.ie, align 4, !tbaa !52, !alias.scope !1721
  %broadcast.splatinsert1026 = insertelement <4 x float> poison, float %i.uz, i64 0
  %broadcast.splat1027 = shufflevector <4 x float> %broadcast.splatinsert1026, <4 x float> poison, <4 x i32> zeroinitializer
  %i.va = load float, ptr %i.if, align 4, !tbaa !52, !alias.scope !1722
  %broadcast.splatinsert1032 = insertelement <4 x float> poison, float %i.va, i64 0
  %broadcast.splat1033 = shufflevector <4 x float> %broadcast.splatinsert1032, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vb = load float, ptr %i.ig, align 4, !tbaa !52, !alias.scope !1723
  %broadcast.splatinsert1030 = insertelement <4 x float> poison, float %i.vb, i64 0
  %broadcast.splat1031 = shufflevector <4 x float> %broadcast.splatinsert1030, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vc = load float, ptr %i.ih, align 4, !tbaa !52, !alias.scope !1724
  %broadcast.splatinsert1035 = insertelement <4 x float> poison, float %i.vc, i64 0
  %broadcast.splat1036 = shufflevector <4 x float> %broadcast.splatinsert1035, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vd = load float, ptr %i.ii, align 4, !tbaa !52, !alias.scope !1725
  %broadcast.splatinsert1038 = insertelement <4 x float> poison, float %i.vd, i64 0
  %broadcast.splat1039 = shufflevector <4 x float> %broadcast.splatinsert1038, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ve = load float, ptr %i.ij, align 4, !tbaa !52, !alias.scope !1726
  %broadcast.splatinsert1041 = insertelement <4 x float> poison, float %i.ve, i64 0
  %broadcast.splat1042 = shufflevector <4 x float> %broadcast.splatinsert1041, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vf = load float, ptr %i.ik, align 4, !tbaa !52, !alias.scope !1727
  %broadcast.splatinsert1044 = insertelement <4 x float> poison, float %i.vf, i64 0
  %broadcast.splat1045 = shufflevector <4 x float> %broadcast.splatinsert1044, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vg = load float, ptr %i.il, align 4, !tbaa !52, !alias.scope !1728
  %broadcast.splatinsert1047 = insertelement <4 x float> poison, float %i.vg, i64 0
  %broadcast.splat1048 = shufflevector <4 x float> %broadcast.splatinsert1047, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vh = load float, ptr %i.im, align 4, !tbaa !52, !alias.scope !1729
  %broadcast.splatinsert1050 = insertelement <4 x float> poison, float %i.vh, i64 0
  %broadcast.splat1051 = shufflevector <4 x float> %broadcast.splatinsert1050, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vi = load float, ptr %i.in, align 4, !tbaa !52, !alias.scope !1730
  %broadcast.splatinsert1056 = insertelement <4 x float> poison, float %i.vi, i64 0
  %broadcast.splat1057 = shufflevector <4 x float> %broadcast.splatinsert1056, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vj = load float, ptr %i.io, align 4, !tbaa !52, !alias.scope !1731
  %broadcast.splatinsert1054 = insertelement <4 x float> poison, float %i.vj, i64 0
  %broadcast.splat1055 = shufflevector <4 x float> %broadcast.splatinsert1054, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vk = load float, ptr %i.ip, align 4, !tbaa !52, !alias.scope !1732
  %broadcast.splatinsert1059 = insertelement <4 x float> poison, float %i.vk, i64 0
  %broadcast.splat1060 = shufflevector <4 x float> %broadcast.splatinsert1059, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vl = load float, ptr %i.iq, align 4, !tbaa !52, !alias.scope !1733
  %broadcast.splatinsert1062 = insertelement <4 x float> poison, float %i.vl, i64 0
  %broadcast.splat1063 = shufflevector <4 x float> %broadcast.splatinsert1062, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vm = load float, ptr %i.ir, align 4, !tbaa !52, !alias.scope !1734
  %broadcast.splatinsert1065 = insertelement <4 x float> poison, float %i.vm, i64 0
  %broadcast.splat1066 = shufflevector <4 x float> %broadcast.splatinsert1065, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vn = load float, ptr %i.is, align 4, !tbaa !52, !alias.scope !1735
  %broadcast.splatinsert1068 = insertelement <4 x float> poison, float %i.vn, i64 0
  %broadcast.splat1069 = shufflevector <4 x float> %broadcast.splatinsert1068, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vo = load float, ptr %i.it, align 4, !tbaa !52, !alias.scope !1736
  %broadcast.splatinsert1071 = insertelement <4 x float> poison, float %i.vo, i64 0
  %broadcast.splat1072 = shufflevector <4 x float> %broadcast.splatinsert1071, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vp = load float, ptr %i.iu, align 4, !tbaa !52, !alias.scope !1737
  %broadcast.splatinsert1074 = insertelement <4 x float> poison, float %i.vp, i64 0
  %broadcast.splat1075 = shufflevector <4 x float> %broadcast.splatinsert1074, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vq = load float, ptr %i.iv, align 4, !tbaa !52, !alias.scope !1738
  %broadcast.splatinsert1080 = insertelement <4 x float> poison, float %i.vq, i64 0
  %broadcast.splat1081 = shufflevector <4 x float> %broadcast.splatinsert1080, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vr = load float, ptr %i.iw, align 4, !tbaa !52, !alias.scope !1739
  %broadcast.splatinsert1078 = insertelement <4 x float> poison, float %i.vr, i64 0
  %broadcast.splat1079 = shufflevector <4 x float> %broadcast.splatinsert1078, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vs = load float, ptr %i.ix, align 4, !tbaa !52, !alias.scope !1740
  %broadcast.splatinsert1083 = insertelement <4 x float> poison, float %i.vs, i64 0
  %broadcast.splat1084 = shufflevector <4 x float> %broadcast.splatinsert1083, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vt = load float, ptr %i.iy, align 4, !tbaa !52, !alias.scope !1741
  %broadcast.splatinsert1086 = insertelement <4 x float> poison, float %i.vt, i64 0
  %broadcast.splat1087 = shufflevector <4 x float> %broadcast.splatinsert1086, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vu = load float, ptr %i.iz, align 4, !tbaa !52, !alias.scope !1742
  %broadcast.splatinsert1089 = insertelement <4 x float> poison, float %i.vu, i64 0
  %broadcast.splat1090 = shufflevector <4 x float> %broadcast.splatinsert1089, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vv = load float, ptr %i.ja, align 4, !tbaa !52, !alias.scope !1743
  %broadcast.splatinsert1092 = insertelement <4 x float> poison, float %i.vv, i64 0
  %broadcast.splat1093 = shufflevector <4 x float> %broadcast.splatinsert1092, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vw = load float, ptr %i.jb, align 4, !tbaa !52, !alias.scope !1744
  %broadcast.splatinsert1095 = insertelement <4 x float> poison, float %i.vw, i64 0
  %broadcast.splat1096 = shufflevector <4 x float> %broadcast.splatinsert1095, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vx = load float, ptr %i.jc, align 4, !tbaa !52, !alias.scope !1745
  %broadcast.splatinsert1098 = insertelement <4 x float> poison, float %i.vx, i64 0
  %broadcast.splat1099 = shufflevector <4 x float> %broadcast.splatinsert1098, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vy = load float, ptr %i.jd, align 4, !tbaa !52, !alias.scope !1746
  %broadcast.splatinsert1104 = insertelement <4 x float> poison, float %i.vy, i64 0
  %broadcast.splat1105 = shufflevector <4 x float> %broadcast.splatinsert1104, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vz = load float, ptr %i.je, align 4, !tbaa !52, !alias.scope !1747
  %broadcast.splatinsert1102 = insertelement <4 x float> poison, float %i.vz, i64 0
  %broadcast.splat1103 = shufflevector <4 x float> %broadcast.splatinsert1102, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wa = load float, ptr %i.jf, align 4, !tbaa !52, !alias.scope !1748
  %broadcast.splatinsert1107 = insertelement <4 x float> poison, float %i.wa, i64 0
  %broadcast.splat1108 = shufflevector <4 x float> %broadcast.splatinsert1107, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wb = load float, ptr %i.jg, align 4, !tbaa !52, !alias.scope !1749
  %broadcast.splatinsert1110 = insertelement <4 x float> poison, float %i.wb, i64 0
  %broadcast.splat1111 = shufflevector <4 x float> %broadcast.splatinsert1110, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wc = load float, ptr %i.jh, align 4, !tbaa !52, !alias.scope !1750
  %broadcast.splatinsert1113 = insertelement <4 x float> poison, float %i.wc, i64 0
end_hunk_4
