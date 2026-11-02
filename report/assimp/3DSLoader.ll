Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSLoader?download=true
inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter18ParseKeyframeChunkEv:bb.a

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.h
  %.sink = phi ptr [ %i.bd, %bb.o ], [ %i.ai, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.aj, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.ak = ptrtoint ptr %i.z to i64
  %i.al = sub i64 %i.ak, %i.u
  %i.am = load i16, ptr %1, align 2               ; 2 uses
  %.off = add i16 %i.am, 20478
  %switch = icmp ult i16 %.off, 6
  br i1 %switch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  tail call void @_ZN6Assimp19Discreet3DSImporter19ParseHierarchyChunkEt(ptr noundef nonnull align 8 dereferenceable(168) %0, i16 noundef zeroext %i.am)
  br label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit, %bb.i
  %i.an = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  %i.at = and i64 %i.al, 4294967295               ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967295
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  store ptr %i.aw, ptr %i.as, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at ; 2 uses
  store ptr %i.az, ptr %i.as, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.m, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.41)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5: ; preds = %bb.k, %bb.l
  %i.bf = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.p:                                             ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  %.pre-phi14 = phi i64 [ %.pre13, %._crit_edge ], [ %i.bm, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.bp = and i64 %.pre-phi14, 4294967294
  %i.bq = icmp samesign ult i64 %i.bp, 6
  br i1 %i.bq, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.p, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4infoIJRA26_KcRA10_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 1 dereferenceable(10) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #28
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #28
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA10_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(10) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #28
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter10ParseChunkEPKcj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 16 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = and i64 %i.l, 4294967294
  %i.n = icmp samesign ult i64 %i.m, 6
  br i1 %i.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.q = zext i32 %2 to i64                       ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.s = icmp eq ptr %1, null
  %i.t = icmp ne i32 %2, 0
  %or.cond.i46 = and i1 %i.s, %i.t                ; 3 uses
  %i.u = icmp ugt i32 %2, 15                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %3)
  %i.ad = load i32, ptr %i.o, align 2
  %i.ae = add i32 %i.ad, -6                       ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  %.pre128 = load ptr, ptr %i.d, align 8          ; 7 uses
  br i1 %i.af, label %._crit_edge, label %bb.c, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre128, i64 40
  %.pre129 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert130 = getelementptr inbounds nuw i8, ptr %.pre128, i64 24
  %.pre131 = load ptr, ptr %.phi.trans.insert130, align 8
  %.pre132 = ptrtoint ptr %.pre129 to i64
  %.pre133 = ptrtoint ptr %.pre131 to i64
  %.pre135 = sub i64 %.pre132, %.pre133
  br label %bb.ci, !llvm.loop !68

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre128, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre128, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32
  %i.ao = add nsw i32 %i.ae, %i.an                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre128, i64 40 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.ao, -1
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %.pre128, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.at, ptr %i.ap, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.au = zext i32 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.au ; 2 uses
  store ptr %i.av, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre128, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp ugt ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.az = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.cj, %bb.ch, %bb.ca, %bb.bx, %bb.br, %bb.bo, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.ak, %bb.ah, %bb.ae, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.ea, %bb.ae ], [ %i.el, %bb.ah ], [ %i.ew, %bb.ak ], [ %i.hw, %bb.bc ], [ %i.ih, %bb.bf ], [ %i.is, %bb.bi ], [ %i.jd, %bb.bl ], [ %i.jp, %bb.bo ], [ %i.kb, %bb.br ], [ %i.lb, %bb.bx ], [ %i.np, %bb.ca ], [ %i.om, %bb.ch ], [ %.pn.pn, %bb.cj ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.az) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.bb = ptrtoint ptr %i.aq to i64
  %i.bc = sub i64 %i.bb, %i.al
  %i.bd = load i16, ptr %3, align 2
  switch i16 %i.bd, label %bb.cc [
    i16 16640, label %bb.i
    i16 17920, label %bb.q
    i16 18176, label %bb.ao
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.be = load ptr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.ab, ptr %4, align 8
  br i1 %or.cond.i46, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #30
          to label %.noexc unwind label %.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %i.q, ptr %i.c, align 8
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc27 unwind label %.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.bf, ptr %4, align 8
  %i.bg = load i64, ptr %i.c, align 8
  store i64 %i.bg, ptr %i.ab, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %bb.k
  %i.bh = phi ptr [ %i.bf, %.noexc27 ], [ %i.ab, %bb.k ] ; 2 uses
  switch i32 %2, label %bb.m [
    i32 1, label %bb.l
    i32 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bi = load i8, ptr %1, align 1
  store i8 %i.bi, ptr %i.bh, align 1
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %1, i64 %i.q, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.bj = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.bj, ptr %i.ac, align 8
  %i.bk = load ptr, ptr %4, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bn = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %4, align 8               ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ab
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bq = load i64, ptr %i.ab, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN6Assimp19Discreet3DSImporter14ParseMeshChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.cc

.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.j
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.p:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %4, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ab
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

end_hunk_0
begin_hunk_1_@_ZN6Assimp19Discreet3DSImporter10ParseChunkEPKcj:bb.a
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ig) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit56
  %i.ii = load float, ptr %i.ib, align 1
  store ptr %i.ic, ptr %i.ia, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fp, i64 1032 ; 2 uses
  store float %i.ii, ptr %i.ij, align 4
  %i.ik = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8            ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = icmp ugt ptr %i.in, %i.ip
  br i1 %i.iq, label %bb.bg, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58

bb.bg:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57
  %i.ir = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull @.str.39)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @__cxa_throw(ptr nonnull %i.ir, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ir) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57
  %i.it = load float, ptr %i.im, align 1
  store ptr %i.in, ptr %i.il, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fp, i64 1036 ; 2 uses
  store float %i.it, ptr %i.iu, align 4
  %i.iv = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = icmp ugt ptr %i.iy, %i.ja
  br i1 %i.jb, label %bb.bj, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59

bb.bj:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58
  %i.jc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noundef nonnull @.str.39)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @__cxa_throw(ptr nonnull %i.jc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jc) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58
  %i.je = load float, ptr %i.ix, align 1
  store ptr %i.iy, ptr %i.iw, align 8
  %i.jf = load float, ptr %i.hy, align 4
  %i.jg = fsub float %i.je, %i.jf
  store float %i.jg, ptr %i.fs, align 4
  %i.jh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = icmp ugt ptr %i.jk, %i.jm
  br i1 %i.jn, label %bb.bm, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60

bb.bm:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59
  %i.jo = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, ptr noundef nonnull @.str.39)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @__cxa_throw(ptr nonnull %i.jo, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jo) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59
  %i.jq = load float, ptr %i.jj, align 1
  store ptr %i.jk, ptr %i.ji, align 8
  %i.jr = load float, ptr %i.ij, align 4
  %i.js = fsub float %i.jq, %i.jr
  store float %i.js, ptr %i.ft, align 4
  %i.jt = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8            ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = icmp ugt ptr %i.jw, %i.jy
  br i1 %i.jz, label %bb.bp, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61

bb.bp:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60
  %i.ka = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull @.str.39)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @__cxa_throw(ptr nonnull %i.ka, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ka) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60
  %i.kc = load float, ptr %i.jv, align 1
  store ptr %i.jw, ptr %i.ju, align 8
  %i.kd = load float, ptr %i.iu, align 4
  %i.ke = fsub float %i.kc, %i.kd                 ; 4 uses
  store float %i.ke, ptr %i.fu, align 4
  %i.kf = load <2 x float>, ptr %i.fs, align 4    ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.kf, %i.kf
  %i.kg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.kh = extractelement <2 x float> %i.kf, i64 0 ; 2 uses
  %i.ki = call float @llvm.fmuladd.f32(float %i.kh, float %i.kh, float %i.kg)
  %i.kj = call noundef float @llvm.fmuladd.f32(float %i.ke, float %i.ke, float %i.ki) ; 2 uses
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.kj) ; 2 uses
  %i.kk = fpext float %sqrt.i to double
  %i.kl = fcmp olt double %i.kk, 1.000000e-05
  br i1 %i.kl, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61
  %i.km = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.km, ptr noundef nonnull @.str.10)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.fs, align 4
  br label %_ZN10aiVector3tIfEdVEf.exit.sink.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i48, %bb.au
  %lpad.loopexit.split-lp175 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.cj

bb.bt:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61
  %i.kn = fcmp oeq float %i.kj, 0.000000e+00
  br i1 %i.kn, label %_ZN10aiVector3tIfEdVEf.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ko = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.kp = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.kf, %i.kq
  store <2 x float> %i.kr, ptr %i.fs, align 4
  %i.ks = fmul float %i.ke, %i.ko
  br label %_ZN10aiVector3tIfEdVEf.exit.sink.split

_ZN10aiVector3tIfEdVEf.exit.sink.split:           ; preds = %bb.bs, %bb.bu
  %.sink = phi float [ %i.ks, %bb.bu ], [ 0.000000e+00, %bb.bs ]
  store float %.sink, ptr %i.fu, align 4
  br label %_ZN10aiVector3tIfEdVEf.exit

_ZN10aiVector3tIfEdVEf.exit:                      ; preds = %_ZN10aiVector3tIfEdVEf.exit.sink.split, %bb.bt
  %i.kt = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8            ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = icmp ugt ptr %i.kw, %i.ky
  br i1 %i.kz, label %bb.bv, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62

bb.bv:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.la = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull @.str.39)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @__cxa_throw(ptr nonnull %i.la, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.la) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62: ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.lc = load float, ptr %i.kv, align 1
  store ptr %i.kw, ptr %i.ku, align 8
  %i.ld = fmul float %i.lc, f0x3C8EFA35
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.fs, align 4 ; 4 uses
  %.sroa.25.0.copyload = load float, ptr %i.fu, align 4 ; 3 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop173 = fmul <2 x float> %.sroa.04.0.copyload, %.sroa.04.0.copyload
  %i.le = extractelement <2 x float> %foldExtExtBinop173, i64 1
  %i.lf = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.le)
  %i.lg = call noundef float @llvm.fmuladd.f32(float %.sroa.25.0.copyload, float %.sroa.25.0.copyload, float %i.lf) ; 2 uses
  %i.lh = fcmp oeq float %i.lg, 0.000000e+00
  %i.li = shufflevector <2 x float> %.sroa.04.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 0>
  %i.lj = insertelement <4 x float> %i.li, float %.sroa.25.0.copyload, i64 2 ; 2 uses
  br i1 %i.lh, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.lg)
  %i.lk = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.ll = insertelement <4 x float> poison, float %i.lk, i64 0
  %i.lm = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ln = fmul <4 x float> %i.lj, %i.lm
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %i.lo = phi <4 x float> [ %i.lj, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.ln, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.lp = fmul float %i.ld, 5.000000e-01          ; 2 uses
  %7 = call noundef float @sinf(float noundef %i.lp) #28
  %8 = call noundef float @cosf(float noundef %i.lp) #28 ; 3 uses
  %i.lq = fneg float %8                           ; 2 uses
  %i.lr = insertelement <4 x float> poison, float %7, i64 0
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lt = fmul <4 x float> %i.lo, %i.ls           ; 10 uses
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 2> ; 2 uses
  %i.lv = insertelement <4 x float> %i.lu, float %i.lq, i64 1
  %i.lw = insertelement <4 x float> %i.lv, float %8, i64 2
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ly = fmul <4 x float> %i.lu, %i.lx           ; 2 uses
  %i.lz = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ma = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lt, <4 x float> %i.lz, <4 x float> %i.ly) ; 4 uses
  %i.mb = extractelement <4 x float> %i.ma, i64 0
  %i.mc = shufflevector <4 x float> %i.ly, <4 x float> %i.lt, <4 x i32> <i32 0, i32 5, i32 4, i32 5>
  %i.md = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.lq, i64 1
  %i.me = insertelement <4 x float> %i.md, float %8, i64 3
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.mg = fmul <4 x float> %i.mc, %i.mf
  %i.mh = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.mi = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.mj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mh, <4 x float> %i.mi, <4 x float> %i.mg) ; 4 uses
  %i.mk = extractelement <4 x float> %i.mj, i64 0
  %i.ml = call float @llvm.fmuladd.f32(float %i.mb, float -2.000000e+00, float 1.000000e+00)
  %i.mm = call float @llvm.fmuladd.f32(float %i.mk, float -2.000000e+00, float 1.000000e+00)
  %i.mn = shufflevector <4 x float> %i.lt, <4 x float> %i.ma, <4 x i32> <i32 1, i32 poison, i32 7, i32 poison>
  %i.mo = insertelement <4 x float> %i.mn, float %i.ml, i64 1
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> %i.mj, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.mq = fmul <4 x float> %i.mp, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.mr = shufflevector <4 x float> %i.lt, <4 x float> %i.ma, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ms = insertelement <4 x float> %i.mr, float %i.mm, i64 2
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> %i.mj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mu = shufflevector <4 x float> %i.lt, <4 x float> <float poison, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.mv = fmul <4 x float> %i.mt, %i.mu
  %i.mw = shufflevector <4 x float> %i.lt, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.mx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mq, <4 x float> %i.mw, <4 x float> %i.mv) ; 3 uses
  %i.my = extractelement <4 x float> %i.mx, i64 0
  %i.mz = call float @llvm.fmuladd.f32(float %i.my, float -2.000000e+00, float 1.000000e+00)
  %i.na = shufflevector <4 x float> %i.ma, <4 x float> %i.mj, <2 x i32> <i32 2, i32 5>
  %i.nb = fmul <2 x float> %i.na, splat (float 2.000000e+00)
  %i.nc = shufflevector <4 x float> %i.mx, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.nd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nb, <2 x float> zeroinitializer, <2 x float> %i.nc)
  %i.ne = extractelement <4 x float> %i.mx, i64 3
  %i.nf = call float @llvm.fmuladd.f32(float %i.mz, float 0.000000e+00, float %i.ne)
  %i.ng = getelementptr inbounds nuw i8, ptr %i.fp, i64 1040
  store <2 x float> %i.nd, ptr %i.ng, align 4
  store float %i.nf, ptr %i.fr, align 4
  %i.nh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8            ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = icmp ugt ptr %i.nk, %i.nm
  br i1 %i.nn, label %bb.by, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63

bb.by:                                            ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.no = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.no, ptr noundef nonnull @.str.39)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @__cxa_throw(ptr nonnull %i.no, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.no) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63: ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.nq = load float, ptr %i.nj, align 1
  store ptr %i.nk, ptr %i.ni, align 8
  %i.nr = fmul float %i.nq, f0x3C8EFA35           ; 2 uses
  %i.ns = fcmp olt float %i.nr, 1.000000e-03
  %spec.store.select = select i1 %i.ns, float f0x3F490FDB, float %i.nr
  store float %spec.store.select, ptr %i.fv, align 4
  %i.nt = load i8, ptr %i.w, align 1, !range !29, !noundef !30
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63
  call void @_ZN6Assimp19Discreet3DSImporter16ParseCameraChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63, %bb.cb, %bb.am, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.nv = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  store ptr %i.nx, ptr %i.ny, align 8
  %i.nz = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 40 ; 2 uses
  %i.ob = and i64 %i.bc, 4294967295               ; 2 uses
  %i.oc = icmp eq i64 %i.ob, 4294967295
  br i1 %i.oc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oe = load ptr, ptr %i.od, align 8
  store ptr %i.oe, ptr %i.oa, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.ce:                                            ; preds = %bb.cc
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ob ; 2 uses
  store ptr %i.oh, ptr %i.oa, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = icmp ugt ptr %i.oh, %i.oj
  br i1 %i.ok, label %bb.cf, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.cf:                                            ; preds = %bb.ce
  %i.ol = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, ptr noundef nonnull @.str.41)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @__cxa_throw(ptr nonnull %i.ol, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.om = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ol) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64: ; preds = %bb.cd, %bb.ce
  %i.on = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = ptrtoint ptr %i.op to i64
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = sub i64 %i.os, %i.ot                    ; 2 uses
  %i.ov = and i64 %i.ou, 4294967295
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %.thread, label %bb.ci

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit

bb.ci:                                            ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  %.pre-phi136 = phi i64 [ %.pre135, %._crit_edge ], [ %i.ou, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ox = and i64 %.pre-phi136, 4294967294
  %i.oy = icmp samesign ult i64 %i.ox, 6
  br i1 %i.oy, label %.loopexit, label %bb.b

bb.cj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp106.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %lpad.loopexit.split-lp177, %.loopexit.split-lp106.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp175, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

.loopexit:                                        ; preds = %bb.ci, %bb.a, %.thread
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !75
  store i8 0, ptr %i.b, align 8, !alias.scope !75
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !noalias !75 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !75 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !75 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !alias.scope !75 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !alias.scope !75
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

end_hunk_1
begin_hunk_2_@_ZN6Assimp19Discreet3DSImporter16ParseCameraChunkEv:bb.a
  %.pre16 = sub i64 %.pre13, %.pre14
  br label %bb.v, !llvm.loop !113

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.o, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.y, -1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.z, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = zext i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ae ; 2 uses
  store ptr %i.af, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp ugt ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.o, %bb.l, %bb.h
  %.sink = phi ptr [ %i.cf, %bb.u ], [ %i.bl, %bb.o ], [ %i.ba, %bb.l ], [ %i.aj, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.u ], [ %i.bm, %bb.o ], [ %i.bb, %bb.l ], [ %i.ak, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.al = ptrtoint ptr %i.aa to i64
  %i.am = sub i64 %i.al, %i.v
  %i.an = load i16, ptr %1, align 2
  %cond = icmp eq i16 %i.an, 18208
  br i1 %cond, label %bb.i, label %bb.p

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ao = load ptr, ptr %i.m, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp ugt ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.j, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull @.str.39)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit:  ; preds = %bb.i
  %i.bc = load float, ptr %i.av, align 1
  store ptr %i.aw, ptr %i.au, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 1068
  store float %i.bc, ptr %i.bd, align 4
  %i.be = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp ugt ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.m, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit7

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull @.str.39)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit7: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.bn = load float, ptr %i.bg, align 1
  store ptr %i.bh, ptr %i.bf, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 1072
  store float %i.bn, ptr %i.bo, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit7
  %i.bp = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.bv = and i64 %i.am, 4294967295               ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967295
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bu, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8

bb.r:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bv ; 2 uses
  store ptr %i.cb, ptr %i.bu, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp ugt ptr %i.cb, %i.cd
  br i1 %i.ce, label %bb.s, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8

bb.s:                                             ; preds = %bb.r
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.41)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8: ; preds = %bb.q, %bb.r
  %i.ch = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.thread, label %bb.v

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.v:                                             ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8
  %.pre-phi17 = phi i64 [ %.pre16, %._crit_edge ], [ %i.co, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.cr = and i64 %.pre-phi17, 4294967294
  %i.cs = icmp samesign ult i64 %i.cr, 6
  br i1 %i.cs, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.v, %bb.a, %.thread
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter19ParseHierarchyChunkEt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, i16 noundef zeroext %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 38 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = and i64 %i.k, 4294967294
  %i.m = icmp samesign ult i64 %i.l, 6
  br i1 %i.m, label %.loopexit, label %.lr.ph472

.lr.ph472:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 11 uses
  %.not = icmp eq i16 %1, -20477
  %i.p = and i16 %1, -3
  %or.cond = icmp eq i16 %i.p, -20476
  %.not150 = icmp eq i16 %1, -20478               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %. = select i1 %or.cond, i64 184, i64 136
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph472, %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %2)
  %i.w = load i32, ptr %i.n, align 2
  %i.x = add i32 %i.w, -6                         ; 2 uses
  %i.y = icmp slt i32 %i.x, 1
  %.pre506 = load ptr, ptr %i.c, align 8          ; 7 uses
  br i1 %i.y, label %._crit_edge507, label %bb.c, !llvm.loop !114

._crit_edge507:                                   ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre506, i64 40
  %.pre508 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert509 = getelementptr inbounds nuw i8, ptr %.pre506, i64 24
  %.pre510 = load ptr, ptr %.phi.trans.insert509, align 8
  %.pre515 = ptrtoint ptr %.pre508 to i64
  %.pre516 = ptrtoint ptr %.pre510 to i64
  %.pre518 = sub i64 %.pre515, %.pre516
  br label %bb.hb, !llvm.loop !114

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.pre506, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre506, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add nsw i32 %i.x, %i.ag                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre506, i64 40 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.ah, -1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.pre506, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.ai, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.an = zext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an ; 2 uses
  store ptr %i.ao, ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre506, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp ugt ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.as = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.hc, %bb.ha, %bb.gl, %bb.gi, %bb.gf, %bb.gc, %bb.fx, %bb.fu, %bb.fr, %bb.fd, %bb.fa, %bb.ex, %bb.eu, %bb.er, %bb.em, %bb.ej, %bb.dt, %bb.dq, %bb.dk, %bb.dh, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cd, %bb.ca, %bb.bw, %bb.bt, %bb.bq, %bb.ay, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.bf, %bb.k ], [ %i.go, %bb.ay ], [ %i.ir, %bb.bq ], [ %i.jd, %bb.bt ], [ %i.jp, %bb.bw ], [ %i.kb, %bb.ca ], [ %i.kk, %bb.cd ], [ %i.lw, %bb.ci ], [ %i.mh, %bb.cl ], [ %i.mr, %bb.co ], [ %i.nb, %bb.cr ], [ %i.po, %bb.dh ], [ %i.px, %bb.dk ], [ %i.ri, %bb.dq ], [ %i.rt, %bb.dt ], [ %i.ud, %bb.ej ], [ %i.um, %bb.em ], [ %i.vy, %bb.er ], [ %i.wj, %bb.eu ], [ %i.wt, %bb.ex ], [ %i.xd, %bb.fa ], [ %i.xn, %bb.fd ], [ %i.aap, %bb.fr ], [ %i.aay, %bb.fu ], [ %i.abj, %bb.fx ], [ %i.acu, %bb.gc ], [ %i.adf, %bb.gf ], [ %i.adp, %bb.gi ], [ %i.adz, %bb.gl ], [ %i.agv, %bb.ha ], [ %.pn.pn.pn.pn, %bb.hc ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.as) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.au = ptrtoint ptr %i.aj to i64
  %i.av = sub i64 %i.au, %i.ae
  %i.aw = load i16, ptr %2, align 2
  switch i16 %i.aw, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit [
    i16 -20464, label %bb.i
    i16 -20463, label %bb.au
    i16 -20461, label %bb.bl
    i16 -20448, label %bb.bx
    i16 -20444, label %bb.dc
    i16 -20445, label %bb.ef
    i16 -20447, label %bb.eg
    i16 -20446, label %bb.fo
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ax = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  br i1 %i.bd, label %._crit_edge469, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit

._crit_edge469:                                   ; preds = %bb.i, %bb.l
  %i.be = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull @.str.39)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %._crit_edge469
  call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.k:                                             ; preds = %._crit_edge469
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.be) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit:  ; preds = %bb.i, %bb.l
  %i.bg = phi ptr [ %i.bo, %bb.l ], [ %i.ba, %bb.i ]
  %i.bh = phi ptr [ %i.bn, %bb.l ], [ %i.az, %bb.i ]
  %i.bi = phi ptr [ %i.bm, %bb.l ], [ %i.ay, %bb.i ]
  %.0126468 = phi i32 [ %i.bk, %bb.l ], [ 0, %bb.i ] ; 5 uses
  %i.bj = load i8, ptr %i.bh, align 1
  store ptr %i.bg, ptr %i.bi, align 8
  %.not152 = icmp eq i8 %i.bj, 0
  br i1 %.not152, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit
  %i.bk = add i32 %.0126468, 1
  %i.bl = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp ugt ptr %i.bo, %i.bq
  br i1 %i.br, label %._crit_edge469, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit, !llvm.loop !115

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bs = zext i32 %.0126468 to i64               ; 2 uses
  store ptr %i.s, ptr %3, align 8
  %i.bt = icmp eq ptr %i.az, null
  %i.bu = icmp ne i32 %.0126468, 0
  %or.cond.i = and i1 %i.bt, %i.bu
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #30
          to label %.noexc unwind label %.loopexit.split-lp397.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.bs, ptr %i.b, align 8
  %i.bv = icmp ugt i32 %.0126468, 15
  br i1 %i.bv, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.bw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc164 unwind label %.loopexit.split-lp397.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc164:                                        ; preds = %.noexc.i
  store ptr %i.bw, ptr %3, align 8
  %i.bx = load i64, ptr %i.b, align 8
  store i64 %i.bx, ptr %i.s, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc164, %bb.o
  %i.by = phi ptr [ %i.bw, %.noexc164 ], [ %i.s, %bb.o ] ; 2 uses
  switch i32 %.0126468, label %bb.q [
    i32 1, label %bb.p
    i32 0, label %bb.r
end_hunk_2
begin_hunk_3_@_ZN6Assimp19Discreet3DSImporter19ParseHierarchyChunkEt:bb.a
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uo, i64 120 ; 3 uses
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = ptrtoint ptr %i.va to i64
  %i.vc = sub i64 %i.vb, %i.uv
  %i.vd = shl nuw nsw i64 %i.uq, 5
  %i.ve = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vd) #31 ; 4 uses
  %i.vf = load ptr, ptr %i.up, align 8            ; 5 uses
  %i.vg = load ptr, ptr %i.uz, align 8            ; 2 uses
  %.not10.i.i.i.i230 = icmp eq ptr %i.vf, %i.vg
  br i1 %.not10.i.i.i.i230, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i231

.lr.ph.i.i.i.i231:                                ; preds = %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i231
  %.012.i.i.i.i232 = phi ptr [ %i.vi, %.lr.ph.i.i.i.i231 ], [ %i.ve, %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i233 = phi ptr [ %i.vh, %.lr.ph.i.i.i.i231 ], [ %i.vf, %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i232, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i233, i64 32, i1 false), !alias.scope !147
  %i.vh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i233, i64 32 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i232, i64 32
  %.not.i.i.i.i234 = icmp eq ptr %i.vh, %i.vg
  br i1 %.not.i.i.i.i234, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i231, !llvm.loop !2

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i231, %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i
  %.not.i8.i235 = icmp eq ptr %i.vf, null
  br i1 %.not.i8.i235, label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.vj = load ptr, ptr %i.ur, align 8
  %i.vk = ptrtoint ptr %i.vj to i64
  %i.vl = ptrtoint ptr %i.vf to i64
  %i.vm = sub i64 %i.vk, %i.vl
  call void @_ZdlPvm(ptr noundef nonnull %i.vf, i64 noundef %i.vm) #29
  br label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.en, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.ve, ptr %i.up, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vc
  store ptr %i.vn, ptr %i.uz, align 8
  %i.vo = getelementptr inbounds nuw [32 x i8], ptr %i.ve, i64 %i.uq
  store ptr %i.vo, ptr %i.ur, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE7reserveEm.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EE7reserveEm.exit:   ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit229, %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit.i
  %.not477 = icmp eq i32 %i.un, 0
  br i1 %.not477, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %.lr.ph455

.lr.ph455:                                        ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE7reserveEm.exit
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uo, i64 120 ; 7 uses
  br label %bb.eo

._crit_edge456:                                   ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit
  br i1 %.1142, label %bb.fk, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit

bb.eo:                                            ; preds = %.lr.ph455, %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit
  %.0140454 = phi i32 [ 0, %.lr.ph455 ], [ %i.zk, %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit ]
  %.0141453 = phi i1 [ false, %.lr.ph455 ], [ %.1142, %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.vq = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 24 ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 8            ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 4 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 40
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = icmp ugt ptr %i.vt, %i.vv
  br i1 %i.vw, label %bb.ep, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit236

bb.ep:                                            ; preds = %bb.eo
  %i.vx = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.vx, ptr noundef nonnull @.str.39)
          to label %bb.eq unwind label %bb.er

bb.eq:                                            ; preds = %bb.ep
  call void @__cxa_throw(ptr nonnull %i.vx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.vy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vx) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit236: ; preds = %bb.eo
  %i.vz = load i32, ptr %i.vs, align 1
  store ptr %i.vt, ptr %i.vr, align 8
  call void @_ZN6Assimp19Discreet3DSImporter11SkipTCBInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %i.wa = uitofp i32 %i.vz to double              ; 3 uses
  %i.wb = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 24 ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8            ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 4 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wb, i64 40
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = icmp ugt ptr %i.we, %i.wg
  br i1 %i.wh, label %bb.es, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237

bb.es:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit236
  %i.wi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, ptr noundef nonnull @.str.39)
          to label %bb.et unwind label %bb.eu

bb.et:                                            ; preds = %bb.es
  call void @__cxa_throw(ptr nonnull %i.wi, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.wj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.wi) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit236
  %i.wk = load float, ptr %i.wd, align 1
  store ptr %i.we, ptr %i.wc, align 8
  %i.wl = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 24 ; 2 uses
  %i.wn = load ptr, ptr %i.wm, align 8            ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 4 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wl, i64 40
  %i.wq = load ptr, ptr %i.wp, align 8
  %i.wr = icmp ugt ptr %i.wo, %i.wq
  br i1 %i.wr, label %bb.ev, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit238

bb.ev:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237
  %i.ws = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ws, ptr noundef nonnull @.str.39)
          to label %bb.ew unwind label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  call void @__cxa_throw(ptr nonnull %i.ws, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ex:                                            ; preds = %bb.ev
  %i.wt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ws) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit238: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237
  %i.wu = load float, ptr %i.wn, align 1          ; 2 uses
  store ptr %i.wo, ptr %i.wm, align 8
  %i.wv = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24 ; 2 uses
  %i.wx = load ptr, ptr %i.ww, align 8            ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 4 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wv, i64 40
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = icmp ugt ptr %i.wy, %i.xa
  br i1 %i.xb, label %bb.ey, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit239

bb.ey:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit238
  %i.xc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, ptr noundef nonnull @.str.39)
          to label %bb.ez unwind label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  call void @__cxa_throw(ptr nonnull %i.xc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.fa:                                            ; preds = %bb.ey
  %i.xd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.xc) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit239: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit238
  %i.xe = load float, ptr %i.wx, align 1          ; 2 uses
  store ptr %i.wy, ptr %i.ww, align 8
  %i.xf = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 24 ; 2 uses
  %i.xh = load ptr, ptr %i.xg, align 8            ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 4 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 40
  %i.xk = load ptr, ptr %i.xj, align 8
  %i.xl = icmp ugt ptr %i.xi, %i.xk
  br i1 %i.xl, label %bb.fb, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit240

bb.fb:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit239
  %i.xm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.xm, ptr noundef nonnull @.str.39)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  call void @__cxa_throw(ptr nonnull %i.xm, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.fd:                                            ; preds = %bb.fb
  %i.xn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.xm) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit240: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit239
  %.sroa.0334.0.vec.insert = insertelement <2 x float> poison, float %i.wu, i64 0
  %.sroa.0334.4.vec.insert341 = insertelement <2 x float> %.sroa.0334.0.vec.insert, float %i.xe, i64 1 ; 2 uses
  %i.xo = load float, ptr %i.xh, align 1          ; 5 uses
  store ptr %i.xi, ptr %i.xg, align 8
  %i.xp = fcmp une float %i.wu, 0.000000e+00
  %i.xq = fcmp une float %i.xe, 0.000000e+00
  %or.cond5 = select i1 %i.xp, i1 true, i1 %i.xq
  %i.xr = fcmp une float %i.xo, 0.000000e+00
  %or.cond8 = or i1 %or.cond5, %i.xr
  %.sroa.0334.4.vec.insert = insertelement <2 x float> %.sroa.0334.4.vec.insert341, float 1.000000e+00, i64 1
  %.sroa.0334.0 = select i1 %or.cond8, <2 x float> %.sroa.0334.4.vec.insert341, <2 x float> %.sroa.0334.4.vec.insert ; 5 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.0334.0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0334.0, %.sroa.0334.0
  %i.xs = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.xt = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.xs)
  %i.xu = call noundef float @llvm.fmuladd.f32(float %i.xo, float %i.xo, float %i.xt) ; 2 uses
  %i.xv = fcmp oeq float %i.xu, 0.000000e+00
  br i1 %i.xv, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit240
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.xu)
  %i.xw = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.xx = insertelement <2 x float> poison, float %i.xw, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xz = fmul <2 x float> %.sroa.0334.0, %i.xy
  %i.ya = fmul float %i.xo, %i.xw
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit240, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.7.0.i = phi float [ %i.xo, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit240 ], [ %i.ya, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.yb = phi <2 x float> [ %.sroa.0334.0, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit240 ], [ %i.xz, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.yc = fmul float %i.wk, 5.000000e-01          ; 2 uses
  %5 = call noundef float @sinf(float noundef %i.yc) #28 ; 2 uses
  %6 = call noundef float @cosf(float noundef %i.yc) #28 ; 2 uses
  %i.yd = insertelement <2 x float> poison, float %5, i64 0
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yf = fmul <2 x float> %i.yb, %i.ye           ; 2 uses
  %i.yg = fmul float %.sroa.7.0.i, %5             ; 2 uses
  %i.yh = load ptr, ptr %i.up, align 8            ; 5 uses
  %i.yi = load ptr, ptr %i.vp, align 8            ; 10 uses
  %i.yj = icmp eq ptr %i.yh, %i.yi                ; 2 uses
  br i1 %i.yj, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.yk = getelementptr inbounds i8, ptr %i.yi, i64 -32
  %i.yl = load double, ptr %i.yk, align 8
  %i.ym = fcmp oge double %i.yl, %i.wa
  %spec.select162 = select i1 %i.ym, i1 true, i1 %.0141453
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %.1142 = phi i1 [ %.0141453, %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit ], [ %spec.select162, %bb.fe ] ; 2 uses
  %i.yn = load ptr, ptr %i.ur, align 8
  %.not.i241 = icmp eq ptr %i.yi, %i.yn
  br i1 %.not.i241, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  store double %i.wa, ptr %i.yi, align 8
  %.sroa.7347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  store float %6, ptr %.sroa.7347.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yi, i64 12
  store <2 x float> %i.yf, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yi, i64 20
  store float %i.yg, ptr %.sroa.13354.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  store i32 1, ptr %.sroa.15.0..sroa_idx, align 8
  %i.yo = load ptr, ptr %i.vp, align 8
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 32 ; 2 uses
  store ptr %i.yp, ptr %i.vp, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit

bb.fh:                                            ; preds = %bb.ff
  %i.yq = ptrtoint ptr %i.yi to i64
  %i.yr = ptrtoint ptr %i.yh to i64               ; 2 uses
  %i.ys = sub i64 %i.yq, %i.yr                    ; 3 uses
  %i.yt = icmp eq i64 %i.ys, 9223372036854775776
  br i1 %i.yt, label %bb.fi, label %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.fi:                                            ; preds = %bb.fh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fh
  %i.yu = ashr exact i64 %i.ys, 5                 ; 3 uses
  %.sroa.speculated.i.i.i242 = call i64 @llvm.umax.i64(i64 %i.yu, i64 1)
  %i.yv = add nsw i64 %.sroa.speculated.i.i.i242, %i.yu ; 2 uses
  %i.yw = icmp ult i64 %i.yv, %i.yu
  %i.yx = call i64 @llvm.umin.i64(i64 %i.yv, i64 288230376151711743)
  %i.yy = select i1 %i.yw, i64 288230376151711743, i64 %i.yx ; 3 uses
  %.not.i.i.i243 = icmp ne i64 %i.yy, 0
  call void @llvm.assume(i1 %.not.i.i.i243)
  %i.yz = shl nuw nsw i64 %i.yy, 5
  %i.za = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yz) #31 ; 5 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.ys ; 5 uses
  store double %i.wa, ptr %i.zb, align 8
  %.sroa.7347.0..sroa_idx348 = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store float %6, ptr %.sroa.7347.0..sroa_idx348, align 8
  %.sroa.9.0..sroa_idx350 = getelementptr inbounds nuw i8, ptr %i.zb, i64 12
  store <2 x float> %i.yf, ptr %.sroa.9.0..sroa_idx350, align 4
  %.sroa.13354.0..sroa_idx355 = getelementptr inbounds nuw i8, ptr %i.zb, i64 20
  store float %i.yg, ptr %.sroa.13354.0..sroa_idx355, align 4
  %.sroa.15.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  store i32 1, ptr %.sroa.15.0..sroa_idx357, align 8
  br i1 %i.yj, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i245

.lr.ph.i.i.i.i.i245:                              ; preds = %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i245
  %.012.i.i.i.i.i246 = phi ptr [ %i.zd, %.lr.ph.i.i.i.i.i245 ], [ %i.za, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i247 = phi ptr [ %i.zc, %.lr.ph.i.i.i.i.i245 ], [ %i.yh, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i246, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i247, i64 32, i1 false), !alias.scope !148
  %i.zc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i247, i64 32 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i246, i64 32 ; 2 uses
  %.not.i.i.i.i.i248 = icmp eq ptr %i.zc, %i.yi
  br i1 %.not.i.i.i.i.i248, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i245, !llvm.loop !2

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i245, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i249 = phi ptr [ %i.za, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.zd, %.lr.ph.i.i.i.i.i245 ]
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i249, i64 32 ; 2 uses
  %.not.i23.i.i250 = icmp eq ptr %i.yh, null
  br i1 %.not.i23.i.i250, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  %i.zf = load ptr, ptr %i.ur, align 8
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = sub i64 %i.zg, %i.yr
  call void @_ZdlPvm(ptr noundef nonnull %i.yh, i64 noundef %i.zh) #29
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.fj, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.za, ptr %i.up, align 8
  store ptr %i.ze, ptr %i.vp, align 8
  %i.zi = getelementptr inbounds nuw [32 x i8], ptr %i.za, i64 %i.yy
  store ptr %i.zi, ptr %i.ur, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit: ; preds = %bb.fg, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.zj = phi ptr [ %i.yp, %bb.fg ], [ %i.ze, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
  %i.zk = add nuw i32 %.0140454, 1                ; 2 uses
  %exitcond500.not = icmp eq i32 %i.zk, %i.un
  br i1 %exitcond500.not, label %._crit_edge456, label %bb.eo, !llvm.loop !135

bb.fk:                                            ; preds = %._crit_edge456
  %i.zl = load ptr, ptr %i.up, align 8
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %i.zl, ptr nonnull %i.zj)
  %i.zm = load ptr, ptr %i.up, align 8            ; 2 uses
  %i.zn = load ptr, ptr %i.vp, align 8            ; 5 uses
  %i.zo = icmp eq ptr %i.zm, %i.zn
  br i1 %i.zo, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %.preheader.i.i.i251

.preheader.i.i.i251:                              ; preds = %bb.fk, %bb.fl
  %.sroa.010.0.i.i.i252 = phi ptr [ %i.zp, %bb.fl ], [ %i.zm, %bb.fk ] ; 5 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i252, i64 32 ; 3 uses
  %.not.i.i.i253 = icmp eq ptr %i.zp, %i.zn
  br i1 %.not.i.i.i253, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.fl

bb.fl:                                            ; preds = %.preheader.i.i.i251
  %i.zq = load double, ptr %.sroa.010.0.i.i.i252, align 8
  %i.zr = load double, ptr %i.zp, align 8
  %i.zs = fcmp oeq double %i.zq, %i.zr
  br i1 %i.zs, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i, label %.preheader.i.i.i251, !llvm.loop !136

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i: ; preds = %bb.fl
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i252, i64 64 ; 2 uses
  %.not20.i.i254 = icmp eq ptr %i.zt, %i.zn
  br i1 %.not20.i.i254, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit, label %.lr.ph.i.i255

.lr.ph.i.i255:                                    ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i, %bb.fn
  %i.zu = phi ptr [ %i.zz, %bb.fn ], [ %i.zt, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i ] ; 3 uses
  %.sroa.0.021.i.i256 = phi ptr [ %.sroa.0.1.i.i257, %bb.fn ], [ %.sroa.010.0.i.i.i252, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i ] ; 3 uses
  %i.zv = load double, ptr %.sroa.0.021.i.i256, align 8
  %i.zw = load double, ptr %i.zu, align 8
  %i.zx = fcmp oeq double %i.zv, %i.zw
  br i1 %i.zx, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %.lr.ph.i.i255
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i256, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.zy, ptr noundef nonnull align 8 dereferenceable(28) %i.zu, i64 28, i1 false)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %.lr.ph.i.i255
  %.sroa.0.1.i.i257 = phi ptr [ %.sroa.0.021.i.i256, %.lr.ph.i.i255 ], [ %i.zy, %bb.fm ] ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 32 ; 2 uses
  %.not.i.i258 = icmp eq ptr %i.zz, %i.zn
  br i1 %.not.i.i258, label %._crit_edge.i.i259.loopexit, label %.lr.ph.i.i255, !llvm.loop !137

._crit_edge.i.i259.loopexit:                      ; preds = %bb.fn
  %.pre503.pre = load ptr, ptr %i.vp, align 8
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i, %._crit_edge.i.i259.loopexit
  %.pre503 = phi ptr [ %i.zn, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i ], [ %.pre503.pre, %._crit_edge.i.i259.loopexit ]
  %.sroa.0.0.lcssa.i.i260 = phi ptr [ %.sroa.010.0.i.i.i252, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i ], [ %.sroa.0.1.i.i257, %._crit_edge.i.i259.loopexit ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i260, i64 32 ; 2 uses
  %i.aab = icmp eq ptr %i.aaa, %.pre503
  br i1 %i.aab, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %_ZSt8_DestroyIP9aiQuatKeyS0_EvT_S2_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP9aiQuatKeyS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit
  %i.aac = load ptr, ptr %i.up, align 8           ; 2 uses
  %i.aad = ptrtoint ptr %i.aaa to i64
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = getelementptr inbounds i8, ptr %i.aac, i64 %i.aaf
  store ptr %i.aag, ptr %i.vp, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit

bb.fo:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.aah = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 24 ; 2 uses
  %i.aaj = load ptr, ptr %i.aai, align 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 10 ; 2 uses
  store ptr %i.aak, ptr %i.aai, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 40
  %i.aam = load ptr, ptr %i.aal, align 8
  %i.aan = icmp ugt ptr %i.aak, %i.aam
  br i1 %i.aan, label %bb.fp, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit265

bb.fp:                                            ; preds = %bb.fo
  %i.aao = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aao, ptr noundef nonnull @.str.40)
          to label %bb.fq unwind label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call void @__cxa_throw(ptr nonnull %i.aao, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.fr:                                            ; preds = %bb.fp
  %i.aap = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aao) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit265: ; preds = %bb.fo
  %i.aaq = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 24 ; 2 uses
  %i.aas = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 2 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aaq, i64 40
  %i.aav = load ptr, ptr %i.aau, align 8
  %i.aaw = icmp ugt ptr %i.aat, %i.aav
  br i1 %i.aaw, label %bb.fs, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit266

bb.fs:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit265
  %i.aax = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aax, ptr noundef nonnull @.str.39)
          to label %bb.ft unwind label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  call void @__cxa_throw(ptr nonnull %i.aax, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.fu:                                            ; preds = %bb.fs
  %i.aay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aax) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit266: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit265
  %i.aaz = load i16, ptr %i.aas, align 1          ; 2 uses
  store ptr %i.aat, ptr %i.aar, align 8
  %i.aba = sext i16 %i.aaz to i32                 ; 2 uses
  %i.abb = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 24 ; 2 uses
  %i.abd = load ptr, ptr %i.abc, align 8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 2 ; 2 uses
  store ptr %i.abe, ptr %i.abc, align 8
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 40
  %i.abg = load ptr, ptr %i.abf, align 8
  %i.abh = icmp ugt ptr %i.abe, %i.abg
  br i1 %i.abh, label %bb.fv, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit267

bb.fv:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit266
  %i.abi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.abi, ptr noundef nonnull @.str.40)
          to label %bb.fw unwind label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  call void @__cxa_throw(ptr nonnull %i.abi, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.fx:                                            ; preds = %bb.fv
  %i.abj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.abi) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit267: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit266
  %i.abk = load ptr, ptr %i.o, align 8            ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 160 ; 8 uses
  %i.abm = zext i32 %i.aba to i64                 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 176 ; 6 uses
  %i.abo = load ptr, ptr %i.abn, align 8
  %i.abp = load ptr, ptr %i.abl, align 8
  %i.abq = ptrtoint ptr %i.abo to i64
  %i.abr = ptrtoint ptr %i.abp to i64             ; 2 uses
  %i.abs = sub i64 %i.abq, %i.abr
  %i.abt = sdiv exact i64 %i.abs, 24
  %i.abu = icmp ult i64 %i.abt, %i.abm
  br i1 %i.abu, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i268, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit277
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.y, ptr %i.s, align 8
  %i.z = load i64, ptr %i.a, align 8
  store i64 %i.z, ptr %i.t, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZNKSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = phi ptr [ %i.y, %.noexc.i ], [ %i.t, %_ZNKSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.u, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.s, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  store float 1.000000e+00, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 156
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 196
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.an, align 4
  %i.ao = call noundef ptr @_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %i.q, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 216
  %i.aq = call noundef ptr @_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.d, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN6Assimp4D3DS4MeshESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.au) #29
  br label %_ZNSt12_Vector_baseIN6Assimp4D3DS4MeshESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp4D3DS4MeshESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %bb.e, %bb.f
  store ptr %i.q, ptr %0, align 8
  store ptr %i.aq, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.q, i64 %i.m
  store ptr %i.av, ptr %i.ar, align 8
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit: ; preds = %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN23MeshWithSmoothingGroupsIN6Assimp4D3DS4FaceEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(216) %i.r) #28
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = call ptr @__cxa_begin_catch(ptr %i.ay) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #32
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN6Assimp4D3DS4MeshES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 11 uses
  %.0911.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.a = load <2 x ptr>, ptr %.0911.i.i, align 8, !alias.scope !200
  store <2 x ptr> %i.a, ptr %.012.i.i, align 8, !alias.scope !199
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.0911.i.i, i8 0, i64 24, i1 false), !alias.scope !200
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !200
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !alias.scope !200
  %i.i = insertelement <4 x ptr> poison, ptr %i.f, i64 0
  %i.j = insertelement <4 x ptr> %i.i, ptr %i.g, i64 1
  %i.k = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.l = shufflevector <4 x ptr> %i.j, <4 x ptr> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.l, ptr %i.b, align 8, !alias.scope !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !alias.scope !200
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 48 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !alias.scope !200
  store <2 x ptr> %i.o, ptr %i.m, align 8, !alias.scope !199
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !200
  store ptr %i.r, ptr %i.p, align 8, !alias.scope !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !alias.scope !200
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 88 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !alias.scope !199
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !200 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !200 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false), !alias.scope !201
  br label %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.v, ptr %i.s, align 8, !alias.scope !199
  %i.ac = load i64, ptr %i.w, align 8, !alias.scope !200
  store i64 %i.ac, ptr %i.u, align 8, !alias.scope !199
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !200
  br label %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.ad = phi i64 [ %i.z, %bb.b ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  store i64 %i.ad, ptr %i.af, align 8, !alias.scope !199
  store ptr %i.w, ptr %i.t, align 8, !alias.scope !200
  store i64 0, ptr %i.ae, align 8, !alias.scope !200
  store i8 0, ptr %i.w, align 8, !alias.scope !200
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !alias.scope !200
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !alias.scope !199
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 136
  %i.an = load ptr, ptr %i.ak, align 8, !alias.scope !200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !200
  %i.ao = load ptr, ptr %i.al, align 8, !alias.scope !200
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !200
  %i.aq = insertelement <4 x ptr> poison, ptr %i.an, i64 0
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %i.ao, i64 1
  %i.as = shufflevector <2 x ptr> %i.ap, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x ptr> %i.ar, <4 x ptr> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.at, ptr %i.aj, align 8, !alias.scope !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !alias.scope !200
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 152
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false), !alias.scope !201
  tail call void @_ZN6Assimp4D3DS4MeshD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %.0911.i.i) #28
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 216 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 216 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN6Assimp4D3DS4MeshES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !198

_ZSt12__relocate_aIPN6Assimp4D3DS4MeshES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.ax, %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 24            ; 2 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 7 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit, label %.lr.ph.i.i, !llvm.loop !202

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i, %.lr.ph.i.i.i ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01320.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.019.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24 ; 2 uses
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.013.i.i.i, %i.n
  br i1 %.not.i.i.i, label %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !203

_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.o, %.lr.ph.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa.i.i.i, i64 24, i1 false)
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %i.p = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.p, label %bb.d, label %bb.f, !prof !31

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_T1_(ptr %0, ptr %i.q, ptr %1, ptr noundef %.sroa.12.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.s) #28
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit
  %i.t = icmp eq ptr %.sroa.12.0, null
  br i1 %i.t, label %bb.g, label %bb.h, !prof !28

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.u = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = udiv exact i64 %i.c, 24
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.c, 168
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.016.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.016.i)
  %i.g = shl nuw nsw i64 %.016.i, 1
  tail call void @_ZSt17__merge_sort_loopIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.e, ptr %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.016.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit, !llvm.loop !204

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 4 uses
  %i.l = udiv exact i64 %i.k, 24
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.k, 168
  br i1 %i.n, label %.lr.ph.i9, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit11

.lr.ph.i9:                                        ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit, %.lr.ph.i9
  %.016.i10 = phi i64 [ %i.p, %.lr.ph.i9 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.016.i10)
  %i.o = shl nuw nsw i64 %.016.i10, 1
  tail call void @_ZSt17__merge_sort_loopIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.m, ptr %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.016.i10, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i9, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit11, !llvm.loop !204

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit11: ; preds = %.lr.ph.i9, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit
  %i.r = sdiv exact i64 %i.c, 24
  %i.s = sdiv exact i64 %i.k, 24
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.r, i64 noundef %i.s, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.5.i.i = alloca { %class.aiVector3t, i32 }, align 8 ; 4 uses
  %2 = alloca %struct.aiVectorKey, align 8        ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 360
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not16.i = icmp eq ptr %.sroa.0.015.i, %1
  %or.cond = select i1 %i.e, i1 true, i1 %.not16.i
  br i1 %or.cond, label %common.ret21, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.h
  %.sroa.0.018.i = phi ptr [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.015.i, %bb.b ] ; 7 uses
  %.pn17.i = phi ptr [ %.sroa.0.018.i, %bb.h ], [ %0, %bb.b ] ; 5 uses
  %i.f = load double, ptr %.sroa.0.018.i, align 8 ; 4 uses
  %i.g = load double, ptr %0, align 8
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i, i64 24, i1 false)
  %i.i = ptrtoint ptr %.sroa.0.018.i to i64
  %i.j = sub i64 %i.i, %i.b                       ; 4 uses
  %i.k = icmp sgt i64 %i.j, 24
  br i1 %i.k, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 48
  %.neg23.i = udiv exact i64 %i.j, 24
  %.neg23.neg.i = sub nsw i64 0, %.neg23.i
  %i.m = getelementptr inbounds [24 x i8], ptr %i.l, i64 %.neg23.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.j, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.j, 24
  br i1 %i.n, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false)
  %i.p = load double, ptr %.pn17.i, align 8
  %i.q = fcmp olt double %i.f, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.g ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i, i64 24, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -24 ; 2 uses
  %i.r = load double, ptr %.sroa.0.0.i.i, align 8
  %i.s = fcmp olt double %i.f, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i, %bb.g ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store double %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %common.ret21, label %.lr.ph.i, !llvm.loop !5

common.ret21:                                     ; preds = %bb.b, %bb.h, %bb.i
  ret void

bb.i:                                             ; preds = %bb.a
  %i.t = udiv exact i64 %i.c, 24
  %i.u = lshr i64 %i.t, 1                         ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.u ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %i.v)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %i.v, ptr %1)
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.a, %i.w
  %i.y = sdiv exact i64 %i.x, 24
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_(ptr %0, ptr %i.v, ptr %1, i64 noundef %i.u, i64 noundef %i.y)
  br label %common.ret21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret25:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_SB_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret25

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2)
  br label %common.ret25
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 24
  br i1 %i.e, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %.not22.i = icmp eq ptr %1, %0
  br i1 %.not22.i, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, %bb.i
  %.025.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 7 uses
  %.sroa.0.024.i = phi ptr [ %i.l, %bb.i ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 5 uses
  %.sroa.016.023.i = phi ptr [ %.sroa.016.1.i, %bb.i ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.023.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.g = load double, ptr %.sroa.016.023.i, align 8
  %i.h = load double, ptr %.025.i, align 8
  %i.i = fcmp olt double %i.g, %i.h
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.023.i, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.016.023.i, i64 24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.025.i, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.025.i, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.016.1.i = phi ptr [ %i.j, %bb.g ], [ %.sroa.016.023.i, %bb.h ]
  %.1.i = phi ptr [ %.025.i, %bb.g ], [ %i.k, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 24
  %.not.i = icmp eq ptr %.1.i, %i.f
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !205

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %.025.i to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp sgt i64 %i.o, 24
  br i1 %i.p, label %bb.j, label %bb.k, !prof !31

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.024.i, ptr align 8 %.025.i, i64 %i.o, i1 false)
  br label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.q = icmp eq i64 %i.o, 24
  br i1 %i.q, label %bb.l, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.025.i, i64 24, i1 false)
  br label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp sgt i64 %i.t, 24
  br i1 %i.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19.thread, label %bb.n, !prof !31

bb.n:                                             ; preds = %bb.m
  %i.v = icmp eq i64 %i.t, 24
  br i1 %i.v, label %bb.o, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19: ; preds = %bb.n, %bb.o
  %i.w = icmp eq ptr %0, %1
  br i1 %i.w, label %bb.p, label %bb.r

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19.thread: ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.t, i1 false)
  %i.x = icmp eq ptr %0, %1
  br i1 %i.x, label %.thread, label %bb.r

.thread:                                          ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19.thread
  %.neg2942.i = udiv exact i64 %i.t, 24
  %.neg2942.neg.i = sub nsw i64 0, %.neg2942.i
  %i.y = getelementptr inbounds [24 x i8], ptr %2, i64 %.neg2942.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %5, i64 %i.t, i1 false)
  br label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.p:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19
  %i.z = icmp eq i64 %i.t, 24
  br i1 %i.z, label %bb.q, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds i8, ptr %2, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19.thread, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19
  %i.ab = icmp eq ptr %2, %1
  br i1 %i.ab, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds i8, ptr %5, i64 %i.t
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -24
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.s
  %.sroa.022.0.i.ph.pn = phi ptr [ %1, %bb.s ], [ %.sroa.022.0.i.ph, %bb.u ]
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.s ], [ %i.ah, %bb.u ]
  %.0.i.ph = phi ptr [ %i.ad, %bb.s ], [ %.0.i, %bb.u ]
  %.sroa.022.0.i.ph = getelementptr inbounds i8, ptr %.sroa.022.0.i.ph.pn, i64 -24 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.outer, %bb.aa
  %.sroa.0.0.i = phi ptr [ %i.ah, %bb.aa ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.as, %bb.aa ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.ae = load double, ptr %.0.i, align 8
  %i.af = load double, ptr %.sroa.022.0.i.ph, align 8
  %i.ag = fcmp olt double %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -24 ; 5 uses
  br i1 %i.ag, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.022.0.i.ph, i64 24, i1 false)
  %i.ai = icmp eq ptr %0, %.sroa.022.0.i.ph
  br i1 %i.ai, label %bb.v, label %.outer, !llvm.loop !206

bb.v:                                             ; preds = %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %5 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp sgt i64 %i.am, 24
  br i1 %i.an, label %bb.w, label %bb.x, !prof !31

bb.w:                                             ; preds = %bb.v
  %.neg44.i = udiv exact i64 %i.am, 24
  %.neg44.neg.i = sub nsw i64 0, %.neg44.i
  %i.ao = getelementptr inbounds [24 x i8], ptr %i.ah, i64 %.neg44.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %5, i64 %i.am, i1 false)
  br label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.x:                                             ; preds = %bb.v
  %i.ap = icmp eq i64 %i.am, 24
  br i1 %i.ap, label %bb.y, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.y:                                             ; preds = %bb.x
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.z:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.0.i, i64 24, i1 false)
  %i.ar = icmp eq ptr %5, %.0.i
  br i1 %i.ar, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = getelementptr inbounds i8, ptr %.0.i, i64 -24
  br label %bb.t, !llvm.loop !206

_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit: ; preds = %bb.i, %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %.thread, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.5.i.i6 = alloca { %class.aiVector3t, i32 }, align 8 ; 4 uses
  %3 = alloca %struct.aiVectorKey, align 8        ; 4 uses
  %.sroa.5.i.i = alloca { %class.aiVector3t, i32 }, align 8 ; 4 uses
  %4 = alloca %struct.aiVectorKey, align 8        ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
  %.not31 = icmp slt i64 %i.d, %2
  br i1 %.not31, label %._crit_edge, label %.lr.ph
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader150, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec114 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec114, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body117 ] ; 2 uses
  %i.bm = shl i64 %index118, 2
  %next.gep119 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep119, i64 16
  store <4 x i32> %broadcast.splat116, ptr %next.gep119, align 4
  store <4 x i32> %broadcast.splat116, ptr %i.bn, align 4
  %index.next120 = add nuw i64 %index118, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.bo, label %middle.block121, label %vector.body117, !llvm.loop !253

middle.block121:                                  ; preds = %vector.body117
  %cmp.n122 = icmp eq i64 %i.bj, %n.vec114
  br i1 %cmp.n122, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader150

.lr.ph.i.i.i71.preheader150:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block121
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block121 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader150, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader150 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !254

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #30
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check138 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check138, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %bb.t
  %n.vec140 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec140, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert141 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat142 = shufflevector <4 x i32> %broadcast.splatinsert141, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph139
  %index144 = phi i64 [ 0, %vector.ph139 ], [ %index.next146, %vector.body143 ] ; 2 uses
  %i.cn = shl i64 %index144, 2
  %next.gep145 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep145, i64 16
  store <4 x i32> %broadcast.splat142, ptr %next.gep145, align 4
  store <4 x i32> %broadcast.splat142, ptr %i.co, align 4
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next146, %n.vec140
  br i1 %i.cp, label %middle.block147, label %vector.body143, !llvm.loop !255

middle.block147:                                  ; preds = %vector.body143
  %cmp.n148 = icmp eq i64 %i.ck, %n.vec140
  br i1 %cmp.n148, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block147
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !256

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block147
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !31

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4
  store i32 %i.ct, ptr %i.ce, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !31

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4
  store i32 %i.cy, ptr %i.cu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block121, %middle.block134, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { nounwind allocsize(0) }

!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = distinct !{!6, !27}
!7 = distinct !{!7, !27}
!8 = distinct !{!8, !27}
!9 = distinct !{!9, !27}
!10 = distinct !{!10, !27}
!11 = distinct !{!11, !27}
!12 = distinct !{!12, !27}
!13 = distinct !{!13, !27}
!14 = distinct !{!14, !27}
!15 = distinct !{!15, !27}
!16 = distinct !{!16, !27}
!17 = distinct !{!17, !27}
!18 = distinct !{!18, !27}
!19 = distinct !{!19, !27}
!20 = distinct !{!20, !27}
!21 = distinct !{!21, !27}
!22 = distinct !{!22, !27}
!23 = distinct !{!23, !27}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
!34 = distinct !{null}
!35 = distinct !{ptr @_ZN6Assimp4D3DS5SceneD2Ev, null, null, null, null}
!36 = distinct !{ptr @_ZN6Assimp12StreamReaderILb0ELb0EED2Ev, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!37 = distinct !{null, null, null, null}
!38 = distinct !{!38, i1 true, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!39 = distinct !{!39, !38, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!40 = distinct !{!40, !38, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!41 = distinct !{!41, i1 true, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!42 = distinct !{!42, !41, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!43 = distinct !{!43, !41, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!45 = distinct !{!45, !44, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!46 = distinct !{!46, !44, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!47 = !{!40, !39}
!48 = !{!43, !42}
!49 = !{!46, !45}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !27}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27}
!58 = distinct !{null, null, null, null}
!59 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!64 = distinct !{!64, !63, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!65 = distinct !{!65, !27}
!66 = !{!64}
!67 = distinct !{!67, !27}
!68 = distinct !{!68, !27}
!69 = distinct !{!69, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!70 = distinct !{!70, !69, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!71 = distinct !{!71, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!72 = distinct !{!72, !71, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!73 = !{!70}
!74 = !{!72}
!75 = !{!72, !70}
!76 = distinct !{!76, !27}
!77 = distinct !{!77, !27}
!78 = !{!"branch_weights", i32 1, i32 1048575}
!79 = distinct !{!79, !27}
!80 = distinct !{!80, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!81 = distinct !{!81, !80, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!82 = distinct !{!82, !80, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!85 = distinct !{!85, !84, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!86 = distinct !{!86, !84, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!87 = distinct !{!87, !27}
!88 = distinct !{!88, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!89 = distinct !{!89, !88, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!90 = distinct !{!90, !88, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!91 = distinct !{!91, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!92 = distinct !{!92, !91, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!93 = distinct !{!93, !91, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!94 = distinct !{!94, !27}
!95 = distinct !{!95, i1 true, !"_ZSt19__relocate_object_aIN6Assimp4D3DS4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!96 = distinct !{!96, !95, !"_ZSt19__relocate_object_aIN6Assimp4D3DS4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!97 = distinct !{!97, !95, !"_ZSt19__relocate_object_aIN6Assimp4D3DS4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !27}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, i1 true, !"_ZSt19__relocate_object_aIN6Assimp4D3DS4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!101 = distinct !{!101, !100, !"_ZSt19__relocate_object_aIN6Assimp4D3DS4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!102 = distinct !{!102, !100, !"_ZSt19__relocate_object_aIN6Assimp4D3DS4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!103 = !{!82, !81}
!104 = !{!86, !85}
!105 = !{!90, !89}
!106 = !{!93, !92}
!107 = !{!97, !96}
!108 = !{!102, !101}
!109 = distinct !{!109, !27}
!110 = distinct !{!110, i1 true, !"_ZNK9aiColor3DmlEf"}
!111 = distinct !{!111, !110, !"_ZNK9aiColor3DmlEf: argument 0"}
!112 = !{!111}
!113 = distinct !{!113, !27}
!114 = distinct !{!114, !27}
!115 = distinct !{!115, !27}
!116 = distinct !{!116, !27}
!117 = distinct !{!117, i1 true, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!118 = distinct !{!118, !117, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!119 = distinct !{!119, !117, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!120 = distinct !{!120, i1 true, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!121 = distinct !{!121, !120, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!122 = distinct !{!122, !120, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!123 = distinct !{!123, !27}
!124 = distinct !{!124, !27}
!125 = distinct !{!125, !27}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !27}
!129 = distinct !{!129, i1 true, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!130 = distinct !{!130, !129, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!131 = distinct !{!131, !129, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!132 = distinct !{!132, i1 true, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!133 = distinct !{!133, !132, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!134 = distinct !{!134, !132, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!135 = distinct !{!135, !27}
!136 = distinct !{!136, !27}
!137 = distinct !{!137, !27}
!138 = distinct !{!138, i1 true, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!139 = distinct !{!139, !138, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!140 = distinct !{!140, !138, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!142 = distinct !{!142, !141, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!143 = distinct !{!143, !141, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!144 = distinct !{!144, !27}
!145 = !{!119, !118}
!146 = !{!122, !121}
!147 = !{!131, !130}
!148 = !{!134, !133}
!149 = !{!140, !139}
!150 = !{!143, !142}
!151 = distinct !{!151, !27}
!152 = distinct !{!152, !27}
!153 = distinct !{!153, !27}
!154 = distinct !{!154, !27}
!155 = distinct !{!155, !27}
!156 = distinct !{!156, !27}
!157 = distinct !{!157, !27}
!158 = distinct !{!158, !27}
!159 = distinct !{!159, !27}
!160 = distinct !{!160, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!161 = distinct !{!161, !160, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!162 = distinct !{!162, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!163 = distinct !{!163, !162, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!164 = distinct !{!164, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!165 = distinct !{!165, !164, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!166 = !{!161}
!167 = !{!163}
!168 = !{!165}
!169 = !{!165, !163, !161}
!170 = distinct !{null, null}
!171 = distinct !{null}
!172 = distinct !{!172, !27}
!173 = distinct !{!173, !27}
!174 = distinct !{!174, !27}
!175 = distinct !{!175, !32}
!176 = distinct !{!176, !27}
!177 = distinct !{!177, !32}
!178 = distinct !{!178, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!179 = distinct !{!179, !178, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!180 = distinct !{!180, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!181 = distinct !{!181, !180, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!182 = distinct !{!182, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!183 = distinct !{!183, !182, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!184 = distinct !{!184, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!185 = distinct !{!185, !184, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!186 = !{!179}
!187 = !{!181}
end_hunk_5
