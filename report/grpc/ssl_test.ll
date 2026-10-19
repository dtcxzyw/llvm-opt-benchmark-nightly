Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_test?download=true
inline.NumInlined: 32411
inline.NumDeleted: 5042
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 64
begin_hunk_0_@"_ZZN4bssl12_GLOBAL__N_126SSLVersionTest_KeyLog_Test8TestBodyEvEN3$_08__invokeEPK6ssl_stPKc":bb.a
.critedge123.i:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  %i.ls = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !1575 ; 4 uses
  %.not.i.i283.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i283.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.critedge123.i
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !1102 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i284.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i284.i: ; preds = %bb.dp
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !1106
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.ly) #43
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285.i: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i284.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef 32) #43
  br label %bb.dq

bb.dq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285.i, %.critedge123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #45
  %i.lz = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJS5_S8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.dr unwind label %bb.dx     ; 0 uses

bb.dr:                                            ; preds = %bb.dq, %_ZN7testing15AssertionResultD2Ev.exit279.i, %_ZN7testing15AssertionResultD2Ev.exit256.i, %_ZN7testing15AssertionResultD2Ev.exit235.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZN7testing15AssertionResultD2Ev.exit213.i, %_ZN7testing15AssertionResultD2Ev.exit191.i
  %i.ma = load ptr, ptr %16, align 8, !tbaa !1596 ; 3 uses
  %.not.i.i.i288.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i288.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !1601
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.ma to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mf) #43
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.dt, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  %i.mg = load ptr, ptr %15, align 8, !tbaa !1596 ; 3 uses
  %.not.i.i.i289.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i289.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit290.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.mh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !1601
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.ml) #43
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit290.i

_ZNSt6vectorIhSaIhEED2Ev.exit290.i:               ; preds = %bb.du, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit290.i, %_ZN7testing15AssertionResultD2Ev.exit169.i
  %i.mm = load ptr, ptr %10, align 8, !tbaa !1102 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.by
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i: ; preds = %bb.dv
  %i.mo = load i64, ptr %i.by, align 8, !tbaa !1106
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %"_ZZN4bssl12_GLOBAL__N_126SSLVersionTest_KeyLog_Test8TestBodyEvENK3$_0clEPK6ssl_stPKc.exit"

bb.dw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit282.i, %bb.dc
  %.pn98.pn.pn.pn.i = phi { ptr, i32 } [ %.pn98.pn.pn.i, %_ZN7testing7MessageD2Ev.exit282.i ], [ %i.kn, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #45
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dq
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.db, %bb.cj
  %.pn103.i = phi { ptr, i32 } [ %i.mq, %bb.dx ], [ %.pn98.pn.pn.pn.i, %bb.dw ], [ %.pn92.pn.pn.i, %bb.db ], [ %.pn88.pn.pn.i, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.bv, %bb.be
  %.pn103.pn.i = phi { ptr, i32 } [ %.pn103.i, %bb.dy ], [ %.pn83.pn.pn.pn.i, %bb.bv ], [ %.pn78.pn.pn.pn.i, %bb.be ]
  %i.mr = load ptr, ptr %16, align 8, !tbaa !1596 ; 3 uses
  %.not.i.i.i294.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i294.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit295.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ms = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !1601
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.mr to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef %i.mw) #43
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit295.i

_ZNSt6vectorIhSaIhEED2Ev.exit295.i:               ; preds = %bb.ea, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  %i.mx = load ptr, ptr %15, align 8, !tbaa !1596 ; 3 uses
  %.not.i.i.i296.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i296.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit297.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit295.i
  %i.my = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !1601
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nc) #43
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit297.i

_ZNSt6vectorIhSaIhEED2Ev.exit297.i:               ; preds = %bb.eb, %_ZNSt6vectorIhSaIhEED2Ev.exit295.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  br label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit297.i, %_ZN7testing7MessageD2Ev.exit175.i
  %.pn103.pn.pn.i = phi { ptr, i32 } [ %.pn103.pn.i, %_ZNSt6vectorIhSaIhEED2Ev.exit297.i ], [ %.pn74.pn.pn.i, %_ZN7testing7MessageD2Ev.exit175.i ] ; 2 uses
  %i.nd = load ptr, ptr %10, align 8, !tbaa !1102 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.by
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298.i: ; preds = %bb.ec
  %i.nf = load i64, ptr %i.by, align 8, !tbaa !1106
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298.i, %bb.ac
  %.pn103.pn.pn.pn.i = phi { ptr, i32 } [ %i.cn, %bb.ac ], [ %.pn103.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298.i ], [ %.pn103.pn.pn.i, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %bb.ed

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i, %_ZN7testing7MessageD2Ev.exit152.i, %_ZN7testing7MessageD2Ev.exit130.i
  %.pn103.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZN7testing7MessageD2Ev.exit130.i ], [ %.pn103.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i ], [ %.pn70.pn.pn.i, %_ZN7testing7MessageD2Ev.exit152.i ]
  resume { ptr, i32 } %.pn103.pn.pn.pn.pn.pn.i

"_ZZN4bssl12_GLOBAL__N_126SSLVersionTest_KeyLog_Test8TestBodyEvENK3$_0clEPK6ssl_stPKc.exit": ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i, %_ZN7testing15AssertionResultD2Ev.exit146.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4bssl12_GLOBAL__N_114DecodeLowerHexEPSt6vectorIhSaIhEENS_4SpanIKcEE(ptr noundef nonnull %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %2, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr exact i64 %2, 1                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1597 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !1596   ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp ugt i64 %i.b, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sub nuw nsw i64 %i.b, %i.h
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1597
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !1596
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.b, %i.h
  br i1 %i.k, label %bb.e, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1597
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.m = phi ptr [ %.pre60, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.l, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %i.o = icmp eq ptr %i.n, %i.m
  br i1 %i.o, label %.loopexit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %.critedge
  %3 = phi ptr [ %i.ab, %.critedge ], [ %i.m, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ]
  %.04154 = phi i64 [ %i.z, %.critedge ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 3 uses
  %4 = shl i64 %.04154, 1                         ; 3 uses
  %.not.i = icmp ult i64 %4, %2
  br i1 %.not.i, label %_ZNK4bssl4SpanIKcEixEm.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.a
  tail call void @abort() #46
  unreachable

_ZNK4bssl4SpanIKcEixEm.exit:                      ; preds = %.lr.ph.a
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !1106      ; 3 uses
  %7 = or disjoint i64 %4, 1                      ; 2 uses
  %.not.i48 = icmp ult i64 %7, %2
  br i1 %.not.i48, label %_ZNK4bssl4SpanIKcEixEm.exit49, label %bb.g

bb.g:                                             ; preds = %_ZNK4bssl4SpanIKcEixEm.exit
  tail call void @abort() #46
  unreachable

_ZNK4bssl4SpanIKcEixEm.exit49:                    ; preds = %_ZNK4bssl4SpanIKcEixEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1106  ; 3 uses
  %i.r = add i8 %6, -48                           ; 2 uses
  %or.cond = icmp ult i8 %i.r, 10
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK4bssl4SpanIKcEixEm.exit49
  %i.s = add i8 %6, -97
  %or.cond5 = icmp ult i8 %i.s, 6
  br i1 %or.cond5, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.t = add nsw i8 %6, -87
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4bssl4SpanIKcEixEm.exit49, %bb.i
  %.0 = phi i8 [ %i.t, %bb.i ], [ %i.r, %_ZNK4bssl4SpanIKcEixEm.exit49 ]
  %i.u = shl nuw i8 %.0, 4
  %i.v = add i8 %i.q, -48                         ; 2 uses
  %or.cond8 = icmp ult i8 %i.v, 10
  br i1 %or.cond8, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = add i8 %i.q, -97
  %or.cond11 = icmp ult i8 %i.w, 6
  br i1 %or.cond11, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.x = add nsw i8 %i.q, -87
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.l
  %.pn = phi i8 [ %i.x, %bb.l ], [ %i.v, %bb.j ]
  %.1 = or i8 %.pn, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.04154
  store i8 %.1, ptr %i.y, align 1, !tbaa !1106
  %i.z = add nuw i64 %.04154, 1                   ; 2 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !1597
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1596  ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not59 = icmp ult i64 %i.z, %i.ae
  br i1 %.not59, label %.lr.ph.a, label %.loopexit, !llvm.loop !12656

.loopexit:                                        ; preds = %bb.h, %bb.k, %.critedge, %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ false, %bb.k ], [ false, %bb.h ], [ true, %.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEESt4lessIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJS5_S8_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2648 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1104 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1104 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1102
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #45 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !2664 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !94

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1104 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1102
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #45 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIhSaIhEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJS5_SA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.019.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIhSaIhEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJS5_SA_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<unsigned char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<unsigned char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  store ptr %0, ptr %4, align 8, !tbaa !2666
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #44 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !1103
  %i.d = load ptr, ptr %2, align 8, !tbaa !1102   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1104 ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !1102
  %i.k = load i64, ptr %i.e, align 8, !tbaa !1106
  store i64 %i.k, ptr %i.c, align 8, !tbaa !1106
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !1104
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.l, ptr %i.o, align 8, !tbaa !1104
  store ptr %i.e, ptr %2, align 8, !tbaa !1102
  store i64 0, ptr %i.n, align 8, !tbaa !1104
  store i8 0, ptr %i.e, align 8, !tbaa !1106
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.q = load <2 x ptr>, ptr %3, align 8, !tbaa !1578
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !1578
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1601
  store ptr %i.t, ptr %i.r, align 8, !tbaa !1601
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %i.m, align 8, !tbaa !2669
  %i.u = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIhSaIhEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.u, 1        ; 5 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.v, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.o, align 8, !tbaa !1104 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1104 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1102
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !1102
  %i.ag = tail call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #45 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.ah = sub i64 %i.z, %i.ab
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ai = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.aj = phi i1 [ %i.ai, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #45
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2650
  %i.am = add i64 %i.al, 1
end_hunk_0
