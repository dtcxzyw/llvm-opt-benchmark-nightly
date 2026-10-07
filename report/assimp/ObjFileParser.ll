Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ObjFileParser?download=true
inline.NumInlined: 2070
inline.NumDeleted: 754
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6Assimp13ObjFileParser9parseFileERNS_14IOStreamBufferIcEE:bb.a

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
  %i.lg = ptrtoaddr ptr %.sroa.0.0.copyload to i64
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
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1

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
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
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
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !2

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
define linkonce_odr hidden noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE15getNextDataLineERSt6vectorIcSaIcEEc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp ugt i64 %i.b, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw i64 %i.b, %i.h
  tail call void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.b, %i.h
  br i1 %i.k, label %bb.d, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = load i64, ptr %i.a, align 8
  %.not = icmp uge i64 %i.n, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %3 = icmp eq i64 %i.q, 0
  %or.cond = select i1 %.not, i1 true, i1 %3
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit._crit_edge, label %bb.g

_ZNSt6vectorIcSaIcEE6resizeEm.exit._crit_edge:    ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.q, i32 noundef 0), !inline_history !24 ; 0 uses
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i64, ptr %i.a, align 8
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.z, i64 noundef 1, i64 noundef %i.aa), !inline_history !24 ; 4 uses
  %.not22 = icmp eq i64 %i.ae, 0
  br i1 %.not22, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit._crit_edge
  %i.af = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread

bb.f:                                             ; preds = %bb.e
  store i64 %i.ae, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread: ; preds = %bb.e, %bb.f
  %i.ah = phi i64 [ %i.ae, %bb.f ], [ %i.af, %bb.e ]
  %i.ai = load i64, ptr %i.s, align 8
  %i.aj = add i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.s, align 8
  store i64 0, ptr %i.m, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread
  %i.an = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread ], [ %i.n, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %bb.g
  %.promoted = phi i64 [ %i.an, %bb.g ], [ %.promoted.be, %.backedge ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.g ], [ %i.bg, %.backedge ] ; 7 uses
  %i.as = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 %.promoted ; 2 uses
  %i.au = load i8, ptr %i.at, align 1             ; 3 uses
  %i.av = icmp eq i8 %2, %i.au
  br i1 %i.av, label %bb.i, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %i.at, i64 1
  %i.ax = load i8, ptr %i.aw, align 1
  switch i8 %i.ax, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader:       ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %storemerge.in24 = phi i64 [ %storemerge, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.promoted, %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader ] ; 2 uses
  %storemerge = add i64 %storemerge.in24, 1       ; 3 uses
  store i64 %storemerge, ptr %i.m, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %storemerge
  %i.az = load i8, ptr %i.ay, align 1
  %.not14 = icmp eq i8 %i.az, 10
  br i1 %.not14, label %bb.j, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, !llvm.loop !25

bb.j:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.ba = add i64 %storemerge.in24, 2             ; 2 uses
  store i64 %i.ba, ptr %i.m, align 8
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ba
  %.pre26 = load i8, ptr %.phi.trans.insert25, align 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit17

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread:          ; preds = %bb.i, %bb.h
  switch i8 %i.au, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit17:               ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %bb.j
  %i.bb = phi i8 [ %i.au, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.pre26, %bb.j ]
  %i.bc = load ptr, ptr %1, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.0
  store i8 %i.bb, ptr %i.bd, align 1
  %i.be = load i64, ptr %i.m, align 8
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.m, align 8
  %i.bg = add i64 %.0, 1                          ; 6 uses
  %i.bh = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bi = load ptr, ptr %1, align 8               ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp eq i64 %i.bg, %i.bl
  br i1 %i.bm, label %bb.k, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit20

bb.k:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit17
  %i.bn = shl i64 %i.bg, 1
  %i.bo = icmp ult i64 %.0, 9223372036854775807
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bg)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit20

bb.m:                                             ; preds = %bb.k
  %i.bp = icmp slt i64 %i.bg, 0
  br i1 %i.bp, label %bb.n, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit20

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.bh, %i.bq
  br i1 %.not.i.i18, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit20, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i19:      ; preds = %bb.n
  store ptr %i.bq, ptr %i.c, align 8
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit20

_ZNSt6vectorIcSaIcEE6resizeEm.exit20:             ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i19, %bb.n, %bb.m, %bb.l, %_ZN6Assimp9IsLineEndIcEEbT_.exit17
  %i.br = load i64, ptr %i.m, align 8             ; 3 uses
  %i.bs = load i64, ptr %i.ap, align 8
  %.not15 = icmp ult i64 %i.br, %i.bs
  br i1 %.not15, label %bb.o, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread

bb.o:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit20
  %i.bt = load i64, ptr %i.a, align 8
  %.not16 = icmp ult i64 %i.br, %i.bt
  br i1 %.not16, label %.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %0, align 8               ; 2 uses
  %i.bv = load i64, ptr %i.aq, align 8
  %i.bw = load ptr, ptr %i.bu, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i64 noundef %i.bv, i32 noundef 0), !inline_history !24 ; 0 uses
  %i.ca = load ptr, ptr %0, align 8               ; 2 uses
  %i.cb = load ptr, ptr %i.ao, align 8
  %i.cc = load i64, ptr %i.a, align 8
  %i.cd = load ptr, ptr %i.ca, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull %i.cb, i64 noundef 1, i64 noundef %i.cc), !inline_history !24 ; 4 uses
  %.not23 = icmp eq i64 %i.cg, 0
  br i1 %.not23, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ci = icmp ult i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.r, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit21.thread

bb.r:                                             ; preds = %bb.q
  store i64 %i.cg, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit21.thread

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit21.thread: ; preds = %bb.q, %bb.r
  %i.cj = phi i64 [ %i.cg, %bb.r ], [ %i.ch, %bb.q ]
  %i.ck = load i64, ptr %i.aq, align 8
  %i.cl = add i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.aq, align 8
  store i64 0, ptr %i.m, align 8
  %i.cm = load i64, ptr %i.ar, align 8
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.ar, align 8
  br label %.backedge

.backedge:                                        ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit21.thread, %bb.o
  %.promoted.be = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit21.thread ], [ %i.br, %bb.o ]
  br label %bb.h, !llvm.loop !26

_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread:        ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZNSt6vectorIcSaIcEE6resizeEm.exit20
  %.1 = phi i64 [ %i.bg, %_ZNSt6vectorIcSaIcEE6resizeEm.exit20 ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ]
  %i.co = load ptr, ptr %1, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.1
  store i8 10, ptr %i.cp, align 1
  %i.cq = load i64, ptr %i.m, align 8
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.m, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit: ; preds = %bb.p, %_ZNSt6vectorIcSaIcEE6resizeEm.exit._crit_edge, %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
  %.113 = phi i1 [ false, %_ZNSt6vectorIcSaIcEE6resizeEm.exit._crit_edge ], [ true, %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread ], [ false, %bb.p ]
  ret i1 %.113
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZN6Assimp14getNameNoSpaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
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
  br i1 %.0.i17, label %.critedge, label %.preheader, !llvm.loop !27

.critedge:                                        ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.sroa.025.0.lcssa = phi ptr [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %i.j, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 3 uses
  %.sroa.025.0.lcssa37 = ptrtoaddr ptr %.sroa.025.0.lcssa to i64 ; 2 uses
  %i.m = add i64 %.sroa.025.0.lcssa37, 1
  br label %bb.b

bb.b:                                             ; preds = %.critedge2, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge2 ], [ %i.m, %.critedge ] ; 2 uses
end_hunk_0
