Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/container_avi?download=true
inline.NumInlined: 965
inline.NumDeleted: 362
begin_hunk_0_@_ZN2cv17AVIWriteContainer13endWriteChunkEv:bb.a
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1
  br i1 %i.n, label %_ZNK2cv9BitStream6getPosEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -211, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv13safe_int_castIljEET_T0_PKc, ptr noundef nonnull @.str.22, i32 noundef 29) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !33
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume

_ZNK2cv9BitStream6getPosEv.exit:                  ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 560
  %i.v = load i64, ptr %i.u, align 8, !tbaa !112
  %i.w = add i64 %i.v, %i.m                       ; 2 uses
  %i.x = icmp ugt i64 %i.w, 4
  br i1 %i.x, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv9BitStream6getPosEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv17AVIWriteContainer13endWriteChunkEv, ptr noundef nonnull @.str.22, i32 noundef 965) #27
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !33
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

bb.k:                                             ; preds = %_ZNK2cv9BitStream6getPosEv.exit
  %i.af = add i64 %i.w, -4                        ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !90 ; 3 uses
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !120
  %.not = icmp ult i64 %i.af, %i.ah
  br i1 %.not, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv17AVIWriteContainer13endWriteChunkEv, ptr noundef nonnull @.str.22, i32 noundef 969) #27
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.p:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.p
  %i.an = load i64, ptr %i.al, align 8, !tbaa !33
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.o
  %.pn17 = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.aj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

bb.q:                                             ; preds = %bb.k
  %i.ap = sub nuw i64 %i.af, %i.ah                ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 4294967296
  br i1 %i.aq, label %_ZN2cv13safe_int_castIjmEET_T0_PKc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -211, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv13safe_int_castIljEET_T0_PKc, ptr noundef nonnull @.str.22, i32 noundef 29) #27
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !33
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i ], [ %i.as, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %common.resume

_ZN2cv13safe_int_castIjmEET_T0_PKc.exit:          ; preds = %bb.q
  %i.ay = trunc nuw i64 %i.ap to i32
  tail call void @_ZN2cv9BitStream8patchIntEjm(ptr noundef nonnull align 8 dereferenceable(569) %i.f, i32 noundef %i.ay, i64 noundef %i.ah)
  br label %bb.w

bb.w:                                             ; preds = %_ZN2cv13safe_int_castIjmEET_T0_PKc.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 1650728960, 1668300800) i32 @_ZN2cv17AVIWriteContainer11getAVIIndexEiNS_10StreamTypeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2cv17AVIWriteContainer10writeIndexEiNS_10StreamTypeE, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 1650720768, %bb.a ]
  %i.c = srem i32 %1, 10
  %i.d = shl nsw i32 %i.c, 8
  %i.e = add nsw i32 %i.d, 12288
  %3 = and i32 %i.e, 65280
  %i.f = sdiv i32 %1, 10
  %i.g = add nsw i32 %i.f, 48
  %i.h = and i32 %i.g, 255
  %i.i = or disjoint i32 %3, %i.h
  %i.j = or disjoint i32 %i.i, %.sink
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv17AVIWriteContainer10writeIndexEiNS_10StreamTypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2cv17AVIWriteContainer15startWriteChunkEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef 829973609)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = srem i32 %1, 10
  %i.l = sdiv i32 %1, 10
  %i.m = trunc i32 %i.l to i8
  %i.n = add i8 %i.m, 48
  %3 = trunc nsw i32 %i.k to i8
  %4 = add nsw i8 %3, 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.trip.count = and i64 %i.h, 2147483647
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %i.p = icmp ult i32 %switch.tableidx, 3
  %i.q = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2cv17AVIWriteContainer10writeIndexEiNS_10StreamTypeE, i64 %i.q
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2cv9BitStream6putIntEj.exit18, %bb.a
  tail call void @_ZN2cv17AVIWriteContainer13endWriteChunkEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv9BitStream6putIntEj.exit18
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv9BitStream6putIntEj.exit18 ] ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !115    ; 5 uses
  br i1 %i.p, label %switch.lookup, label %_ZN2cv17AVIWriteContainer11getAVIIndexEiNS_10StreamTypeE.exit

switch.lookup:                                    ; preds = %bb.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN2cv17AVIWriteContainer11getAVIIndexEiNS_10StreamTypeE.exit

_ZN2cv17AVIWriteContainer11getAVIIndexEiNS_10StreamTypeE.exit: ; preds = %bb.b, %switch.lookup
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 1650720768, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 552 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !111
  store i8 %i.n, ptr %i.t, align 1, !tbaa !33
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %4, ptr %i.v, align 1, !tbaa !33
  %i.w = lshr exact i32 %.sink.i, 16
  %i.x = trunc i32 %i.w to i8
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 %i.x, ptr %i.z, align 1, !tbaa !33
  %i.aa = lshr i32 %.sink.i, 24
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !111
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !33
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !111
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 3 uses
  store ptr %i.af, ptr %i.s, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 544
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !109
  %.not.i = icmp ult ptr %i.af, %i.ah
  br i1 %.not.i, label %_ZN2cv9BitStream6putIntEj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2cv17AVIWriteContainer11getAVIIndexEiNS_10StreamTypeE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 536 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108 ; 3 uses
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %_ZN2cv9BitStream10writeBlockEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(569) %i.r, ptr noundef %i.aj, i64 noundef %i.am) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.ai, align 8, !tbaa !108
  br label %_ZN2cv9BitStream10writeBlockEv.exit.i

_ZN2cv9BitStream10writeBlockEv.exit.i:            ; preds = %bb.d, %bb.c
  %i.ap = phi ptr [ %.pre.i.i, %bb.d ], [ %i.aj, %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 560 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !112
  %i.as = add i64 %i.ar, %i.am
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !112
  store ptr %i.ap, ptr %i.s, align 8, !tbaa !111
  br label %_ZN2cv9BitStream6putIntEj.exit

_ZN2cv9BitStream6putIntEj.exit:                   ; preds = %_ZN2cv17AVIWriteContainer11getAVIIndexEiNS_10StreamTypeE.exit, %_ZN2cv9BitStream10writeBlockEv.exit.i
  %i.at = load ptr, ptr %0, align 8, !tbaa !115   ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 552 ; 7 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !111
  store i8 16, ptr %i.av, align 1, !tbaa !33
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 0, ptr %i.ax, align 1, !tbaa !33
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !111
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 0, ptr %i.az, align 1, !tbaa !33
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !111
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  store i8 0, ptr %i.bb, align 1, !tbaa !33
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !111
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 3 uses
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !111
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 544
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !109
  %.not.i7 = icmp ult ptr %i.bd, %i.bf
  br i1 %.not.i7, label %_ZN2cv9BitStream6putIntEj.exit10, label %bb.e

bb.e:                                             ; preds = %_ZN2cv9BitStream6putIntEj.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 536 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !108 ; 3 uses
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %_ZN2cv9BitStream10writeBlockEv.exit.i8

bb.f:                                             ; preds = %bb.e
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(569) %i.at, ptr noundef %i.bh, i64 noundef %i.bk) ; 0 uses
  %.pre.i.i9 = load ptr, ptr %i.bg, align 8, !tbaa !108
  br label %_ZN2cv9BitStream10writeBlockEv.exit.i8

_ZN2cv9BitStream10writeBlockEv.exit.i8:           ; preds = %bb.f, %bb.e
  %i.bn = phi ptr [ %.pre.i.i9, %bb.f ], [ %i.bh, %bb.e ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 560 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !112
  %i.bq = add i64 %i.bp, %i.bk
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !112
  store ptr %i.bn, ptr %i.au, align 8, !tbaa !111
  br label %_ZN2cv9BitStream6putIntEj.exit10

_ZN2cv9BitStream6putIntEj.exit10:                 ; preds = %_ZN2cv9BitStream6putIntEj.exit, %_ZN2cv9BitStream10writeBlockEv.exit.i8
  %i.br = load ptr, ptr %0, align 8, !tbaa !115   ; 5 uses
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !90 ; 4 uses
  %i.bv = trunc i64 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 552 ; 7 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !111
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !33
  %i.by = lshr i64 %i.bu, 8
  %i.bz = trunc i64 %i.by to i8
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !111
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !33
  %i.cc = lshr i64 %i.bu, 16
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !111
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !33
  %i.cg = lshr i64 %i.bu, 24
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !111
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !33
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !111
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 3 uses
  store ptr %i.cl, ptr %i.bw, align 8, !tbaa !111
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 544
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !109
  %.not.i11 = icmp ult ptr %i.cl, %i.cn
  br i1 %.not.i11, label %_ZN2cv9BitStream6putIntEj.exit14, label %bb.g

bb.g:                                             ; preds = %_ZN2cv9BitStream6putIntEj.exit10
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 536 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !108 ; 3 uses
  %i.cq = ptrtoint ptr %i.cl to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %bb.h, label %_ZN2cv9BitStream10writeBlockEv.exit.i12

bb.h:                                             ; preds = %bb.g
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(569) %i.br, ptr noundef %i.cp, i64 noundef %i.cs) ; 0 uses
  %.pre.i.i13 = load ptr, ptr %i.co, align 8, !tbaa !108
  br label %_ZN2cv9BitStream10writeBlockEv.exit.i12

_ZN2cv9BitStream10writeBlockEv.exit.i12:          ; preds = %bb.h, %bb.g
  %i.cv = phi ptr [ %.pre.i.i13, %bb.h ], [ %i.cp, %bb.g ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 560 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !112
  %i.cy = add i64 %i.cx, %i.cs
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !112
  store ptr %i.cv, ptr %i.bw, align 8, !tbaa !111
  br label %_ZN2cv9BitStream6putIntEj.exit14

_ZN2cv9BitStream6putIntEj.exit14:                 ; preds = %_ZN2cv9BitStream6putIntEj.exit10, %_ZN2cv9BitStream10writeBlockEv.exit.i12
  %i.cz = load ptr, ptr %0, align 8, !tbaa !115   ; 5 uses
  %i.da = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !90 ; 4 uses
  %i.dd = trunc i64 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 552 ; 7 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !111
  store i8 %i.dd, ptr %i.df, align 1, !tbaa !33
  %i.dg = lshr i64 %i.dc, 8
  %i.dh = trunc i64 %i.dg to i8
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !111
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !33
  %i.dk = lshr i64 %i.dc, 16
  %i.dl = trunc i64 %i.dk to i8
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !111
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store i8 %i.dl, ptr %i.dn, align 1, !tbaa !33
  %i.do = lshr i64 %i.dc, 24
  %i.dp = trunc i64 %i.do to i8
  %i.dq = load ptr, ptr %i.de, align 8, !tbaa !111
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 3
  store i8 %i.dp, ptr %i.dr, align 1, !tbaa !33
  %i.ds = load ptr, ptr %i.de, align 8, !tbaa !111
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 3 uses
  store ptr %i.dt, ptr %i.de, align 8, !tbaa !111
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 544
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !109
  %.not.i15 = icmp ult ptr %i.dt, %i.dv
  br i1 %.not.i15, label %_ZN2cv9BitStream6putIntEj.exit18, label %bb.i

bb.i:                                             ; preds = %_ZN2cv9BitStream6putIntEj.exit14
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 536 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !108 ; 3 uses
  %i.dy = ptrtoint ptr %i.dt to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  %i.eb = icmp sgt i64 %i.ea, 0
  br i1 %i.eb, label %bb.j, label %_ZN2cv9BitStream10writeBlockEv.exit.i16

bb.j:                                             ; preds = %bb.i
  %i.ec = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(569) %i.cz, ptr noundef %i.dx, i64 noundef %i.ea) ; 0 uses
  %.pre.i.i17 = load ptr, ptr %i.dw, align 8, !tbaa !108
  br label %_ZN2cv9BitStream10writeBlockEv.exit.i16

_ZN2cv9BitStream10writeBlockEv.exit.i16:          ; preds = %bb.j, %bb.i
  %i.ed = phi ptr [ %.pre.i.i17, %bb.j ], [ %i.dx, %bb.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cz, i64 560 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !112
  %i.eg = add i64 %i.ef, %i.ea
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !112
  store ptr %i.ed, ptr %i.de, align 8, !tbaa !111
  br label %_ZN2cv9BitStream6putIntEj.exit18

_ZN2cv9BitStream6putIntEj.exit18:                 ; preds = %_ZN2cv9BitStream6putIntEj.exit14, %_ZN2cv9BitStream10writeBlockEv.exit.i16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !184
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv17AVIWriteContainer14finishWriteAVIEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
end_hunk_0
