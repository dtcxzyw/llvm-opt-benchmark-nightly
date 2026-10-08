Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_pam?download=true
inline.NumInlined: 487
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv10PAMDecoder10readHeaderEv:bb.a
  store i64 -1, ptr %i.pv, align 8, !tbaa !62
  store i32 -1, ptr %i.cx, align 4, !tbaa !81
  store i32 -1, ptr %i.cw, align 8, !tbaa !82
  invoke void @_ZN2cv11RBaseStream5closeEv(ptr noundef nonnull align 8 dereferenceable(65) %i.i)
          to label %bb.fr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit438, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %bb.n, %bb.k
  %.pn125.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn266, %bb.n ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %.pn124.pn.pn278, %bb.x ], [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.pn123.pn.pn290, %bb.ah ], [ %.pn123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.l, %bb.k ], [ %.pn122.pn.pn381, %bb.dr ], [ %.pn122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %.pn118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %.pn122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %.pn109.pn.pn321, %bb.bl ], [ %.pn109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %.pn108.pn.pn333, %bb.bw ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ], [ %.pn107.pn.pn345, %bb.ch ], [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.pn106.pn.pn357, %bb.cs ], [ %.pn106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %.pn105.pn.pn369, %bb.dc ], [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ], [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ], [ %.pn.pn.pn309, %bb.bb ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %.pn125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.pn123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %.pn109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %.pn108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193 ], [ %.pn107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %.pn106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215 ], [ %.pn105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %lpad.loopexit, %.loopexit438 ], [ %lpad.loopexit439, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit442, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit444, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit447, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.38 = extractvalue { ptr, i32 } %.pn125.pn.pn.pn, 0
  %i.pw = call ptr @__cxa_begin_catch(ptr %.38) #21 ; 0 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i64 -1, ptr %i.px, align 8, !tbaa !62
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.py, align 4, !tbaa !81
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.pz, align 8, !tbaa !82
  invoke void @_ZN2cv11RBaseStream5closeEv(ptr noundef nonnull align 8 dereferenceable(65) %i.i)
          to label %bb.fo unwind label %bb.fp

bb.fo:                                            ; preds = %.loopexit.split-lp
  invoke void @__cxa_rethrow() #26
          to label %bb.ft unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.loopexit.split-lp
  %i.qa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fq unwind label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  resume { ptr, i32 } %i.qa

bb.fr:                                            ; preds = %bb.fm, %bb.fn, %bb.c, %bb.b
  %.197 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.fn ], [ true, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i1 %.197

bb.fs:                                            ; preds = %bb.fp
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #23
  unreachable

bb.ft:                                            ; preds = %bb.fo, %bb.do, %bb.cz, %bb.cp, %bb.ce, %bb.bt, %bb.bi, %bb.ay, %bb.ae, %bb.u, %bb.j
  unreachable
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv11RBaseStream4openERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare noundef zeroext i1 @_ZN2cv11RBaseStream4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef i32 @_ZN2cv12RLByteStream7getByteEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !90
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.30) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !91
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !72
  %i.g = load i64, ptr %i.a, align 8, !tbaa !91
  store i64 %i.g, ptr %i.b, align 8, !tbaa !73
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.i, ptr %i.h, align 1, !tbaa !73
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !74
  %i.l = load ptr, ptr %0, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN2cvL8ParseIntEPKci(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !73
  %i.b = icmp eq i8 %i.a, 45                      ; 2 uses
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %indvars.iv.ph = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !73
  %i.e = sext i8 %i.d to i32
  %isdigittmp = add nsw i32 %i.e, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cvL8ParseIntEPKci, ptr noundef nonnull @.str.1, i32 noundef 343) #26
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !73
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.u

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 255
  br i1 %exitcond.not, label %.critedge45, label %bb.i, !llvm.loop !136

bb.i:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ %indvars.iv.ph, %.preheader ] ; 2 uses
  %.057 = phi i64 [ %i.r, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !73    ; 2 uses
  %i.o = sext i8 %i.n to i32
  %isdigittmp37 = add nsw i32 %i.o, -48           ; 2 uses
  %isdigit38 = icmp ult i32 %isdigittmp37, 10
  br i1 %isdigit38, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.p = mul i64 %.057, 10
  %i.q = zext nneg i32 %isdigittmp37 to i64
  %i.r = add nuw nsw i64 %i.p, %i.q               ; 3 uses
  %i.s = icmp ult i64 %i.r, 2147483647
  br i1 %i.s, label %bb.h, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cvL8ParseIntEPKci, ptr noundef nonnull @.str.1, i32 noundef 350) #26
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.o:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !72     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.o
  %i.y = load i64, ptr %i.w, align 8, !tbaa !73
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.n
  %.pn41 = phi { ptr, i32 } [ %i.t, %bb.n ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.u, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.u

.critedge:                                        ; preds = %bb.i
  %i.aa = icmp eq i8 %i.n, 0
  br i1 %i.aa, label %.critedge45, label %bb.p

bb.p:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cvL8ParseIntEPKci, ptr noundef nonnull @.str.1, i32 noundef 354) #26
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.t:                                             ; preds = %bb.q
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.t
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !73
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.s
  %.pn39 = phi { ptr, i32 } [ %i.ab, %bb.s ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.ac, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.u

.critedge45:                                      ; preds = %bb.h, %.critedge
  %.054 = phi i64 [ %.057, %.critedge ], [ %i.r, %bb.h ]
  %i.ai = trunc i64 %.054 to i32                  ; 2 uses
  %i.aj = sub nsw i32 0, %i.ai
  %i.ak = select i1 %i.b, i32 %i.aj, i32 %i.ai
  ret i32 %i.ak

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn41.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZN2cv6detail21check_failed_MatDepthEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

declare noundef i64 @_ZN2cv11RBaseStream6getPosEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #1

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10PAMDecoder8readDataERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [256 x %"struct.cv::PaletteEntry"], align 16 ; 6 uses
  %3 = alloca %"struct.cv::channel_layout", align 4 ; 8 uses
  %4 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load i32, ptr %1, align 8, !tbaa !93
  %i.f = lshr i32 %i.e, 5
  %i.g = and i32 %i.f, 127
  %i.h = add nuw nsw i32 %i.g, 1                  ; 7 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !91   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !89
  %i.l = shl i32 %i.k, 2
  %i.m = and i32 %i.l, 124
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 1275511473185297, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !82
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 804 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !83
  %i.v = mul nsw i32 %i.u, %i.s
  %.fr160 = freeze i32 %i.v                       ; 13 uses
  %i.w = mul nsw i32 %i.q, %.fr160                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.x = shl nsw i32 %.fr160, 1                   ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i = icmp ugt i32 %i.x, 1032
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !148
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #25 ; 2 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !147
  br label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

_ZN2cv10AutoBufferIhLm1032EEC2Em.exit:            ; preds = %bb.a, %bb.b
  %i.ac = phi ptr [ %i.z, %bb.a ], [ %i.ab, %bb.b ] ; 26 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !62
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 8 uses
  %i.ah = invoke noundef zeroext i1 @_ZN2cv11RBaseStream8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(65) %i.ag)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.ah, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %bb.v, %bb.o, %bb.j, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !88 ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [288 x i8], ptr @_ZN2cvL7formatsE, i64 %i.al
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.an = load i32, ptr %i.t, align 4, !tbaa !83
  %i.ao = icmp sgt i32 %i.an, 2
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
