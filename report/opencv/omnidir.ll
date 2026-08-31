Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/omnidir?download=true
inline.NumInlined: 4032
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN2cv7omnidir8internal21computeJacobianStereoERKNS_11_InputArrayES4_S4_S4_RNS_3MatES6_id:bb.a
  %i.a = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.c = icmp eq i32 %i.b, 70
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @__func__._ZN2cv7omnidir8internal21computeJacobianStereoERKNS_11_InputArrayES4_S4_S4_RNS_3MatES6_id, ptr noundef nonnull @.str.1, i32 noundef 941) #23
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %42, align 8, !tbaa !18    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn397 = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.km

bb.h:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.k, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.m = icmp eq i32 %i.l, 38
  br i1 %i.m, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @__func__._ZN2cv7omnidir8internal21computeJacobianStereoERKNS_11_InputArrayES4_S4_S4_RNS_3MatES6_id, ptr noundef nonnull @.str.1, i32 noundef 942) #23
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

bb.n:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %44, align 8, !tbaa !18    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %bb.n
  %i.s = load i64, ptr %i.q, align 8, !tbaa !23
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400, %bb.m
  %.pn395 = phi { ptr, i32 } [ %i.n, %bb.m ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400 ], [ %i.o, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %bb.km

bb.o:                                             ; preds = %bb.i
  %i.u = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.u, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  %i.w = icmp eq i32 %i.v, 38
  br i1 %i.w, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %47)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @__func__._ZN2cv7omnidir8internal21computeJacobianStereoERKNS_11_InputArrayES4_S4_S4_RNS_3MatES6_id, ptr noundef nonnull @.str.1, i32 noundef 943) #23
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

bb.u:                                             ; preds = %bb.r
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %46, align 8, !tbaa !18    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %bb.u
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403, %bb.t
  %.pn393 = phi { ptr, i32 } [ %i.x, %bb.t ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ], [ %i.y, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %bb.km

bb.v:                                             ; preds = %bb.p
  %i.ae = tail call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.af = tail call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ah = tail call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.ai = tail call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @__func__._ZN2cv7omnidir8internal21computeJacobianStereoERKNS_11_InputArrayES4_S4_S4_RNS_3MatES6_id, ptr noundef nonnull @.str.1, i32 noundef 944) #23
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.ab:                                            ; preds = %bb.y
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %48, align 8, !tbaa !18   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %bb.ab
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !23
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.aa ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %i.al, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %bb.km

bb.ac:                                            ; preds = %bb.w
  %i.ar = tail call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.as = trunc i64 %i.ar to i32                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  %i.at = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !588 ; 0 uses
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %50, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0)
  %i.au = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %bb.ad unwind label %bb.ar

bb.ad:                                            ; preds = %bb.ac
  %i.av = trunc i64 %i.au to i32                  ; 6 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  %i.aw = shl i32 %i.as, 2
  %i.ax = mul i32 %i.aw, %i.av                    ; 2 uses
  %i.ay = mul i32 %i.as, 6                        ; 15 uses
  %i.az = add i32 %i.ay, 6                        ; 2 uses
  %i.ba = add i32 %i.ay, 26                       ; 4 uses
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %52, i32 noundef %i.ax, i32 noundef %i.ba, i32 noundef 6)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %51) #22
  %i.bb = load ptr, ptr %52, align 8, !tbaa !236, !noalias !591 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !245
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(688) %52, ptr noundef nonnull align 8 dereferenceable(208) %51, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.ad
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %52) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  br label %bb.kl

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.ad
  %i.bg = getelementptr inbounds nuw i8, ptr %52, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bg) #22
  %i.bh = getelementptr inbounds nuw i8, ptr %52, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bh) #22
  %i.bi = getelementptr inbounds nuw i8, ptr %52, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bi) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %54, i32 noundef %i.ax, i32 noundef 1, i32 noundef 6)
          to label %bb.ae unwind label %bb.as

bb.ae:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %53) #22
  %i.bj = load ptr, ptr %54, align 8, !tbaa !236, !noalias !594 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !245
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(688) %54, ptr noundef nonnull align 8 dereferenceable(208) %53, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit411 unwind label %.body409

.body409:                                         ; preds = %bb.ae
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %54) #22
  br label %bb.at

_ZNK2cv7MatExprcvNS_3MatEEv.exit411:              ; preds = %bb.ae
  %i.bo = getelementptr inbounds nuw i8, ptr %54, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bo) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %54, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bp) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %54, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  %i.br = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.au

.noexc:                                           ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit411
  %i.bs = icmp eq i32 %i.br, 65536
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12, !noalias !597
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %55, ptr noundef nonnull align 8 dereferenceable(208) %i.bu)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.au

bb.ag:                                            ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %55, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.au

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.af, %bb.ag
  %i.bv = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30 ; 14 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #22
  %i.bx = add i32 %i.ay, 16                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22
  %i.by = sext i32 %i.az to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !16
  %i.cb = add i32 %i.ay, 8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cc
  %i.ce = add i32 %i.ay, 7
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !16
  %i.ci = add i32 %i.ay, 10
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.cn = load <2 x double>, ptr %i.cd, align 8, !tbaa !16
  store double %i.ca, ptr %56, align 8, !tbaa !16
  store <2 x double> %i.cn, ptr %i.cm, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %56, i64 24
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %56, i64 32
  store double %i.ch, ptr %i.cp, align 8, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %56, i64 40
  store double %i.cl, ptr %i.cq, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %56, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %56, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cs, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  %i.ct = add i32 %i.ay, 12
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cu
  %i.cw = add i32 %i.ay, 14
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cx
  %i.cz = load <2 x double>, ptr %i.cv, align 8, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.db = load <2 x double>, ptr %i.cy, align 8, !tbaa !16
  store <2 x double> %i.cz, ptr %57, align 16, !tbaa !16
  store <2 x double> %i.db, ptr %i.da, align 16, !tbaa !16
  %i.dc = add i32 %i.ay, 11
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  %i.dg = sext i32 %i.bx to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !16
  %i.dj = add i32 %i.ay, 18
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.dk
  %i.dm = add i32 %i.ay, 17
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !16
  %i.dq = add i32 %i.ay, 20
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !16
  %i.du = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.dv = load <2 x double>, ptr %i.dl, align 8, !tbaa !16
  store double %i.di, ptr %58, align 8, !tbaa !16
  store <2 x double> %i.dv, ptr %i.du, align 8, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %58, i64 24
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %58, i64 32
  store double %i.dp, ptr %i.dx, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %58, i64 40
  store double %i.dt, ptr %i.dy, align 8, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %58, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %58, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.ea, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  %i.eb = add i32 %i.ay, 22
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ec
  %i.ee = add i32 %i.ay, 24
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ef
  %i.eh = load <2 x double>, ptr %i.ed, align 8, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.ej = load <2 x double>, ptr %i.eg, align 8, !tbaa !16
  store <2 x double> %i.eh, ptr %59, align 16, !tbaa !16
  store <2 x double> %i.ej, ptr %i.ei, align 16, !tbaa !16
  %i.ek = add i32 %i.ay, 21
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  %i.eo = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc414 unwind label %bb.av

.noexc414:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ep = icmp eq i32 %i.eo, 65536
  br i1 %i.ep, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.noexc414
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !12, !noalias !600
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %62, ptr noundef nonnull align 8 dereferenceable(208) %i.er)
          to label %_ZNK2cv11_InputArray6getMatEi.exit417 unwind label %bb.av

bb.ai:                                            ; preds = %.noexc414
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %62, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit417 unwind label %bb.av

_ZNK2cv11_InputArray6getMatEi.exit417:            ; preds = %bb.ah, %bb.ai
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %61, ptr noundef nonnull align 8 dereferenceable(208) %62, i32 noundef 1, i32 noundef 1)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit417
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22, !noalias !603
  store i64 9223372034707292160, ptr %40, align 8, !noalias !603
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22, !noalias !603
  store i32 0, ptr %41, align 4, !tbaa !201, !noalias !603
  %i.es = getelementptr inbounds nuw i8, ptr %41, i64 4
  store i32 3, ptr %i.es, align 4, !tbaa !203, !noalias !603
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %60, ptr noundef nonnull align 8 dereferenceable(208) %61, ptr noundef nonnull align 4 dereferenceable(8) %40, ptr noundef nonnull align 4 dereferenceable(8) %41)
          to label %bb.ak unwind label %bb.ax

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22, !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22, !noalias !603
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  %i.et = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc419 unwind label %bb.ba

.noexc419:                                        ; preds = %bb.ak
  %i.eu = icmp eq i32 %i.et, 65536
  br i1 %i.eu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.noexc419
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !12, !noalias !606
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %65, ptr noundef nonnull align 8 dereferenceable(208) %i.ew)
          to label %_ZNK2cv11_InputArray6getMatEi.exit422 unwind label %bb.ba

bb.am:                                            ; preds = %.noexc419
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %65, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit422 unwind label %bb.ba

_ZNK2cv11_InputArray6getMatEi.exit422:            ; preds = %bb.al, %bb.am
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %64, ptr noundef nonnull align 8 dereferenceable(208) %65, i32 noundef 1, i32 noundef 1)
          to label %bb.an unwind label %bb.bb

bb.an:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit422
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22, !noalias !609
  store i64 9223372034707292160, ptr %38, align 8, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22, !noalias !609
  store i32 3, ptr %39, align 4, !tbaa !201, !noalias !609
  %i.ex = getelementptr inbounds nuw i8, ptr %39, i64 4
  store i32 6, ptr %i.ex, align 4, !tbaa !203, !noalias !609
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %63, ptr noundef nonnull align 8 dereferenceable(208) %64, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39)
          to label %bb.ao unwind label %bb.bc

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22, !noalias !609
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %65) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  %i.ey = icmp sgt i32 %i.as, 0
  br i1 %i.ey, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ao
  %i.ez = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %76, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %66, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %67, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %68, i64 12
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %35, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %90, i64 20
  %i.fq = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %91, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %92, i64 20
  %i.fv = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %93, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %93, i64 20
  %i.fy = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %94, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %95, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %96, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %98, i64 432
  %i.gg = getelementptr inbounds nuw i8, ptr %98, i64 224
  %i.gh = getelementptr inbounds nuw i8, ptr %98, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %33, i64 4
  %187 = shl i32 %i.av, 2
  %i.gj = shl nsw i32 %i.av, 1                    ; 9 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %102, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %102, i64 12
  %i.gn = getelementptr inbounds nuw i8, ptr %100, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %100, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %31, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %106, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %106, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %106, i64 12
  %i.gt = getelementptr inbounds nuw i8, ptr %104, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %104, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %28, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %108, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %108, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %120, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %120, i64 20
  %i.ha = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %121, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %121, i64 20
  %i.hd = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %122, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %122, i64 20
  %i.hg = getelementptr inbounds nuw i8, ptr %122, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %123, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %123, i64 20
  %i.hj = getelementptr inbounds nuw i8, ptr %123, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %124, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %124, i64 20
  %i.hm = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %125, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %125, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %126, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %126, i64 20
  %i.hr = getelementptr inbounds nuw i8, ptr %126, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %127, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %127, i64 20
  %i.hu = getelementptr inbounds nuw i8, ptr %127, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %128, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %128, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %129, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %130, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %130, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %132, i64 432
  %i.ic = getelementptr inbounds nuw i8, ptr %132, i64 224
  %i.id = getelementptr inbounds nuw i8, ptr %132, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %134, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %134, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %137, i64 432
  %i.ik = getelementptr inbounds nuw i8, ptr %137, i64 224
  %i.il = getelementptr inbounds nuw i8, ptr %137, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %140, i64 432
  %i.in = getelementptr inbounds nuw i8, ptr %140, i64 224
  %i.io = getelementptr inbounds nuw i8, ptr %140, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %138, i64 432
  %i.iq = getelementptr inbounds nuw i8, ptr %138, i64 224
  %i.ir = getelementptr inbounds nuw i8, ptr %138, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.it = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %143, i64 432
  %i.iv = getelementptr inbounds nuw i8, ptr %143, i64 224
  %i.iw = getelementptr inbounds nuw i8, ptr %143, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %146, i64 432
  %i.iy = getelementptr inbounds nuw i8, ptr %146, i64 224
  %i.iz = getelementptr inbounds nuw i8, ptr %146, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %144, i64 432
  %i.jb = getelementptr inbounds nuw i8, ptr %144, i64 224
  %i.jc = getelementptr inbounds nuw i8, ptr %144, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %149, i64 432
  %i.jg = getelementptr inbounds nuw i8, ptr %149, i64 224
  %i.jh = getelementptr inbounds nuw i8, ptr %149, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %152, i64 432
  %i.jj = getelementptr inbounds nuw i8, ptr %152, i64 224
  %i.jk = getelementptr inbounds nuw i8, ptr %152, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %150, i64 432
  %i.jm = getelementptr inbounds nuw i8, ptr %150, i64 224
  %i.jn = getelementptr inbounds nuw i8, ptr %150, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.jp = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %155, i64 432
  %i.jr = getelementptr inbounds nuw i8, ptr %155, i64 224
  %i.js = getelementptr inbounds nuw i8, ptr %155, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %158, i64 432
  %i.ju = getelementptr inbounds nuw i8, ptr %158, i64 224
  %i.jv = getelementptr inbounds nuw i8, ptr %158, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %156, i64 432
  %i.jx = getelementptr inbounds nuw i8, ptr %156, i64 224
  %i.jy = getelementptr inbounds nuw i8, ptr %156, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %162, i64 4
  %i.ka = getelementptr inbounds nuw i8, ptr %162, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %162, i64 12
  %i.kc = getelementptr inbounds nuw i8, ptr %160, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %160, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %165, i64 4
  %i.kf = getelementptr inbounds nuw i8, ptr %165, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %165, i64 12
  %i.kh = getelementptr inbounds nuw i8, ptr %163, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %163, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %168, i64 4
  %i.kk = getelementptr inbounds nuw i8, ptr %168, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %168, i64 12
  %i.km = getelementptr inbounds nuw i8, ptr %166, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %166, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %171, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %171, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %171, i64 12
  %i.kr = getelementptr inbounds nuw i8, ptr %169, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %169, i64 16
  %i.kt = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ku = getelementptr inbounds nuw i8, ptr %175, i64 4
  %i.kv = getelementptr inbounds nuw i8, ptr %175, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %175, i64 12
  %i.kx = getelementptr inbounds nuw i8, ptr %173, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %173, i64 16
  br label %bb.bf

._crit_edge:                                      ; preds = %bb.dx, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #22
  %i.kz = sext i32 %i.ba to i64                   ; 2 uses
  %i.la = icmp slt i32 %i.ba, 0
  br i1 %i.la, label %bb.ap, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ap:                                            ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #23
          to label %.noexc425 unwind label %bb.jj

.noexc425:                                        ; preds = %bb.ap
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %176, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.lb = shl nuw nsw i64 %i.kz, 2                ; 3 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #25
          to label %.noexc426 unwind label %bb.jj ; 6 uses

.noexc426:                                        ; preds = %bb.aq
  store ptr %i.lc, ptr %176, align 8, !tbaa !527
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %176, i64 16
  store ptr %i.ld, ptr %i.le, align 8, !tbaa !530
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lb ; 3 uses
  %i.lg = add nsw i64 %i.lb, -4                   ; 2 uses
  %i.lh = lshr exact i64 %i.lg, 2
  %i.li = add nuw nsw i64 %i.lh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lg, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc426
  %n.vec = and i64 %i.li, 9223372036854775800     ; 3 uses
  %i.lj = shl i64 %n.vec, 2
  %i.lk = getelementptr i8, ptr %i.lc, i64 %i.lj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ll = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.lc, i64 %i.ll ; 2 uses
  %i.lm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !tbaa !292
  store <4 x i32> splat (i32 1), ptr %i.lm, align 4, !tbaa !292
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ln = icmp eq i64 %index.next, %n.vec
  br i1 %i.ln, label %middle.block, label %vector.body, !llvm.loop !612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.li, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc426, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.lc, %.noexc426 ], [ %i.lk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !292
  %i.lo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lo, %i.lf
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !613

bb.ar:                                            ; preds = %bb.ac
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %bb.km

bb.as:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.at
end_hunk_0
begin_hunk_1_@_ZN2cv7omnidir8internal21computeJacobianStereoERKNS_11_InputArrayES4_S4_S4_RNS_3MatES6_id:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #22
  %i.mj = load i32, ptr %i.fj, align 8, !tbaa !231
  %i.mk = load i32, ptr %i.fk, align 4, !tbaa !232
  %i.ml = mul nsw i32 %i.mk, %i.mj
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %79, ptr noundef nonnull align 8 dereferenceable(208) %68, i32 noundef 2, i32 noundef %i.ml)
          to label %bb.bq unwind label %bb.en

bb.bq:                                            ; preds = %bb.bp
  %i.mm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %68, ptr noundef nonnull align 8 dereferenceable(208) %79)
          to label %bb.br unwind label %bb.eo     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %79) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #22
  %i.mn = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc436 unwind label %bb.eq

.noexc436:                                        ; preds = %bb.br
  %i.mo = icmp eq i32 %i.mn, 65536
  br i1 %i.mo, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.noexc436
  %i.mp = load ptr, ptr %i.fl, align 8, !tbaa !12, !noalias !614
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %82, ptr noundef nonnull align 8 dereferenceable(208) %i.mp)
          to label %_ZNK2cv11_InputArray6getMatEi.exit439 unwind label %bb.eq

bb.bt:                                            ; preds = %.noexc436
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %82, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit439 unwind label %bb.eq

_ZNK2cv11_InputArray6getMatEi.exit439:            ; preds = %bb.bs, %bb.bt
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %81, ptr noundef nonnull align 8 dereferenceable(208) %82, i32 noundef 1, i32 noundef 1)
          to label %bb.bu unwind label %bb.er

bb.bu:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit439
  %i.mq = add nuw nsw i32 %.0528, 1               ; 3 uses
  %i.mr = mul nuw nsw i32 %i.mq, 6                ; 3 uses
  %i.ms = add nuw nsw i32 %i.mr, 3                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22, !noalias !617
  store i64 9223372034707292160, ptr %36, align 8, !noalias !617
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22, !noalias !617
  store i32 %i.mr, ptr %37, align 4, !tbaa !201, !noalias !617
  store i32 %i.ms, ptr %i.fm, align 4, !tbaa !203, !noalias !617
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %80, ptr noundef nonnull align 8 dereferenceable(208) %81, ptr noundef nonnull align 4 dereferenceable(8) %36, ptr noundef nonnull align 4 dereferenceable(8) %37)
          to label %bb.bv unwind label %bb.es

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22, !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22, !noalias !617
  %i.mt = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %69, ptr noundef nonnull align 8 dereferenceable(208) %80)
          to label %bb.bw unwind label %bb.et     ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %80) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %81) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %82) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #22
  %i.mu = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc442 unwind label %bb.ex

.noexc442:                                        ; preds = %bb.bw
  %i.mv = icmp eq i32 %i.mu, 65536
  br i1 %i.mv, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.noexc442
  %i.mw = load ptr, ptr %i.fl, align 8, !tbaa !12, !noalias !620
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %85, ptr noundef nonnull align 8 dereferenceable(208) %i.mw)
          to label %_ZNK2cv11_InputArray6getMatEi.exit445 unwind label %bb.ex

bb.by:                                            ; preds = %.noexc442
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %85, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit445 unwind label %bb.ex

_ZNK2cv11_InputArray6getMatEi.exit445:            ; preds = %bb.bx, %bb.by
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %84, ptr noundef nonnull align 8 dereferenceable(208) %85, i32 noundef 1, i32 noundef 1)
          to label %bb.bz unwind label %bb.ey

bb.bz:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit445
  %i.mx = add nuw nsw i32 %i.mr, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22, !noalias !623
  store i64 9223372034707292160, ptr %34, align 8, !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22, !noalias !623
  store i32 %i.ms, ptr %35, align 4, !tbaa !201, !noalias !623
  store i32 %i.mx, ptr %i.fn, align 4, !tbaa !203, !noalias !623
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %83, ptr noundef nonnull align 8 dereferenceable(208) %84, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %35)
          to label %bb.ca unwind label %bb.ez

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22, !noalias !623
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22, !noalias !623
  %i.my = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %70, ptr noundef nonnull align 8 dereferenceable(208) %83)
          to label %bb.cb unwind label %bb.fa     ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %83) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %85) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %86) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %87) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %88) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %89) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #22
  store i32 0, ptr %i.fo, align 8, !tbaa !218
  store i32 0, ptr %i.fp, align 4, !tbaa !211
  store i32 16842752, ptr %90, align 8, !tbaa !8
  store ptr %66, ptr %i.fq, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #22
  store i64 0, ptr %i.fs, align 8
  store i32 33619968, ptr %91, align 8, !tbaa !8
  store ptr %86, ptr %i.fr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #22
  store i32 0, ptr %i.ft, align 8, !tbaa !218
  store i32 0, ptr %i.fu, align 4, !tbaa !211
  store i32 16842752, ptr %92, align 8, !tbaa !8
  store ptr %69, ptr %i.fv, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #22
  store i32 0, ptr %i.fw, align 8, !tbaa !218
  store i32 0, ptr %i.fx, align 4, !tbaa !211
  store i32 16842752, ptr %93, align 8, !tbaa !8
  store ptr %70, ptr %i.fy, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #22
  store i32 -1056833530, ptr %94, align 8, !tbaa !8
  store ptr %56, ptr %i.ga, align 8, !tbaa !12
  store i64 12884901891, ptr %i.fz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #22
  store i32 -1056833530, ptr %95, align 8, !tbaa !8
  store ptr %57, ptr %i.gc, align 8, !tbaa !12
  store i64 4294967300, ptr %i.gb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #22
  store i64 0, ptr %i.ge, align 8
  store i32 33619968, ptr %96, align 8, !tbaa !8
  store ptr %88, ptr %i.gd, align 8, !tbaa !12
  invoke void @_ZN2cv7omnidir13projectPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_S3_dS3_S6_(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull align 8 dereferenceable(24) %91, ptr noundef nonnull align 8 dereferenceable(24) %92, ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef nonnull align 8 dereferenceable(24) %94, double noundef %i.df, ptr noundef nonnull align 8 dereferenceable(24) %95, ptr noundef nonnull align 8 dereferenceable(24) %96)
          to label %bb.cc unwind label %bb.fe

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #22
  invoke void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %98, ptr noundef nonnull align 8 dereferenceable(208) %67, ptr noundef nonnull align 8 dereferenceable(208) %86)
          to label %bb.cd unwind label %bb.ff

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %97) #22
  %i.mz = load ptr, ptr %98, align 8, !tbaa !236, !noalias !626 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !245
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8
  invoke void %i.nc(ptr noundef nonnull align 8 dereferenceable(8) %i.mz, ptr noundef nonnull align 8 dereferenceable(688) %98, ptr noundef nonnull align 8 dereferenceable(208) %97, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit450 unwind label %.body448

.body448:                                         ; preds = %bb.cd
  %i.nd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %97) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %98) #22
  br label %bb.fg

_ZNK2cv7MatExprcvNS_3MatEEv.exit450:              ; preds = %bb.cd
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gf) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gg) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22, !noalias !629
  store i64 9223372034707292160, ptr %32, align 8, !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22, !noalias !629
  store i32 6, ptr %33, align 4, !tbaa !201, !noalias !629
  store i32 16, ptr %i.gi, align 4, !tbaa !203, !noalias !629
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %99, ptr noundef nonnull align 8 dereferenceable(208) %88, ptr noundef nonnull align 4 dereferenceable(8) %32, ptr noundef nonnull align 4 dereferenceable(8) %33)
          to label %bb.ce unwind label %bb.fh

bb.ce:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit450
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22, !noalias !629
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22, !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #22
  %i.ne = mul i32 %187, %.0528                    ; 2 uses
  store i32 %i.az, ptr %102, align 4, !tbaa !556
  store i32 %i.ne, ptr %i.gk, align 4, !tbaa !558
  store i32 10, ptr %i.gl, align 4, !tbaa !559
  store i32 %i.gj, ptr %i.gm, align 4, !tbaa !560
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %101, ptr noundef nonnull align 8 dereferenceable(208) %51, ptr noundef nonnull align 4 dereferenceable(16) %102)
          to label %bb.cf unwind label %bb.fi

bb.cf:                                            ; preds = %bb.ce
  store i64 0, ptr %i.go, align 8
  store i32 -1040121856, ptr %100, align 8, !tbaa !8
  store ptr %101, ptr %i.gn, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %99, ptr noundef nonnull align 8 dereferenceable(24) %100)
          to label %bb.cg unwind label %bb.fj

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %101) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %99) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22, !noalias !632
  store i64 9223372034707292160, ptr %30, align 8, !noalias !632
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22, !noalias !632
  store i32 0, ptr %31, align 4, !tbaa !201, !noalias !632
  store i32 6, ptr %i.gp, align 4, !tbaa !203, !noalias !632
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %103, ptr noundef nonnull align 8 dereferenceable(208) %88, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %31)
          to label %bb.ch unwind label %bb.fm

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22, !noalias !632
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22, !noalias !632
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #22
  %i.nf = mul nuw nsw i32 %.0528, 6               ; 2 uses
  %i.ng = add nuw nsw i32 %i.nf, 6                ; 2 uses
  store i32 %i.ng, ptr %106, align 4, !tbaa !556
  store i32 %i.ne, ptr %i.gq, align 4, !tbaa !558
  store i32 6, ptr %i.gr, align 4, !tbaa !559
  store i32 %i.gj, ptr %i.gs, align 4, !tbaa !560
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %105, ptr noundef nonnull align 8 dereferenceable(208) %51, ptr noundef nonnull align 4 dereferenceable(16) %106)
          to label %bb.ci unwind label %bb.fn

bb.ci:                                            ; preds = %bb.ch
  store i64 0, ptr %i.gu, align 8
  store i32 -1040121856, ptr %104, align 8, !tbaa !8
  store ptr %105, ptr %i.gt, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %103, ptr noundef nonnull align 8 dereferenceable(24) %104)
          to label %bb.cj unwind label %bb.fo

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %105) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %103) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #22
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %107, ptr noundef nonnull align 8 dereferenceable(208) %97, i32 noundef 1, i32 noundef %i.gj)
          to label %bb.ck unwind label %bb.fr

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #22
  %i.nh = shl nuw nsw i32 %.0528, 2               ; 3 uses
  %i.ni = mul nsw i32 %i.nh, %i.av
  %i.nj = or disjoint i32 %i.nh, 2
  %i.nk = mul nsw i32 %i.nj, %i.av                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22, !noalias !635
  store i32 %i.ni, ptr %28, align 4, !tbaa !201, !noalias !635
  store i32 %i.nk, ptr %i.gv, align 4, !tbaa !203, !noalias !635
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22, !noalias !635
  store i64 9223372034707292160, ptr %29, align 8, !noalias !635
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %109, ptr noundef nonnull align 8 dereferenceable(208) %53, ptr noundef nonnull align 4 dereferenceable(8) %28, ptr noundef nonnull align 4 dereferenceable(8) %29)
          to label %bb.cl unwind label %bb.fs

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22, !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22, !noalias !635
  store i64 0, ptr %i.gx, align 8
  store i32 -1040121856, ptr %108, align 8, !tbaa !8
  store ptr %109, ptr %i.gw, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %107, ptr noundef nonnull align 8 dereferenceable(24) %108)
          to label %bb.cm unwind label %bb.ft

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %109) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %107) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %110) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %111) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %112) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %113) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %114) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %115) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %116) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %117) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %118) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %119) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #22
  store i32 0, ptr %i.gy, align 8, !tbaa !218
  store i32 0, ptr %i.gz, align 4, !tbaa !211
  store i32 16842752, ptr %120, align 8, !tbaa !8
  store ptr %69, ptr %i.ha, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #22
  store i32 0, ptr %i.hb, align 8, !tbaa !218
  store i32 0, ptr %i.hc, align 4, !tbaa !211
  store i32 16842752, ptr %121, align 8, !tbaa !8
  store ptr %70, ptr %i.hd, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #22
  store i32 0, ptr %i.he, align 8, !tbaa !218
  store i32 0, ptr %i.hf, align 4, !tbaa !211
  store i32 16842752, ptr %122, align 8, !tbaa !8
  store ptr %60, ptr %i.hg, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #22
  store i32 0, ptr %i.hh, align 8, !tbaa !218
  store i32 0, ptr %i.hi, align 4, !tbaa !211
  store i32 16842752, ptr %123, align 8, !tbaa !8
  store ptr %63, ptr %i.hj, align 8, !tbaa !12
  invoke void @_ZN2cv7omnidir8internal14compose_motionERKNS_11_InputArrayES4_S4_S4_RNS_3MatES6_S6_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %120, ptr noundef nonnull align 8 dereferenceable(24) %121, ptr noundef nonnull align 8 dereferenceable(24) %122, ptr noundef nonnull align 8 dereferenceable(24) %123, ptr noundef nonnull align 8 dereferenceable(208) %110, ptr noundef nonnull align 8 dereferenceable(208) %111, ptr noundef nonnull align 8 dereferenceable(208) %112, ptr noundef nonnull align 8 dereferenceable(208) %113, ptr noundef nonnull align 8 dereferenceable(208) %114, ptr noundef nonnull align 8 dereferenceable(208) %115, ptr noundef nonnull align 8 dereferenceable(208) %116, ptr noundef nonnull align 8 dereferenceable(208) %117, ptr noundef nonnull align 8 dereferenceable(208) %118, ptr noundef nonnull align 8 dereferenceable(208) %119)
          to label %bb.cn unwind label %bb.fw

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #22
  store i32 0, ptr %i.hk, align 8, !tbaa !218
  store i32 0, ptr %i.hl, align 4, !tbaa !211
  store i32 16842752, ptr %124, align 8, !tbaa !8
  store ptr %66, ptr %i.hm, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #22
  store i64 0, ptr %i.ho, align 8
  store i32 33619968, ptr %125, align 8, !tbaa !8
  store ptr %87, ptr %i.hn, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #22
  store i32 0, ptr %i.hp, align 8, !tbaa !218
  store i32 0, ptr %i.hq, align 4, !tbaa !211
  store i32 16842752, ptr %126, align 8, !tbaa !8
  store ptr %110, ptr %i.hr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #22
  store i32 0, ptr %i.hs, align 8, !tbaa !218
  store i32 0, ptr %i.ht, align 4, !tbaa !211
  store i32 16842752, ptr %127, align 8, !tbaa !8
  store ptr %111, ptr %i.hu, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #22
  store i32 -1056833530, ptr %128, align 8, !tbaa !8
  store ptr %58, ptr %i.hw, align 8, !tbaa !12
  store i64 12884901891, ptr %i.hv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #22
  store i32 -1056833530, ptr %129, align 8, !tbaa !8
  store ptr %59, ptr %i.hy, align 8, !tbaa !12
  store i64 4294967300, ptr %i.hx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #22
  store i64 0, ptr %i.ia, align 8
  store i32 33619968, ptr %130, align 8, !tbaa !8
  store ptr %89, ptr %i.hz, align 8, !tbaa !12
  invoke void @_ZN2cv7omnidir13projectPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_S3_dS3_S6_(ptr noundef nonnull align 8 dereferenceable(24) %124, ptr noundef nonnull align 8 dereferenceable(24) %125, ptr noundef nonnull align 8 dereferenceable(24) %126, ptr noundef nonnull align 8 dereferenceable(24) %127, ptr noundef nonnull align 8 dereferenceable(24) %128, double noundef %i.en, ptr noundef nonnull align 8 dereferenceable(24) %129, ptr noundef nonnull align 8 dereferenceable(24) %130)
          to label %bb.co unwind label %bb.fx

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #22
  invoke void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %132, ptr noundef nonnull align 8 dereferenceable(208) %68, ptr noundef nonnull align 8 dereferenceable(208) %87)
          to label %bb.cp unwind label %bb.fy

bb.cp:                                            ; preds = %bb.co
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %131) #22
  %i.nl = load ptr, ptr %132, align 8, !tbaa !236, !noalias !638 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !245
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8
  invoke void %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.nl, ptr noundef nonnull align 8 dereferenceable(688) %132, ptr noundef nonnull align 8 dereferenceable(208) %131, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit461 unwind label %.body459

.body459:                                         ; preds = %bb.cp
  %i.np = landingpad { ptr, i32 }
          cleanup
end_hunk_1
