Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/OnDiskInvertedLists?download=true
inline.NumInlined: 1362
inline.NumDeleted: 547
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5faiss19OnDiskInvertedLists13allocate_slotEm:bb.a
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !48  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 244
  store i8 0, ptr %i.ad, align 4, !tbaa !61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.af = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.ae) #19 ; 0 uses
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(246) %i.ac) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN5faiss10LockLevels6lock_3Ev.exit
  %.sroa.021.1.in = phi ptr [ %i.a, %_ZN5faiss10LockLevels6lock_3Ev.exit ], [ %.sroa.021.1, %bb.h ]
  %.sroa.021.1 = load ptr, ptr %.sroa.021.1.in, align 8, !tbaa !64 ; 4 uses
  %i.ah = icmp ne ptr %.sroa.021.1, %i.a
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.021.1, i64 24
  %.pre.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !116 ; 2 uses
  %i.ai = icmp ult i64 %.pre.pre, %1
  %or.cond = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.h, label %.critedge, !llvm.loop !188

.critedge:                                        ; preds = %bb.c, %bb.h
  %i.aj = phi i64 [ %.pre.pre, %bb.h ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.021.2 = phi ptr [ %.sroa.021.1, %bb.h ], [ %.sroa.021.0, %bb.c ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.021.2, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !115 ; 2 uses
  %i.am = icmp eq i64 %i.aj, %1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !72
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !72
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.021.2) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.021.2, i64 noundef 32) #28
  br label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.021.2, i64 24
  %i.ar = sub i64 %i.aj, %1
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !116
  %i.as = add i64 %i.al, %1
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !115
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret i64 %i.al
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5faiss19OnDiskInvertedLists19merge_from_multipleEPPKNS_13InvertedListsEibb(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.28", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !123
  store i32 %2, ptr %i.b, align 4, !tbaa !51
  %i.h = zext i1 %3 to i8
  store i8 %i.h, ptr %i.c, align 1, !tbaa !124
  %i.i = zext i1 %4 to i8
  store i8 %i.i, ptr %i.d, align 1, !tbaa !124
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i64, ptr %i.j, align 8, !tbaa !77
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !45
  store i8 0, ptr %i.m, align 8, !tbaa !46
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #19 ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.r)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %5, align 8, !tbaa !47
  %i.t = load i64, ptr %i.n, align 8, !tbaa !45
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #19 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.w = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss19OnDiskInvertedLists19merge_from_multipleEPPKNS_13InvertedListsEibb, ptr noundef nonnull @.str.6, i32 noundef 580)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.ap unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.w) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.x, %bb.h ]
  %i.y = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !46
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit81

bb.j:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !75 ; 5 uses
  %i.ae = icmp ugt i64 %i.ad, 1152921504606846975
  br i1 %i.ae, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %.noexc63

.noexc63:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.af = shl nuw nsw i64 %i.ad, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #31 ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ad ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !63
  %i.ai = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc63
  %i.ak = getelementptr i8, ptr %i.ag, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ai, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !63
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc63, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ah, %.noexc63 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.083.0 = phi ptr [ %i.ag, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ag, %.noexc63 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.al = sext i32 %2 to i64                      ; 4 uses
  %i.am = icmp slt i32 %2, 0
  br i1 %i.am, label %bb.k, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i64

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc70 unwind label %bb.n

.noexc70:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i64: ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %.not.i.i.i.i65 = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i65, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i64
  %i.an = shl nuw nsw i64 %i.al, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #31
          to label %.noexc71 unwind label %bb.n   ; 10 uses

.noexc71:                                         ; preds = %bb.l
  store ptr %i.ao, ptr %6, align 8, !tbaa !80
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.al ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !192
  store i64 0, ptr %i.ao, align 8, !tbaa !63
  %i.ar = getelementptr i8, ptr %i.ao, i64 8      ; 3 uses
  %i.as = add nsw i64 %i.al, -1                   ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph93, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66: ; preds = %.noexc71
  %.idx.i.i.i.i.i.i.i67 = shl nuw nsw i64 %i.as, 3 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i.i.i.i.i.i.i67
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i67, i1 false), !tbaa !63
  br label %.lr.ph93

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %.preheader

.lr.ph93:                                         ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66, %.noexc71
  %.0.i.i.i.i.i68.ph = phi ptr [ %8, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66 ], [ %i.ar, %.noexc71 ]
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i68.ph, ptr %i.au, align 8, !tbaa !193
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.o

.preheader:                                       ; preds = %bb.ac, %bb.m
  %i.aw = phi ptr [ null, %bb.m ], [ %i.ao, %bb.ac ] ; 2 uses
  %i.ax = phi ptr [ null, %bb.m ], [ %i.ap, %bb.ac ]
  %i.ay = load i64, ptr %i.ac, align 8, !tbaa !75 ; 5 uses
  %.not100 = icmp eq i64 %i.ay, 0
  br i1 %.not100, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !38
  %i.bd = add i64 %i.bc, 8                        ; 3 uses
  %xtraiter = and i64 %i.ay, 1
  %i.be = icmp eq i64 %i.ay, 1
  br i1 %i.be, label %.epil.preheader, label %.lr.ph97.new

.lr.ph97.new:                                     ; preds = %.lr.ph97
  %unroll_iter = and i64 %i.ay, -2
  br label %bb.ae

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit79

bb.o:                                             ; preds = %.lr.ph93, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next, %bb.ac ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !126 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !75 ; 2 uses
  %i.bk = load i64, ptr %i.ac, align 8, !tbaa !75
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !38
  %i.bo = load i64, ptr %i.av, align 8, !tbaa !38
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %.preheader89, label %bb.q

.preheader89:                                     ; preds = %bb.p
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bq, ptr %7, align 8, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.br, align 8, !tbaa !45
  store i8 0, ptr %i.bq, align 8, !tbaa !46
  %i.bs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #19 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bu = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bv)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = load ptr, ptr %7, align 8, !tbaa !47
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !45
  %i.by = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bw, i64 noundef %i.bx, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #19 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bu)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s, %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.s, %bb.q
  %i.ca = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss19OnDiskInvertedLists19merge_from_multipleEPPKNS_13InvertedListsEibb, ptr noundef nonnull @.str.6, i32 noundef 586)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.ap unwind label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ca) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn55 = phi { ptr, i32 } [ %i.bz, %bb.t ], [ %i.cb, %bb.w ]
  %i.cc = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bq
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.x
  %i.ce = load i64, ptr %i.bq, align 8, !tbaa !46
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.thread121

._crit_edge:                                      ; preds = %bb.y, %.preheader89
  %i.cg = invoke noundef i64 @_ZNK5faiss13InvertedLists14compute_ntotalEv(ptr noundef nonnull align 8 dereferenceable(25) %i.bh)
          to label %bb.aa unwind label %bb.ad

.lr.ph:                                           ; preds = %.preheader89, %bb.y
  %.03990 = phi i64 [ %i.co, %bb.y ], [ 0, %.preheader89 ] ; 3 uses
  %i.ch = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef i64 %i.cj(ptr noundef nonnull align 8 dereferenceable(25) %i.bh, i64 noundef %.03990)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %.03990 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !63
  %i.cn = add i64 %i.cm, %i.ck
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !63
  %i.co = add nuw i64 %.03990, 1                  ; 2 uses
  %i.cp = load i64, ptr %i.ac, align 8, !tbaa !75
  %i.cq = icmp ult i64 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !189

bb.z:                                             ; preds = %.lr.ph
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

bb.aa:                                            ; preds = %._crit_edge
  %i.cs = icmp ne i64 %indvars.iv, 0
  %or.cond = and i1 %i.cs, %3
  br i1 %or.cond, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !63
  %i.cw = add i64 %i.cv, %i.cg
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.cx = phi i64 [ %i.cw, %bb.ab ], [ 0, %bb.aa ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.cz, label %bb.o, label %.preheader, !llvm.loop !190

bb.ad:                                            ; preds = %._crit_edge
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

._crit_edge98.loopexit.unr-lcssa:                 ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge98, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge98.loopexit.unr-lcssa, %.lr.ph97
  %.096.epil.init = phi i64 [ 0, %.lr.ph97 ], [ %i.ed, %._crit_edge98.loopexit.unr-lcssa ] ; 2 uses
  %.03795.epil.init = phi i64 [ 0, %.lr.ph97 ], [ %i.dw, %._crit_edge98.loopexit.unr-lcssa ]
  %.03894.epil.init = phi i64 [ 0, %.lr.ph97 ], [ %i.ec, %._crit_edge98.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod130 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %.096.epil.init ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !63
  %i.dd = add i64 %i.dc, %.03795.epil.init
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.096.epil.init ; 3 uses
  store i64 0, ptr %i.de, align 8, !tbaa !18
  %i.df = load i64, ptr %i.db, align 8, !tbaa !63 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !39
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %.03894.epil.init, ptr %i.dh, align 8, !tbaa !19
  %i.di = mul i64 %i.bd, %i.df
  %i.dj = add i64 %i.di, %.03894.epil.init
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %.epil.preheader, %._crit_edge98.loopexit.unr-lcssa, %.preheader
  %.038.lcssa = phi i64 [ 0, %.preheader ], [ %i.ec, %._crit_edge98.loopexit.unr-lcssa ], [ %i.dj, %.epil.preheader ]
  %.037.lcssa = phi i64 [ 0, %.preheader ], [ %i.dw, %._crit_edge98.loopexit.unr-lcssa ], [ %i.dd, %.epil.preheader ]
  invoke void @_ZN5faiss19OnDiskInvertedLists14update_totsizeEm(ptr noundef nonnull align 8 dereferenceable(156) %0, i64 noundef %.038.lcssa)
end_hunk_0
begin_hunk_1_@_ZN5faiss19OnDiskInvertedLists19merge_from_multipleEPPKNS_13InvertedListsEibb:bb.a
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge98.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !191

bb.af:                                            ; preds = %._crit_edge98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i64 0, ptr %i.e, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ee = invoke noundef double @_ZN5faiss12getmillisecsEv()
          to label %bb.ag unwind label %bb.aj     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  store double %i.ee, ptr %i.f, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store double %i.ee, ptr %i.g, align 8, !tbaa !128
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN5faiss19OnDiskInvertedLists19merge_from_multipleEPPKNS_13InvertedListsEibb.omp_outlined, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %6, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.f)
  %i.ef = load i8, ptr %i.d, align 1, !tbaa !124, !range !42, !noundef !43
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.ak

bb.ai:                                            ; preds = %._crit_edge98
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %bb.af
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.an

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.ej = load ptr, ptr %6, align 8, !tbaa !80    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !192
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not.i.i.i76 = icmp eq ptr %.sroa.083.0, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorImSaImEED2Ev.exit77, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ep = ptrtoint ptr %.sroa.12.0 to i64
  %i.eq = ptrtoint ptr %.sroa.083.0 to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0, i64 noundef %i.er) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit77

_ZNSt6vectorImSaImEED2Ev.exit77:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.am
  ret i64 %.037.lcssa

bb.an:                                            ; preds = %bb.ai, %bb.aj
  %.pn57.pn = phi { ptr, i32 } [ %i.eh, %bb.ai ], [ %i.ei, %bb.aj ] ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorImSaImEED2Ev.exit79, label %.thread121

.thread121:                                       ; preds = %bb.ad, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.an
  %.pn57.pn124 = phi { ptr, i32 } [ %.pn57.pn, %bb.an ], [ %i.da, %bb.ad ], [ %i.cr, %bb.z ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ]
  %i.es = phi ptr [ %i.ax, %bb.an ], [ %i.ap, %bb.ad ], [ %i.ap, %bb.z ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ]
  %i.et = phi ptr [ %i.aw, %bb.an ], [ %i.ao, %bb.ad ], [ %i.ao, %bb.z ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ew) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit79

_ZNSt6vectorImSaImEED2Ev.exit79:                  ; preds = %.thread121, %bb.an, %bb.n
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %.pn57.pn, %bb.an ], [ %.pn57.pn124, %.thread121 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not.i.i.i80 = icmp eq ptr %.sroa.083.0, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorImSaImEED2Ev.exit81, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit79
  %i.ex = ptrtoint ptr %.sroa.12.0 to i64
  %i.ey = ptrtoint ptr %.sroa.083.0 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0, i64 noundef %i.ez) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit81

_ZNSt6vectorImSaImEED2Ev.exit81:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit79, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57.pn.pn, %bb.ao ], [ %.pn57.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit79 ]
  resume { ptr, i32 } %.pn57.pn.pn.pn.pn

bb.ap:                                            ; preds = %bb.v, %bb.g
  unreachable
}

declare noundef i64 @_ZNK5faiss13InvertedLists14compute_ntotalEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare noundef double @_ZN5faiss12getmillisecsEv() local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss19OnDiskInvertedLists19merge_from_multipleEPPKNS_13InvertedListsEibb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.h, ptr %i.b, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 1, ptr %i.c, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.i = load i32, ptr %0, align 4, !tbaa !51     ; 4 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !63
  %i.k = call i64 @llvm.smin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !63
  %i.l = load i64, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not73 = icmp sgt i64 %i.l, %i.k
  br i1 %.not73, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph76, %bb.p
  %.04874 = phi i64 [ %i.l, %.lr.ph76 ], [ %i.dt, %bb.p ] ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.04874 ; 3 uses
  %i.p = load i32, ptr %3, align 4, !tbaa !51
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph72, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit, %bb.c
  %i.r = load i8, ptr %7, align 1, !tbaa !124, !range !42, !noundef !43
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.l, label %bb.p

.lr.ph72:                                         ; preds = %bb.c, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit ], [ 0, %bb.c ] ; 4 uses
  %i.t = shl nuw nsw i64 %indvars.iv, 3
  %i.u = load ptr, ptr %4, align 8, !tbaa !123
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126  ; 10 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(25) %i.w, i64 noundef %.04874)
          to label %bb.d unwind label %.loopexit66 ; 15 uses

bb.d:                                             ; preds = %.lr.ph72
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !18
  %i.ac = add i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !18
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(25) %i.w, i64 noundef %.04874)
          to label %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit unwind label %.loopexit66, !inline_history !194 ; 10 uses

_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit: ; preds = %bb.d
  %i.ah = load i8, ptr %5, align 1, !tbaa !124, !range !42, !noundef !43
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit
  %.not65 = icmp eq i64 %i.aa, 0
  br i1 %.not65, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp ugt i64 %i.aa, 1152921504606846975
  br i1 %i.aj, label %bb.g, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.f
  %i.ak = shl nuw nsw i64 %i.aa, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #31
          to label %.noexc51 unwind label %.loopexit66 ; 14 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.al, align 8, !tbaa !63
  %i.am = add nsw i64 %i.aa, -1                   ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc51
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.am, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !63
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc51
  %i.ap = load ptr, ptr %6, align 8, !tbaa !80    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv ; 7 uses
  %min.iters.check = icmp ult i64 %i.aa, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ar = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.ar ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.t
  %scevgep85 = getelementptr i8, ptr %i.as, i64 8
  %bound0 = icmp ult ptr %i.al, %scevgep.a
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound086 = icmp ult ptr %i.al, %scevgep85
  %bound187 = icmp ult ptr %i.aq, %scevgep
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx = or i1 %found.conflict, %found.conflict88
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 1152921504606846972     ; 3 uses
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !63, !alias.scope !204
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !63, !alias.scope !205
  %wide.load89 = load <2 x i64>, ptr %i.av, align 8, !tbaa !63, !alias.scope !205
  %i.aw = add <2 x i64> %broadcast.splat, %wide.load
  %i.ax = add <2 x i64> %broadcast.splat, %wide.load89
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x i64> %i.aw, ptr %i.ay, align 8, !tbaa !63, !alias.scope !206, !noalias !207
  store <2 x i64> %i.ax, ptr %i.az, align 8, !tbaa !63, !alias.scope !206, !noalias !207
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.070.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.070.prol = phi i64 [ %i.bg, %scalar.ph.prol ], [ %.070.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.070.prol
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !63
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !63
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.070.prol
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !63
  %i.bg = add nuw i64 %.070.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !200

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.070.unr = phi i64 [ %.070.ph, %scalar.ph.preheader ], [ %i.bg, %scalar.ph.prol ]
  %i.bh = sub nsw i64 %.070.ph, %i.aa
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %.loopexit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.070 = phi i64 [ %i.cg, %scalar.ph ], [ %.070.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.070
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !63
  %i.bl = load i64, ptr %i.aq, align 8, !tbaa !63
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.070
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !63
  %i.bo = add nuw i64 %.070, 1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !63
  %i.br = load i64, ptr %i.aq, align 8, !tbaa !63
  %i.bs = add i64 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bo
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !63
  %i.bu = add nuw i64 %.070, 2                    ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !63
  %i.bx = load i64, ptr %i.aq, align 8, !tbaa !63
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bu
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !63
  %i.ca = add nuw i64 %.070, 3                    ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !63
  %i.cd = load i64, ptr %i.aq, align 8, !tbaa !63
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ca
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !63
  %i.cg = add nuw i64 %.070, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cg, %i.aa
  br i1 %exitcond.not.3, label %.loopexit.loopexit, label %scalar.ph, !llvm.loop !201

.loopexit.loopexit:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aa
  %i.ch = ptrtoint ptr %11 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e, %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit
  %.sroa.053.0 = phi ptr [ null, %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit ], [ null, %bb.e ], [ %i.al, %.loopexit.loopexit ] ; 3 uses
  %.sroa.14.0 = phi i64 [ 0, %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit ], [ 0, %bb.e ], [ %i.ch, %.loopexit.loopexit ]
  %.046 = phi ptr [ %i.ag, %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit ], [ null, %bb.e ], [ %i.al, %.loopexit.loopexit ]
  %i.ci = load i64, ptr %i.o, align 8, !tbaa !18
  %i.cj = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(25) %i.w, i64 noundef %.04874)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit unwind label %.loopexit66, !inline_history !202 ; 2 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit: ; preds = %.loopexit
  %i.cn = sub i64 %i.ci, %i.aa
  %i.co = load ptr, ptr %2, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(156) %2, i64 noundef %.04874, i64 noundef %i.cn, i64 noundef %i.aa, ptr noundef %.046, ptr noundef %i.cm)
          to label %bb.h unwind label %.loopexit66

bb.h:                                             ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(25) %i.w, i64 noundef %.04874, ptr noundef %i.cm)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #32
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %.sroa.053.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.cw = ptrtoint ptr %.sroa.053.0 to i64
  %i.cx = sub i64 %.sroa.14.0, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0, i64 noundef %i.cx) #28
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, %bb.j
  %i.cy = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(25) %i.w, i64 noundef %.04874, ptr noundef %i.ag)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #32
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit:      ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i32, ptr %3, align 4, !tbaa !51
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %.lr.ph72, label %._crit_edge, !llvm.loop !203

bb.l:                                             ; preds = %._crit_edge
  call void @__kmpc_critical(ptr nonnull @2, i32 %i.i, ptr nonnull @.gomp_critical_user_.var)
  %i.dg = load i64, ptr %8, align 8, !tbaa !63
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %8, align 8, !tbaa !63
  %i.di = invoke noundef double @_ZN5faiss12getmillisecsEv()
          to label %bb.m unwind label %.loopexit.split-lp.loopexit ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.dj = load double, ptr %9, align 8, !tbaa !128
  %i.dk = fsub double %i.di, %i.dj
  %i.dl = fcmp ogt double %i.dk, 5.000000e+02
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dm = load i64, ptr %8, align 8, !tbaa !63
  %i.dn = load double, ptr %10, align 8, !tbaa !128
  %i.do = fsub double %i.di, %i.dn
  %i.dp = fdiv double %i.do, 1.000000e+03
  %i.dq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i64 noundef %i.dm, double noundef %i.dp) ; 0 uses
  %i.dr = load ptr, ptr @stdout, align 8, !tbaa !121
  %i.ds = call i32 @fflush(ptr noundef %i.dr)     ; 0 uses
  store double %i.di, ptr %9, align 8, !tbaa !128
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %i.i, ptr nonnull @.gomp_critical_user_.var)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.dt = add nsw i64 %.04874, 1
  %i.du = load i64, ptr %i.b, align 8, !tbaa !63
  %.not.not = icmp slt i64 %.04874, %i.du
  br i1 %.not.not, label %bb.c, label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.p, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge77, %bb.a
  ret void

.loopexit66:                                      ; preds = %.lr.ph72, %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit, %bb.d, %.loopexit, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l
  %lpad.loopexit67 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.g
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit66
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit66 ], [ %lpad.loopexit67, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp.loopexit.split-lp ]
  %i.dv = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.dv) #32
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #19

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #20

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare !callback !130 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5faiss19OnDiskInvertedLists12merge_from_1EPKNS_13InvertedListsEb(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !126
  %i.b = call noundef i64 @_ZN5faiss19OnDiskInvertedLists19merge_from_multipleEPPKNS_13InvertedListsEibb(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull %i.a, i32 noundef 1, i1 noundef zeroext %2, i1 noundef zeroext false)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss19OnDiskInvertedLists13crop_invlistsEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(156) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::vector", align 16      ; 7 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.not = icmp ugt i64 %1, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %.not20 = icmp ugt i64 %2, %i.b
  br i1 %.not20, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !45
  store i8 0, ptr %i.c, align 8, !tbaa !46
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.29) #19 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %i.e to i64                ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.h)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %3, align 8, !tbaa !47
  %i.j = load i64, ptr %i.d, align 8, !tbaa !45
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.29) #19 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.g)
          to label %bb.g unwind label %bb.f
end_hunk_1
