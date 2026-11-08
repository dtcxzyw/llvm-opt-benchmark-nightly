Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tokenstream?download=true
inline.NumInlined: 466
inline.NumDeleted: 168
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6embree11TokenStream13tryIdentifierERNS_5TokenERKNS_13ParseLocationE:bb.a
  store i8 0, ptr %i.bl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  store i32 4, ptr %4, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.bn, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %5, align 8               ; 2 uses
  %i.bp = load i64, ptr %i.bj, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bp, ptr %i.a, align 8
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %bb.z   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i.i
  store ptr %i.br, ptr %i.bm, align 8
  %i.bs = load i64, ptr %i.a, align 8
  store i64 %i.bs, ptr %i.bn, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc18, %bb.l
  %i.bt = phi ptr [ %i.br, %.noexc18 ], [ %i.bn, %bb.l ] ; 2 uses
  switch i64 %i.bp, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bu = load i8, ptr %i.bo, align 1
  store i8 %i.bu, ptr %i.bt, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bo, i64 %i.bp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.bv = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.bv, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.bm, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = load <2 x ptr>, ptr %2, align 8
  store <2 x ptr> %i.cd, ptr %i.bz, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.cf = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load i32, ptr %i.ce, align 4
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.ce, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ci = atomicrmw volatile add ptr %i.ce, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false)
  %i.cl = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6embree5TokenaSEOS0_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4) #26 ; 0 uses
  %i.cm = load ptr, ptr %i.ca, align 8            ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13ParseLocationD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 4294967297
  %i.cq = trunc i64 %i.co to i32                  ; 2 uses
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.cn, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 0, ptr %i.cr, align 4
  %i.cs = load ptr, ptr %i.cm, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #26, !inline_history !4
  %i.cv = load ptr, ptr %i.cm, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #26, !inline_history !4
  br label %_ZN6embree13ParseLocationD2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cy = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i19 = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i19, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = add nsw i32 %i.cq, -1
  store i32 %i.cz, ptr %i.cn, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.da = atomicrmw volatile add ptr %i.cn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.cq, %bb.v ], [ %i.da, %bb.w ]
  %i.db = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.db, label %bb.x, label %_ZN6embree13ParseLocationD2Ev.exit.i, !prof !12

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #26
  br label %_ZN6embree13ParseLocationD2Ev.exit.i

_ZN6embree13ParseLocationD2Ev.exit.i:             ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t, %bb.r
  %i.dc = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bn
  br i1 %i.dd, label %_ZN6embree5TokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %_ZN6embree13ParseLocationD2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.dc) #24
  br label %_ZN6embree5TokenD2Ev.exit

_ZN6embree5TokenD2Ev.exit:                        ; preds = %_ZN6embree13ParseLocationD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  %i.de = load ptr, ptr %5, align 8               ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ba
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6embree5TokenD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.de) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6embree5TokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNK6embree11TokenStream7isAlphaEj.exit.thread

bb.y:                                             ; preds = %.noexc.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.z:                                             ; preds = %.noexc.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %5, align 8               ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ba
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.di) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.y ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.dh, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit.split-lp

_ZNK6embree11TokenStream7isAlphaEj.exit.thread:   ; preds = %bb.b, %_ZNK6embree11TokenStream7isAlphaEj.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNK6embree11TokenStream7isAlphaEj.exit ], [ false, %bb.b ]
  %i.dl = load ptr, ptr %3, align 8               ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.c
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNK6embree11TokenStream7isAlphaEj.exit.thread
  call void @_ZdlPv(ptr noundef %i.dl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNK6embree11TokenStream7isAlphaEj.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i1 %i.dk

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn9 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %lpad.loopexit.split-lp45, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dn = load ptr, ptr %3, align 8               ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.c
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.dn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree11TokenStream14skipSeparatorsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN6embree6StreamIiE4peekEv(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
  %i.d = load i32, ptr %i.c, align 4
  %.not1 = icmp eq i32 %i.d, -1
  br i1 %.not1, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN6embree6StreamIiE4peekEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ult i32 %i.g, 256
  br i1 %i.h, label %_ZNK6embree11TokenStream11isSeparatorEj.exit, label %.critedge

_ZNK6embree11TokenStream11isSeparatorEj.exit:     ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !range !14, !noundef !15
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK6embree11TokenStream11isSeparatorEj.exit
  %i.m = load ptr, ptr %i.a, align 8
  tail call void @_ZN6embree6StreamIiE4dropEv(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN6embree6StreamIiE4peekEv(ptr noundef nonnull align 8 dereferenceable(64) %i.n)
  %i.p = load i32, ptr %i.o, align 4
  %.not = icmp eq i32 %i.p, -1
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !5

.critedge:                                        ; preds = %_ZNK6embree11TokenStream11isSeparatorEj.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree11TokenStream4nextEv(ptr dead_on_unwind noalias writable sret(%"class.embree::Token") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN6embree13ParseLocationD2Ev.exit:
  %2 = alloca %"class.embree::Token", align 8     ; 21 uses
  %3 = alloca %"class.embree::ParseLocation", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 -1, i64 16, i1 false)
  store i32 0, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 28 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 16 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6embree6StreamIiE4peekEv(ptr noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZN6embree13ParseLocationD2Ev.exit
  %i.j = load i32, ptr %i.i, align 4
  %.not1.i = icmp eq i32 %i.j, -1
  br i1 %.not1.i, label %_ZN6embree11TokenStream14skipSeparatorsEv.exit, label %bb.a

bb.a:                                             ; preds = %.noexc, %.noexc8
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6embree6StreamIiE4peekEv(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp ult i32 %i.m, 256
  br i1 %i.n, label %_ZNK6embree11TokenStream11isSeparatorEj.exit.i, label %_ZN6embree11TokenStream14skipSeparatorsEv.exit

_ZNK6embree11TokenStream11isSeparatorEj.exit.i:   ; preds = %.noexc6
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !range !14, !noundef !15
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_ZN6embree11TokenStream14skipSeparatorsEv.exit

bb.b:                                             ; preds = %_ZNK6embree11TokenStream11isSeparatorEj.exit.i
  %i.s = load ptr, ptr %i.g, align 8
  invoke void @_ZN6embree6StreamIiE4dropEv(ptr noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.b
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6embree6StreamIiE4peekEv(ptr noundef nonnull align 8 dereferenceable(64) %i.t)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc7
  %i.v = load i32, ptr %i.u, align 4
  %.not.i = icmp eq i32 %i.v, -1
  br i1 %.not.i, label %_ZN6embree11TokenStream14skipSeparatorsEv.exit, label %bb.a, !llvm.loop !5

_ZN6embree11TokenStream14skipSeparatorsEv.exit:   ; preds = %.noexc8, %_ZNK6embree11TokenStream11isSeparatorEj.exit.i, %.noexc6, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6embree6StreamIiE3locEv(ptr noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %bb.c unwind label %bb.j       ; 3 uses

bb.c:                                             ; preds = %_ZN6embree11TokenStream14skipSeparatorsEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.x, align 8
  store <2 x ptr> %i.ab, ptr %3, align 16
  %.not.i.i.i.i9 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i9, label %_ZN6embree13ParseLocationC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i10 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.ac, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4
  br label %_ZN6embree13ParseLocationC2ERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6embree13ParseLocationC2ERKS0_.exit

_ZN6embree13ParseLocationC2ERKS0_.exit:           ; preds = %bb.c, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.aj = invoke noundef zeroext i1 @_ZN6embree11TokenStream10trySymbolsERNS_5TokenERKNS_13ParseLocationE(ptr noundef nonnull align 8 dereferenceable(864) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZN6embree13ParseLocationC2ERKS0_.exit
  br i1 %i.aj, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %2, align 8
  store i64 %i.ak, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.d, align 8             ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.ar, i1 false)
  br label %_ZN6embree5TokenC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  store ptr %i.an, ptr %i.al, align 8
  %i.as = load i64, ptr %i.c, align 8
  store i64 %i.as, ptr %i.am, align 8
  %.pre36 = load i64, ptr %i.d, align 8
  br label %_ZN6embree5TokenC2EOS0_.exit

_ZN6embree5TokenC2EOS0_.exit:                     ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.at = phi i64 [ %i.ap, %bb.i ], [ %.pre36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.au, align 8
  store ptr %i.c, ptr %i.b, align 8
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load <2 x ptr>, ptr %i.e, align 8
  store ptr null, ptr %i.f, align 8
  store <2 x ptr> %i.aw, ptr %i.av, align 8
  store ptr null, ptr %i.e, align 8
  br label %_ZN6embree5TokenC2ERKNS_13ParseLocationE.exit21

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc7, %bb.b, %bb.a, %_ZN6embree13ParseLocationD2Ev.exit
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZN6embree11TokenStream14skipSeparatorsEv.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.k:                                             ; preds = %bb.ah, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l, %_ZN6embree13ParseLocationC2ERKS0_.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree13ParseLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  br label %bb.ay

bb.l:                                             ; preds = %bb.g
  %i.az = invoke noundef zeroext i1 @_ZN6embree11TokenStream8tryFloatERNS_5TokenERKNS_13ParseLocationE(ptr noundef nonnull align 8 dereferenceable(864) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  br i1 %i.az, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ba = load i64, ptr %2, align 8
  store i64 %i.ba, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.c
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

bb.o:                                             ; preds = %bb.n
  %i.bf = load i64, ptr %i.d, align 8             ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.bh, i1 false)
  br label %_ZN6embree5TokenC2EOS0_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.n
  store ptr %i.bd, ptr %i.bb, align 8
  %i.bi = load i64, ptr %i.c, align 8
  store i64 %i.bi, ptr %i.bc, align 8
  %.pre35 = load i64, ptr %i.d, align 8
  br label %_ZN6embree5TokenC2EOS0_.exit12

_ZN6embree5TokenC2EOS0_.exit12:                   ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.bj = phi i64 [ %i.bf, %bb.o ], [ %.pre35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bj, ptr %i.bk, align 8
  store ptr %i.c, ptr %i.b, align 8
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load <2 x ptr>, ptr %i.e, align 8
  store ptr null, ptr %i.f, align 8
  store <2 x ptr> %i.bm, ptr %i.bl, align 8
  store ptr null, ptr %i.e, align 8
  br label %_ZN6embree5TokenC2ERKNS_13ParseLocationE.exit21

bb.p:                                             ; preds = %bb.m
  %i.bn = invoke noundef zeroext i1 @_ZN6embree11TokenStream6tryIntERNS_5TokenERKNS_13ParseLocationE(ptr noundef nonnull align 8 dereferenceable(864) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.k

bb.q:                                             ; preds = %bb.p
  br i1 %i.bn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bo = load i64, ptr %2, align 8
  store i64 %i.bo, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bq, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.c
  br i1 %i.bs, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

bb.s:                                             ; preds = %bb.r
  %i.bt = load i64, ptr %i.d, align 8             ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.bv, i1 false)
  br label %_ZN6embree5TokenC2EOS0_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.r
  store ptr %i.br, ptr %i.bp, align 8
end_hunk_0
