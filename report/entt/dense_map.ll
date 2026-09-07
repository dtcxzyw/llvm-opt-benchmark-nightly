Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/dense_map?download=true
inline.NumInlined: 11368
inline.NumDeleted: 3149
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN29DenseMap_EraseFromBucket_Test8TestBodyEv:bb.a

bb.er:                                            ; preds = %.critedge641
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !88 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 16 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i910, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i909

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i909: ; preds = %bb.er
  %i.ps = load i64, ptr %i.pq, align 8, !tbaa !89
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.pt) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i910

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i910: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i909
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef 32) #28
  br label %bb.es

bb.es:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i910, %.critedge641
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #27
  %i.pu = load ptr, ptr %i.ds, align 8, !tbaa !142
  %i.pv = load ptr, ptr %1, align 8, !tbaa !81
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !110 ; 2 uses
  %i.py = icmp eq i64 %i.px, -1
  br i1 %i.py, label %_ZNK4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE11bucket_sizeEm.exit917.thread, label %.lr.ph.i.i913

_ZNK4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE11bucket_sizeEm.exit917.thread: ; preds = %bb.es
  store i64 0, ptr %i.s, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  store i32 4, ptr %i.t, align 4, !tbaa !111
  br label %bb.eu

.lr.ph.i.i913:                                    ; preds = %bb.es, %.lr.ph.i.i913
  %.05.i.i914 = phi i64 [ %i.qb, %.lr.ph.i.i913 ], [ 0, %bb.es ]
  %.sroa.2.04.i.i915 = phi i64 [ %i.qa, %.lr.ph.i.i913 ], [ %i.px, %bb.es ]
  %i.pz = getelementptr inbounds [24 x i8], ptr %i.pu, i64 %.sroa.2.04.i.i915
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !147 ; 2 uses
  %i.qb = add nuw nsw i64 %.05.i.i914, 1          ; 3 uses
  %i.qc = icmp eq i64 %i.qa, -1
  br i1 %i.qc, label %_ZNK4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE11bucket_sizeEm.exit917, label %.lr.ph.i.i913, !llvm.loop !10

_ZNK4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE11bucket_sizeEm.exit917: ; preds = %.lr.ph.i.i913
  store i64 %i.qb, ptr %i.s, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  store i32 4, ptr %i.t, align 4, !tbaa !111
  %i.qd = icmp eq i64 %i.qb, 4
  br i1 %i.qd, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %_ZNK4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE11bucket_sizeEm.exit917
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %32)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit920 unwind label %bb.ew

bb.eu:                                            ; preds = %_ZNK4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE11bucket_sizeEm.exit917.thread, %_ZNK4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE11bucket_sizeEm.exit917
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %32, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.155, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit920 unwind label %bb.ew

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit920: ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  %i.qe = load i8, ptr %32, align 8, !tbaa !102, !range !105, !noundef !109
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %.critedge643, label %bb.ex

bb.ev:                                            ; preds = %_ZN7testing7MessageD2Ev.exit907, %bb.eg
  %.pn410.pn.pn = phi { ptr, i32 } [ %.pn410.pn, %_ZN7testing7MessageD2Ev.exit907 ], [ %i.or, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.acl

bb.ew:                                            ; preds = %bb.eu, %bb.et
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  br label %bb.fr

bb.ex:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit920
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.ey unwind label %bb.fd

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  %i.qh = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i921 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i921, label %_ZNK7testing15AssertionResult15failure_messageEv.exit922, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !88
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit922

_ZNK7testing15AssertionResult15failure_messageEv.exit922: ; preds = %bb.ez, %bb.ey
  %i.qk = phi ptr [ %i.qj, %bb.ez ], [ @.str.299, %bb.ey ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 831, ptr noundef %i.qk)
          to label %bb.fa unwind label %bb.fe

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit922
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.fb unwind label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  %i.ql = load ptr, ptr %33, align 8, !tbaa !91   ; 3 uses
  %.not.i.i923 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i923, label %_ZN7testing7MessageD2Ev.exit925, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i924

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i924: ; preds = %bb.fb
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !50
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(128) %i.ql) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit925

_ZN7testing7MessageD2Ev.exit925:                  ; preds = %bb.fb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i924
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  %i.qp = load ptr, ptr %i.qh, align 8, !tbaa !104 ; 4 uses
  %.not.i.i926 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i926, label %_ZN7testing15AssertionResultD2Ev.exit930, label %bb.fc

bb.fc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit925
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !88 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 16 ; 2 uses
  %i.qs = icmp eq ptr %i.qq, %i.qr
  br i1 %i.qs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i928, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i927

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i927: ; preds = %bb.fc
  %i.qt = load i64, ptr %i.qr, align 8, !tbaa !89
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qu) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i928

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i928: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i927
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit930

_ZN7testing15AssertionResultD2Ev.exit930:         ; preds = %_ZN7testing7MessageD2Ev.exit925, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i928
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %bb.aci

bb.fd:                                            ; preds = %bb.ex
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit933

bb.fe:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit922
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fa
  %i.qx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #27
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn416 = phi { ptr, i32 } [ %i.qx, %bb.ff ], [ %i.qw, %bb.fe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  %i.qy = load ptr, ptr %33, align 8, !tbaa !91   ; 3 uses
  %.not.i.i931 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i931, label %_ZN7testing7MessageD2Ev.exit933, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i932

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i932: ; preds = %bb.fg
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !50
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(128) %i.qy) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit933

_ZN7testing7MessageD2Ev.exit933:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i932, %bb.fg, %bb.fd
  %.pn416.pn = phi { ptr, i32 } [ %i.qv, %bb.fd ], [ %.pn416, %bb.fg ], [ %.pn416, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i932 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #27
  br label %bb.fr

.critedge643:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit920
  %i.rc = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !104 ; 4 uses
  %.not.i.i934 = icmp eq ptr %i.rd, null
  br i1 %.not.i.i934, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.critedge643
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !88 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 16 ; 2 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i936, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i935

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i935: ; preds = %bb.fh
  %i.rh = load i64, ptr %i.rf, align 8, !tbaa !89
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.ri) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i936

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i936: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i935
  call void @_ZdlPvm(ptr noundef nonnull %i.rd, i64 noundef 32) #28
  br label %bb.fi

bb.fi:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i936, %.critedge643
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  %i.rj = load ptr, ptr %i.ds, align 8, !tbaa !142 ; 2 uses
  %i.rk = load ptr, ptr %i.dt, align 8, !tbaa !144 ; 3 uses
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = ptrtoint ptr %i.rj to i64               ; 2 uses
  %i.rn = sub i64 %i.rl, %i.rm
  %172 = getelementptr inbounds i8, ptr %i.rk, i64 -72
  %173 = ptrtoint ptr %172 to i64
  %174 = sub i64 %173, %i.rm
  %i.ro = sdiv exact i64 %174, 24                 ; 2 uses
  %i.rp = sdiv exact i64 %i.rn, 24                ; 2 uses
  %.not15.i = icmp eq i64 %i.rp, %i.ro
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !107
  %.pre1837 = load ptr, ptr %1, align 8, !tbaa !81 ; 3 uses
  %.pre1838 = ptrtoint ptr %.pre to i64
  %.pre1839 = ptrtoint ptr %.pre1837 to i64
  %.pre1841 = sub i64 %.pre1838, %.pre1839        ; 2 uses
  %.pre1843 = ashr exact i64 %.pre1841, 3         ; 2 uses
  br i1 %.not15.i, label %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseENS_8internal18dense_map_iteratorIPKNS9_14dense_map_nodeImmEEEESF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fi
  %175 = add nsw i64 %.pre1843, -1                ; 2 uses
  br label %bb.fj

bb.fj:                                            ; preds = %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseERS5_.exit.i, %.lr.ph.i
  %i.rq = phi ptr [ %i.rk, %.lr.ph.i ], [ %i.sz, %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseERS5_.exit.i ] ; 6 uses
  %.016.i = phi i64 [ %i.rp, %.lr.ph.i ], [ %i.rr, %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseERS5_.exit.i ]
  %i.rr = add i64 %.016.i, -1                     ; 3 uses
  %i.rs = getelementptr inbounds nuw [24 x i8], ptr %i.rj, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !110 ; 2 uses
  %i.rv = and i64 %i.ru, %175
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.pre1837, i64 %i.rv
  %i.rx = load ptr, ptr %i.ds, align 8            ; 3 uses
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fl, %bb.fj
  %.012.i.i = phi ptr [ %i.rw, %bb.fj ], [ %i.rz, %bb.fl ] ; 2 uses
  %i.ry = load i64, ptr %.012.i.i, align 8, !tbaa !110 ; 4 uses
  %.not.i.i939 = icmp eq i64 %i.ry, -1
  br i1 %.not.i.i939, label %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseERS5_.exit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %i.rx, i64 %i.ry ; 6 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !110
  %i.sc = icmp eq i64 %i.sb, %i.ru
  br i1 %i.sc, label %bb.fm, label %bb.fk, !llvm.loop !13

bb.fm:                                            ; preds = %bb.fl
  %i.sd = load i64, ptr %i.rz, align 8, !tbaa !147
  store i64 %i.sd, ptr %.012.i.i, align 8, !tbaa !110
  %i.se = ptrtoint ptr %i.rq to i64
  %i.sf = ptrtoint ptr %i.rx to i64
  %i.sg = sub i64 %i.se, %i.sf
  %i.sh = sdiv exact i64 %i.sg, 24
  %i.si = add nsw i64 %i.sh, -1                   ; 3 uses
  %.not.i.i.i940 = icmp eq i64 %i.ry, %i.si
  br i1 %.not.i.i.i940, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sk = getelementptr inbounds i8, ptr %i.rq, i64 -24
  %i.sl = getelementptr inbounds i8, ptr %i.rq, i64 -16 ; 2 uses
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !110
  %i.sn = and i64 %i.sm, %175
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %.pre1837, i64 %i.sn ; 2 uses
  %i.sp = load i64, ptr %i.sk, align 8, !tbaa !147
  store i64 %i.sp, ptr %i.rz, align 8, !tbaa !147
  %i.sq = load i64, ptr %i.sl, align 8, !tbaa !110
  store i64 %i.sq, ptr %i.sj, align 8, !tbaa !169
  %i.sr = getelementptr inbounds i8, ptr %i.rq, i64 -8
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !110
  %i.st = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store i64 %i.ss, ptr %i.st, align 8, !tbaa !170
  %i.su = load i64, ptr %i.so, align 8, !tbaa !110 ; 2 uses
  %.not1011.i.i.i = icmp eq i64 %i.su, %i.si
  br i1 %.not1011.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fn, %.lr.ph.i.i.i
  %i.sv = phi i64 [ %i.sx, %.lr.ph.i.i.i ], [ %i.su, %bb.fn ]
  %i.sw = getelementptr inbounds nuw [24 x i8], ptr %i.rx, i64 %i.sv ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !110 ; 2 uses
  %.not10.i.i.i = icmp eq i64 %i.sx, %i.si
  br i1 %.not10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !14

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.fn
  %.0.lcssa.i.i.i = phi ptr [ %i.so, %bb.fn ], [ %i.sw, %.lr.ph.i.i.i ]
  store i64 %i.ry, ptr %.0.lcssa.i.i.i, align 8, !tbaa !110
  br label %bb.fo

bb.fo:                                            ; preds = %._crit_edge.i.i.i, %bb.fm
  %i.sy = getelementptr inbounds i8, ptr %i.rq, i64 -24 ; 2 uses
  store ptr %i.sy, ptr %i.dt, align 8, !tbaa !144
  br label %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseERS5_.exit.i

_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseERS5_.exit.i: ; preds = %bb.fk, %bb.fo
  %i.sz = phi ptr [ %i.sy, %bb.fo ], [ %i.rq, %bb.fk ]
  %.not.i = icmp eq i64 %i.rr, %i.ro
  br i1 %.not.i, label %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseENS_8internal18dense_map_iteratorIPKNS9_14dense_map_nodeImmEEEESF_.exit, label %bb.fj, !llvm.loop !15

_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseENS_8internal18dense_map_iteratorIPKNS9_14dense_map_nodeImmEEEESF_.exit: ; preds = %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseERS5_.exit.i, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #27
  store i64 %.pre1843, ptr %i.u, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #27
  store i64 16, ptr %i.v, align 8, !tbaa !110
  %i.ta = icmp eq i64 %.pre1841, 128
  br i1 %i.ta, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseENS_8internal18dense_map_iteratorIPKNS9_14dense_map_nodeImmEEEESF_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit943 unwind label %bb.fs

bb.fq:                                            ; preds = %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE5eraseENS_8internal18dense_map_iteratorIPKNS9_14dense_map_nodeImmEEEESF_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.235, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit943 unwind label %bb.fs

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit943: ; preds = %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #27
  %i.tb = load i8, ptr %35, align 8, !tbaa !102, !range !105, !noundef !109
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %.critedge645, label %bb.ft

bb.fr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit933, %bb.ew
  %.pn416.pn.pn = phi { ptr, i32 } [ %.pn416.pn, %_ZN7testing7MessageD2Ev.exit933 ], [ %i.qg, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %bb.acl

bb.fs:                                            ; preds = %bb.fq, %bb.fp
  %i.td = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #27
  br label %bb.gh

bb.ft:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit943
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.fu unwind label %bb.fz

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  %i.te = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i944 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i.i944, label %_ZNK7testing15AssertionResult15failure_messageEv.exit945, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !88
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit945

_ZNK7testing15AssertionResult15failure_messageEv.exit945: ; preds = %bb.fv, %bb.fu
  %i.th = phi ptr [ %i.tg, %bb.fv ], [ @.str.299, %bb.fu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 835, ptr noundef %i.th)
          to label %bb.fw unwind label %bb.ga

bb.fw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit945
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.fx unwind label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  %i.ti = load ptr, ptr %36, align 8, !tbaa !91   ; 3 uses
  %.not.i.i946 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i946, label %_ZN7testing7MessageD2Ev.exit948, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i947

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i947: ; preds = %bb.fx
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !50
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(128) %i.ti) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit948

_ZN7testing7MessageD2Ev.exit948:                  ; preds = %bb.fx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i947
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  %i.tm = load ptr, ptr %i.te, align 8, !tbaa !104 ; 4 uses
  %.not.i.i949 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i949, label %_ZN7testing15AssertionResultD2Ev.exit953, label %bb.fy

bb.fy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit948
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !88 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 16 ; 2 uses
  %i.tp = icmp eq ptr %i.tn, %i.to
  br i1 %i.tp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i951, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i950

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i950: ; preds = %bb.fy
  %i.tq = load i64, ptr %i.to, align 8, !tbaa !89
  %i.tr = add i64 %i.tq, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tr) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i951

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i951: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i950
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit953

_ZN7testing15AssertionResultD2Ev.exit953:         ; preds = %_ZN7testing7MessageD2Ev.exit948, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i951
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.aci

bb.fz:                                            ; preds = %bb.ft
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit956

bb.ga:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit945
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fw
  %i.tu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #27
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.pn420 = phi { ptr, i32 } [ %i.tu, %bb.gb ], [ %i.tt, %bb.ga ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  %i.tv = load ptr, ptr %36, align 8, !tbaa !91   ; 3 uses
  %.not.i.i954 = icmp eq ptr %i.tv, null
  br i1 %.not.i.i954, label %_ZN7testing7MessageD2Ev.exit956, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i955

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i955: ; preds = %bb.gc
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !50
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(128) %i.tv) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit956

_ZN7testing7MessageD2Ev.exit956:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i955, %bb.gc, %bb.fz
  %.pn420.pn = phi { ptr, i32 } [ %i.ts, %bb.fz ], [ %.pn420, %bb.gc ], [ %.pn420, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i955 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #27
  br label %bb.gh

.critedge645:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit943
  %i.tz = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !104 ; 4 uses
  %.not.i.i957 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i957, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.critedge645
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !88 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 16 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i959, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i958

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i958: ; preds = %bb.gd
  %i.ue = load i64, ptr %i.uc, align 8, !tbaa !89
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uf) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i959

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i959: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i958
  call void @_ZdlPvm(ptr noundef nonnull %i.ua, i64 noundef 32) #28
  br label %bb.ge

bb.ge:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i959, %.critedge645
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #27
  %i.ug = load ptr, ptr %i.dt, align 8, !tbaa !144
  %i.uh = load ptr, ptr %i.ds, align 8, !tbaa !142
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = sub i64 %i.ui, %i.uj                    ; 2 uses
  %i.ul = sdiv exact i64 %i.uk, 24
  store i64 %i.ul, ptr %i.w, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #27
  store i32 9, ptr %i.x, align 4, !tbaa !111
  %i.um = icmp eq i64 %i.uk, 216
  br i1 %i.um, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %38)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit964 unwind label %bb.gi

bb.gg:                                            ; preds = %bb.ge
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %38, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.239, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit964 unwind label %bb.gi

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit964: ; preds = %bb.gf, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #27
  %i.un = load i8, ptr %38, align 8, !tbaa !102, !range !105, !noundef !109
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %.critedge647, label %bb.gj

bb.gh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit956, %bb.fs
  %.pn420.pn.pn = phi { ptr, i32 } [ %.pn420.pn, %_ZN7testing7MessageD2Ev.exit956 ], [ %i.td, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.acl

bb.gi:                                            ; preds = %bb.gg, %bb.gf
  %i.up = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #27
  br label %bb.gx

bb.gj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit964
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.gk unwind label %bb.gp

end_hunk_0
