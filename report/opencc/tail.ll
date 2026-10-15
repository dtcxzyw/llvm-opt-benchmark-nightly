Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/tail?download=true
inline.NumInlined: 441
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6marisa8grimoire6vector9BitVector6write_ERNS0_2io6WriterE:bb.a
  %.neg.i.i8 = shl i64 %i.ao, 2
  %i.ap = and i64 %.neg.i.i8, 4
  call void @_ZN6marisa8grimoire2io6Writer4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.ap)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Writer5writeImEEvPKT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.18)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.19)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.f = shl nuw i64 %2, 3
  tail call void @_ZN6marisa8grimoire2io6Writer10write_dataEPKvm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %i.f)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.e, %bb.i ], [ %i.c, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.g, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #17
  resume { ptr, i32 } %.pn
}

declare void @_ZN6marisa8grimoire2io6Writer4seekEm(ptr noundef nonnull align 8 dereferenceable(25), i64 noundef) local_unnamed_addr #2

declare void @_ZN6marisa8grimoire2io6Writer10write_dataEPKvm(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Writer5writeINS0_6vector9RankIndexEEEvPKT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.18)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 1537228672809129301
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.19)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.f = mul nuw i64 %2, 12
  tail call void @_ZN6marisa8grimoire2io6Writer10write_dataEPKvm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %i.f)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.e, %bb.i ], [ %i.c, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.g, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Writer5writeIjEEvPKT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.18)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.19)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.f = shl nuw i64 %2, 2
  tail call void @_ZN6marisa8grimoire2io6Writer10write_dataEPKvm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %i.f)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.e, %bb.i ], [ %i.c, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.g, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie5EntryEEEmT_S7_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"class.marisa::grimoire::trie::Entry", align 8 ; 4 uses
  %4 = alloca %"class.marisa::grimoire::trie::Entry", align 8 ; 4 uses
  %5 = alloca %"class.marisa::grimoire::trie::Entry", align 8 ; 4 uses
  %6 = alloca %"class.marisa::grimoire::trie::Entry", align 8 ; 4 uses
  %7 = alloca %"class.marisa::grimoire::trie::Entry", align 8 ; 4 uses
  %8 = alloca %"class.marisa::grimoire::trie::Entry", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 10
  br i1 %i.e, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %bb.a, %bb.aw
  %i.f = phi i64 [ %i.ed, %bb.aw ], [ %i.d, %bb.a ]
  %i.g = phi i64 [ %i.eb, %bb.aw ], [ %i.b, %bb.a ]
  %i.h = phi i64 [ %i.ea, %bb.aw ], [ %i.a, %bb.a ] ; 2 uses
  %.0146206 = phi i64 [ %.6, %bb.aw ], [ 0, %bb.a ] ; 7 uses
  %.0152205 = phi i64 [ %.1153, %bb.aw ], [ %2, %bb.a ] ; 24 uses
  %.0154204 = phi ptr [ %.1155, %bb.aw ], [ %1, %bb.a ] ; 14 uses
  %.0156203 = phi ptr [ %.1157, %bb.aw ], [ %0, %bb.a ] ; 15 uses
  %i.i = lshr i64 %i.f, 1
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0156203, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.0154204, i64 -16
  %i.l = getelementptr inbounds nuw i8, ptr %.0156203, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ult i64 %.0152205, %i.n
  br i1 %i.o, label %bb.b, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit.i

bb.b:                                             ; preds = %.lr.ph208
  %i.p = load ptr, ptr %.0156203, align 8, !tbaa !23
  %i.q = sub nsw i64 0, %.0152205
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit.i

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit.i: ; preds = %bb.b, %.lr.ph208
  %i.u = phi i32 [ %i.t, %bb.b ], [ -1, %.lr.ph208 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !24
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ult i64 %.0152205, %i.x
  br i1 %i.y, label %bb.c, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit28.i

bb.c:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit.i
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.aa = sub nsw i64 0, %.0152205
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !26
  %i.ad = zext i8 %i.ac to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit28.i

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit28.i: ; preds = %bb.c, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit.i
  %i.ae = phi i32 [ %i.ad, %bb.c ], [ -1, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit.i ] ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.0154204, i64 -8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !24
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp ult i64 %.0152205, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit29.i

bb.d:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit28.i
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ak = sub nsw i64 0, %.0152205
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26
  %i.an = zext i8 %i.am to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit29.i

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit29.i: ; preds = %bb.d, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit28.i
  %i.ao = phi i32 [ %i.an, %bb.d ], [ -1, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit28.i ] ; 4 uses
  %i.ap = icmp slt i32 %i.u, %i.ae
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit29.i
  %i.aq = icmp slt i32 %i.ae, %i.ao
  br i1 %i.aq, label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %..i = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.ao)
  br label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit

bb.g:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit29.i
  %i.ar = icmp slt i32 %i.u, %i.ao
  br i1 %i.ar, label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.27.i = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.ao)
  br label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit

_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.u, %bb.g ], [ %..i, %bb.f ], [ %i.ae, %bb.e ], [ %.27.i, %bb.h ] ; 6 uses
  %i.as = sub nsw i64 0, %.0152205                ; 2 uses
  %9 = icmp ult ptr %.0156203, %.0154204
  br i1 %9, label %bb.i, label %.preheader177

bb.i:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit, %bb.r
  %.0141 = phi ptr [ %.1130189, %bb.r ], [ %.0154204, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit ] ; 3 uses
  %.0137 = phi ptr [ %.1132184, %bb.r ], [ %.0156203, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit ]
  %.0131 = phi ptr [ %i.bi, %bb.r ], [ %.0154204, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit ] ; 5 uses
  %.0129 = phi ptr [ %i.bx, %bb.r ], [ %.0156203, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.m
  %.1132184 = phi ptr [ %.2133, %bb.m ], [ %.0137, %bb.i ] ; 9 uses
  %.1142183 = phi ptr [ %i.bf, %bb.m ], [ %.0129, %bb.i ] ; 14 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1142183, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !24
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp ult i64 %.0152205, %i.av
  br i1 %i.aw, label %bb.j, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ax = load ptr, ptr %.1142183, align 8, !tbaa !23
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.as
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !26
  %i.ba = zext i8 %i.az to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit: ; preds = %.lr.ph, %bb.j
  %i.bb = phi i32 [ %i.ba, %bb.j ], [ -1, %.lr.ph ] ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, %.0.i
  br i1 %i.bc, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit
  %i.bd = icmp eq i32 %i.bb, %.0.i
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.1142183, i64 16, i1 false), !tbaa.struct !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1142183, ptr noundef nonnull align 8 dereferenceable(16) %.1132184, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1132184, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.be = getelementptr inbounds nuw i8, ptr %.1132184, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2133 = phi ptr [ %i.be, %bb.l ], [ %.1132184, %bb.k ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1142183, i64 16 ; 3 uses
  %i.bg = icmp ult ptr %i.bf, %.0131
  br i1 %i.bg, label %.lr.ph, label %.preheader177

.thread:                                          ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit
  %i.bh = icmp ult ptr %.1142183, %.0131
  br i1 %i.bh, label %.lr.ph190, label %.preheader177

.lr.ph190:                                        ; preds = %.thread, %bb.q
  %.1130189 = phi ptr [ %.3, %bb.q ], [ %.0141, %.thread ] ; 5 uses
  %.1138188 = phi ptr [ %i.bi, %bb.q ], [ %.0131, %.thread ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.1138188, i64 -16 ; 13 uses
  %i.bj = getelementptr inbounds i8, ptr %.1138188, i64 -8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !24
  %i.bl = zext i32 %i.bk to i64
  %i.bm = icmp ult i64 %.0152205, %i.bl
  br i1 %i.bm, label %bb.n, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit170

bb.n:                                             ; preds = %.lr.ph190
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.as
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !26
  %i.bq = zext i8 %i.bp to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit170

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit170: ; preds = %.lr.ph190, %bb.n
  %i.br = phi i32 [ %i.bq, %bb.n ], [ -1, %.lr.ph190 ] ; 2 uses
  %i.bs = icmp slt i32 %i.br, %.0.i
  br i1 %i.bs, label %.thread174, label %bb.o

bb.o:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit170
  %i.bt = icmp eq i32 %i.br, %.0.i
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds i8, ptr %.1130189, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi ptr [ %.1130189, %bb.o ], [ %i.bu, %bb.p ] ; 2 uses
  %i.bv = icmp ult ptr %.1142183, %i.bi
  br i1 %i.bv, label %.lr.ph190, label %.preheader177

.thread174:                                       ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie5EntryEEEiRKT_m.exit170
  %.not = icmp ult ptr %.1142183, %i.bi
  br i1 %.not, label %bb.r, label %.preheader177

.preheader177:                                    ; preds = %.thread174, %.thread, %bb.r, %bb.m, %bb.q, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit
  %.2139260 = phi ptr [ %i.bi, %bb.q ], [ %.0131, %bb.m ], [ %.0154204, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit ], [ %i.bi, %.thread174 ], [ %.0131, %.thread ], [ %i.bi, %bb.r ] ; 2 uses
  %.1130.lcssa259 = phi ptr [ %.3, %bb.q ], [ %.0141, %bb.m ], [ %.0154204, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit ], [ %.1130189, %.thread174 ], [ %.0141, %.thread ], [ %.1130189, %bb.r ] ; 2 uses
  %.1142.lcssa250258 = phi ptr [ %.1142183, %bb.q ], [ %i.bf, %bb.m ], [ %.0156203, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit ], [ %.1142183, %.thread174 ], [ %.1142183, %.thread ], [ %i.bx, %bb.r ] ; 2 uses
  %.1132.lcssa251257 = phi ptr [ %.1132184, %bb.q ], [ %.2133, %bb.m ], [ %.0156203, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie5EntryEEEiRKT_S8_S8_m.exit ], [ %.1132184, %bb.r ], [ %.1132184, %.thread ], [ %.1132184, %.thread174 ] ; 2 uses
  %i.bw = icmp ugt ptr %.1132.lcssa251257, %.0156203
  br i1 %i.bw, label %.lr.ph197, label %.preheader

bb.r:                                             ; preds = %.thread174
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.1142183, i64 16, i1 false), !tbaa.struct !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1142183, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bx = getelementptr inbounds nuw i8, ptr %.1142183, i64 16 ; 3 uses
  %10 = icmp ult ptr %i.bx, %i.bi
  br i1 %10, label %bb.i, label %.preheader177, !llvm.loop !105

.preheader:                                       ; preds = %.lr.ph197, %.preheader177
  %.4145.lcssa = phi ptr [ %.1142.lcssa250258, %.preheader177 ], [ %i.ca, %.lr.ph197 ] ; 10 uses
  %i.by = icmp ult ptr %.1130.lcssa259, %.0154204
  br i1 %i.by, label %.lr.ph201, label %._crit_edge

.lr.ph197:                                        ; preds = %.preheader177, %.lr.ph197
  %.5136196 = phi ptr [ %i.bz, %.lr.ph197 ], [ %.1132.lcssa251257, %.preheader177 ]
  %.4145195 = phi ptr [ %i.ca, %.lr.ph197 ], [ %.1142.lcssa250258, %.preheader177 ]
  %i.bz = getelementptr inbounds i8, ptr %.5136196, i64 -16 ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %.4145195, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cb = icmp ugt ptr %i.bz, %.0156203
  br i1 %i.cb, label %.lr.ph197, label %.preheader, !llvm.loop !106

.lr.ph201:                                        ; preds = %.preheader, %.lr.ph201
  %.5200 = phi ptr [ %i.cc, %.lr.ph201 ], [ %.1130.lcssa259, %.preheader ] ; 3 uses
  %.3140199 = phi ptr [ %i.cd, %.lr.ph201 ], [ %.2139260, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.5200, i64 16, i1 false), !tbaa.struct !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.5200, ptr noundef nonnull align 8 dereferenceable(16) %.3140199, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.3140199, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cc = getelementptr inbounds nuw i8, ptr %.5200, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.3140199, i64 16 ; 2 uses
  %i.ce = icmp ult ptr %i.cc, %.0154204
  br i1 %i.ce, label %.lr.ph201, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph201, %.preheader
  %.3140.lcssa = phi ptr [ %.2139260, %.preheader ], [ %i.cd, %.lr.ph201 ] ; 12 uses
  %i.cf = ptrtoint ptr %.4145.lcssa to i64        ; 2 uses
  %i.cg = sub i64 %i.cf, %i.g                     ; 3 uses
  %i.ch = ashr exact i64 %i.cg, 4                 ; 4 uses
  %i.ci = ptrtoint ptr %.3140.lcssa to i64        ; 3 uses
  %i.cj = sub i64 %i.ci, %i.cf                    ; 3 uses
  %i.ck = ashr exact i64 %i.cj, 4                 ; 4 uses
  %i.cl = icmp sgt i64 %i.ch, %i.ck
  br i1 %i.cl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cm = sub i64 %i.h, %i.ci                     ; 2 uses
  %i.cn = ashr exact i64 %i.cm, 4                 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, %i.ck
  br i1 %i.co, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %i.cp = icmp eq i64 %i.cj, 16
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cq = add i64 %.0146206, 1
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.cr = icmp sgt i64 %i.ck, 1
  br i1 %i.cr, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cs = icmp eq i32 %.0.i, -1
  br i1 %i.cs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ct = add i64 %.0146206, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cu = add i64 %.0152205, 1
  %i.cv = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie5EntryEEEmT_S7_m(ptr noundef %.4145.lcssa, ptr noundef %.3140.lcssa, i64 noundef %i.cu)
  %i.cw = add i64 %i.cv, %.0146206
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.x, %bb.u
  %.1147 = phi i64 [ %i.cq, %bb.u ], [ %i.ct, %bb.x ], [ %i.cw, %bb.y ], [ %.0146206, %bb.v ] ; 6 uses
  %i.cx = sub i64 %i.h, %i.ci                     ; 2 uses
  %i.cy = ashr exact i64 %i.cx, 4                 ; 2 uses
  %i.cz = icmp slt i64 %i.ch, %i.cy
  br i1 %i.cz, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.da = icmp eq i64 %i.cg, 16
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = add i64 %.1147, 1
  br label %bb.aw

bb.ac:                                            ; preds = %bb.aa
  %i.dc = icmp sgt i64 %i.ch, 1
  br i1 %i.dc, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.dd = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie5EntryEEEmT_S7_m(ptr noundef nonnull %.0156203, ptr noundef %.4145.lcssa, i64 noundef %.0152205)
  %i.de = add i64 %i.dd, %.1147
  br label %bb.aw

bb.ae:                                            ; preds = %bb.z
  %i.df = icmp eq i64 %i.cx, 16
  br i1 %i.df, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dg = add i64 %.1147, 1
  br label %bb.aw

bb.ag:                                            ; preds = %bb.ae
  %i.dh = icmp sgt i64 %i.cy, 1
  br i1 %i.dh, label %bb.ah, label %bb.aw

bb.ah:                                            ; preds = %bb.ag
  %i.di = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie5EntryEEEmT_S7_m(ptr noundef %.3140.lcssa, ptr noundef %.0154204, i64 noundef %.0152205)
  %i.dj = add i64 %i.di, %.1147
  br label %bb.aw

bb.ai:                                            ; preds = %bb.s
  %i.dk = icmp eq i64 %i.cg, 16
  br i1 %i.dk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dl = add i64 %.0146206, 1
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.dm = icmp sgt i64 %i.ch, 1
  br i1 %i.dm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dn = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie5EntryEEEmT_S7_m(ptr noundef nonnull %.0156203, ptr noundef %.4145.lcssa, i64 noundef %.0152205)
  %i.do = add i64 %i.dn, %.0146206
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.4150 = phi i64 [ %i.dl, %bb.aj ], [ %i.do, %bb.al ], [ %.0146206, %bb.ak ] ; 3 uses
  %i.dp = icmp eq i64 %i.cm, 16
  br i1 %i.dp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dq = add i64 %.4150, 1
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.dr = icmp sgt i64 %i.cn, 1
  br i1 %i.dr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ds = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie5EntryEEEmT_S7_m(ptr noundef %.3140.lcssa, ptr noundef %.0154204, i64 noundef %.0152205)
  %i.dt = add i64 %i.ds, %.4150
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %.5151 = phi i64 [ %i.dq, %bb.an ], [ %i.dt, %bb.ap ], [ %.4150, %bb.ao ] ; 4 uses
  %i.du = icmp eq i64 %i.cj, 16
  br i1 %i.du, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dv = add i64 %.5151, 1
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.dw = icmp sgt i64 %i.ck, 1
  br i1 %i.dw, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dx = icmp eq i32 %.0.i, -1
  br i1 %i.dx, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dy = add i64 %.5151, 1
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.dz = add i64 %.0152205, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.af, %bb.ah, %bb.ag, %bb.ab, %bb.ad, %bb.ac, %bb.ar, %bb.au, %bb.av, %bb.as
  %.1157 = phi ptr [ %.4145.lcssa, %bb.as ], [ %.3140.lcssa, %bb.ab ], [ %.4145.lcssa, %bb.ar ], [ %.3140.lcssa, %bb.au ], [ %.4145.lcssa, %bb.av ], [ %.3140.lcssa, %bb.ac ], [ %.3140.lcssa, %bb.ad ], [ %.0156203, %bb.ag ], [ %.0156203, %bb.ah ], [ %.0156203, %bb.af ] ; 3 uses
  %.1155 = phi ptr [ %.3140.lcssa, %bb.as ], [ %.0154204, %bb.ab ], [ %.3140.lcssa, %bb.ar ], [ %.3140.lcssa, %bb.au ], [ %.3140.lcssa, %bb.av ], [ %.0154204, %bb.ac ], [ %.0154204, %bb.ad ], [ %.4145.lcssa, %bb.ag ], [ %.4145.lcssa, %bb.ah ], [ %.4145.lcssa, %bb.af ] ; 3 uses
  %.1153 = phi i64 [ %.0152205, %bb.as ], [ %.0152205, %bb.ab ], [ %.0152205, %bb.ar ], [ %.0152205, %bb.au ], [ %i.dz, %bb.av ], [ %.0152205, %bb.ac ], [ %.0152205, %bb.ad ], [ %.0152205, %bb.ag ], [ %.0152205, %bb.ah ], [ %.0152205, %bb.af ] ; 2 uses
  %.6 = phi i64 [ %.5151, %bb.as ], [ %i.db, %bb.ab ], [ %i.dv, %bb.ar ], [ %i.dy, %bb.au ], [ %.5151, %bb.av ], [ %.1147, %bb.ac ], [ %i.de, %bb.ad ], [ %.1147, %bb.ag ], [ %i.dj, %bb.ah ], [ %i.dg, %bb.af ] ; 2 uses
  %i.ea = ptrtoint ptr %.1155 to i64              ; 2 uses
  %i.eb = ptrtoint ptr %.1157 to i64              ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 4                 ; 3 uses
  %i.ee = icmp sgt i64 %i.ed, 10
  br i1 %i.ee, label %.lr.ph208, label %._crit_edge209, !llvm.loop !108

._crit_edge209:                                   ; preds = %bb.aw, %bb.a
  %.0156.lcssa = phi ptr [ %0, %bb.a ], [ %.1157, %bb.aw ] ; 2 uses
  %.0154.lcssa = phi ptr [ %1, %bb.a ], [ %.1155, %bb.aw ] ; 2 uses
  %.0152.lcssa = phi i64 [ %2, %bb.a ], [ %.1153, %bb.aw ] ; 2 uses
  %.0146.lcssa = phi i64 [ 0, %bb.a ], [ %.6, %bb.aw ] ; 2 uses
  %.lcssa182 = phi i64 [ %i.d, %bb.a ], [ %i.ed, %bb.aw ]
  %i.ef = icmp sgt i64 %.lcssa182, 1
  br i1 %i.ef, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %._crit_edge209
  %.01739.i = getelementptr inbounds nuw i8, ptr %.0156.lcssa, i64 16 ; 2 uses
  %i.eg = icmp ult ptr %.01739.i, %.0154.lcssa
  br i1 %i.eg, label %.preheader.i, label %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie5EntryEEEmT_S7_m.exit

.preheader.i:                                     ; preds = %bb.ax, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie5EntryEEEiRKT_S8_m.exit.thread.thread.i
  %.01741.i = phi ptr [ %.017.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie5EntryEEEiRKT_S8_m.exit.thread.thread.i ], [ %.01739.i, %bb.ax ] ; 2 uses
  %.01840.i = phi i64 [ %i.fd, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie5EntryEEEiRKT_S8_m.exit.thread.thread.i ], [ 1, %bb.ax ] ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie5EntryEEEiRKT_S8_m.exit.thread24.i
  %.037.i = phi ptr [ %i.eh, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie5EntryEEEiRKT_S8_m.exit.thread24.i ], [ %.01741.i, %.preheader.i ] ; 6 uses
  %i.eh = getelementptr inbounds i8, ptr %.037.i, i64 -16 ; 5 uses
  %i.ei = getelementptr inbounds i8, ptr %.037.i, i64 -8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !24 ; 3 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = icmp ult i64 %.0152.lcssa, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !24 ; 3 uses
  br i1 %i.el, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.eo = zext i32 %i.en to i64
  %i.ep = load ptr, ptr %i.eh, align 8
  %i.eq = load ptr, ptr %.037.i, align 8
  br label %bb.az

bb.ay:                                            ; preds = %bb.ba
  %i.er = add i64 %.01927.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.er, %i.ek
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.az, !llvm.loop !109

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.01927.i.i = phi i64 [ %.0152.lcssa, %.lr.ph.i.i ], [ %i.er, %bb.ay ] ; 3 uses
  %i.es = icmp eq i64 %.01927.i.i, %i.eo
  br i1 %i.es, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie5EntryEEEiRKT_S8_m.exit.thread24.i, label %bb.ba

end_hunk_0
