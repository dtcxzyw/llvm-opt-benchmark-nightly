Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/storage?download=true
inline.NumInlined: 52093
inline.NumDeleted: 9229
loop-unroll.NumCompletelyUnrolled: 226
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN7testing8internal21TypeParameterizedTestI7StorageNS0_11TemplateSelI33Storage_ReferencesGuaranteed_TestEENS0_5TypesIiJN4test8internal20pointer_stable_mixinINS8_10value_typeIiEEEENS8_32non_trivially_destructible_mixinISB_EENS9_ISE_EEEEEE8RegisterEPKcRKNS0_12CodeLocationESJ_SJ_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.gw = load i64, ptr %i.ac, align 8, !tbaa !117
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  %i.gy = load ptr, ptr %10, align 8, !tbaa !116  ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.a
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !117
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.hc = add nsw i32 %4, 1
  %i.hd = call noundef zeroext i1 @_ZN7testing8internal21TypeParameterizedTestI7StorageNS0_11TemplateSelI33Storage_ReferencesGuaranteed_TestEENS0_5TypesIN4test8internal20pointer_stable_mixinINS8_10value_typeIiEEEEJNS8_32non_trivially_destructible_mixinISB_EENS9_ISE_EEEEEE8RegisterEPKcRKNS0_12CodeLocationESJ_SJ_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret i1 %i.hd

bb.ax:                                            ; preds = %bb.k, %bb.h
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.ay:                                            ; preds = %bb.s, %bb.n
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.az:                                            ; preds = %bb.w, %bb.u
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ba:                                            ; preds = %bb.ae, %bb.z
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.bb:                                            ; preds = %bb.ag
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.bc:                                            ; preds = %bb.an
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit101

bb.be:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = load ptr, ptr %14, align 8, !tbaa !116  ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.ev
  br i1 %i.hn, label %_ZN7testing8internal12CodeLocationD2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %bb.be
  %i.ho = load i64, ptr %i.ev, align 8, !tbaa !117
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit101

_ZN7testing8internal12CodeLocationD2Ev.exit101:   ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.hk, %bb.bd ], [ %i.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99 ], [ %i.hl, %bb.be ] ; 2 uses
  %i.hq = load ptr, ptr %13, align 8, !tbaa !116  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit101
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !117
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %i.hj, %bb.bc ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit101 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.hv = load ptr, ptr %11, align 8, !tbaa !116  ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.ek
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.hx = load i64, ptr %i.ek, align 8, !tbaa !117
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  %i.hz = load ptr, ptr %12, align 8, !tbaa !116  ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.el
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.ib = load i64, ptr %i.el, align 8, !tbaa !117
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.bb
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hi, %bb.bb ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.id = load ptr, ptr %6, align 8, !tbaa !116   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.da
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.if = load i64, ptr %i.da, align 8, !tbaa !117
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.ba
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hh, %bb.ba ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ] ; 2 uses
  %i.ih = load ptr, ptr %7, align 8, !tbaa !116   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.bz
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.ij = load i64, ptr %i.bz, align 8, !tbaa !117
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.az
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.az ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 2 uses
  %i.il = load ptr, ptr %8, align 8, !tbaa !116   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.ay
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.in = load i64, ptr %i.ay, align 8, !tbaa !117
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.ay
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.ay ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ] ; 2 uses
  %i.ip = load ptr, ptr %9, align 8, !tbaa !116   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ac
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.ir = load i64, ptr %i.ac, align 8, !tbaa !117
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.ax
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.he, %bb.ax ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  %i.it = load ptr, ptr %10, align 8, !tbaa !116  ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.a
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.iv = load i64, ptr %i.a, align 8, !tbaa !117
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN33Storage_UpdateFromDestructor_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::basic_storage.117", align 8 ; 51 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 37 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.split220.us
  %.058.idx221 = phi i64 [ 0, %bb.a ], [ %.058.add, %.split220.us ] ; 2 uses
  %.058.ptr = getelementptr inbounds nuw i8, ptr @__const._ZN33Storage_UpdateFromDestructor_Test8TestBodyEv.entity, i64 %.058.idx221
  %i.o = load i32, ptr %.058.ptr, align 4, !tbaa !193 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.p = load atomic i8, ptr @_ZGVZN4entt7type_idIN11StorageBase22update_from_destructorEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.c, label %_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EEC2Ev.exit, !prof !138

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN11StorageBase22update_from_destructorEEERKNS_9type_infoEvE8instance) #29
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EEC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4entt9type_infoC2IN11StorageBase22update_from_destructorEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN11StorageBase22update_from_destructorEEERKNS_9type_infoEvE8instance) #29
  %i.s = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN11StorageBase22update_from_destructorEEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN11StorageBase22update_from_destructorEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EEC2Ev.exit

_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EEC2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIN11StorageBase22update_from_destructorEEERKNS_9type_infoEvE8instance, ptr %i.d, align 8, !tbaa !151
  store i8 0, ptr %i.e, align 8, !tbaa !152
  store i64 1048575, ptr %i.f, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EEE, i64 16), ptr %1, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.t = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198:                                        ; preds = %_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EEC2Ev.exit
  %i.u = extractvalue { ptr, i64 } %i.t, 1        ; 2 uses
  %i.v = add nsw i64 %i.u, -1                     ; 2 uses
  %i.w = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.v)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %.noexc198.9, %.noexc198.8, %.noexc198.7, %.noexc198.6, %.noexc198.5, %.noexc198.4, %.noexc198.3, %.noexc198.2, %.noexc198.1, %.noexc198
  %.lcssa227 = phi i64 [ %i.u, %.noexc198 ], [ %i.af, %.noexc198.1 ], [ %i.ak, %.noexc198.2 ], [ %i.ap, %.noexc198.3 ], [ %i.au, %.noexc198.4 ], [ %i.az, %.noexc198.5 ], [ %i.be, %.noexc198.6 ], [ %i.bj, %.noexc198.7 ], [ %i.bo, %.noexc198.8 ], [ %i.bt, %.noexc198.9 ]
  %.lcssa225 = phi i64 [ %i.v, %.noexc198 ], [ %i.ag, %.noexc198.1 ], [ %i.al, %.noexc198.2 ], [ %i.aq, %.noexc198.3 ], [ %i.av, %.noexc198.4 ], [ %i.ba, %.noexc198.5 ], [ %i.bf, %.noexc198.6 ], [ %i.bk, %.noexc198.7 ], [ %i.bp, %.noexc198.8 ], [ %i.bu, %.noexc198.9 ]
  %.lcssa = phi { ptr, i64 } [ %i.t, %.noexc198 ], [ %i.ae, %.noexc198.1 ], [ %i.aj, %.noexc198.2 ], [ %i.ao, %.noexc198.3 ], [ %i.at, %.noexc198.4 ], [ %i.ay, %.noexc198.5 ], [ %i.bd, %.noexc198.6 ], [ %i.bi, %.noexc198.7 ], [ %i.bn, %.noexc198.8 ], [ %i.bs, %.noexc198.9 ]
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i64 } %.lcssa, 0     ; 2 uses
  %.0.i = extractvalue { ptr, i32 } %i.x, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %.0.i) #29 ; 0 uses
  invoke void @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS2_S3_EEES9_(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr %i.y, i64 %.lcssa227, ptr %i.y, i64 %.lcssa225)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #30
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #34
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %.noexc198
  store ptr %1, ptr %i.w, align 8, !tbaa !260
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !261
  %i.ae = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198.1 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198.1:                                      ; preds = %bb.j
  %i.af = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  %i.ag = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ah = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ag)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.k:                                             ; preds = %.noexc198.1
  store ptr %1, ptr %i.ah, align 8, !tbaa !260
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 1, ptr %i.ai, align 8, !tbaa !261
  %i.aj = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 2, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198.2 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198.2:                                      ; preds = %bb.k
  %i.ak = extractvalue { ptr, i64 } %i.aj, 1      ; 2 uses
  %i.al = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.am = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.al)
          to label %bb.l unwind label %bb.e       ; 2 uses

bb.l:                                             ; preds = %.noexc198.2
  store ptr %1, ptr %i.am, align 8, !tbaa !260
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 2, ptr %i.an, align 8, !tbaa !261
  %i.ao = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 3, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198.3 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198.3:                                      ; preds = %bb.l
  %i.ap = extractvalue { ptr, i64 } %i.ao, 1      ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ar = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.aq)
          to label %bb.m unwind label %bb.e       ; 2 uses

bb.m:                                             ; preds = %.noexc198.3
  store ptr %1, ptr %i.ar, align 8, !tbaa !260
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 3, ptr %i.as, align 8, !tbaa !261
  %i.at = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 4, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198.4 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198.4:                                      ; preds = %bb.m
  %i.au = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
  %i.av = add nsw i64 %i.au, -1                   ; 2 uses
  %i.aw = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.av)
          to label %bb.n unwind label %bb.e       ; 2 uses

bb.n:                                             ; preds = %.noexc198.4
  store ptr %1, ptr %i.aw, align 8, !tbaa !260
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 4, ptr %i.ax, align 8, !tbaa !261
  %i.ay = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 5, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198.5 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198.5:                                      ; preds = %bb.n
  %i.az = extractvalue { ptr, i64 } %i.ay, 1      ; 2 uses
  %i.ba = add nsw i64 %i.az, -1                   ; 2 uses
  %i.bb = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ba)
          to label %bb.o unwind label %bb.e       ; 2 uses

bb.o:                                             ; preds = %.noexc198.5
  store ptr %1, ptr %i.bb, align 8, !tbaa !260
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %i.o, ptr %i.bc, align 8, !tbaa !261
  %i.bd = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 6, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198.6 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198.6:                                      ; preds = %bb.o
  %i.be = extractvalue { ptr, i64 } %i.bd, 1      ; 2 uses
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bg = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.bf)
          to label %bb.p unwind label %bb.e       ; 2 uses

bb.p:                                             ; preds = %.noexc198.6
  store ptr %1, ptr %i.bg, align 8, !tbaa !260
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 6, ptr %i.bh, align 8, !tbaa !261
  %i.bi = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 7, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198.7 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198.7:                                      ; preds = %bb.p
  %i.bj = extractvalue { ptr, i64 } %i.bi, 1      ; 2 uses
  %i.bk = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.bl = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.bk)
          to label %bb.q unwind label %bb.e       ; 2 uses

bb.q:                                             ; preds = %.noexc198.7
  store ptr %1, ptr %i.bl, align 8, !tbaa !260
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 7, ptr %i.bm, align 8, !tbaa !261
  %i.bn = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 8, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198.8 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198.8:                                      ; preds = %bb.q
  %i.bo = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  %i.bp = add nsw i64 %i.bo, -1                   ; 2 uses
  %i.bq = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.bp)
          to label %bb.r unwind label %bb.e       ; 2 uses

bb.r:                                             ; preds = %.noexc198.8
  store ptr %1, ptr %i.bq, align 8, !tbaa !260
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 8, ptr %i.br, align 8, !tbaa !261
  %i.bs = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 9, i1 noundef zeroext false, ptr noundef null)
          to label %.noexc198.9 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc198.9:                                      ; preds = %bb.r
  %i.bt = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  %i.bu = add nsw i64 %i.bt, -1                   ; 2 uses
  %i.bv = invoke noundef ptr @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE15assure_at_leastEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.bu)
end_hunk_0
begin_hunk_1_@_ZN33Storage_UpdateFromDestructor_Test8TestBodyEv:bb.a

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !126
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(128) %i.fb) #29, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit117

_ZN7testing7MessageD2Ev.exit117:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.aq
  %.pn62.pn.pn = phi { ptr, i32 } [ %i.es, %bb.aq ], [ %.pn62.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn62.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.body

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit.thread: ; preds = %bb.ai, %bb.ah, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ff = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.fg = lshr i64 %i.ff, 12                      ; 2 uses
  %i.fh = ptrtoint ptr %i.dv to i64
  %i.fi = ptrtoint ptr %i.dw to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 3
  %i.fl = icmp ult i64 %i.fg, %i.fk
  br i1 %i.fl, label %bb.av, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit125.thread

bb.av:                                            ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit.thread
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fg
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !178 ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i123, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit125.thread, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit125

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit125: ; preds = %bb.av
  %i.fo = and i64 %i.ff, 4095
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = and i32 %i.o, -1048576
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !193
  %i.fs = xor i32 %i.fr, %i.fq
  %i.ft = icmp ugt i32 %i.fs, 1048574             ; 2 uses
  %i.fu = zext i1 %i.ft to i8
  store i8 %i.fu, ptr %9, align 8, !tbaa !169
  store ptr null, ptr %i.m, align 8, !tbaa !195
  br i1 %i.ft, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit125.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.fv = load ptr, ptr %12, align 8, !tbaa !116
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 1763, ptr noundef %i.fv)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ba unwind label %bb.bf

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  %i.fw = load ptr, ptr %12, align 8, !tbaa !116  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ba
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !117
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.gb = load ptr, ptr %10, align 8, !tbaa !174  ; 3 uses
  %.not.i.i129 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i129, label %_ZN7testing7MessageD2Ev.exit131, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !126
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(128) %i.gb) #29, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit131

_ZN7testing7MessageD2Ev.exit131:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.gf = load ptr, ptr %i.m, align 8, !tbaa !172 ; 4 uses
  %.not.i.i132 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i132, label %_ZN7testing15AssertionResultD2Ev.exit136, label %bb.bb

bb.bb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit131
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !116 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133: ; preds = %bb.bb
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !117
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit136

_ZN7testing15AssertionResultD2Ev.exit136:         ; preds = %_ZN7testing7MessageD2Ev.exit131, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.loopexit208.sink.split

bb.bc:                                            ; preds = %bb.aw
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.bd:                                            ; preds = %bb.ax
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.be:                                            ; preds = %bb.ay
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.az
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn66 = phi { ptr, i32 } [ %i.go, %bb.bf ], [ %i.gn, %bb.be ] ; 2 uses
  %i.gp = load ptr, ptr %12, align 8, !tbaa !116  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.bg
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !117
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.bd
  %.pn66.pn = phi { ptr, i32 } [ %i.gm, %bb.bd ], [ %.pn66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %.pn66, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.gu = load ptr, ptr %10, align 8, !tbaa !174  ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !126
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #29, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %bb.bc
  %.pn66.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.bc ], [ %.pn66.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %.pn66.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.body

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit125.thread: ; preds = %bb.av, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit.thread, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit125
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.gy = load ptr, ptr %1, align 8, !tbaa !126
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !15

.noexc150:                                        ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit125.thread
  %i.hb = load i8, ptr %i.e, align 8, !tbaa !152
  %.not.i.i148 = icmp eq i8 %i.hb, 2
  %i.hc = select i1 %.not.i.i148, i64 0, i64 1048575
  store i64 %i.hc, ptr %i.f, align 8, !tbaa !153
  %i.hd = load ptr, ptr %i.h, align 8, !tbaa !180 ; 2 uses
  %i.he = load ptr, ptr %i.i, align 8, !tbaa !256
  %.not.i.i.i149 = icmp eq ptr %i.he, %i.hd
  br i1 %.not.i.i.i149, label %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN11StorageBase9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11StorageBase9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.noexc150
  store ptr %i.hd, ptr %i.i, align 8, !tbaa !256
  br label %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE5clearEv.exit

_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE5clearEv.exit: ; preds = %.noexc150, %_ZSt8_DestroyIPN11StorageBase9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.hf = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.hg = load ptr, ptr %i.c, align 8, !tbaa !182 ; 2 uses
  %.not207 = icmp eq ptr %i.hf, %i.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  br i1 %.not207, label %.split220.us.sink.split, label %.split.preheader

.split.preheader:                                 ; preds = %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE5clearEv.exit
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !178 ; 11 uses
  %.not.i.i173 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i173, label %.split220.us.sink.split, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175: ; preds = %.split.preheader
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !193
  %i.hj = icmp ugt i32 %i.hi, 1048574             ; 2 uses
  %i.hk = zext i1 %i.hj to i8
  store i8 %i.hk, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.hj, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.1, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.9, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.8, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.7, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.6, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.5, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.4, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.3, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.2, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.1, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.hl = load ptr, ptr %16, align 8, !tbaa !116
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 1770, ptr noundef %i.hl)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  %i.hm = load ptr, ptr %16, align 8, !tbaa !116  ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.bl
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !117
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.hr = load ptr, ptr %14, align 8, !tbaa !174  ; 3 uses
  %.not.i.i179 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i179, label %_ZN7testing7MessageD2Ev.exit181, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !126
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(128) %i.hr) #29, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit181

_ZN7testing7MessageD2Ev.exit181:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.hv = load ptr, ptr %i.n, align 8, !tbaa !172 ; 4 uses
  %.not.i.i182 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i182, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit181
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !116 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183: ; preds = %bb.bm
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !117
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef 32) #33
  br label %bb.bs

bb.bn:                                            ; preds = %bb.bh
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit192

bb.bo:                                            ; preds = %bb.bi
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.bp:                                            ; preds = %bb.bj
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bk
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn74 = phi { ptr, i32 } [ %i.ie, %bb.bq ], [ %i.id, %bb.bp ] ; 2 uses
  %i.if = load ptr, ptr %16, align 8, !tbaa !116  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.br
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !117
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.bo
  %.pn74.pn = phi { ptr, i32 } [ %i.ic, %bb.bo ], [ %.pn74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.pn74, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.ik = load ptr, ptr %14, align 8, !tbaa !174  ; 3 uses
  %.not.i.i190 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i190, label %_ZN7testing7MessageD2Ev.exit192, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !126
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(128) %i.ik) #29, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit192

_ZN7testing7MessageD2Ev.exit192:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %bb.bn
  %.pn74.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.bn ], [ %.pn74.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %.pn74.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %.body

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.1: ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.io = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !193
  %i.iq = icmp ugt i32 %i.ip, 1048574             ; 2 uses
  %i.ir = zext i1 %i.iq to i8
  store i8 %i.ir, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.iq, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.2, label %bb.bh

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.2: ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.is = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.it = load i32, ptr %i.is, align 4, !tbaa !193
  %i.iu = icmp ugt i32 %i.it, 1048574             ; 2 uses
  %i.iv = zext i1 %i.iu to i8
  store i8 %i.iv, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.iu, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.3, label %bb.bh

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.3: ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.2
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !193
  %i.iy = icmp ugt i32 %i.ix, 1048574             ; 2 uses
  %i.iz = zext i1 %i.iy to i8
  store i8 %i.iz, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.iy, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.4, label %bb.bh

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.4: ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.3
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !193
  %i.jc = icmp ugt i32 %i.jb, 1048574             ; 2 uses
  %i.jd = zext i1 %i.jc to i8
  store i8 %i.jd, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.jc, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.5, label %bb.bh

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.5: ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.je = getelementptr inbounds nuw i8, ptr %i.hh, i64 20
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !193
  %i.jg = icmp ugt i32 %i.jf, 1048574             ; 2 uses
  %i.jh = zext i1 %i.jg to i8
  store i8 %i.jh, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.jg, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.6, label %bb.bh

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.6: ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !193
  %i.jk = icmp ugt i32 %i.jj, 1048574             ; 2 uses
  %i.jl = zext i1 %i.jk to i8
  store i8 %i.jl, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.jk, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.7, label %bb.bh

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.7: ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hh, i64 28
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !193
  %i.jo = icmp ugt i32 %i.jn, 1048574             ; 2 uses
  %i.jp = zext i1 %i.jo to i8
  store i8 %i.jp, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.jo, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.8, label %bb.bh

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.8: ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !193
  %i.js = icmp ugt i32 %i.jr, 1048574             ; 2 uses
  %i.jt = zext i1 %i.js to i8
  store i8 %i.jt, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.js, label %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.9, label %bb.bh

_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.9: ; preds = %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hh, i64 36
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !193
  %i.jw = icmp ugt i32 %i.jv, 1048574             ; 2 uses
  %i.jx = zext i1 %i.jw to i8
  store i8 %i.jx, ptr %13, align 8, !tbaa !169
  store ptr null, ptr %i.n, align 8, !tbaa !195
  br i1 %i.jw, label %.split220.us, label %bb.bh

bb.bs:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184, %_ZN7testing7MessageD2Ev.exit181
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %.loopexit208.sink.split

.split220.us.sink.split:                          ; preds = %.split.preheader, %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  br label %.split220.us

.split220.us:                                     ; preds = %.split220.us.sink.split, %_ZNK4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE8containsES2_.exit175.9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %.058.add = add nuw nsw i64 %.058.idx221, 4     ; 2 uses
  %.not = icmp eq i64 %.058.add, 12
  br i1 %.not, label %.loopexit208, label %bb.b

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.g, %_ZN7testing7MessageD2Ev.exit192, %_ZN7testing7MessageD2Ev.exit142, %_ZN7testing7MessageD2Ev.exit117, %bb.aj
  %.pn78 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aj ], [ %.pn74.pn.pn, %_ZN7testing7MessageD2Ev.exit192 ], [ %i.aa, %bb.g ], [ %.pn62.pn.pn, %_ZN7testing7MessageD2Ev.exit117 ], [ %.pn66.pn.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn78

.loopexit208.sink.split:                          ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit111, %_ZN7testing15AssertionResultD2Ev.exit136, %bb.bs
  call void @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %.loopexit208

.loopexit208:                                     ; preds = %.split220.us, %.loopexit208.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !257, !noalias !1341
  %i.b = load i32, ptr %4, align 4, !tbaa !189, !noalias !1341
  %i.c = zext i32 %i.b to i64
  %i.d = icmp eq i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQImjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN7testing8internal11CmpHelperEQImjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQImjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EEE, i64 16), ptr %0, align 8, !tbaa !126
  invoke void @_ZN4entt13basic_storageIN11StorageBase22update_from_destructorENS1_9my_entityESaIS2_EE14shrink_to_sizeEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef 0)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN11StorageBase22update_from_destructorESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIPN11StorageBase22update_from_destructorESaIS2_EED2Ev.exit

_ZNSt6vectorIPN11StorageBase22update_from_destructorESaIS2_EED2Ev.exit: ; preds = %bb.b, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EEE, i64 16), ptr %0, align 8, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIPN11StorageBase22update_from_destructorESaIS2_EED2Ev.exit, %bb.e
  %.sroa.08.012.i.i = phi ptr [ %i.n, %bb.e ], [ %i.i, %_ZNSt6vectorIPN11StorageBase22update_from_destructorESaIS2_EED2Ev.exit ] ; 3 uses
  %i.m = load ptr, ptr %.sroa.08.012.i.i, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16384) #33, !inline_history !179
  store ptr null, ptr %.sroa.08.012.i.i, align 8, !tbaa !178
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.k
  br i1 %i.o, label %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i: ; preds = %bb.e, %_ZNSt6vectorIPN11StorageBase22update_from_destructorESaIS2_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !180  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11StorageBase9my_entityESaIS1_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !181
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #33, !inline_history !179
  br label %_ZNSt6vectorIN11StorageBase9my_entityESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN11StorageBase9my_entityESaIS1_EED2Ev.exit.i: ; preds = %bb.f, %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE20release_sparse_pagesEv.exit.i
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !182  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i, label %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN11StorageBase9my_entityESaIS1_EED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !183
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #33, !inline_history !179
  br label %_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EED2Ev.exit

_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN11StorageBase9my_entityESaIS1_EED2Ev.exit.i, %bb.g
  ret void

bb.h:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN34Storage_CreateFromConstructor_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::basic_storage.124", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.c = load atomic i8, ptr @_ZGVZN4entt7type_idIN11StorageBase23create_from_constructorEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4entt13basic_storageIN11StorageBase23create_from_constructorENS1_9my_entityESaIS2_EEC2Ev.exit, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN11StorageBase23create_from_constructorEEERKNS_9type_infoEvE8instance) #29
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN4entt13basic_storageIN11StorageBase23create_from_constructorENS1_9my_entityESaIS2_EEC2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IN11StorageBase23create_from_constructorEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN11StorageBase23create_from_constructorEEERKNS_9type_infoEvE8instance) #29
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN11StorageBase23create_from_constructorEEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN11StorageBase23create_from_constructorEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt13basic_storageIN11StorageBase23create_from_constructorENS1_9my_entityESaIS2_EEC2Ev.exit

_ZN4entt13basic_storageIN11StorageBase23create_from_constructorENS1_9my_entityESaIS2_EEC2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIN11StorageBase23create_from_constructorEEERKNS_9type_infoEvE8instance, ptr %i.h, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %i.i, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 1048575, ptr %i.j, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIN11StorageBase23create_from_constructorENS1_9my_entityESaIS2_EEE, i64 16), ptr %1, align 8, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 1, ptr %i.a, align 4, !tbaa !193
  %i.l = invoke { ptr, i64 } @_ZN4entt13basic_storageIN11StorageBase23create_from_constructorENS1_9my_entityESaIS2_EE15emplace_elementIJRS5_RKS3_EEEDaS3_bDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %_ZN4entt13basic_storageIN11StorageBase23create_from_constructorENS1_9my_entityESaIS2_EEC2Ev.exit
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !178
  %i.p = load i32, ptr %i.o, align 4, !tbaa !193
  %i.q = and i32 %i.p, 1048575
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = lshr i64 %i.r, 10
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !270
  %i.v = and i64 %i.r, 1023
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !193, !noalias !1350
  %i.y = load i32, ptr %i.a, align 4, !tbaa !193, !noalias !1350
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
end_hunk_1
