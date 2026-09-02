Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/JitInliner?download=true
inline.NumInlined: 5860
inline.NumDeleted: 2545
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4Luau15BytecodeBuilder9foldJumpsEv

declare void @_ZN4Luau15BytecodeBuilder11expandJumpsEv(ptr dead_on_unwind writable sret(%"class.std::vector.56") align 8, ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau10JitInliner22RuntimeBytecodeBuilder17finishAndDumpCodeEhh(ptr dead_on_unwind noalias writable sret(%"struct.Luau::JitInliner::CodeData") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1072) %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !702
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !387
  %i.f = getelementptr inbounds nuw [168 x i8], ptr %i.e, i64 %i.d ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %2, ptr %i.g, align 8, !tbaa !704
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  store i8 %3, ptr %i.h, align 2, !tbaa !705
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.unpack = load i64, ptr %i.i, align 8, !tbaa !706 ; 4 uses
  %.not = icmp eq i64 %.unpack, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %.elt30 = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %.unpack31 = load i64, ptr %.elt30, align 8, !tbaa !706
  %i.j = getelementptr inbounds i8, ptr %1, i64 %.unpack31 ; 2 uses
  %i.k = and i64 %.unpack, 1
  %.not32 = icmp eq i64 %i.k, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !270
  %i.m = getelementptr i8, ptr %i.l, i64 %.unpack
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !180
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = inttoptr i64 %.unpack to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1048) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !246  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 4 uses
  %i.v = icmp eq ptr %i.t, %i.u
  %i.w = load ptr, ptr %4, align 8, !tbaa !246    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.y = icmp eq ptr %i.w, %i.x                   ; 2 uses
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.y, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.y, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %.not21.i = icmp eq ptr %4, %i.s
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !388

bb.g:                                             ; preds = %bb.f
  switch i64 %i.aa, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !46
  store i8 %i.ac, ptr %i.t, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.w, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !45  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !45
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !246
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !46
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !246
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.w, ptr %i.s, align 8, !tbaa !246
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !45
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !45
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !46
  store i64 %i.ak, ptr %i.u, align 8, !tbaa !46
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.al = load i64, ptr %i.u, align 8, !tbaa !46
  store ptr %i.w, ptr %i.s, align 8, !tbaa !246
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !45
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !46
  store i64 %i.ap, ptr %i.u, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.t, ptr %4, align 8, !tbaa !246
  store i64 %i.al, ptr %i.x, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.x, ptr %4, align 8, !tbaa !246
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.aq = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.t, %bb.j ], [ %i.x, %bb.k ], [ %i.w, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !45
  store i8 0, ptr %i.aq, align 1, !tbaa !46
  %i.as = load ptr, ptr %4, align 8, !tbaa !246   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !46
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ax, i8 0, i64 20, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ba = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !707 ; 3 uses
  %.not33 = icmp eq ptr %i.bc, null
  br i1 %.not33, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !153
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 2
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !270
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.bd, i64 noundef %i.bj)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bo = invoke noundef i32 @_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv(ptr noundef nonnull align 8 dereferenceable(1048) %1)
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = call noundef double @log2(double noundef %i.bp) #23
  %i.br = fptosi double %i.bq to i32              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !390
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !153
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !154
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 2 uses
  %i.bz = lshr exact i64 %i.by, 2
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = ashr i32 %i.cb, %i.br
  %i.cd = add nsw i32 %i.cc, 1
  %i.ce = shl i64 %i.by, 30
  %i.cf = add i64 %i.ce, 12884901888
  %sext = ashr exact i64 %i.cf, 32
  %i.cg = and i64 %sext, -4                       ; 2 uses
  %5 = sext i32 %i.cd to i64                      ; 2 uses
  %6 = shl nsw i64 %5, 2
  %7 = add nsw i64 %6, %i.cg                      ; 2 uses
  %sext34 = shl i64 %7, 32
  %8 = ashr exact i64 %sext34, 32
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !364 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !397
  %i.cl = invoke noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef nonnull %i.ci, i64 noundef %8, i8 noundef zeroext %i.ck)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.r:                                             ; preds = %bb.p
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge, %bb.t, %bb.q
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %9 = trunc i64 %7 to i32
  store ptr %i.cl, ptr %i.ax, align 8, !tbaa !708
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %9, ptr %i.co, align 8, !tbaa !398
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.cg ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !709
  invoke void @_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.bo, ptr noundef %i.cp, i64 noundef %5)
          to label %.preheader unwind label %bb.s

.preheader:                                       ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !399
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !254 ; 2 uses
  %.not38 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not38, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  invoke void @_ZN4Luau15BytecodeBuilder10clearStateEv(ptr noundef nonnull align 8 dereferenceable(1048) %1)
          to label %bb.u unwind label %bb.s

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.cv = phi ptr [ %i.dk, %.lr.ph ], [ %i.cu, %.preheader ]
  %.037 = phi i64 [ %i.di, %.lr.ph ], [ 0, %.preheader ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.037
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !156
  %i.cy = load ptr, ptr %i.cq, align 8, !tbaa !709
  %i.cz = load i32, ptr %i.bs, align 8, !tbaa !390
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = lshr i64 %.037, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !156
  %i.de = sub nsw i32 %i.cx, %i.dd
  %i.df = trunc i32 %i.de to i8
  %i.dg = load ptr, ptr %i.ax, align 8, !tbaa !708
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.037
  store i8 %i.df, ptr %i.dh, align 1, !tbaa !46
  %i.di = add nuw i64 %.037, 1                    ; 2 uses
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !399
  %i.dk = load ptr, ptr %i.cr, align 8, !tbaa !254 ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 2
  %i.dp = icmp ult i64 %i.di, %i.do
  br i1 %i.dp, label %.lr.ph, label %._crit_edge, !llvm.loop !701

bb.u:                                             ; preds = %._crit_edge
  ret void

bb.v:                                             ; preds = %bb.r, %bb.s, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.o ], [ %i.cn, %bb.s ], [ %i.cm, %bb.r ]
  call void @_ZN4Luau10JitInliner8CodeDataD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau10JitInliner8CodeDataD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !154    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !155
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit2

_ZNSt6vectorIjSaIjEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau15BytecodeBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1048) dereferenceable(1048) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4Luau15BytecodeBuilderE, i64 16), ptr %0, align 8, !tbaa !270
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !46
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !713  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !714  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !246  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !46
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !710

_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !713
  br label %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !715
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #25
  br label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !716  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !717 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ag, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.y, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !246 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ag, %i.aa
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !711

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.x, align 8, !tbaa !716
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit
  %i.ah = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !718
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !246 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !46
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #25
end_hunk_0
begin_hunk_1_@_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE13mapToCallerOpENS0_4BcOpE:bb.a

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %.not.i.i.i49 = icmp eq ptr %i.fd, %i.fx
  br i1 %.not.i.i.i49, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.fd) #23
  %.pre2.pre.i.i = load i32, ptr %i.eq, align 8, !tbaa !223
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i: ; preds = %bb.y, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i
  %.pre2.i.i = phi i32 [ %i.fe, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i ], [ %.pre2.pre.i.i, %bb.y ]
  store ptr %i.fc, ptr %i.ep, align 8, !tbaa !225
  store i32 %.09.i.i.i, ptr %i.es, align 4, !tbaa !224
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_5BcPhiEEENS0_4BcOpE.exit

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_5BcPhiEEENS0_4BcOpE.exit: ; preds = %._crit_edge.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i
  %i.fy = phi i32 [ %i.er, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i ]
  %i.fz = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.fc, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i ]
  %i.ga = zext i32 %i.fy to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ga
  store i32 %i.el, ptr %i.gb, align 4, !tbaa !46
  %i.gc = load i32, ptr %i.eq, align 8, !tbaa !223
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.eq, align 8, !tbaa !223
  tail call void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.em, i32 %i.el, i32 %i.cg)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ge = load ptr, ptr %i.dz, align 8, !tbaa !261
  %i.gf = getelementptr inbounds nuw [56 x i8], ptr %i.ge, i64 %i.eb ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !223
  %i.gi = zext i32 %i.gh to i64
  %i.gj = icmp samesign ult i64 %indvars.iv.next, %i.gi
  br i1 %i.gj, label %bb.w, label %common.ret124, !llvm.loop !1195

bb.z:                                             ; preds = %bb.a
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !523, !nonnull !180, !align !181 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 128 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !139, !range !195, !noundef !180
  %i.gp = trunc nuw i8 %i.go to i1
  %.pre = load ptr, ptr %i.gm, align 8, !tbaa !259 ; 2 uses
  %i.gq = lshr i32 %1, 4
  %i.gr = zext nneg i32 %i.gq to i64              ; 3 uses
  br i1 %i.gp, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.gr ; 2 uses
  %.sroa.06.0.copyload = load i32, ptr %i.gs, align 4, !tbaa !46 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gu = lshr i32 %.sroa.06.0.copyload, 4
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = load ptr, ptr %i.gt, align 8, !tbaa !202
  %i.gx = getelementptr inbounds nuw [80 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !215
  %.not = icmp eq i32 %i.gy, 63
  br i1 %.not, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !521
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %.sroa.06.0.copyload, ptr %2, align 4
  %i.hc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.hb, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.hd = zext i32 %i.ha to i64
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !232
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hd
  %.sroa.0.0.copyload.i = load i32, ptr %i.hf, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.ret124

common.ret124:                                    ; preds = %bb.a, %bb.ab, %_ZN4Luau12DenseHashMapINS_8Bytecode4BcOpES2_NS1_8BcOpHashESt8equal_toIS2_EE4findERKS2_.exit, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE9push_backERKS2_.exit, %bb.c, %bb.b, %_ZN4Luau12DenseHashMapINS_8Bytecode4BcOpES2_NS1_8BcOpHashESt8equal_toIS2_EEixERKS2_.exit, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_5BcPhiEEENS0_4BcOpE.exit, %.critedge
  %common.ret124.op = phi i32 [ %i.hn, %.critedge ], [ %i.cg, %_ZN4Luau12DenseHashMapINS_8Bytecode4BcOpES2_NS1_8BcOpHashESt8equal_toIS2_EEixERKS2_.exit ], [ %1, %bb.a ], [ %i.g, %bb.b ], [ %i.m, %bb.c ], [ %i.bi, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE9push_backERKS2_.exit ], [ %i.jn, %bb.ah ], [ %i.ce, %_ZN4Luau12DenseHashMapINS_8Bytecode4BcOpES2_NS1_8BcOpHashESt8equal_toIS2_EE4findERKS2_.exit ], [ %.sroa.0.0.copyload.i, %bb.ab ], [ %i.hz, %bb.ad ], [ %i.iv, %bb.ae ], [ %i.jb, %bb.af ], [ %i.jh, %bb.ag ], [ %i.cg, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_5BcPhiEEENS0_4BcOpE.exit ]
  ret i32 %common.ret124.op

.critedge:                                        ; preds = %bb.z, %bb.aa
  %i.hg = load ptr, ptr %0, align 8, !tbaa !522, !nonnull !180, !align !181
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.gr
  %.sroa.03.0.copyload = load i32, ptr %i.hh, align 4, !tbaa !46
  %i.hi = tail call i32 @_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE13mapToCallerOpENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 %.sroa.03.0.copyload)
  %i.hj = load ptr, ptr %i.gm, align 8, !tbaa !259
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.gr
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !521
  %i.hn = tail call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.hg, i32 %i.hi, i32 noundef %i.hm)
  br label %common.ret124

bb.ac:                                            ; preds = %bb.a
  %i.ho = lshr i32 %1, 4                          ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !523, !nonnull !180, !align !181 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !136
  %i.ht = zext i8 %i.hs to i32
  %i.hu = icmp samesign ult i32 %i.ho, %i.ht
  br i1 %i.hu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hw = zext nneg i32 %i.ho to i64
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !232
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !46
  br label %common.ret124

bb.ae:                                            ; preds = %bb.ac
  %i.ia = trunc i32 %i.ho to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ic = load i8, ptr %i.ib, align 8, !tbaa !443
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !139, !range !195, !noundef !180
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = load ptr, ptr %i.ig, align 8
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = lshr exact i64 %i.im, 2
  %i.io = trunc i64 %i.in to i8
  %i.ip = select i1 %i.if, i8 %i.io, i8 0
  %i.iq = add i8 %i.ia, 1
  %i.ir = add i8 %i.iq, %i.ic
  %i.is = add i8 %i.ir, %i.ip
  %i.it = zext i8 %i.is to i32
  %i.iu = shl nuw nsw i32 %i.it, 4
  %i.iv = or disjoint i32 %i.iu, 6
  br label %common.ret124

bb.af:                                            ; preds = %bb.a
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !548
  %i.iy = shl i32 %i.ix, 4
  %i.iz = add i32 %i.iy, %1
  %i.ja = and i32 %i.iz, -16
  %i.jb = or disjoint i32 %i.ja, 7
  br label %common.ret124

bb.ag:                                            ; preds = %bb.a
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !543
  %i.je = shl i32 %i.jd, 4
  %i.jf = add i32 %i.je, %1
  %i.jg = and i32 %i.jf, -16
  %i.jh = or disjoint i32 %i.jg, 9
  br label %common.ret124

bb.ah:                                            ; preds = %bb.a
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !544
  %i.jk = shl i32 %i.jj, 4
  %i.jl = add i32 %i.jk, %1
  %i.jm = and i32 %i.jl, -16
  %i.jn = or disjoint i32 %i.jm, 8
  br label %common.ret124
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE16replaceGetVarArgENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Bytecode::BcOp", align 4 ; 2 uses
  %4 = alloca %"class.std::vector.211", align 8   ; 15 uses
  %5 = alloca %"struct.Luau::Bytecode::BcMove", align 8 ; 9 uses
  store i32 %2, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !523, !nonnull !180, !align !181 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = lshr i32 %2, 4
  %i.e = zext nneg i32 %i.d to i64                ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !225
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 4, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.m = zext nneg i32 %i.l to i64
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !264
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !46   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !380
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !232
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !136
  %6 = zext i8 %i.ab to i64
  %7 = sub nsw i64 %i.z, %6
  %8 = trunc i64 %7 to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.sroa.speculated, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = lshr i32 %1, 4
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit50, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.al = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit unwind label %bb.ac

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit50
  %i.am = phi ptr [ null, %.lr.ph ], [ %i.jy, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit50 ] ; 10 uses
  %.015103 = phi i32 [ 0, %.lr.ph ], [ %i.jz, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit50 ] ; 5 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !523, !nonnull !180, !align !181
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !136
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %.015103, %i.aq
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !380
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !232
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2
  %i.az = icmp ugt i64 %i.ay, %i.as
  br i1 %i.az, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !522, !nonnull !180, !align !181 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %i.bb = invoke i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addInstEv(ptr noundef nonnull align 8 dereferenceable(456) %i.ba)
          to label %bb.f unwind label %bb.o       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bd = lshr i32 %i.bb, 4
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !202, !noalias !1212
  %i.bg = getelementptr inbounds nuw [80 x i8], ptr %i.bf, i64 %i.be
  store i32 6, ptr %i.bg, align 8, !tbaa !215, !noalias !1212
  store ptr %i.ba, ptr %5, align 8, !tbaa !160, !alias.scope !1212
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !222, !alias.scope !1212
  store i32 %i.bb, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !46, !alias.scope !1212
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !523, !nonnull !180, !align !181
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !136
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nuw nsw i32 %.015103, %i.bk
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !232
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm
  %.sroa.02.0.copyload = load i32, ptr %i.bo, align 4, !tbaa !46
  invoke void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_6BcMoveIS3_EEE7setBcOpEjNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0, i32 %.sroa.02.0.copyload)
          to label %_ZN4Luau8Bytecode6BcMoveIP10lua_TValueE6setSrcENS0_4BcOpE.exit unwind label %bb.o

_ZN4Luau8Bytecode6BcMoveIP10lua_TValueE6setSrcENS0_4BcOpE.exit: ; preds = %bb.f
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.bq = getelementptr inbounds nuw [80 x i8], ptr %i.bp, i64 %i.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !225
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = lshr i32 %i.bt, 4
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = trunc i32 %.015103 to i8
  %i.bx = load i8, ptr %i.ae, align 8, !tbaa !443
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !523, !nonnull !180, !align !181
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !139, !range !195, !noundef !180
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load ptr, ptr %i.ad, align 8
  %i.cd = load ptr, ptr %i.ac, align 8
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = lshr exact i64 %i.cg, 2
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = select i1 %i.cb, i8 %i.ci, i8 0
  %i.ck = add i8 %i.bw, 1
  %i.cl = add i8 %i.ck, %i.bx
  %i.cm = add i8 %i.cl, %i.bv
  %i.cn = add i8 %i.cm, %i.cj
  %i.co = load ptr, ptr %5, align 8, !tbaa !538, !nonnull !180, !align !181 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 400 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 3 uses
  %.0.insert.ext.i.i.i = zext i32 %.0.copyload.i.i.i to i64 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 408
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !55 ; 2 uses
  %i.cs = urem i64 %.0.insert.ext.i.i.i, %i.cr    ; 3 uses
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !226 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i53, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau8Bytecode6BcMoveIP10lua_TValueE6setSrcENS0_4BcOpE.exit
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !227 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !229
  %i.da = icmp eq i64 %i.cz, %.0.insert.ext.i.i.i
  %i.db = load i32, ptr %i.cx, align 8
  %i.dc = icmp eq i32 %.0.copyload.i.i.i, %i.db
  %i.dd = select i1 %i.da, i1 %i.dc, i1 false
  br i1 %i.dd, label %.loopexit, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.df = icmp eq i64 %i.dl, %.0.insert.ext.i.i.i
  %i.dg = load i32, ptr %i.de, align 8
  %i.dh = icmp eq i32 %.0.copyload.i.i.i, %i.dg
  %i.di = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %i.di, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.020.i.i.i = phi ptr [ %i.dj, %bb.h ], [ %i.cw, %bb.g ]
  %i.dj = load ptr, ptr %.020.i.i.i, align 8, !tbaa !227 ; 5 uses
  %.not18.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !229 ; 2 uses
  %i.dm = urem i64 %i.dl, %i.cr
  %.not19.i.i.i = icmp eq i64 %i.dm, %i.cs
  br i1 %.not19.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.i
  br label %.loopexit.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %_ZN4Luau8Bytecode6BcMoveIP10lua_TValueE6setSrcENS0_4BcOpE.exit
  %i.dn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc54 unwind label %bb.o   ; 5 uses

.noexc54:                                         ; preds = %.loopexit.i
  store ptr null, ptr %i.dn, align 8, !tbaa !227
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !46
  store i32 %i.dp, ptr %i.do, align 8, !tbaa !46
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i8 0, ptr %i.dq, align 4, !tbaa !231
  %i.dr = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, i64 noundef %i.cs, i64 noundef %.0.insert.ext.i.i.i, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i: ; preds = %.noexc54
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 24) #25
  br label %.body

.loopexit:                                        ; preds = %bb.h, %bb.g, %.noexc54
  %.pn.i = phi ptr [ %i.dr, %.noexc54 ], [ %i.cw, %bb.g ], [ %i.dj, %bb.h ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 12
  store i8 %i.cn, ptr %.1.i, align 1, !tbaa !46
  %i.dt = load ptr, ptr %i.aj, align 8, !tbaa !205, !nonnull !180, !align !181
  %i.du = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.dv = lshr i32 %i.du, 4
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !202
  %i.dy = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %1, ptr %i.dz, align 4, !tbaa !46
  %i.ea = load ptr, ptr %5, align 8, !tbaa !538, !nonnull !180, !align !181
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !183
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !46
  %i.ed = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %.loopexit
  %i.ee = getelementptr inbounds nuw [136 x i8], ptr %i.ec, i64 %i.ag ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i32 %.sroa.0.0.copyload.i, ptr %i.eg, align 4, !tbaa !46
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %i.ef) #23
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 48 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !201
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !201
  %.sroa.0.0.copyload.i27 = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !46 ; 2 uses
  %i.ek = load ptr, ptr %i.ai, align 8, !tbaa !233
  %.not.i.i = icmp eq ptr %i.am, %i.ek
end_hunk_1
