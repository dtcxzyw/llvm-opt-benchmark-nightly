inline.NumInlined: 2069
inline.NumDeleted: 754
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6Assimp13ObjFileParser9parseFileERNS_14IOStreamBufferIcEE:bb.a
  %.sroa.04.0.copyload = load ptr, ptr %i.g, align 8
  %i.kj = invoke ptr @_ZN6Assimp14getNameNoSpaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr nonnull %i.bb, ptr %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.cc unwind label %bb.ce     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.kk = load i64, ptr %i.u, align 8             ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 6
  %.pre192 = load ptr, ptr %10, align 8           ; 4 uses
  br i1 %i.kl, label %bb.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158

bb.cd:                                            ; preds = %bb.cc
  %i.km = load i32, ptr %.pre192, align 1
  %i.kn = xor i32 %i.km, 2037674851
  %i.ko = getelementptr i8, ptr %.pre192, i64 4
  %i.kp = load i16, ptr %i.ko, align 1
  %i.kq = zext i16 %i.kp to i32
  %i.kr = xor i32 %i.kq, 25968
  %i.ks = or i32 %i.kn, %i.kr
  %i.kt = icmp ne i32 %i.ks, 0
  %i.ku = zext i1 %i.kt to i32
  %i.kv = icmp eq i32 %i.ku, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158: ; preds = %bb.cc, %bb.cd
  %i.kw = phi i1 [ false, %bb.cc ], [ %i.kv, %bb.cd ]
  %i.kx = icmp eq ptr %.pre192, %i.t
  br i1 %i.kx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158
  %i.ky = icmp ult i64 %i.kk, 16
  call void @llvm.assume(i1 %i.ky)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158
  %i.kz = load i64, ptr %i.t, align 8
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %.pre192, i64 noundef %i.la) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  %i.lb = landingpad { ptr, i32 }
          cleanup
  %i.lc = load ptr, ptr %10, align 8              ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.t
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.ce
  %i.le = load i64, ptr %i.t, align 8
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ck

bb.cf:                                            ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.144 = phi i1 [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.m ], [ false, %bb.r ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.kw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ]
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 7 uses
  %i.lg = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.not.i165 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i165, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.cf
  %i.lh = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.li = icmp eq ptr %.sroa.01.0.copyload, %i.lh
  br i1 %i.li, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.lk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.lj = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.lj, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.ll = icmp eq ptr %i.lk, %.sroa.0.0.copyload
  %i.lm = icmp eq ptr %i.lk, %i.lh
  %.0.i.i = or i1 %i.ll, %i.lm
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.lk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.critedge.i
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.lo = load i32, ptr %i.o, align 8
  %i.lp = add i32 %i.lo, 1
  store i32 %i.lp, ptr %i.o, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.ln, %bb.cg ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.ch
  %.sroa.010.136.i = ptrtoint ptr %.sroa.010.1.i to i64
  %i.lq = sub i64 %i.lg, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.lq
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.ls, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.lr = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.lr, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.ls, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.critedge4.i, %.lr.ph32.i, %bb.ch, %bb.cf
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.cf ], [ %.sroa.010.1.i, %bb.ch ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  br label %.backedge

bb.ci:                                            ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.ab to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.lx) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.ck:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %bb.ae, %bb.z, %bb.v, %bb.i
  %.pn68.pn = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.da, %bb.z ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.lb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %i.eh, %bb.ah ], [ %i.ba, %bb.k ], [ %.pn63.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.dy, %bb.ae ], [ %i.ce, %bb.v ]
  %i.ly = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIcSaIcEED2Ev.exit167, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = ptrtoint ptr %i.ly to i64
  %i.md = sub i64 %i.mb, %i.mc
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.md) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit167

_ZNSt6vectorIcSaIcEED2Ev.exit167:                 ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn68.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6Assimp13ObjFileParser9setBufferERSt6vectorIcSaIcEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(4184) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6Assimp13ObjFileParser8GetModelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE15getNextDataLineERSt6vectorIcSaIcEEc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = load i64, ptr %i.a, align 8
  %.not = icmp uge i64 %i.d, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %3 = icmp eq i64 %i.g, 0
  %or.cond = select i1 %.not, i1 true, i1 %3
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.g, i32 noundef 0), !inline_history !17 ; 0 uses
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %i.a, align 8
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.o, i64 noundef 1, i64 noundef %i.p), !inline_history !17 ; 4 uses
  %.not21 = icmp eq i64 %i.t, 0
  br i1 %.not21, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread

bb.d:                                             ; preds = %bb.c
  store i64 %i.t, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread: ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.t, %bb.d ], [ %i.u, %bb.c ]
  %i.x = load i64, ptr %i.f, align 8
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr %i.f, align 8
  store i64 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread, %bb.a
  %i.ac = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread ], [ %i.d, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %.promoted = phi i64 [ %i.ac, %bb.e ], [ %.promoted.be, %.backedge ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.av, %.backedge ] ; 6 uses
  %i.ah = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.promoted ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 3 uses
  %i.ak = icmp eq i8 %2, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.ai, i64 1
  %i.am = load i8, ptr %i.al, align 1
  switch i8 %i.am, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader:       ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %storemerge.in23 = phi i64 [ %storemerge, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.promoted, %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader ] ; 2 uses
  %storemerge = add i64 %storemerge.in23, 1       ; 3 uses
  store i64 %storemerge, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %storemerge
  %i.ao = load i8, ptr %i.an, align 1
  %.not14 = icmp eq i8 %i.ao, 10
  br i1 %.not14, label %bb.h, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, !llvm.loop !18

bb.h:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.ap = add i64 %storemerge.in23, 2             ; 2 uses
  store i64 %i.ap, ptr %i.c, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ap
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit19

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread:          ; preds = %bb.g, %bb.f
  switch i8 %i.aj, label %_ZN6Assimp9IsLineEndIcEEbT_.exit19 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit19.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit19.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit19.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit19.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit19:               ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %bb.h
  %i.aq = phi i8 [ %i.aj, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.pre, %bb.h ]
  %i.ar = load ptr, ptr %1, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0
  store i8 %i.aq, ptr %i.as, align 1
  %i.at = load i64, ptr %i.c, align 8
  %i.au = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.au, ptr %i.c, align 8
  %i.av = add i64 %.0, 1                          ; 4 uses
  %i.aw = load ptr, ptr %i.ae, align 8
  %i.ax = load ptr, ptr %1, align 8
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp eq i64 %i.av, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit19
  %i.bc = shl i64 %i.av, 1
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bc)
  %.pre24 = load i64, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit19
  %i.bd = phi i64 [ %.pre24, %bb.i ], [ %i.au, %_ZN6Assimp9IsLineEndIcEEbT_.exit19 ] ; 3 uses
  %i.be = load i64, ptr %i.af, align 8
  %.not15 = icmp ult i64 %i.bd, %i.be
  br i1 %.not15, label %bb.k, label %_ZN6Assimp9IsLineEndIcEEbT_.exit19.thread

bb.k:                                             ; preds = %bb.j
  %i.bf = load i64, ptr %i.a, align 8
  %.not16 = icmp ult i64 %i.bd, %i.bf
  br i1 %.not16, label %.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %0, align 8               ; 2 uses
  %i.bh = load i64, ptr %i.f, align 8
  %i.bi = load ptr, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i32 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i64 noundef %i.bh, i32 noundef 0), !inline_history !17 ; 0 uses
  %i.bm = load ptr, ptr %0, align 8               ; 2 uses
  %i.bn = load ptr, ptr %i.ad, align 8
  %i.bo = load i64, ptr %i.a, align 8
  %i.bp = load ptr, ptr %i.bm, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull %i.bn, i64 noundef 1, i64 noundef %i.bo), !inline_history !17 ; 4 uses
  %.not22 = icmp eq i64 %i.bs, 0
  br i1 %.not22, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.n, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread

bb.n:                                             ; preds = %bb.m
  store i64 %i.bs, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread: ; preds = %bb.m, %bb.n
  %i.bv = phi i64 [ %i.bs, %bb.n ], [ %i.bt, %bb.m ]
  %i.bw = load i64, ptr %i.f, align 8
  %i.bx = add i64 %i.bw, %i.bv
  store i64 %i.bx, ptr %i.f, align 8
  store i64 0, ptr %i.c, align 8
  %i.by = load i64, ptr %i.ag, align 8
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.ag, align 8
  br label %.backedge

.backedge:                                        ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread, %bb.k
  %.promoted.be = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread ], [ %i.bd, %bb.k ]
  br label %bb.f, !llvm.loop !19

_ZN6Assimp9IsLineEndIcEEbT_.exit19.thread:        ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %bb.j
  %.1 = phi i64 [ %i.av, %bb.j ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ]
  %i.ca = load ptr, ptr %1, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.1
  store i8 10, ptr %i.cb, align 1
  %i.cc = load i64, ptr %i.c, align 8
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.c, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit: ; preds = %bb.l, %bb.b, %_ZN6Assimp9IsLineEndIcEEbT_.exit19.thread
  %.113 = phi i1 [ false, %bb.b ], [ true, %_ZN6Assimp9IsLineEndIcEEbT_.exit19.thread ], [ false, %bb.l ]
  ret i1 %.113
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZN6Assimp14getNameNoSpaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull @.str.28, i64 noundef 0) ; 0 uses
  %i.f = icmp eq ptr %0, %1
  %i.g = getelementptr inbounds i8, ptr %1, i64 -1 ; 3 uses
  %i.h = icmp eq ptr %0, %i.g
  %.0.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %.0.i, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.sroa.025.036 = phi ptr [ %i.j, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.i = load i8, ptr %.sroa.025.036, align 1
  switch i8 %i.i, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.025.036, i64 1 ; 4 uses
  %i.k = icmp eq ptr %i.j, %1
  %i.l = icmp eq ptr %i.j, %i.g
  %.0.i17 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %.0.i17, label %.critedge, label %.preheader, !llvm.loop !20

.critedge:                                        ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.sroa.025.0.lcssa = phi ptr [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %i.j, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 3 uses
  %.sroa.025.0.lcssa37 = ptrtoint ptr %.sroa.025.0.lcssa to i64 ; 2 uses
  %i.m = add i64 %.sroa.025.0.lcssa37, 1
  br label %bb.b

bb.b:                                             ; preds = %.critedge2, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge2 ], [ %i.m, %.critedge ] ; 2 uses
  %.sroa.025.1 = phi ptr [ %i.w, %.critedge2 ], [ %.sroa.025.0.lcssa, %.critedge ] ; 4 uses
  %i.n = icmp eq ptr %.sroa.025.1, %1
  %i.o = icmp eq ptr %.sroa.025.1, %i.g
  %.0.i18 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.0.i18, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %.sroa.025.1, align 1
  switch i8 %i.p, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader [
    i8 13, label %.critedge2
    i8 10, label %.critedge2
    i8 0, label %.critedge2
    i8 12, label %.critedge2
    i8 32, label %.critedge2
    i8 9, label %.critedge2
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader: ; preds = %bb.c
  %i.q = sub i64 0, %.sroa.025.0.lcssa37
  %scevgep = getelementptr i8, ptr %.sroa.025.0.lcssa, i64 %i.q
  %umax = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %indvars.iv)
  %scevgep38 = getelementptr i8, ptr %scevgep, i64 %umax ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.r, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.t = ptrtoint ptr %scevgep38 to i64
  %i.u = sub i64 %i.t, %i.a                       ; 4 uses
  store i64 %i.u, ptr %i.b, align 8
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.critedge2:                                       ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.b
  %i.w = getelementptr inbounds i8, ptr %.sroa.025.1, i64 -1
  %indvars.iv.next = add i64 %indvars.iv, -1
  br label %bb.b, !llvm.loop !21

.noexc.i:                                         ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %3, align 8
  %i.y = load i64, ptr %i.b, align 8
  store i64 %i.y, ptr %i.r, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader
  %i.z = phi ptr [ %i.x, %.noexc.i ], [ %i.r, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %0, align 1
  store i8 %i.aa, ptr %i.z, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %0, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ab, ptr %i.s, align 8
  %i.ac = load ptr, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ae = load i64, ptr %i.s, align 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.r
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.r, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.g, %bb.f
  %i.al = load ptr, ptr %3, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.r
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.an = load i64, ptr %i.r, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.ag

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.sroa.013.0 = phi ptr [ %scevgep38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %1, %bb.a ]
  ret ptr %.sroa.013.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define noundef i64 @_ZN6Assimp13ObjFileParser32getNumComponentsInDataDefinitionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4128
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit15

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit15:       ; preds = %.critedge.i.i13, %bb.a
  %.024 = phi ptr [ %i.a, %bb.a ], [ %.0.lcssa.i.i14, %.critedge.i.i13 ] ; 6 uses
  %.06 = phi i1 [ false, %bb.a ], [ %.17, %.critedge.i.i13 ]
  %.05 = phi i64 [ 0, %bb.a ], [ %spec.select8, %.critedge.i.i13 ] ; 7 uses
  br i1 %.06, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit15
  %i.e = load i8, ptr %.024, align 1
  switch i8 %i.e, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 92, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN6Assimp13ObjFileParser14getMaterialLibEv:bb.a
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i:     ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 1 ; 4 uses
  %i.j = icmp eq ptr %i.i, %.sroa.05.0.copyload
  %i.k = icmp eq ptr %i.i, %i.e
  %.0.i.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !47

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.06.0.copyload, %bb.a ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ] ; 4 uses
  %i.l = icmp eq ptr %.sroa.0.0.lcssa.i.i, %.sroa.05.0.copyload
  %i.m = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.e
  %.0.i6.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %.0.i6.i.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 3 uses
  %i.n = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.n, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.p = icmp eq ptr %i.o, %.sroa.05.0.copyload
  %i.q = icmp eq ptr %i.o, %i.e
  %.0.i.i9.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.0.i.i9.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i, !llvm.loop !24

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i8.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %.promoted = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.07.i.i, %.lr.ph.i8.i ], [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 6 uses
  store ptr %.promoted, ptr %0, align 8
  %i.r = icmp eq ptr %.promoted, %.sroa.05.0.copyload
  br i1 %i.r, label %bb.aw, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.s = phi ptr [ %i.u, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.promoted, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ] ; 6 uses
  %i.t = load i8, ptr %i.s, align 1
  switch i8 %i.t, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  store ptr %i.u, ptr %0, align 8
  %.not132 = icmp eq ptr %i.u, %.sroa.05.0.copyload
  br i1 %.not132, label %.critedge, label %.lr.ph, !llvm.loop !54

.critedge:                                        ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.lcssa.ph = phi ptr [ %.sroa.05.0.copyload, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.v, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.x = ptrtoint ptr %.lcssa.ph to i64
  %i.y = ptrtoint ptr %.promoted to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  store i64 %i.z, ptr %i.c, align 8
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %1, align 8
  %i.ac = load i64, ptr %i.c, align 8
  store i64 %i.ac, ptr %i.v, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.critedge
  %i.ad = phi ptr [ %i.ab, %.noexc.i ], [ %i.v, %.critedge ] ; 2 uses
  switch i64 %i.z, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %.promoted, align 1
  store i8 %i.ae, ptr %i.ad, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %.promoted, i64 %i.z, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.af = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.af, ptr %i.w, align 8
  %i.ag = load ptr, ptr %1, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ai, ptr %2, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ai, align 8
  %i.ak = load i64, ptr %i.w, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.am = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull @.str.12)
          to label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.u, %bb.h, %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit108

bb.h:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4136 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.au = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %bb.k unwind label %bb.r       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.az, ptr %3, align 8
  %i.ba = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.bc, ptr %i.b, align 8
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i42, label %._crit_edge.i.i41

.noexc.i42:                                       ; preds = %bb.k
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc43 unwind label %bb.r   ; 2 uses

.noexc43:                                         ; preds = %.noexc.i42
  store ptr %i.be, ptr %3, align 8
  %i.bf = load i64, ptr %i.b, align 8
  store i64 %i.bf, ptr %i.az, align 8
  br label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %.noexc43, %bb.k
  %i.bg = phi ptr [ %i.be, %.noexc43 ], [ %i.az, %bb.k ] ; 2 uses
  switch i64 %i.bc, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i41
  %i.bh = load i8, ptr %i.ba, align 1
  store i8 %i.bh, ptr %i.bg, align 1
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i41
  %i.bi = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %3, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bm = load ptr, ptr %3, align 8, !noalias !55 ; 3 uses
  %i.bn = load i64, ptr %i.bj, align 8, !noalias !55 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1
  %.not21 = icmp eq i8 %i.bq, 47
  br i1 %.not21, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = add i64 %i.bn, 1                        ; 3 uses
  %i.bs = icmp eq ptr %i.bm, %i.az                ; 2 uses
  br i1 %i.bs, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bt = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.p, %bb.o
  %10 = load i64, ptr %i.az, align 8
  %11 = select i1 %i.bs, i64 15, i64 %10
  %i.bu = icmp ugt i64 %i.br, %11
  br i1 %i.bu, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc44 unwind label %bb.s

.noexc44:                                         ; preds = %bb.q
  %.pre.i.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc44
  %i.bv = phi ptr [ %.pre.i.i, %.noexc44 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i8 47, ptr %i.bw, align 1
  store i64 %i.br, ptr %i.bj, align 8
  %i.bx = load ptr, ptr %3, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.br
  store i8 0, ptr %i.by, align 1
  %.pre = load i64, ptr %i.bj, align 8
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i42, %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %3, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.az
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.cd = load i64, ptr %i.az, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.n
  %i.cf = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.bn, %bb.n ] ; 2 uses
  %i.cg = load i64, ptr %i.aj, align 8
  %i.ch = sub i64 4611686018427387903, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.cf
  br i1 %i.ci, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.t
  %i.cj = load ptr, ptr %3, align 8
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.cj, i64 noundef %i.cf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cl = load i64, ptr %i.w, align 8             ; 2 uses
  %i.cm = load i64, ptr %i.aj, align 8
  %i.cn = sub i64 4611686018427387903, %i.cm
  %i.co = icmp ult i64 %i.cn, %i.cl
  br i1 %i.co, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i47

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #32
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cp = load ptr, ptr %1, align 8
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.cp, i64 noundef %i.cl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit50 unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i47
  %i.cr = load ptr, ptr %3, align 8               ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.az
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit50
  %i.ct = load i64, ptr %i.az, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ca, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit108

bb.u:                                             ; preds = %bb.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.cv = load ptr, ptr %i.ao, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.cw, ptr %4, align 8
  store i16 25202, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.cy, align 2
  %i.cz = load ptr, ptr %2, align 8
  %i.da = load ptr, ptr %i.cv, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef %i.cz, ptr noundef nonnull %i.cw)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.ak, !inline_history !58 ; 2 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.de = load ptr, ptr %4, align 8               ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cw
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.dg = load i64, ptr %i.cw, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not.i = icmp eq ptr %i.dd, null
  br i1 %.not.i, label %bb.v, label %bb.ar

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.di = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.w unwind label %bb.al

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6Assimp6Logger5errorIJRA37_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.di, ptr noundef nonnull align 1 dereferenceable(37) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.x unwind label %bb.al

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4152
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = add i64 %i.dl, -3
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.dn, ptr %6, align 8, !alias.scope !59
  %i.do = load ptr, ptr %i.dj, align 8, !noalias !59 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dm, i64 %i.dl) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !59
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !noalias !59
  %i.dp = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.dp, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.x
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc62 unwind label %bb.am  ; 2 uses

.noexc62:                                         ; preds = %.noexc10.i.i
  store ptr %i.dq, ptr %6, align 8, !alias.scope !59
  %i.dr = load i64, ptr %i.a, align 8, !noalias !59
  store i64 %i.dr, ptr %i.dn, align 8, !alias.scope !59
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc62, %bb.x
  %i.ds = phi ptr [ %i.dq, %.noexc62 ], [ %i.dn, %bb.x ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i
  %i.dt = load i8, ptr %i.do, align 1
  store i8 %i.dt, ptr %i.ds, align 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.do, i64 %spec.select.i.i.i, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i
  %i.du = load i64, ptr %i.a, align 8, !noalias !59 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.du, ptr %i.dv, align 8, !alias.scope !59
  %i.dw = load ptr, ptr %6, align 8, !alias.scope !59
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i8 0, ptr %i.dx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !59
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.dy = load i64, ptr %i.dv, align 8, !noalias !62
  %i.dz = add i64 %i.dy, -4611686018427387901
  %i.ea = icmp ult i64 %i.dz, 3
  br i1 %i.ea, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #32
          to label %.noexc64 unwind label %bb.an

.noexc64:                                         ; preds = %bb.ab
  unreachable

end_hunk_1
