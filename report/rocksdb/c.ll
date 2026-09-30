Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/c?download=true
inline.NumInlined: 7382
inline.NumDeleted: 2993
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@rocksdb_batched_multi_get_cf_slice:bb.a
  store ptr null, ptr %i.af, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 6, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr null, ptr %i.ah, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 6, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr null, ptr %i.aj, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 6, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store ptr null, ptr %i.al, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 6, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr null, ptr %i.an, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 6, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store ptr null, ptr %i.ap, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 6, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store ptr null, ptr %i.ar, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 6, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store ptr null, ptr %i.at, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 6, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 128 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.x
  br i1 %i.av, label %.lr.ph, label %.new

.lr.ph:                                           ; preds = %.new, %.prol.loopexit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !278
  %i.ax = load ptr, ptr %2, align 8, !tbaa !347
  tail call void @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusEb(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.ax, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %.ptr46.ptr, ptr noundef null, ptr noundef nonnull %.ptr62, i1 noundef zeroext %7)
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %.preheader81
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = icmp eq i64 %.idx, 8
  br i1 %i.ba, label %.loopexit68, label %.preheader67

.preheader67:                                     ; preds = %bb.d, %.preheader67
  %.idx47 = phi i64 [ %.add48, %.preheader67 ], [ %.idx, %bb.d ]
  %.add48 = add nsw i64 %.idx47, -96              ; 3 uses
  %.ptr50 = getelementptr inbounds i8, ptr %i.f, i64 %.add48
  tail call void @_ZN7rocksdb13PinnableSliceD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %.ptr50) #47
  %i.bb = icmp eq i64 %.add48, 8
  br i1 %i.bb, label %.loopexit68, label %.preheader67

.loopexit68:                                      ; preds = %.preheader67, %bb.d
  tail call void @_ZdaPvm(ptr noundef nonnull %i.f, i64 noundef %i.e) #48
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.071 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.l ] ; 8 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.ptr62, i64 %.071 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !116 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bf = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #49 ; 11 uses
  store ptr @.str.1, ptr %i.bf, align 8, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !98
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 64 ; 2 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !100
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store i64 0, ptr %i.bk, align 8, !tbaa !86
  store i8 0, ptr %i.bj, align 8, !tbaa !102
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  store i8 0, ptr %i.bl, align 8, !tbaa !407
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  store ptr %i.bi, ptr %i.bm, align 8, !tbaa !408
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.071
  store ptr %i.bf, ptr %i.bn, align 8, !tbaa !428
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %.ptr46.ptr, i64 %.071
  %i.bp = call noundef nonnull align 8 dereferenceable(89) ptr @_ZN7rocksdb13PinnableSliceaSEOS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.bf, ptr noundef nonnull align 8 dereferenceable(89) %i.bo) ; 0 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.071
  store ptr null, ptr %i.bq, align 8, !tbaa !99
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 96) #48
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.071
  store ptr null, ptr %i.bs, align 8, !tbaa !428
  %i.bt = icmp eq i8 %i.bd, 1
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
  %i.bu = load ptr, ptr %8, align 8, !tbaa !88    ; 3 uses
  %i.bv = call noalias ptr @strdup(ptr noundef %i.bu) #47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.071
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !99
  %i.bx = icmp eq ptr %i.bu, %i.ay
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.by = load i64, ptr %i.ay, align 8, !tbaa !102
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bz) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.071
  store ptr null, ptr %i.ca, align 8, !tbaa !99
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = add nuw i64 %.071, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !1526

._crit_edge:                                      ; preds = %bb.l, %.thread
  %i.cc = load i64, ptr %i.f, align 16            ; 2 uses
  %.idx52 = mul i64 %i.cc, 96
  %.ptr46.add = or disjoint i64 %.idx52, 8        ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.loopexit66, label %.preheader65

.preheader65:                                     ; preds = %._crit_edge, %_ZN7rocksdb13PinnableSliceD2Ev.exit
  %.idx53 = phi i64 [ %.add54, %_ZN7rocksdb13PinnableSliceD2Ev.exit ], [ %.ptr46.add, %._crit_edge ]
  %.add54 = add nsw i64 %.idx53, -96              ; 3 uses
  %.ptr55 = getelementptr inbounds i8, ptr %i.f, i64 %.add54 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.ptr55, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.ptr55, i64 64 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN7rocksdb13PinnableSliceD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.preheader65
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !102
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #48
  br label %_ZN7rocksdb13PinnableSliceD2Ev.exit

_ZN7rocksdb13PinnableSliceD2Ev.exit:              ; preds = %.preheader65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.ptr55, i64 16
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ck) #47
  %i.cl = icmp eq i64 %.add54, 8
  br i1 %i.cl, label %.loopexit66, label %.preheader65

.loopexit66:                                      ; preds = %_ZN7rocksdb13PinnableSliceD2Ev.exit, %._crit_edge
  call void @_ZdaPvm(ptr noundef nonnull %i.f, i64 noundef %.ptr46.add) #48
  %i.cm = load i64, ptr %i.u, align 16            ; 2 uses
  %.idx57 = shl i64 %i.cm, 4
  %.add60 = or disjoint i64 %.idx57, 8            ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit66, %_ZN7rocksdb6StatusD2Ev.exit
  %.idx58 = phi i64 [ %.add59, %_ZN7rocksdb6StatusD2Ev.exit ], [ %.add60, %.loopexit66 ]
  %.add59 = add nsw i64 %.idx58, -16              ; 3 uses
  %.ptr61 = getelementptr inbounds i8, ptr %i.u, i64 %.add59
  %i.co = getelementptr inbounds nuw i8, ptr %.ptr61, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %.preheader
  call void @_ZdaPv(ptr noundef nonnull %i.cp) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.preheader, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.cq = icmp eq i64 %.add59, 8
  br i1 %i.cq, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %.loopexit66
  call void @_ZdaPvm(ptr noundef nonnull %i.u, i64 noundef %.add60) #48
  ret void

bb.m:                                             ; preds = %bb.h, %.loopexit68
  %.pn = phi { ptr, i32 } [ %i.br, %bb.h ], [ %i.az, %.loopexit68 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @rocksdb_key_may_exist(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef %6, i64 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.b, ptr %9, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !86
  store i8 0, ptr %i.b, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.d, ptr %10, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !86
  store i8 0, ptr %i.d, align 8, !tbaa !102
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %6, i64 noundef %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ null, %bb.a ], [ %10, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i8 0, ptr %i.a, align 1, !tbaa !286
  %i.i = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47
  store ptr %2, ptr %11, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %3, ptr %i.j, align 8, !tbaa !98
  %.not19 = icmp eq ptr %8, null                  ; 2 uses
  %i.k = select i1 %.not19, ptr null, ptr %i.a
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 456
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %9, ptr noundef %i.h, ptr noundef %i.k)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  br i1 %.not19, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 1, !tbaa !286, !range !94, !noundef !95 ; 2 uses
  store i8 %i.p, ptr %8, align 1, !tbaa !102
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.c, align 8, !tbaa !86   ; 3 uses
  store i64 %i.r, ptr %5, align 8, !tbaa !87
  %i.s = load ptr, ptr %9, align 8, !tbaa !88
  %i.t = call noalias noundef ptr @malloc(i64 noundef %i.r) #52 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr readonly align 1 %i.s, i64 %i.r, i1 false)
  store ptr %i.t, ptr %4, align 8, !tbaa !99
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.v = load ptr, ptr %10, align 8, !tbaa !88    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.d, align 8, !tbaa !102
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  %i.z = load ptr, ptr %9, align 8, !tbaa !88     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !102
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.ad = zext i1 %i.o to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  ret i8 %i.ad

bb.i:                                             ; preds = %bb.g, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.g, %bb.c ]
  %i.ae = load ptr, ptr %10, align 8, !tbaa !88   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.d
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !102
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  %i.ai = load ptr, ptr %9, align 8, !tbaa !88    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !102
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @rocksdb_key_may_exist_cf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr noundef %7, i64 noundef %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.b, ptr %10, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !86
  store i8 0, ptr %i.b, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.d, ptr %11, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !86
  store i8 0, ptr %i.d, align 8, !tbaa !102
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %7, i64 noundef %8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ null, %bb.a ], [ %11, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i8 0, ptr %i.a, align 1, !tbaa !286
  %i.i = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #47
  store ptr %3, ptr %12, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %4, ptr %i.k, align 8, !tbaa !98
  %.not20 = icmp eq ptr %9, null                  ; 2 uses
  %i.l = select i1 %.not20, ptr null, ptr %i.a
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %10, ptr noundef %i.h, ptr noundef %i.l)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  br i1 %.not20, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.a, align 1, !tbaa !286, !range !94, !noundef !95 ; 2 uses
  store i8 %i.q, ptr %9, align 1, !tbaa !102
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !86   ; 3 uses
  store i64 %i.s, ptr %6, align 8, !tbaa !87
  %i.t = load ptr, ptr %10, align 8, !tbaa !88
  %i.u = call noalias noundef ptr @malloc(i64 noundef %i.s) #52 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr readonly align 1 %i.t, i64 %i.s, i1 false)
  store ptr %i.u, ptr %5, align 8, !tbaa !99
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.w = load ptr, ptr %11, align 8, !tbaa !88    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.d, align 8, !tbaa !102
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  %i.aa = load ptr, ptr %10, align 8, !tbaa !88   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !102
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ae = zext i1 %i.p to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  ret i8 %i.ae

bb.i:                                             ; preds = %bb.g, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.g, %bb.c ]
  %i.af = load ptr, ptr %11, align 8, !tbaa !88   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.d
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.i
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !102
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  %i.aj = load ptr, ptr %10, align 8, !tbaa !88   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.al = load i64, ptr %i.b, align 8, !tbaa !102
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @rocksdb_create_iterator(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #49 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(192) %1)
  store ptr %i.f, ptr %i.a, align 8, !tbaa !431
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @rocksdb_get_updates_since(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.243", align 8 ; 8 uses
  %5 = alloca %"struct.rocksdb::TransactionLogIterator::ReadOptions", align 1 ; 7 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store ptr null, ptr %4, align 8, !tbaa !1529
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store i8 1, ptr %5, align 1, !tbaa !434
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %2, align 1, !tbaa !286
  store i8 %i.a, ptr %5, align 1, !tbaa !286
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.b = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1048
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = invoke fastcc noundef zeroext i1 @_ZL9SaveErrorPPcRKN7rocksdb6StatusE(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.h) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.e, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br i1 %i.f, label %bb.j, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit18

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99   ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.l, null
end_hunk_0
begin_hunk_1_@rocksdb_get_current_wal_file:bb.a
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.g) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.c, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br i1 %i.e, label %bb.p, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit16

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99   ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.k, null
  br i1 %.not.i.i14, label %_ZN7rocksdb6StatusD2Ev.exit16, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.k) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit16

_ZN7rocksdb6StatusD2Ev.exit16:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %bb.q

bb.f:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.l = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #49
          to label %bb.g unwind label %bb.n       ; 11 uses

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store i64 0, ptr %i.n, align 8, !tbaa !86
  store i8 0, ptr %i.m, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !450
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 0, ptr %i.p, align 8, !tbaa !451
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.r = load ptr, ptr %2, align 8, !tbaa !447
  invoke fastcc void @_ZL14CaptureWalFileRKN7rocksdb7WalFileE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !88   ; 6 uses
  %i.t = icmp eq ptr %i.s, %i.m
  %i.u = load ptr, ptr %4, align 8, !tbaa !88     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !86   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  switch i64 %i.y, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !102
  store i8 %i.aa, ptr %i.s, align 1, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !86  ; 2 uses
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !86
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !102
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !88
  br label %_ZN18rocksdb_wal_file_taSEOS_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.u, ptr %i.l, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !102
  store <2 x i64> %i.af, ptr %i.n, align 8, !tbaa !102
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !102
  store ptr %i.u, ptr %i.l, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !tbaa !102
  store <2 x i64> %i.ai, ptr %i.n, align 8, !tbaa !102
  %.not.i.i17 = icmp eq ptr %i.s, null
  br i1 %.not.i.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.s, ptr %4, align 8, !tbaa !88
  store i64 %i.ag, ptr %i.v, align 8, !tbaa !102
  br label %_ZN18rocksdb_wal_file_taSEOS_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.v, ptr %4, align 8, !tbaa !88
  br label %_ZN18rocksdb_wal_file_taSEOS_.exit

_ZN18rocksdb_wal_file_taSEOS_.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.l, %bb.m
  %i.aj = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.s, %bb.l ], [ %i.v, %bb.m ]
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !86
  store i8 0, ptr %i.aj, align 1, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  %i.am = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN18rocksdb_wal_file_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN18rocksdb_wal_file_taSEOS_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !102
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #48
  br label %_ZN18rocksdb_wal_file_tD2Ev.exit

_ZN18rocksdb_wal_file_tD2Ev.exit:                 ; preds = %_ZN18rocksdb_wal_file_taSEOS_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %bb.p

bb.n:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %bb.q

bb.p:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZN18rocksdb_wal_file_tD2Ev.exit
  %.09 = phi ptr [ %i.l, %_ZN18rocksdb_wal_file_tD2Ev.exit ], [ null, %_ZN7rocksdb6StatusD2Ev.exit ]
  %i.at = load ptr, ptr %2, align 8, !tbaa !447   ; 3 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i: ; preds = %bb.p
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #47, !inline_history !1540
  br label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.p, %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret ptr %.09

bb.q:                                             ; preds = %bb.n, %bb.o, %_ZN7rocksdb6StatusD2Ev.exit16
  %.pn11.pn = phi { ptr, i32 } [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit16 ], [ %i.as, %bb.o ], [ %i.ar, %bb.n ]
  %i.ax = load ptr, ptr %2, align 8, !tbaa !447   ; 3 uses
  %.not.i18 = icmp eq ptr %i.ax, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit20, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i19

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i19: ; preds = %bb.q
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #47, !inline_history !1540
  br label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit20

_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit20: ; preds = %bb.q, %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_wal_iter_next(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !436    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @rocksdb_wal_iter_valid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !436    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_wal_iter_status(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = load ptr, ptr %0, align 8, !tbaa !436    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.e = invoke fastcc noundef zeroext i1 @_ZL9SaveErrorPPcRKN7rocksdb6StatusE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.g) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.b, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99   ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i3, label %_ZN7rocksdb6StatusD2Ev.exit5, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i4

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i4: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.j) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit5

_ZN7rocksdb6StatusD2Ev.exit5:                     ; preds = %bb.c, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_wal_iter_destroy(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !436    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #48
  ret void
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @rocksdb_wal_readoptions_create() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #49 ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !434
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_wal_readoptions_destroy(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1) #48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @rocksdb_wal_readoptions_set_verify_checksums(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ne i8 %1, 0
  %i.b = zext i1 %i.a to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !455
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 2) i8 @rocksdb_wal_readoptions_get_verify_checksums(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !455, !range !94, !noundef !95
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @rocksdb_wal_file_path_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @rocksdb_wal_file_log_number(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !450
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @rocksdb_wal_file_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !451
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @rocksdb_wal_file_start_sequence(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !452
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @rocksdb_wal_file_size_file_bytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !453
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_wal_file_destroy(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN18rocksdb_wal_file_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !102
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #48
  br label %_ZN18rocksdb_wal_file_tD2Ev.exit

_ZN18rocksdb_wal_file_tD2Ev.exit:                 ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #48
  br label %bb.c

bb.c:                                             ; preds = %_ZN18rocksdb_wal_file_tD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -144115188075855872, 144115188075855872) i64 @rocksdb_wal_files_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !440
  %i.c = load ptr, ptr %0, align 8, !tbaa !439
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 6
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @rocksdb_wal_files_get_wal_file(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !440
  %i.c = load ptr, ptr %0, align 8, !tbaa !439    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 6
  %.not = icmp ult i64 %1, %i.g
end_hunk_1
begin_hunk_2_@rocksdb_create_iterators:bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.as) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.loopexit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %i.at = load ptr, ptr %7, align 8, !tbaa !1560  ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1562
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #48
  br label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  %i.az = load ptr, ptr %6, align 8, !tbaa !359   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !364
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #48
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret void

bb.p:                                             ; preds = %bb.m, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.aj, %bb.k ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !99 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i30, label %_ZN7rocksdb6StatusD2Ev.exit32, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31: ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit32

_ZN7rocksdb6StatusD2Ev.exit32:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31, %bb.p, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %i.bh = load ptr, ptr %7, align 8, !tbaa !1560  ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit34, label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit32
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1562
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #48
  br label %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit34

_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit34: ; preds = %_ZN7rocksdb6StatusD2Ev.exit32, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  %.pre = load ptr, ptr %6, align 8, !tbaa !359
  br label %bb.r

bb.r:                                             ; preds = %.loopexit37, %.loopexit.split-lp, %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit34
  %i.bn = phi ptr [ %.pre, %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit34 ], [ %i.g, %.loopexit37 ], [ %i.g, %.loopexit.split-lp ] ; 3 uses
  %.pn25 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIPN7rocksdb8IteratorESaIS2_EED2Ev.exit34 ], [ %lpad.loopexit, %.loopexit37 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i35 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit36, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !364
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #48
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit36

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit36: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  resume { ptr, i32 } %.pn25
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @rocksdb_create_snapshot(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #49 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store ptr %i.f, ptr %i.a, align 8, !tbaa !457
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_release_snapshot(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !457
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b)
  tail call void @_ZdlPvm(ptr noundef %1, i64 noundef 8) #48
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @rocksdb_snapshot_get_sequence_number(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !457    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define noalias ptr @rocksdb_property_value(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !86
  store i8 0, ptr %i.a, align 8, !tbaa !102
  %i.c = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store ptr %1, ptr %3, align 8, !tbaa !97
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !98
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %.pre = load ptr, ptr %2, align 8, !tbaa !88    ; 3 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = call noalias ptr @strdup(ptr noundef %.pre) #47
  br label %bb.f

bb.e:                                             ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.n = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.a, align 8, !tbaa !102
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ]
  %i.r = icmp eq ptr %.pre, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !102
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.t) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @rocksdb_property_int(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store ptr %1, ptr %3, align 8, !tbaa !97
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !98
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 648
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %not. = xor i1 %i.i, true
  %. = sext i1 %not. to i32
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @rocksdb_property_int_cf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store ptr %2, ptr %4, align 8, !tbaa !97
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #53
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !98
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 640
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %not. = xor i1 %i.j, true
  %. = sext i1 %not. to i32
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define noalias ptr @rocksdb_property_value_cf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !86
  store i8 0, ptr %i.a, align 8, !tbaa !102
  %i.c = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store ptr %2, ptr %4, align 8, !tbaa !97
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #53
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !98
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 608
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %.pre = load ptr, ptr %3, align 8, !tbaa !88    ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = call noalias ptr @strdup(ptr noundef %.pre) #47
  br label %bb.f

bb.e:                                             ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.o = load ptr, ptr %3, align 8, !tbaa !88     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.a, align 8, !tbaa !102
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ]
  %i.s = icmp eq ptr %.pre, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  %i.t = load i64, ptr %i.a, align 8, !tbaa !102
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.u) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_approximate_sizes(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %i.a = sext i32 %1 to i64                       ; 4 uses
  %i.b = icmp slt i32 %1, 0
  %i.c = shl nsw i64 %i.a, 5
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #49, !noalias !1568 ; 8 uses
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %_ZL11BuildRangesiPKPKcPKmS2_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.a
  %i.h = add nsw i64 %i.a, 576460752303423487
  %i.i = and i64 %i.h, 576460752303423487
  %xtraiter = and i64 %i.a, 7
  %i.j = and i32 %1, 7
  %lcmp.mod.not = icmp eq i32 %i.j, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.k = phi ptr [ %i.o, %.prol.preheader ], [ %i.e, %bb.b ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  store ptr @.str.1, ptr %i.k, align 8, !tbaa !97, !noalias !1568
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !98, !noalias !1568
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr @.str.1, ptr %i.m, align 8, !tbaa !97, !noalias !1568
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.n, align 8, !tbaa !98, !noalias !1568
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1565

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.e, %bb.b ], [ %i.o, %.prol.preheader ]
  %i.p = icmp samesign ult i64 %i.i, 7
  br i1 %i.p, label %.loopexit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.q = phi ptr [ %i.aw, %.new ], [ %.unr, %.prol.loopexit ] ; 33 uses
  store ptr @.str.1, ptr %i.q, align 8, !tbaa !97, !noalias !1568
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !98, !noalias !1568
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr @.str.1, ptr %i.s, align 8, !tbaa !97, !noalias !1568
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.t, align 8, !tbaa !98, !noalias !1568
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr @.str.1, ptr %i.u, align 8, !tbaa !97, !noalias !1568
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !98, !noalias !1568
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr @.str.1, ptr %i.w, align 8, !tbaa !97, !noalias !1568
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 0, ptr %i.x, align 8, !tbaa !98, !noalias !1568
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr @.str.1, ptr %i.y, align 8, !tbaa !97, !noalias !1568
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i64 0, ptr %i.z, align 8, !tbaa !98, !noalias !1568
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store ptr @.str.1, ptr %i.aa, align 8, !tbaa !97, !noalias !1568
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store i64 0, ptr %i.ab, align 8, !tbaa !98, !noalias !1568
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store ptr @.str.1, ptr %i.ac, align 8, !tbaa !97, !noalias !1568
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store i64 0, ptr %i.ad, align 8, !tbaa !98, !noalias !1568
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store ptr @.str.1, ptr %i.ae, align 8, !tbaa !97, !noalias !1568
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  store i64 0, ptr %i.af, align 8, !tbaa !98, !noalias !1568
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store ptr @.str.1, ptr %i.ag, align 8, !tbaa !97, !noalias !1568
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store i64 0, ptr %i.ah, align 8, !tbaa !98, !noalias !1568
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store ptr @.str.1, ptr %i.ai, align 8, !tbaa !97, !noalias !1568
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  store i64 0, ptr %i.aj, align 8, !tbaa !98, !noalias !1568
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  store ptr @.str.1, ptr %i.ak, align 8, !tbaa !97, !noalias !1568
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  store i64 0, ptr %i.al, align 8, !tbaa !98, !noalias !1568
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  store ptr @.str.1, ptr %i.am, align 8, !tbaa !97, !noalias !1568
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  store i64 0, ptr %i.an, align 8, !tbaa !98, !noalias !1568
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  store ptr @.str.1, ptr %i.ao, align 8, !tbaa !97, !noalias !1568
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  store i64 0, ptr %i.ap, align 8, !tbaa !98, !noalias !1568
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  store ptr @.str.1, ptr %i.aq, align 8, !tbaa !97, !noalias !1568
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  store i64 0, ptr %i.ar, align 8, !tbaa !98, !noalias !1568
end_hunk_2
begin_hunk_3_@rocksdb_flush_cfs:bb.a
  store ptr %i.f, ptr %i.d, align 8, !tbaa !358
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !364
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.i = load ptr, ptr %0, align 8, !tbaa !278    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 944
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.i unwind label %bb.l

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit
  %i.m = phi ptr [ %i.f, %_ZNSt12_Vector_baseIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_M_allocateEm.exit.i ], [ %i.aj, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.n = phi ptr [ %i.g, %_ZNSt12_Vector_baseIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_M_allocateEm.exit.i ], [ %i.ak, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.o = phi ptr [ %i.f, %_ZNSt12_Vector_baseIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_M_allocateEm.exit.i ], [ %i.al, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %_ZNSt12_Vector_baseIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_M_allocateEm.exit.i ], [ %indvars.iv.next, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !363  ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !360
  store ptr %i.r, ptr %i.o, align 8, !tbaa !360
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.h, align 8, !tbaa !358
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.f, label %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #50
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #49
          to label %.noexc18 unwind label %.loopexit ; 5 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !360
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !360
  %i.ag = icmp sgt i64 %i.v, 0
  br i1 %i.ag, label %bb.g, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.m, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %.noexc18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.v) #48
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ad, ptr %5, align 8, !tbaa !359
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !358
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 2 uses
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !364
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d
  %i.aj = phi ptr [ %i.ad, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.m, %bb.d ]
  %i.ak = phi ptr [ %i.ai, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.n, %bb.d ]
  %i.al = phi ptr [ %i.ah, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.s, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !1601

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %._crit_edge
  %i.am = invoke fastcc noundef zeroext i1 @_ZL9SaveErrorPPcRKN7rocksdb6StatusE(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.j, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %i.ap = load ptr, ptr %5, align 8, !tbaa !359   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !364
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #48
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret void

bb.l:                                             ; preds = %._crit_edge
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit22

bb.m:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !99 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i20, label %_ZN7rocksdb6StatusD2Ev.exit22, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit22

_ZN7rocksdb6StatusD2Ev.exit22:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.av, %bb.m ], [ %i.av, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %.pre = load ptr, ptr %5, align 8, !tbaa !359
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZN7rocksdb6StatusD2Ev.exit22
  %i.ay = phi ptr [ %i.m, %.loopexit.split-lp ], [ %.pre, %_ZN7rocksdb6StatusD2Ev.exit22 ], [ %i.m, %.loopexit ] ; 3 uses
  %.pn14 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit22 ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i23 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit24, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !364
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #48
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit24

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit24: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_iter_destroy(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #48
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @rocksdb_iter_valid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_iter_seek_to_first(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_iter_seek_to_last(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_iter_seek(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store ptr %1, ptr %3, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !98
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_iter_seek_for_prev(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store ptr %1, ptr %3, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !98
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_iter_next(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_iter_prev(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @rocksdb_iter_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { ptr, i64 } %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store i64 %i.g, ptr %1, align 8, !tbaa !87
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define ptr @rocksdb_iter_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { ptr, i64 } %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store i64 %i.g, ptr %1, align 8, !tbaa !87
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define ptr @rocksdb_iter_timestamp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { ptr, i64 } %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store i64 %i.g, ptr %1, align 8, !tbaa !87
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_iter_get_error(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.e = invoke fastcc noundef zeroext i1 @_ZL9SaveErrorPPcRKN7rocksdb6StatusE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.g) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.b, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99   ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i3, label %_ZN7rocksdb6StatusD2Ev.exit5, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i4

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i4: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.j) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit5

_ZN7rocksdb6StatusD2Ev.exit5:                     ; preds = %bb.c, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @rocksdb_iter_key_slice(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { ptr, i64 } %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @rocksdb_iter_value_slice(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { ptr, i64 } %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @rocksdb_iter_timestamp_slice(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !431    ; 2 uses
end_hunk_3
begin_hunk_4_@rocksdb_file_checksum_gen_factory_destroy:bb.a
  br i1 %.not.i.i.i, label %_ZN35rocksdb_file_checksum_gen_factory_tD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !136
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #47, !inline_history !1996
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #47, !inline_history !1996
  br label %_ZN35rocksdb_file_checksum_gen_factory_tD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !144
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZN35rocksdb_file_checksum_gen_factory_tD2Ev.exit, !prof !101

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #47
  br label %_ZN35rocksdb_file_checksum_gen_factory_tD2Ev.exit

_ZN35rocksdb_file_checksum_gen_factory_tD2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #48
  br label %bb.i

bb.i:                                             ; preds = %_ZN35rocksdb_file_checksum_gen_factory_tD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_options_set_file_checksum_gen_factory(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_ZNSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEEaSERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load ptr, ptr %1, align 8, !tbaa !228
  store ptr %i.d, ptr %i.c, align 8, !tbaa !228
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEEaSERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 4, !tbaa !144
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !144
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !143
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.n = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.o, align 8, !tbaa !135
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !136
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #47, !inline_history !0
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !118
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #47, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i9.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !144
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !101

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #47
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !143
  br label %_ZNSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEEaSERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @rocksdb_options_checksum_handoff_file_types_clear(ptr nofree noundef writeonly captures(none) initializes((640, 648)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i64 0, ptr %i.a, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @rocksdb_options_checksum_handoff_file_types_add(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.b, %i.e
  store i64 %i.f, ptr %i.a, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @rocksdb_options_checksum_handoff_file_types_remove(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i64 %i.b, %i.f
  store i64 %i.g, ptr %i.a, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext range(i8 0, 2) i8 @rocksdb_options_checksum_handoff_file_types_contains(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 %i.b, %i.d
  %i.f = trunc i64 %i.e to i8
  %i.g = and i8 %i.f, 1
  ret i8 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -2147483648, 2147483648) i64 @rocksdb_options_checksum_handoff_file_types_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  %i.c = tail call noundef i32 @_ZN7rocksdb6detail27BitsSetToOneForSmallEnumSetEm(i64 noundef %i.b)
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @rocksdb_options_calculate_sst_write_lifetime_hint_set_clear(ptr nofree noundef writeonly captures(none) initializes((744, 752)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i64 0, ptr %i.a, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @rocksdb_options_calculate_sst_write_lifetime_hint_set_add(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.b, %i.e
  store i64 %i.f, ptr %i.a, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @rocksdb_options_calculate_sst_write_lifetime_hint_set_remove(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i64 %i.b, %i.f
  store i64 %i.g, ptr %i.a, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext range(i8 0, 2) i8 @rocksdb_options_calculate_sst_write_lifetime_hint_set_contains(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 %i.b, %i.d
  %i.f = trunc i64 %i.e to i8
  %i.g = and i8 %i.f, 1
  ret i8 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -2147483648, 2147483648) i64 @rocksdb_options_calculate_sst_write_lifetime_hint_set_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  %i.c = tail call noundef i32 @_ZN7rocksdb6detail27BitsSetToOneForSmallEnumSetEm(i64 noundef %i.b)
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @rocksdb_sst_partitioner_fixed_prefix_factory_create(i64 noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN7rocksdb21SstPartitionerFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %1 = alloca %"class.std::shared_ptr.81", align 16 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @_ZN7rocksdb35NewSstPartitionerFixedPrefixFactoryEm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.81") align 8 %1, i64 noundef %0)
  %i.b = load <2 x ptr>, ptr %1, align 16, !tbaa !229
  store <2 x ptr> %i.b, ptr %i.a, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret ptr %i.a
}

declare void @_ZN7rocksdb35NewSstPartitionerFixedPrefixFactoryEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.81") align 8, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_sst_partitioner_factory_destroy(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN33rocksdb_sst_partitioner_factory_tD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !136
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #47, !inline_history !1997
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #47, !inline_history !1997
  br label %_ZN33rocksdb_sst_partitioner_factory_tD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !144
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZN33rocksdb_sst_partitioner_factory_tD2Ev.exit, !prof !101

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #47
  br label %_ZN33rocksdb_sst_partitioner_factory_tD2Ev.exit

_ZN33rocksdb_sst_partitioner_factory_tD2Ev.exit:  ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #48
  br label %bb.i

bb.i:                                             ; preds = %_ZN33rocksdb_sst_partitioner_factory_tD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_options_set_sst_partitioner_factory(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_ZNSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEEaSERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.d = load ptr, ptr %1, align 8, !tbaa !232
  store ptr %i.d, ptr %i.c, align 8, !tbaa !232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEEaSERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 4, !tbaa !144
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !144
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !143
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.n = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.o, align 8, !tbaa !135
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !136
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #47, !inline_history !1
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !118
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #47, !inline_history !1
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i9.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !144
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !101

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #47
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !143
  br label %_ZNSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEEaSERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_table_properties_collector_factory_destroy(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN44rocksdb_table_properties_collector_factory_tD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
end_hunk_4
begin_hunk_5_@rocksdb_transaction_options_set_commit_bypass_memtable:bb.a
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 1, !tbaa !1302
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 2) i8 @rocksdb_transaction_options_get_commit_bypass_memtable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1302, !range !94, !noundef !95
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @rocksdb_transaction_options_set_large_txn_commit_optimize_threshold(ptr nofree noundef writeonly captures(none) initializes((68, 72)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %1, ptr %i.a, align 4, !tbaa !1303
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @rocksdb_transaction_options_get_large_txn_commit_optimize_threshold(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1303
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @rocksdb_transaction_options_set_large_txn_commit_optimize_byte_threshold(ptr nofree noundef writeonly captures(none) initializes((72, 80)) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %1, ptr %i.a, align 8, !tbaa !1304
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @rocksdb_transaction_options_get_large_txn_commit_optimize_byte_threshold(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1304
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @rocksdb_optimistictransaction_options_set_set_snapshot(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ne i8 %1, 0
  %i.b = zext i1 %i.a to i8
  store i8 %i.b, ptr %0, align 8, !tbaa !1307
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 2) i8 @rocksdb_optimistictransaction_options_get_set_snapshot(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1307, !range !94, !noundef !95
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @rocksdb_optimistictransactiondb_options_set_validate_policy(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !1309
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @rocksdb_optimistictransactiondb_options_get_validate_policy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1309
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @rocksdb_optimistictransactiondb_options_set_occ_lock_buckets(ptr nofree noundef writeonly captures(none) initializes((4, 8)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !1310
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @rocksdb_optimistictransactiondb_options_get_occ_lock_buckets(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1310
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @rocksdb_optimistictransaction_options_create() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #49 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !2240
  %i.b = invoke noundef ptr @_ZN7rocksdb18BytewiseComparatorEv()
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !2241
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #48
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_optimistictransaction_options_destroy(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noalias ptr @rocksdb_optimistictransactiondb_property_value(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !86
  store i8 0, ptr %i.a, align 8, !tbaa !102
  %i.c = load ptr, ptr %0, align 8, !tbaa !1313   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store ptr %1, ptr %3, align 8, !tbaa !97
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !98
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %.pre = load ptr, ptr %2, align 8, !tbaa !88    ; 3 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = call noalias ptr @strdup(ptr noundef %.pre) #47
  br label %bb.f

bb.e:                                             ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.n = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.a, align 8, !tbaa !102
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ]
  %i.r = icmp eq ptr %.pre, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !102
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.t) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @rocksdb_optimistictransactiondb_property_int(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1313   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store ptr %1, ptr %3, align 8, !tbaa !97
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !98
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 648
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %not. = xor i1 %i.i, true
  %. = sext i1 %not. to i32
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define noundef ptr @rocksdb_transactiondb_create_column_family(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  %5 = alloca %"struct.rocksdb::ColumnFamilyOptions", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #49 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.b = load ptr, ptr %0, align 8, !tbaa !1316   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_ZN7rocksdb19ColumnFamilyOptionsC1ERKNS_7OptionsE(ptr noundef nonnull align 8 dereferenceable(976) %5, ptr noundef nonnull align 8 dereferenceable(1736) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !100
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #50
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #47 ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #50
          to label %.noexc16 unwind label %bb.l

.noexc16:                                         ; preds = %.noexc.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !101

.noexc11.i:                                       ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #50
          to label %.noexc17 unwind label %bb.l

.noexc17:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #49
          to label %.noexc18 unwind label %bb.l   ; 2 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.j, ptr %6, align 8, !tbaa !88
  store i64 %i.e, ptr %i.c, align 8, !tbaa !102
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc18, %bb.c
  %i.k = phi ptr [ %i.j, %.noexc18 ], [ %i.c, %bb.c ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %2, align 1, !tbaa !102
  store i8 %i.l, ptr %i.k, align 1, !tbaa !102
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %2, i64 %i.e, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !102
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(976) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.a)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.r = invoke fastcc noundef zeroext i1 @_ZL9SaveErrorPPcRKN7rocksdb6StatusE(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.t) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.j, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.u = load ptr, ptr %6, align 8, !tbaa !88     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.w = load i64, ptr %i.c, align 8, !tbaa !102
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br i1 %i.r, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #48
  br label %bb.p

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.m:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit21

bb.n:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i19, label %_ZN7rocksdb6StatusD2Ev.exit21, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i20

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i20: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #48
  br label %_ZN7rocksdb6StatusD2Ev.exit21

_ZN7rocksdb6StatusD2Ev.exit21:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i20, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.aa, %bb.n ], [ %i.aa, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i20 ] ; 2 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.c
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZN7rocksdb6StatusD2Ev.exit21
  %i.af = load i64, ptr %i.c, align 8, !tbaa !102
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZN7rocksdb6StatusD2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %i.ah, align 8, !tbaa !361
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %.013 = phi ptr [ null, %bb.k ], [ %i.a, %bb.o ]
end_hunk_5
begin_hunk_6_@rocksdb_transactiondb_open_column_families:bb.a
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.ad
  %.031 = phi ptr [ %i.bn, %bb.ad ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  %i.ce = load ptr, ptr %11, align 8, !tbaa !359  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !364
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #48
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.ck = load ptr, ptr %8, align 8, !tbaa !365   ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !354 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ct, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i ], [ %i.ck, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.cn) #47
  %i.co = load ptr, ptr %.05.i.i.i, align 8, !tbaa !88 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !102
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #48
  br label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 1008 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.ct, %i.cm
  br i1 %.not.i.i.i66, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !365
  br label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit
  %i.cu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ck, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !355
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #48
  br label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  ret ptr %.031

bb.ai:                                            ; preds = %bb.ae, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn34 = phi { ptr, i32 } [ %i.cb, %bb.ac ], [ %i.cd, %bb.ae ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ]
  %i.da = load ptr, ptr %11, align 8, !tbaa !359  ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit68, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !364
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #48
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit68

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit68: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn34, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit68 ]
  call void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  resume { ptr, i32 } %.pn36.pn.pn
}

declare void @_ZN7rocksdb13TransactionDB4OpenERKNS_9DBOptionsERKNS_20TransactionDBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISG_EEPSF_IPNS_18ColumnFamilyHandleESaISM_EEPPS0_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(753), ptr noundef nonnull align 8 dereferenceable(185), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @rocksdb_transactiondb_create_snapshot(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #49 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1316   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  store ptr %i.f, ptr %i.a, align 8, !tbaa !457
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_transactiondb_release_snapshot(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1316   ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !457
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.b)
  tail call void @_ZdlPvm(ptr noundef %1, i64 noundef 8) #48
  ret void
}

; Function Attrs: mustprogress uwtable
define noalias ptr @rocksdb_transactiondb_property_value(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !86
  store i8 0, ptr %i.a, align 8, !tbaa !102
  %i.c = load ptr, ptr %0, align 8, !tbaa !1316   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store ptr %1, ptr %3, align 8, !tbaa !97
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !98
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %.pre = load ptr, ptr %2, align 8, !tbaa !88    ; 3 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = call noalias ptr @strdup(ptr noundef %.pre) #47
  br label %bb.f

bb.e:                                             ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.n = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.a, align 8, !tbaa !102
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ]
  %i.r = icmp eq ptr %.pre, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !102
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.t) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @rocksdb_transactiondb_property_int(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1316   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store ptr %1, ptr %3, align 8, !tbaa !97
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !98
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 648
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %not. = xor i1 %i.i, true
  %. = sext i1 %not. to i32
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @rocksdb_transactiondb_get_base_db(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1316   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #49 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !278
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @rocksdb_transactiondb_close_base_db(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define nonnull ptr @rocksdb_transaction_begin(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null, ret: address, provenance) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #49 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1316   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef null)
  store ptr %i.g, ptr %i.b, align 8, !tbaa !1320
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !1316   ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !1320
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.i)
  store ptr %i.m, ptr %3, align 8, !tbaa !1320
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %3, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @rocksdb_transactiondb_get_prepared_transactions(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.464", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !1316   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1432
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2247 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !2248   ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  store i64 %i.k, ptr %1, align 8, !tbaa !87
  %i.l = icmp eq ptr %i.g, %i.f
  br i1 %i.l, label %.loopexit, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = call noalias ptr @malloc(i64 noundef %i.j) #52 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.018 = phi i64 [ %i.t, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #49
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.018
  store ptr %i.o, ptr %i.p, align 8, !tbaa !2250
  %i.q = load ptr, ptr %2, align 8, !tbaa !2248   ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.018
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2251
  store ptr %i.s, ptr %i.o, align 8, !tbaa !1320
  %i.t = add nuw i64 %.018, 1                     ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !2247
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.lr.ph, label %.loopexit.thread, !llvm.loop !2244

bb.e:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit:                                        ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7rocksdb11TransactionESaIS2_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.d, %.loopexit
  %.01424 = phi ptr [ null, %.loopexit ], [ %i.n, %bb.d ]
  %i.ab = phi ptr [ %i.g, %.loopexit ], [ %i.q, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2252
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #48
  br label %_ZNSt6vectorIPN7rocksdb11TransactionESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb11TransactionESaIS2_EED2Ev.exit: ; preds = %.loopexit, %.loopexit.thread
  %.01425 = phi ptr [ null, %.loopexit ], [ %.01424, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret ptr %.01425

bb.f:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.m, %bb.c ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !2248  ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIPN7rocksdb11TransactionESaIS2_EED2Ev.exit17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2252
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #48
  br label %_ZNSt6vectorIPN7rocksdb11TransactionESaIS2_EED2Ev.exit17

_ZNSt6vectorIPN7rocksdb11TransactionESaIS2_EED2Ev.exit17: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_transaction_set_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !100
end_hunk_6
