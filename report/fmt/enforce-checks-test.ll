Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/enforce-checks-test?download=true
inline.NumInlined: 4217
inline.NumDeleted: 1193
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a
  %.01215.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.01215.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !815, !noalias !809 ; 2 uses
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #25, !noalias !809 ; 2 uses
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ae, ptr %.sroa.0.0.copyload, i64 %i.ag), !noalias !809
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ah = icmp eq i64 %i.af, %.sroa.2.0.copyload
  %i.ai = select i1 %.not.i.i.i.i.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !816, !noalias !809 ; 6 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.l, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i
  %i.am = icmp sgt i64 %i.t, -1
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = trunc i64 %i.t to i32
  %i.ao = icmp ult i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.n, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.ap
  br label %_ZNK3fmt3v127context3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.ar = icmp samesign ugt i32 %i.ak, 14
  br i1 %i.ar, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = shl nuw nsw i32 %i.ak, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.t, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.aq, %bb.n ], [ %i.j, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !65 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc73 = trunc i128 %storemerge to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 = lshr i128 %storemerge, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc89 = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 to i32
  %.sroa.010.sroa.11.0.extract.shift61 = lshr i128 %storemerge, 64
  %.sroa.010.sroa.11.0.extract.trunc62 = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift61 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !118 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNK3fmt3v127context3argEi.exit.thread37.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.a, %bb.g ], [ %i.ak, %bb.p ]
  %.sink107 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.039.ph = phi i32 [ %i.p, %bb.g ], [ %i.aw, %bb.p ]
  %i.ax = zext nneg i32 %.sink to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sink107, i64 %i.ax
  %.sroa.010.0.copyload25 = load i128, ptr %i.ay, align 16, !tbaa !65 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.010.0.copyload25 to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift102 = lshr i128 %.sroa.010.0.copyload25, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift102 to i32
  %.sroa.010.sroa.11.0.extract.shift = lshr i128 %.sroa.010.0.copyload25, 64
  %.sroa.010.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread37:         ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.010.sroa.0.sroa.11.0 = phi i32 [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc89, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 4 uses
  %.sroa.010.sroa.0.sroa.0.0 = phi i32 [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc73, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 7 uses
  %.sroa.010.sroa.11.0 = phi i64 [ %.sroa.010.sroa.11.0.extract.trunc62, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  %.sroa.23.039 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.23.039.ph, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  switch i32 %.sroa.23.039, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #29
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.36) #29
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !148
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_18duration_formatterIclSt5ratioILl1ELl1EEEEEEPKT_SA_SA_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 6 uses
  %5 = alloca %struct.tm, align 8                 ; 6 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit215, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !65
  switch i8 %i.b, label %bb.c [
    i8 125, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit215
    i8 37, label %.lr.ph
  ]

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.50)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #25
  br label %bb.bm

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
  %.0129235 = phi ptr [ %0, %.lr.ph ], [ %.3, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167 ] ; 9 uses
  %.0135234 = phi ptr [ %0, %.lr.ph ], [ %.1136, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167 ] ; 4 uses
  %i.h = load i8, ptr %.0129235, align 1, !tbaa !65
  switch i8 %i.h, label %bb.g [
    i8 125, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.thread
    i8 37, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.0129235, i64 1
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167, !llvm.loop !817

bb.h:                                             ; preds = %bb.f
  %.not147 = icmp eq ptr %.0135234, %.0129235
  br i1 %.not147, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.h
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !262 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 16 ; 2 uses
  %i.l = ptrtoint ptr %.0129235 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 24
  %.pre.i.i.i = load i64, ptr %i.j, align 8, !tbaa !85
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.n = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.au, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %.0135234, %.lr.ph34.i.i.i ], [ %i.av, %._crit_edge.i.i.i ] ; 9 uses
  %i.o = load i64, ptr %i.k, align 8, !tbaa !86
  %i.p = sub i64 %i.o, %i.n
  %i.q = ptrtoint ptr %.02732.i.i.i to i64        ; 2 uses
  %i.r = sub i64 %i.l, %i.q                       ; 4 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.u = add i64 %i.r, %i.n
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i, i64 noundef %i.u), !inline_history !818
  %i.v = load i64, ptr %i.j, align 8, !tbaa !85   ; 2 uses
  %i.w = load i64, ptr %i.k, align 8, !tbaa !86
  %i.x = sub i64 %i.w, %i.v
  %i.y = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.026.i.i.i = phi i64 [ %i.v, %bb.j ], [ %i.n, %bb.i ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.y, %bb.j ], [ %i.r, %bb.i ] ; 13 uses
  %i.z = load ptr, ptr %.sroa.01.0.copyload.i, align 8, !tbaa !84 ; 2 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = add i64 %.026.i.i.i, %i.aa
  %i.ad = sub i64 %i.q, %i.ac
  %diff.check = icmp ugt i64 %i.ad, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check301 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check301, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1, !tbaa !65
  %wide.load302 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <16 x i8> %wide.load, ptr %i.ah, align 1, !tbaa !65
  store <16 x i8> %wide.load302, ptr %i.ai, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !819

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !185

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec303 = and i64 %.025.i.i.i, -4             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index304 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next306, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index304
  %wide.load305 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !65
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index304
  store <4 x i8> %wide.load305, ptr %i.al, align 1, !tbaa !65
  %index.next306 = add nuw i64 %index304, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next306, %n.vec303
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !820

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n307 = icmp eq i64 %.025.i.i.i, %n.vec303
  br i1 %cmp.n307, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec303, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.030.i.i.i.prol
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !65
  %i.aq = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !821

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.aq, %.lr.ph.i.i.i.prol ]
  %i.ar = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.j, align 8, !tbaa !85
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.k
  %i.at = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.k ]
  %i.au = add i64 %i.at, %.025.i.i.i              ; 2 uses
  store i64 %i.au, ptr %i.j, align 8, !tbaa !85
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %.0129235
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit, label %bb.i, !llvm.loop !24

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !65
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.030.i.i.i
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !65
  %i.az = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !65
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !65
  %i.bd = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !65
  %i.bh = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !65
  %i.bl = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bl, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !822

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.0129235, i64 1 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, %1
  br i1 %i.bn, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit
  %i.bo = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_18duration_formatterIclSt5ratioILl1ELl1EEEEEEPKT_SA_SA_OT0_:bb.a
  %.0128 = phi i32 [ 0, %bb.o ], [ 2, %bb.p ], [ 1, %bb.q ] ; 8 uses
  %i.bt = icmp eq ptr %.1, %1
  br i1 %i.bt, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bu = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull @.str.50)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bu) #25
  br label %bb.bm

bb.v:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 82 uses
  %i.bx = load i8, ptr %.1, align 1, !tbaa !65
  switch i8 %i.bx, label %bb.bg [
    i8 37, label %bb.w
    i8 110, label %bb.x
    i8 116, label %bb.y
    i8 89, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 121, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 67, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 71, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 103, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 97, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 65, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 119, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 117, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 98, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 104, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 66, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 109, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 85, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 87, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 86, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 106, label %bb.z
    i8 100, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 101, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 72, label %bb.aa
    i8 73, label %bb.ab
    i8 77, label %bb.ac
    i8 83, label %bb.ad
    i8 99, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 120, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 88, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 68, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 70, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 114, label %bb.ae
    i8 82, label %bb.af
    i8 84, label %bb.ah
    i8 112, label %bb.ai
    i8 81, label %bb.aj
    i8 113, label %bb.ak
    i8 122, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 90, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 69, label %bb.am
    i8 79, label %bb.au
  ]

bb.w:                                             ; preds = %bb.v
  %.sroa.01.0.copyload.i152 = load ptr, ptr %2, align 8, !tbaa !262 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i152, i64 8 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i152, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i152, i64 24
  %.pre.i.i.i155 = load i64, ptr %i.by, align 8, !tbaa !85 ; 3 uses
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !86
  %i.cc = icmp eq i64 %i.cb, %.pre.i.i.i155
  br i1 %i.cc, label %.lr.ph299, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.loopexit

.lr.ph299:                                        ; preds = %bb.w, %._crit_edge.i.i.i165
  %i.cd = phi i64 [ %i.cg, %._crit_edge.i.i.i165 ], [ %.pre.i.i.i155, %bb.w ]
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !79
  %i.cf = add i64 %i.cd, 1
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i152, i64 noundef %i.cf), !inline_history !818
  %i.cg = load i64, ptr %i.by, align 8, !tbaa !85 ; 6 uses
  %i.ch = load i64, ptr %i.bz, align 8, !tbaa !86
  %.not289 = icmp eq i64 %i.ch, %i.cg
  br i1 %.not289, label %._crit_edge.i.i.i165, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.loopexit

._crit_edge.i.i.i165:                             ; preds = %.lr.ph299
  store i64 %i.cg, ptr %i.by, align 8, !tbaa !85
  %i.ci = load i64, ptr %i.bz, align 8, !tbaa !86
  %i.cj = icmp eq i64 %i.ci, %i.cg
  br i1 %i.cj, label %.lr.ph299, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.loopexit, !llvm.loop !24

bb.x:                                             ; preds = %bb.v
  %.sroa.01.0.copyload.i168 = load ptr, ptr %2, align 8, !tbaa !262 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i168, i64 8 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i168, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i168, i64 24
  %.pre.i.i.i171 = load i64, ptr %i.ck, align 8, !tbaa !85 ; 3 uses
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !86
  %i.co = icmp eq i64 %i.cn, %.pre.i.i.i171
  br i1 %i.co, label %.lr.ph295, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit183

.lr.ph295:                                        ; preds = %bb.x, %._crit_edge.i.i.i181
  %i.cp = phi i64 [ %i.cs, %._crit_edge.i.i.i181 ], [ %.pre.i.i.i171, %bb.x ]
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !79
  %i.cr = add i64 %i.cp, 1
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i168, i64 noundef %i.cr), !inline_history !818
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !85 ; 6 uses
  %i.ct = load i64, ptr %i.cl, align 8, !tbaa !86
  %.not288 = icmp eq i64 %i.ct, %i.cs
  br i1 %.not288, label %._crit_edge.i.i.i181, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit183

._crit_edge.i.i.i181:                             ; preds = %.lr.ph295
  store i64 %i.cs, ptr %i.ck, align 8, !tbaa !85
  %i.cu = load i64, ptr %i.cl, align 8, !tbaa !86
  %i.cv = icmp eq i64 %i.cu, %i.cs
  br i1 %i.cv, label %.lr.ph295, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit183, !llvm.loop !24

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit183: ; preds = %.lr.ph295, %._crit_edge.i.i.i181, %bb.x
  %.026.i.i.i173270 = phi i64 [ %.pre.i.i.i171, %bb.x ], [ %i.cs, %._crit_edge.i.i.i181 ], [ %i.cs, %.lr.ph295 ]
  %i.cw = load ptr, ptr %.sroa.01.0.copyload.i168, align 8, !tbaa !84
  %i.cx = getelementptr i8, ptr %i.cw, i64 %.026.i.i.i173270
  store i8 10, ptr %i.cx, align 1, !tbaa !65
  %.pre37.i.i.i180 = load i64, ptr %i.ck, align 8, !tbaa !85
  %i.cy = add i64 %.pre37.i.i.i180, 1
  store i64 %i.cy, ptr %i.ck, align 8, !tbaa !85
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.y:                                             ; preds = %bb.v
  %.sroa.01.0.copyload.i184 = load ptr, ptr %2, align 8, !tbaa !262 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i184, i64 8 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i184, i64 16 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i184, i64 24
  %.pre.i.i.i187 = load i64, ptr %i.cz, align 8, !tbaa !85 ; 3 uses
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !86
  %i.dd = icmp eq i64 %i.dc, %.pre.i.i.i187
  br i1 %i.dd, label %.lr.ph292, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit199

.lr.ph292:                                        ; preds = %bb.y, %._crit_edge.i.i.i197
  %i.de = phi i64 [ %i.dh, %._crit_edge.i.i.i197 ], [ %.pre.i.i.i187, %bb.y ]
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !79
  %i.dg = add i64 %i.de, 1
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i184, i64 noundef %i.dg), !inline_history !818
  %i.dh = load i64, ptr %i.cz, align 8, !tbaa !85 ; 6 uses
  %i.di = load i64, ptr %i.da, align 8, !tbaa !86
  %.not = icmp eq i64 %i.di, %i.dh
  br i1 %.not, label %._crit_edge.i.i.i197, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit199

._crit_edge.i.i.i197:                             ; preds = %.lr.ph292
  store i64 %i.dh, ptr %i.cz, align 8, !tbaa !85
  %i.dj = load i64, ptr %i.da, align 8, !tbaa !86
  %i.dk = icmp eq i64 %i.dj, %i.dh
  br i1 %i.dk, label %.lr.ph292, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit199, !llvm.loop !24

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit199: ; preds = %.lr.ph292, %._crit_edge.i.i.i197, %bb.y
  %.026.i.i.i189279 = phi i64 [ %.pre.i.i.i187, %bb.y ], [ %i.dh, %._crit_edge.i.i.i197 ], [ %i.dh, %.lr.ph292 ]
  %i.dl = load ptr, ptr %.sroa.01.0.copyload.i184, align 8, !tbaa !84
  %i.dm = getelementptr i8, ptr %i.dl, i64 %.026.i.i.i189279
  store i8 9, ptr %i.dm, align 1, !tbaa !65
  %.pre37.i.i.i196 = load i64, ptr %i.cz, align 8, !tbaa !85
  %i.dn = add i64 %.pre37.i.i.i196, 1
  store i64 %i.dn, ptr %i.cz, align 8, !tbaa !85
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.z:                                             ; preds = %bb.v
  %i.do = load i64, ptr %i.c, align 8, !tbaa !275
  %i.dp = udiv i64 %i.do, 86400
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.dp, i32 noundef 0, i32 noundef 0)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.aa:                                            ; preds = %bb.v
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !275
  %i.dr = udiv i64 %i.dq, 3600
  %i.ds = urem i64 %i.dr, 24
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.ds, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.ab:                                            ; preds = %bb.v
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !275
  %i.du = udiv i64 %i.dt, 3600
  %i.dv = urem i64 %i.du, 12                      ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  %i.dx = select i1 %i.dw, i64 12, i64 %i.dv
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.dx, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.ac:                                            ; preds = %bb.v
  %i.dy = load i64, ptr %i.c, align 8, !tbaa !275
  %i.dz = udiv i64 %i.dy, 60
  %i.ea = urem i64 %i.dz, 60
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.ea, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.ad:                                            ; preds = %bb.v
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 0, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false), !alias.scope !832
  %i.eb = load i64, ptr %i.c, align 8, !tbaa !275, !noalias !832 ; 3 uses
  %i.ec = udiv i64 %i.eb, 3600
  %i.ed = urem i64 %i.ec, 24
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  store i32 %i.ee, ptr %i.d, align 8, !tbaa !277, !alias.scope !832
  %i.ef = udiv i64 %i.eb, 60
  %8 = urem i64 %i.ef, 60
  %9 = trunc nuw nsw i64 %8 to i32
  store i32 %9, ptr %i.e, align 4, !tbaa !278, !alias.scope !832
  %10 = urem i64 %i.eb, 60
  %11 = trunc nuw nsw i64 %10 to i32
  store i32 %11, ptr %5, align 8, !tbaa !279, !alias.scope !832
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_12_hour_timeEv to i64), i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.af:                                            ; preds = %bb.v
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !275
  %i.eh = udiv i64 %i.eg, 3600
  %i.ei = urem i64 %i.eh, 24
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.ei, i32 noundef 2, i32 noundef 0)
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %2, align 8, !tbaa !262 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 8 ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !85 ; 2 uses
  %i.el = add i64 %i.ek, 1                        ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !86
  %i.eo = icmp ugt i64 %i.el, %i.en
  br i1 %i.eo, label %bb.ag, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

bb.ag:                                            ; preds = %bb.af
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !79
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i1.i, i64 noundef %i.el), !inline_history !45
  %.pre.i.i3.i = load i64, ptr %i.ej, align 8, !tbaa !85 ; 2 uses
  %.pre2.i.i4.i = add i64 %.pre.i.i3.i, 1
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit: ; preds = %bb.af, %bb.ag
  %.pre-phi.i.i2.i = phi i64 [ %i.el, %bb.af ], [ %.pre2.i.i4.i, %bb.ag ]
  %i.er = phi i64 [ %i.ek, %bb.af ], [ %.pre.i.i3.i, %bb.ag ]
  %i.es = load ptr, ptr %.sroa.0.0.copyload.i1.i, align 8, !tbaa !84
  store i64 %.pre-phi.i.i2.i, ptr %i.ej, align 8, !tbaa !85
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.er
  store i8 58, ptr %i.et, align 1, !tbaa !65
  %i.eu = load i64, ptr %i.c, align 8, !tbaa !275
  %i.ev = udiv i64 %i.eu, 60
  %i.ew = urem i64 %i.ev, 60
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.ew, i32 noundef 2, i32 noundef 0)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.ah:                                            ; preds = %bb.v
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE11on_iso_timeEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.ai:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false), !alias.scope !833
  %i.ex = load i64, ptr %i.c, align 8, !tbaa !275, !noalias !833 ; 3 uses
  %i.ey = udiv i64 %i.ex, 3600
  %i.ez = urem i64 %i.ey, 24
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  store i32 %i.fa, ptr %6, align 8, !tbaa !277, !alias.scope !833
  %i.fb = udiv i64 %i.ex, 60
  %12 = urem i64 %i.fb, 60
  %13 = trunc nuw nsw i64 %12 to i32
  store i32 %13, ptr %7, align 4, !tbaa !278, !alias.scope !833
  %14 = urem i64 %i.ex, 60
  %15 = trunc nuw nsw i64 %14 to i32
  store i32 %15, ptr %4, align 8, !tbaa !279, !alias.scope !833
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv to i64), i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.aj:                                            ; preds = %bb.v
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE17on_duration_valueEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.ak:                                            ; preds = %bb.v
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !262 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %.pre.i.i.i.i.i = load i64, ptr %i.fc, align 8, !tbaa !85
  %.pre.i = load i64, ptr %i.fd, align 8, !tbaa !86
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.al, %bb.ak
  %i.ff = phi i64 [ %.pre.i, %bb.ak ], [ %i.fk, %bb.al ] ; 2 uses
  %i.fg = phi i64 [ %.pre.i.i.i.i.i, %bb.ak ], [ %i.fk, %bb.al ] ; 2 uses
  %i.fh = icmp eq i64 %i.ff, %i.fg
  br i1 %i.fh, label %bb.al, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE16on_duration_unitEv.exit

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !79
  %i.fj = add i64 %i.ff, 1
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.fj), !inline_history !827
  %i.fk = load i64, ptr %i.fc, align 8, !tbaa !85 ; 4 uses
  %i.fl = load i64, ptr %i.fd, align 8, !tbaa !86
  %.not.i.i = icmp eq i64 %i.fl, %i.fk
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE16on_duration_unitEv.exit, !llvm.loop !24

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE16on_duration_unitEv.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.al
  %.lcssa.sink.i = phi i64 [ %i.fg, %._crit_edge.i.i.i.i.i ], [ %i.fk, %bb.al ]
  %i.fm = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.lcssa.sink.i
  store i8 115, ptr %i.fn, align 1, !tbaa !65
  %.pre37.i.i.i.i.i = load i64, ptr %i.fc, align 8, !tbaa !85
  %i.fo = add i64 %.pre37.i.i.i.i.i, 1
  store i64 %i.fo, ptr %i.fc, align 8, !tbaa !85
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8, !tbaa !262
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.am:                                            ; preds = %bb.v
  %i.fp = icmp eq ptr %i.bw, %1
  br i1 %i.fp, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fq = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull @.str.50)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fq) #25
  br label %bb.bm

bb.aq:                                            ; preds = %bb.am
  %i.fs = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 14 uses
  %i.ft = load i8, ptr %i.bw, align 1, !tbaa !65
  switch i8 %i.ft, label %bb.ar [
    i8 89, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 121, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 67, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 99, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 120, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 88, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 122, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fu = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull @.str.50)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @__cxa_throw(ptr nonnull %i.fu, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fu) #25
  br label %bb.bm

bb.au:                                            ; preds = %bb.v
  %i.fw = icmp eq ptr %i.bw, %1
  br i1 %i.fw, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.fx = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull @.str.50)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fx) #25
  br label %bb.bm

bb.ay:                                            ; preds = %bb.au
  %i.fz = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 28 uses
  %i.ga = load i8, ptr %i.bw, align 1, !tbaa !65
  switch i8 %i.ga, label %bb.bd [
    i8 121, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 109, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 85, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 87, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 86, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 100, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 101, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 119, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 117, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
    i8 72, label %bb.az
    i8 73, label %bb.ba
    i8 77, label %bb.bb
    i8 83, label %bb.bc
    i8 122, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167
  ]

bb.az:                                            ; preds = %bb.ay
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.ba:                                            ; preds = %bb.ay
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.bb:                                            ; preds = %bb.ay
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.gb = load i64, ptr %i.c, align 8, !tbaa !275
  %i.gc = urem i64 %i.gb, 60
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  store i32 %i.gd, ptr %3, align 8, !tbaa !279
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef 1, i32 noundef %.0128)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

bb.bd:                                            ; preds = %bb.ay
  %i.ge = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull @.str.50)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @__cxa_throw(ptr nonnull %i.ge, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ge) #25
  br label %bb.bm

bb.bg:                                            ; preds = %bb.v
  %i.gg = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull @.str.50)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @__cxa_throw(ptr nonnull %i.gg, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gg) #25
  br label %bb.bm

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.loopexit: ; preds = %.lr.ph299, %._crit_edge.i.i.i165, %bb.w
  %.sink336 = phi i64 [ %.pre.i.i.i155, %bb.w ], [ %i.cg, %._crit_edge.i.i.i165 ], [ %i.cg, %.lr.ph299 ]
  %i.gi = load ptr, ptr %.sroa.01.0.copyload.i152, align 8, !tbaa !84
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sink336
  %i.gk = load i8, ptr %.1, align 1, !tbaa !65
  store i8 %i.gk, ptr %i.gj, align 1, !tbaa !65
  %.pre37.i.i.i164 = load i64, ptr %i.by, align 8, !tbaa !85
  %i.gl = add i64 %.pre37.i.i.i164, 1
  store i64 %i.gl, ptr %i.by, align 8, !tbaa !85
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167: ; preds = %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.loopexit, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit183, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit199, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit, %bb.ah, %bb.ai, %bb.aj, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE16on_duration_unitEv.exit, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.g
  %.1136 = phi ptr [ %i.fz, %bb.ay ], [ %.0135234, %bb.g ], [ %i.fz, %bb.ay ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit183 ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit199 ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.z ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.aa ], [ %i.bw, %bb.ab ], [ %i.bw, %bb.ac ], [ %i.bw, %bb.ad ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.ae ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %i.bw, %bb.ah ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.aj ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE16on_duration_unitEv.exit ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.az ], [ %i.fz, %bb.ba ], [ %i.fz, %bb.bb ], [ %i.fz, %bb.bc ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.loopexit ] ; 2 uses
  %.3 = phi ptr [ %i.fz, %bb.ay ], [ %i.i, %bb.g ], [ %i.fz, %bb.ay ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit183 ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit199 ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.z ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.aa ], [ %i.bw, %bb.ab ], [ %i.bw, %bb.ac ], [ %i.bw, %bb.ad ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.ae ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %i.bw, %bb.ah ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.aj ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE16on_duration_unitEv.exit ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.bw, %bb.v ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.aq ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.ay ], [ %i.fz, %bb.az ], [ %i.fz, %bb.ba ], [ %i.fz, %bb.bb ], [ %i.fz, %bb.bc ], [ %i.bw, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.loopexit ] ; 3 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.thread, label %bb.f

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.thread: ; preds = %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167, %bb.f
  %.0135.lcssa.ph = phi ptr [ %.1136, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167 ], [ %.0135234, %bb.f ] ; 2 uses
  %.0129.lcssa.ph = phi ptr [ %.3, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167 ], [ %.0129235, %bb.f ] ; 5 uses
  %.not149 = icmp eq ptr %.0135.lcssa.ph, %.0129.lcssa.ph
  br i1 %.not149, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit215, label %.lr.ph34.i.i.i202

.lr.ph34.i.i.i202:                                ; preds = %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit167.thread
  %.sroa.01.0.copyload.i200 = load ptr, ptr %2, align 8, !tbaa !262 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i200, i64 8 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i200, i64 16 ; 2 uses
  %i.go = ptrtoint ptr %.0129.lcssa.ph to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i200, i64 24
  %.pre.i.i.i203 = load i64, ptr %i.gm, align 8, !tbaa !85
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i.i.i213, %.lr.ph34.i.i.i202
  %i.gq = phi i64 [ %.pre.i.i.i203, %.lr.ph34.i.i.i202 ], [ %i.hx, %._crit_edge.i.i.i213 ] ; 3 uses
  %.02732.i.i.i204 = phi ptr [ %.0135.lcssa.ph, %.lr.ph34.i.i.i202 ], [ %i.hy, %._crit_edge.i.i.i213 ] ; 9 uses
  %i.gr = load i64, ptr %i.gn, align 8, !tbaa !86
  %i.gs = sub i64 %i.gr, %i.gq
  %i.gt = ptrtoint ptr %.02732.i.i.i204 to i64    ; 2 uses
  %i.gu = sub i64 %i.go, %i.gt                    ; 4 uses
  %i.gv = icmp ult i64 %i.gs, %i.gu
  br i1 %i.gv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gw = load ptr, ptr %i.gp, align 8, !tbaa !79
  %i.gx = add i64 %i.gu, %i.gq
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i200, i64 noundef %i.gx), !inline_history !818
  %i.gy = load i64, ptr %i.gm, align 8, !tbaa !85 ; 2 uses
  %i.gz = load i64, ptr %i.gn, align 8, !tbaa !86
  %i.ha = sub i64 %i.gz, %i.gy
  %i.hb = call i64 @llvm.umin.i64(i64 %i.gu, i64 %i.ha)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.026.i.i.i205 = phi i64 [ %i.gy, %bb.bk ], [ %i.gq, %bb.bj ] ; 3 uses
  %.025.i.i.i206 = phi i64 [ %i.hb, %bb.bk ], [ %i.gu, %bb.bj ] ; 13 uses
  %i.hc = load ptr, ptr %.sroa.01.0.copyload.i200, align 8, !tbaa !84 ; 2 uses
  %i.hd = ptrtoaddr ptr %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.026.i.i.i205 ; 7 uses
  %.not36.i.i.i207 = icmp eq i64 %.025.i.i.i206, 0
  br i1 %.not36.i.i.i207, label %._crit_edge.i.i.i213, label %iter.check323

iter.check323:                                    ; preds = %bb.bl
  %min.iters.check310 = icmp ult i64 %.025.i.i.i206, 4
  br i1 %min.iters.check310, label %.lr.ph.i.i.i208.preheader, label %vector.memcheck308

vector.memcheck308:                               ; preds = %iter.check323
  %i.hf = add i64 %.026.i.i.i205, %i.hd
  %i.hg = sub i64 %i.gt, %i.hf
  %diff.check309 = icmp ugt i64 %i.hg, -32
  br i1 %diff.check309, label %.lr.ph.i.i.i208.preheader, label %vector.main.loop.iter.check311

vector.main.loop.iter.check311:                   ; preds = %vector.memcheck308
  %min.iters.check312 = icmp ult i64 %.025.i.i.i206, 32
  br i1 %min.iters.check312, label %vec.epilog.ph327, label %vector.ph313

vector.ph313:                                     ; preds = %vector.main.loop.iter.check311
  %i.hh = and i64 %.025.i.i.i206, 28
  %n.vec314 = and i64 %.025.i.i.i206, -32         ; 4 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.ph313, %vector.body315
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next319, %vector.body315 ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %index316 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %wide.load317 = load <16 x i8>, ptr %i.hi, align 1, !tbaa !65
  %wide.load318 = load <16 x i8>, ptr %i.hj, align 1, !tbaa !65
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 %index316 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store <16 x i8> %wide.load317, ptr %i.hk, align 1, !tbaa !65
  store <16 x i8> %wide.load318, ptr %i.hl, align 1, !tbaa !65
  %index.next319 = add nuw i64 %index316, 32      ; 2 uses
  %i.hm = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.hm, label %middle.block320, label %vector.body315, !llvm.loop !828

middle.block320:                                  ; preds = %vector.body315
  %cmp.n321 = icmp eq i64 %.025.i.i.i206, %n.vec314
  br i1 %cmp.n321, label %._crit_edge.loopexit.i.i.i211, label %vec.epilog.iter.check325

vec.epilog.iter.check325:                         ; preds = %middle.block320
  %min.epilog.iters.check326 = icmp eq i64 %i.hh, 0
  br i1 %min.epilog.iters.check326, label %.lr.ph.i.i.i208.preheader, label %vec.epilog.ph327, !prof !185

vec.epilog.ph327:                                 ; preds = %vector.main.loop.iter.check311, %vec.epilog.iter.check325
  %vec.epilog.resume.val322 = phi i64 [ %n.vec314, %vec.epilog.iter.check325 ], [ 0, %vector.main.loop.iter.check311 ]
  %n.vec328 = and i64 %.025.i.i.i206, -4          ; 3 uses
  br label %vec.epilog.vector.body329

vec.epilog.vector.body329:                        ; preds = %vec.epilog.vector.body329, %vec.epilog.ph327
  %index330 = phi i64 [ %vec.epilog.resume.val322, %vec.epilog.ph327 ], [ %index.next332, %vec.epilog.vector.body329 ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %index330
  %wide.load331 = load <4 x i8>, ptr %i.hn, align 1, !tbaa !65
  %i.ho = getelementptr inbounds nuw i8, ptr %i.he, i64 %index330
  store <4 x i8> %wide.load331, ptr %i.ho, align 1, !tbaa !65
  %index.next332 = add nuw i64 %index330, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next332, %n.vec328
  br i1 %i.hp, label %vec.epilog.middle.block333, label %vec.epilog.vector.body329, !llvm.loop !829

vec.epilog.middle.block333:                       ; preds = %vec.epilog.vector.body329
  %cmp.n334 = icmp eq i64 %.025.i.i.i206, %n.vec328
  br i1 %cmp.n334, label %._crit_edge.loopexit.i.i.i211, label %.lr.ph.i.i.i208.preheader

.lr.ph.i.i.i208.preheader:                        ; preds = %iter.check323, %vector.memcheck308, %vec.epilog.iter.check325, %vec.epilog.middle.block333
  %.030.i.i.i209.ph = phi i64 [ 0, %iter.check323 ], [ 0, %vector.memcheck308 ], [ %n.vec314, %vec.epilog.iter.check325 ], [ %n.vec328, %vec.epilog.middle.block333 ] ; 3 uses
  %xtraiter339 = and i64 %.025.i.i.i206, 3        ; 2 uses
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.lr.ph.i.i.i208.prol.loopexit, label %.lr.ph.i.i.i208.prol

.lr.ph.i.i.i208.prol:                             ; preds = %.lr.ph.i.i.i208.preheader, %.lr.ph.i.i.i208.prol
  %.030.i.i.i209.prol = phi i64 [ %i.ht, %.lr.ph.i.i.i208.prol ], [ %.030.i.i.i209.ph, %.lr.ph.i.i.i208.preheader ] ; 3 uses
  %prol.iter341 = phi i64 [ %prol.iter341.next, %.lr.ph.i.i.i208.prol ], [ 0, %.lr.ph.i.i.i208.preheader ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %.030.i.i.i209.prol
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !65
  %i.hs = getelementptr inbounds nuw i8, ptr %i.he, i64 %.030.i.i.i209.prol
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !65
  %i.ht = add nuw i64 %.030.i.i.i209.prol, 1      ; 2 uses
  %prol.iter341.next = add i64 %prol.iter341, 1   ; 2 uses
  %prol.iter341.cmp.not = icmp eq i64 %prol.iter341.next, %xtraiter339
  br i1 %prol.iter341.cmp.not, label %.lr.ph.i.i.i208.prol.loopexit, label %.lr.ph.i.i.i208.prol, !llvm.loop !830

.lr.ph.i.i.i208.prol.loopexit:                    ; preds = %.lr.ph.i.i.i208.prol, %.lr.ph.i.i.i208.preheader
  %.030.i.i.i209.unr = phi i64 [ %.030.i.i.i209.ph, %.lr.ph.i.i.i208.preheader ], [ %i.ht, %.lr.ph.i.i.i208.prol ]
  %i.hu = sub i64 %.030.i.i.i209.ph, %.025.i.i.i206
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %._crit_edge.loopexit.i.i.i211, label %.lr.ph.i.i.i208

._crit_edge.loopexit.i.i.i211:                    ; preds = %.lr.ph.i.i.i208.prol.loopexit, %.lr.ph.i.i.i208, %vec.epilog.middle.block333, %middle.block320
  %.pre37.i.i.i212 = load i64, ptr %i.gm, align 8, !tbaa !85
  br label %._crit_edge.i.i.i213

._crit_edge.i.i.i213:                             ; preds = %._crit_edge.loopexit.i.i.i211, %bb.bl
  %i.hw = phi i64 [ %.pre37.i.i.i212, %._crit_edge.loopexit.i.i.i211 ], [ %.026.i.i.i205, %bb.bl ]
  %i.hx = add i64 %i.hw, %.025.i.i.i206           ; 2 uses
  store i64 %i.hx, ptr %i.gm, align 8, !tbaa !85
  %i.hy = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %.025.i.i.i206 ; 2 uses
  %.not.i.i.i214 = icmp eq ptr %i.hy, %.0129.lcssa.ph
  br i1 %.not.i.i.i214, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE7on_textEPKcS7_.exit215, label %bb.bj, !llvm.loop !24

.lr.ph.i.i.i208:                                  ; preds = %.lr.ph.i.i.i208.prol.loopexit, %.lr.ph.i.i.i208
  %.030.i.i.i209 = phi i64 [ %i.io, %.lr.ph.i.i.i208 ], [ %.030.i.i.i209.unr, %.lr.ph.i.i.i208.prol.loopexit ] ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %.030.i.i.i209
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !65
  %i.ib = getelementptr inbounds nuw i8, ptr %i.he, i64 %.030.i.i.i209
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !65
  %i.ic = add nuw i64 %.030.i.i.i209, 1           ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.02732.i.i.i204, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !65
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85
  %i.r = add i64 %i.q, %2                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !86
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.r), !inline_history !46
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.c, %bb.d
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.x = tail call ptr @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %0, ptr %1, i64 %2)
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.ab = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bi, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %1, %.lr.ph34.i.i.i ], [ %i.bj, %._crit_edge.i.i.i ] ; 9 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !86
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.af = sub i64 %i.z, %i.ae                     ; 4 uses
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !79
  %i.ai = add i64 %i.af, %i.ab
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai), !inline_history !47
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !85  ; 2 uses
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !86
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.al)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %i.ab, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.am, %bb.h ], [ %i.af, %bb.g ] ; 13 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !84    ; 2 uses
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = add i64 %.026.i.i.i, %i.ao
  %i.ar = sub i64 %i.ae, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !65
  %wide.load27 = load <16 x i8>, ptr %i.au, align 1, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !65
  store <16 x i8> %wide.load27, ptr %i.aw, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !834

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !185

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index29
  store <4 x i8> %wide.load30, ptr %i.az, align 1, !tbaa !65
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !835

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %.025.i.i.i, %n.vec28
  br i1 %cmp.n32, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.030.i.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !65
  %i.be = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !836

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.prol ]
  %i.bf = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.p, align 8, !tbaa !85
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.bh = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.bi = add i64 %i.bh, %.025.i.i.i              ; 2 uses
  store i64 %i.bi, ptr %i.p, align 8, !tbaa !85
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, %i.y
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %bb.g, !llvm.loop !24

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !65
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.030.i.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !65
  %i.bn = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !65
  %i.br = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !65
  %i.bv = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !65
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !65
  %i.bz = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bz, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !837

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ca = zext nneg i32 %i.k to i64
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.cb = phi i64 [ %i.ca, %bb.j ], [ -1, %.thread ]
  store i64 %i.cb, ptr %i.b, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.cc = icmp ne i32 %i.k, 0
  %narrow = and i1 %i.h, %i.cc
  %.sink = zext i1 %narrow to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 %.sink, ptr %i.c, align 8, !tbaa !97
  store i64 %.sink, ptr %i.d, align 8, !tbaa !97
  store ptr %i.a, ptr %5, align 8, !tbaa !212
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.cd, align 8, !tbaa !281
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.ce, align 8, !tbaa !281
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.cf, align 8, !tbaa !281
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.cg, align 8, !tbaa !283
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %1, i64 %2, ptr noundef nonnull byval(%class.anon.151) align 8 %5)
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !97  ; 2 uses
  %i.ci = load i64, ptr %i.c, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cj = load i8, ptr %i.a, align 1, !tbaa !210, !range !186, !noundef !134
  store i8 %i.cj, ptr %6, align 8, !tbaa !285
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ch, ptr %i.ck, align 8, !tbaa !286
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !838
  %i.cm = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.ch, i64 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.e, %bb.k
  %.sroa.019.1 = phi ptr [ %i.cm, %bb.k ], [ %i.x, %bb.e ], [ %0, %bb.f ], [ %0, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.sroa.019.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEElTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %0, i64 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp slt i64 %1, 0                       ; 2 uses
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 6 uses
  %i.b = or i64 %spec.select, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !65    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !97
  %i.k = icmp ult i64 %spec.select, %i.j
  %.neg.i.i = sext i1 %i.k to i32
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 4 uses
  %.lobit = lshr i64 %1, 63
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %.lobit, %i.m                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !85   ; 2 uses
  %i.q = add i64 %i.n, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !86   ; 2 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q), !inline_history !22
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !85 ; 3 uses
  %.pre14.i = load i64, ptr %i.r, align 8, !tbaa !86 ; 3 uses
  %.pre15.i = add i64 %.pre.i, %i.n               ; 2 uses
  %i.w = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.w, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.x = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.s, %bb.a ]
  %i.y = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.p, %bb.a ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.q, %bb.a ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.o, align 8, !tbaa !85
  %i.z = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 45, ptr %i.aa, align 1, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.020 = phi ptr [ %i.ab, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %i.ac = icmp ugt i64 %spec.select, 99
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.020.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.l, %bb.d ]
  %.01819.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %spec.select, %bb.d ] ; 3 uses
  %i.ad = add i32 %.020.i, -2                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ae
  %i.ag = urem i64 %.01819.i, 100
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  store i16 %i.aj, ptr %i.af, align 1
  %i.ak = udiv i64 %.01819.i, 100                 ; 2 uses
  %i.al = icmp ugt i64 %.01819.i, 9999
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.018.lcssa.i = phi i64 [ %spec.select, %bb.d ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.l, %bb.d ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %i.am = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.an = add i32 %.0.lcssa.i, -2
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ao
  %i.aq = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  store i16 %i.as, ptr %i.ap, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.at = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.au = or disjoint i8 %i.at, 48
  %i.av = add i32 %.0.lcssa.i, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.020, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !65
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %i.ay = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.x, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit ]
  %i.az = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %.pre-phi19.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit ] ; 2 uses
  br i1 %i.a, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, %i.ay
  br i1 %i.bb, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ba), !inline_history !48
  %.pre.i.i = load i64, ptr %i.o, align 8, !tbaa !85 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.g, %bb.h
  %.pre-phi.i.i = phi i64 [ %i.ba, %bb.g ], [ %.pre2.i.i, %bb.h ]
  %i.be = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !84
  store i64 %.pre-phi.i.i, ptr %i.o, align 8, !tbaa !85
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 45, ptr %i.bg, align 1, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %i.bh = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %0, i64 noundef %spec.select, i32 noundef %i.l)
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.e, %bb.f, %bb.i
  %.sroa.018.1 = phi ptr [ %i.bh, %bb.i ], [ %0, %bb.f ], [ %0, %bb.e ]
  ret ptr %.sroa.018.1
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail20throw_duration_errorEv() local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.54)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !275
  %i.d = udiv i64 %i.c, 3600
  %i.e = urem i64 %i.d, 24
  tail call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.e, i32 noundef 2, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !275
  %i.h = udiv i64 %i.g, 3600
  %i.i = urem i64 %i.h, 24
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !277
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !275
  %i.d = udiv i64 %i.c, 3600
  %i.e = urem i64 %i.d, 12                        ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = select i1 %i.f, i64 12, i64 %i.e
  tail call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.g, i32 noundef 2, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !275
  %i.j = udiv i64 %i.i, 3600
  %i.k = urem i64 %i.j, 12                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = trunc nuw nsw i64 %i.k to i32
  %i.n = select i1 %i.l, i32 12, i32 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !277
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !275
  %i.d = udiv i64 %i.c, 60
  %i.e = urem i64 %i.d, 60
  tail call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.e, i32 noundef 2, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !275
  %i.h = udiv i64 %i.g, 60
  %i.i = urem i64 %i.h, 60
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !278
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !275
  %i.d = urem i64 %i.c, 60
  tail call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.d, i32 noundef 2, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !269  ; 2 uses
  %.not.i.i = icmp sgt i64 %i.f, -1
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl1EEEEmS6_TnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESA_NS4_IS9_T1_EE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt3v126detail20throw_duration_errorEv() #29
  unreachable

_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl1EEEEmS6_TnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESA_NS4_IS9_T1_EE.exit.i: ; preds = %bb.b
  %or.cond.i = icmp slt i32 %i.h, 1
  br i1 %or.cond.i, label %_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1EEEEEEvRT0_T1_i.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl1EEEEmS6_TnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESA_NS4_IS9_T1_EE.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !262 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !85   ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !86
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.k), !inline_history !839
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !85 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.thread.i

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.thread.i: ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.q = phi i64 [ %i.j, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.r = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !84
  store i64 %.pre-phi.i.i.i, ptr %i.i, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 46, ptr %i.s, align 1, !tbaa !65
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !262 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  br label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i56.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.thread.i
  %.04.i55.i = phi i32 [ 0, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.thread.i ], [ %i.ae, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i56.i ]
  %i.w = load i64, ptr %i.t, align 8, !tbaa !85   ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load i64, ptr %i.u, align 8, !tbaa !86
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i56.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !79
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.x), !inline_history !840
  %.pre.i.i.i59.i = load i64, ptr %i.t, align 8, !tbaa !85 ; 2 uses
  %.pre2.i.i.i60.i = add i64 %.pre.i.i.i59.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i56.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i56.i:    ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i57.i = phi i64 [ %i.x, %bb.f ], [ %.pre2.i.i.i60.i, %bb.g ]
  %i.ab = phi i64 [ %i.w, %bb.f ], [ %.pre.i.i.i59.i, %bb.g ]
  %i.ac = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !84
  store i64 %.pre-phi.i.i.i57.i, ptr %i.t, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 48, ptr %i.ad, align 1, !tbaa !65
  %i.ae = add nuw nsw i32 %.04.i55.i, 1           ; 2 uses
  %exitcond.not.i58.i = icmp eq i32 %i.ae, %i.h
  br i1 %exitcond.not.i58.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit61.i, label %bb.f, !llvm.loop !43

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit61.i: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i56.i
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !262
  br label %_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1EEEEEEvRT0_T1_i.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !275
  %i.ah = urem i64 %i.ag, 60
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  store i32 %i.ai, ptr %3, align 8, !tbaa !279
  call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1EEEEEEvRT0_T1_i.exit

_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1EEEEEEvRT0_T1_i.exit: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit61.i, %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl1EEEEmS6_TnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESA_NS4_IS9_T1_EE.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE11on_iso_timeEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !275
  %i.c = udiv i64 %i.b, 3600
  %i.d = urem i64 %i.c, 24
  tail call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.d, i32 noundef 2, i32 noundef 0)
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %0, align 8, !tbaa !262 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !86
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i1.i, i64 noundef %i.g), !inline_history !45
  %.pre.i.i3.i = load i64, ptr %i.e, align 8, !tbaa !85 ; 2 uses
  %.pre2.i.i4.i = add i64 %.pre.i.i3.i, 1
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit: ; preds = %bb.a, %bb.b
  %.pre-phi.i.i2.i = phi i64 [ %i.g, %bb.a ], [ %.pre2.i.i4.i, %bb.b ]
  %i.m = phi i64 [ %i.f, %bb.a ], [ %.pre.i.i3.i, %bb.b ]
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i1.i, align 8, !tbaa !84
  store i64 %.pre-phi.i.i2.i, ptr %i.e, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 58, ptr %i.o, align 1, !tbaa !65
  %i.p = load i64, ptr %i.a, align 8, !tbaa !275
  %i.q = udiv i64 %i.p, 60
  %i.r = urem i64 %i.q, 60
  tail call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.r, i32 noundef 2, i32 noundef 0)
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !262 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !85   ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !86
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !79
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.u), !inline_history !48
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !85 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.u, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %.pre2.i.i, %bb.c ]
  %i.aa = phi i64 [ %i.t, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %.pre.i.i, %bb.c ]
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !84
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 58, ptr %i.ac, align 1, !tbaa !65
  tail call void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE17on_duration_valueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !268, !range !186, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10write_signEv.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !262 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !86
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.f), !inline_history !49
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !tbaa !85 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %i.f, %bb.b ], [ %.pre2.i.i.i, %bb.c ]
  %i.l = phi i64 [ %i.e, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.m = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !84
  store i64 %.pre-phi.i.i.i, ptr %i.d, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 45, ptr %i.n, align 1, !tbaa !65
  store i8 0, ptr %i.a, align 8, !tbaa !268
  br label %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10write_signEv.exit

_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10write_signEv.exit: ; preds = %bb.a, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !262 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !267  ; 6 uses
  %i.q = or i64 %i.p, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !65    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !97
  %i.z = icmp ult i64 %i.p, %i.y
  %.neg.i.i.i.i = sext i1 %i.z to i32
  %i.aa = add nsw i32 %.neg.i.i.i.i, %i.v         ; 4 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !85 ; 2 uses
  %i.ae = add i64 %i.ad, %i.ab                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !86
  %i.ah = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10write_signEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !79
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.ae), !inline_history !841
  %.pre.i.i.i2 = load i64, ptr %i.ac, align 8, !tbaa !85 ; 2 uses
  %.pre14.i.i.i = load i64, ptr %i.af, align 8, !tbaa !86
  %.pre15.i.i.i = add i64 %.pre.i.i.i2, %i.ab     ; 2 uses
  %i.ak = icmp ult i64 %.pre14.i.i.i, %.pre15.i.i.i
  br i1 %i.ak, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10write_signEv.exit
  %i.al = phi i64 [ %.pre.i.i.i2, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i ], [ %i.ad, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10write_signEv.exit ]
  %.pre-phi19.i.i.i = phi i64 [ %.pre15.i.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i ], [ %i.ae, %_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE10write_signEv.exit ]
  store i64 %.pre-phi19.i.i.i, ptr %i.ac, align 8, !tbaa !85
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !84 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.ao = icmp ugt i64 %i.p, 99
  br i1 %i.ao, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %i.aa, %bb.d ]
  %.01819.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %i.ap = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.as = urem i64 %.01819.i.i.i, 100
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  store i16 %i.av, ptr %i.ar, align 1
  %i.aw = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.ax = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.ax, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !13

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.018.lcssa.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.aw, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %i.ay = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.az = add i32 %.0.lcssa.i.i.i, -2
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ba
  %i.bc = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.bb, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bf = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = add i32 %.0.lcssa.i.i.i, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !65
  br label %bb.g

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  %i.bk = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.0.0.copyload, i64 noundef %i.p, i32 noundef %i.aa)
  br label %bb.g

end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail7to_utf8IDiNS0_19basic_memory_bufferIcLm128ENS1_9allocatorIcEEEEE7convertERS6_NS0_17basic_string_viewIDiEENS1_20to_utf8_error_policyE:bb.a
  %i.bp = lshr i32 %i.e, 18
  %i.bq = trunc nuw nsw i32 %i.bp to i8
  %i.br = or disjoint i8 %i.bq, -16
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.bt = add i64 %i.bs, 1                        ; 3 uses
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !86
  %i.bv = icmp ugt i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.d, align 8, !tbaa !79
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bt), !inline_history !33
  %.pre.i48 = load i64, ptr %i.b, align 8, !tbaa !85 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.o, %bb.p
  %.pre-phi.i47 = phi i64 [ %i.bt, %bb.o ], [ %.pre2.i49, %bb.p ]
  %i.bx = phi i64 [ %i.bs, %bb.o ], [ %.pre.i48, %bb.p ]
  %i.by = load ptr, ptr %0, align 8, !tbaa !84
  store i64 %.pre-phi.i47, ptr %i.b, align 8, !tbaa !85
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 %i.br, ptr %i.bz, align 1, !tbaa !65
  %i.ca = lshr i32 %i.e, 12
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = and i8 %i.cb, 63
  %i.cd = or disjoint i8 %i.cc, -128
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !86
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !79
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cf), !inline_history !33
  %.pre.i52 = load i64, ptr %i.b, align 8, !tbaa !85 ; 2 uses
  %.pre2.i53 = add i64 %.pre.i52, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50, %bb.q
  %.pre-phi.i51 = phi i64 [ %i.cf, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50 ], [ %.pre2.i53, %bb.q ]
  %i.cj = phi i64 [ %i.ce, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50 ], [ %.pre.i52, %bb.q ]
  %i.ck = load ptr, ptr %0, align 8, !tbaa !84
  store i64 %.pre-phi.i51, ptr %i.b, align 8, !tbaa !85
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 %i.cd, ptr %i.cl, align 1, !tbaa !65
  %i.cm = lshr i32 %i.e, 6
  %i.cn = trunc i32 %i.cm to i8
  %i.co = and i8 %i.cn, 63
  %i.cp = or disjoint i8 %i.co, -128
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.cr = add i64 %i.cq, 1                        ; 3 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !86
  %i.ct = icmp ugt i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58

bb.r:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !79
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cr), !inline_history !33
  %.pre.i56 = load i64, ptr %i.b, align 8, !tbaa !85 ; 2 uses
  %.pre2.i57 = add i64 %.pre.i56, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54, %bb.r
  %.pre-phi.i55 = phi i64 [ %i.cr, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54 ], [ %.pre2.i57, %bb.r ]
  %i.cv = phi i64 [ %i.cq, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54 ], [ %.pre.i56, %bb.r ]
  %i.cw = load ptr, ptr %0, align 8, !tbaa !84
  store i64 %.pre-phi.i55, ptr %i.b, align 8, !tbaa !85
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store i8 %i.cp, ptr %i.cx, align 1, !tbaa !65
  %i.cy = trunc i32 %i.e to i8
  %i.cz = and i8 %i.cy, 63
  %i.da = or disjoint i8 %i.cz, -128              ; 2 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.dc = add i64 %i.db, 1                        ; 3 uses
  %i.dd = load i64, ptr %i.c, align 8, !tbaa !86
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.s, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !79
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dc), !inline_history !33
  %.pre.i60 = load i64, ptr %i.b, align 8, !tbaa !85 ; 2 uses
  %.pre2.i61 = add i64 %.pre.i60, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.s, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58, %bb.h, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42, %bb.d, %bb.c, %_ZN3fmt3v126detail14to_utf8_3bytesERNS1_6bufferIcEEj.exit
  %.pre-phi.i43.sink = phi i64 [ %.pre2.i, %bb.d ], [ %.pre2.i45, %bb.h ], [ %.pre-phi.i9.i, %_ZN3fmt3v126detail14to_utf8_3bytesERNS1_6bufferIcEEj.exit ], [ %i.i, %bb.c ], [ %i.ac, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %i.dc, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58 ], [ %.pre2.i61, %bb.s ]
  %.sink98 = phi i64 [ %.pre.i, %bb.d ], [ %.pre.i44, %bb.h ], [ %i.bk, %_ZN3fmt3v126detail14to_utf8_3bytesERNS1_6bufferIcEEj.exit ], [ %i.h, %bb.c ], [ %i.ab, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %i.db, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58 ], [ %.pre.i60, %bb.s ]
  %.sink = phi i8 [ %i.g, %bb.d ], [ %i.aa, %bb.h ], [ %i.bn, %_ZN3fmt3v126detail14to_utf8_3bytesERNS1_6bufferIcEEj.exit ], [ %i.g, %bb.c ], [ %i.aa, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %i.da, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58 ], [ %i.da, %bb.s ]
  %i.dg = load ptr, ptr %0, align 8, !tbaa !84
  store i64 %.pre-phi.i43.sink, ptr %i.b, align 8, !tbaa !85
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sink98
  store i8 %.sink, ptr %i.dh, align 1, !tbaa !65
  %i.di = getelementptr inbounds nuw i8, ptr %.03471, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.di, %i.a
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !874

.critedge:                                        ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.n, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.n ], [ true, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v12::basic_memory_buffer.59", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !295, !range !186, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !298, !nonnull !134, !align !135
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !277  ; 3 uses
  %i.i = icmp slt i32 %i.h, 12
  %i.j = add nsw i32 %i.h, -12
  %i.k = select i1 %i.i, i32 %i.h, i32 %i.j       ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, i32 12, i32 %i.k
  tail call void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.m, i32 noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !262
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !298, !nonnull !134, !align !135
  %i.q = load ptr, ptr %0, align 8, !tbaa !299, !nonnull !134, !align !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.t, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.s, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !84
  store i64 500, ptr %i.r, align 8, !tbaa !86
  invoke void @_ZN3fmt3v126detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext 73, i8 noundef signext 79)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %3, align 8, !tbaa !84
  %i.w = load i64, ptr %i.t, align 8, !tbaa !85
  %i.x = invoke ptr @_ZN3fmt3v126detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr %i.v, i64 %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %3, align 8, !tbaa !84     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.y) #25
  br label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.aa, %i.u
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.aa) #25
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.z

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr %i.x, ptr %i.n, align 8, !tbaa !262
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v12::basic_memory_buffer.59", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !295, !range !186, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !298, !nonnull !134, !align !135
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !278
  tail call void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.h, i32 noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !298, !nonnull !134, !align !135
  %i.l = load ptr, ptr %0, align 8, !tbaa !299, !nonnull !134, !align !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.n, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !84
  store i64 500, ptr %i.m, align 8, !tbaa !86
  invoke void @_ZN3fmt3v126detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext 77, i8 noundef signext 79)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 8, !tbaa !84
  %i.r = load i64, ptr %i.o, align 8, !tbaa !85
  %i.s = invoke ptr @_ZN3fmt3v126detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr %i.q, i64 %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %3, align 8, !tbaa !84     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.t) #25
  br label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %3, align 8, !tbaa !84     ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.v) #25
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.u

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr %i.s, ptr %i.i, align 8, !tbaa !262
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v12::basic_memory_buffer.59", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !295, !range !186, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !298, !nonnull !134, !align !135
  %i.g = load i32, ptr %i.f, align 8, !tbaa !279
  tail call void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.g, i32 noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !262
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !298, !nonnull !134, !align !135
  %i.k = load ptr, ptr %0, align 8, !tbaa !299, !nonnull !134, !align !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.m, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !84
  store i64 500, ptr %i.l, align 8, !tbaa !86
  invoke void @_ZN3fmt3v126detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 83, i8 noundef signext 79)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %3, align 8, !tbaa !84
  %i.q = load i64, ptr %i.n, align 8, !tbaa !85
  %i.r = invoke ptr @_ZN3fmt3v126detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr %i.p, i64 %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %3, align 8, !tbaa !84     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.o
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.s) #25
  br label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !84     ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.u) #25
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.t

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr %i.r, ptr %i.h, align 8, !tbaa !262
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !270, !range !186, !noundef !134 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !288
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !288, !range !186
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !289

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !291
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !291, !nonnull !134, !align !135
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !262
  store ptr %i.m, ptr %6, align 8, !tbaa !291
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !289

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !291
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !291, !nonnull !134, !align !135
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #25
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !295
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !262
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !296
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.y, align 8, !tbaa !297
  %i.z = getelementptr inbounds i8, ptr %6, i64 %3 ; 2 uses
  %i.aa = and i64 %2, 1
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !168
  %i.ac = getelementptr i8, ptr %i.ab, i64 %2
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load ptr, ptr %i.ad, align 8, !nosanitize !134
  br label %bb.p

bb.m:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.af, %bb.m ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ag = load i8, ptr %i.e, align 8, !tbaa !288, !range !186, !noundef !134
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #25
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !262
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !288, !range !186, !noundef !134
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_12_hour_timeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer.59", align 8 ; 12 uses
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !295, !range !186, !noundef !134
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !298, !nonnull !134, !align !135 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !277  ; 3 uses
  %i.i = icmp slt i32 %i.h, 12
  %i.j = add nsw i32 %i.h, -12
  %i.k = select i1 %i.i, i32 %i.h, i32 %i.j       ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, i32 12, i32 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !278
  %i.p = load i32, ptr %i.f, align 8, !tbaa !279
  %i.q = shl i32 %i.o, 24
  %i.r = or i32 %i.m, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = zext i32 %i.p to i64
  %i.u = shl i64 %i.t, 48
  %i.v = or disjoint i64 %i.u, %i.s               ; 2 uses
  %i.w = mul i64 %i.v, 205
  %i.x = lshr i64 %i.w, 11
  %i.y = and i64 %i.x, 4222124902318095
  %i.z = mul nuw nsw i64 %i.y, 6
  %i.aa = add i64 %i.z, %i.v                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = and i64 %i.ab, 4222124902318095
  %i.ad = shl i64 %i.aa, 8
  %i.ae = and i64 %i.ad, 1080863974993432320
  %i.af = or disjoint i64 %i.ac, %i.ae
  %i.ag = or disjoint i64 %i.af, 3472339291344613424
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !262 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24 ; 2 uses
  %.pre.i.i = load i64, ptr %i.ai, align 8, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %bb.b
  %i.al = phi i64 [ %.pre.i.i, %bb.b ], [ %i.ay, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %bb.b ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !86
  %i.an = sub i64 %i.am, %i.al
  %gepdiff = sub nsw i64 8, %.02732.i.i.idx       ; 4 uses
  %i.ao = icmp ult i64 %i.an, %gepdiff
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !79
  %i.aq = add i64 %gepdiff, %i.al
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.aq), !inline_history !23
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !85 ; 2 uses
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !86
  %i.at = sub i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.at)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026.i.i = phi i64 [ %i.ar, %bb.d ], [ %i.al, %bb.c ] ; 2 uses
  %.025.i.i = phi i64 [ %i.au, %bb.d ], [ %gepdiff, %bb.c ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.av = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !84
  %i.aw = getelementptr i8, ptr %i.av, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !65
  %.pre37.i.i = load i64, ptr %i.ai, align 8, !tbaa !85
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.e
  %i.ax = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.e ]
  %i.ay = add i64 %i.ax, %.025.i.i                ; 4 uses
  store i64 %i.ay, ptr %i.ai, align 8, !tbaa !85
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 8
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, label %bb.c, !llvm.loop !24

_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit: ; preds = %._crit_edge.i.i
  store ptr %.sroa.0.0.copyload, ptr %i.ah, align 8, !tbaa !262
  %i.az = add i64 %i.ay, 1                        ; 3 uses
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !86
  %i.bb = icmp ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !79
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.az), !inline_history !48
  %.pre.i.i2 = load i64, ptr %i.ai, align 8, !tbaa !85 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i2, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, %bb.f
  %.pre-phi.i.i = phi i64 [ %i.az, %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %.pre2.i.i, %bb.f ]
  %i.bd = phi i64 [ %i.ay, %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %.pre.i.i2, %bb.f ]
  %i.be = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !84
  store i64 %.pre-phi.i.i, ptr %i.ai, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 32, ptr %i.bf, align 1, !tbaa !65
  tail call void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i3 = load ptr, ptr %i.bg, align 8, !tbaa !262
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !298, !nonnull !134, !align !135
  %i.bj = load ptr, ptr %0, align 8, !tbaa !299, !nonnull !134, !align !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.bm, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bl, align 8, !tbaa !79
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.bn, ptr %1, align 8, !tbaa !84
  store i64 500, ptr %i.bk, align 8, !tbaa !86
  invoke void @_ZN3fmt3v126detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i8 noundef signext 114, i8 noundef signext 0)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %1, align 8, !tbaa !84
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !85
  %i.bq = invoke ptr @_ZN3fmt3v126detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i3, ptr %i.bo, i64 %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %1, align 8, !tbaa !84    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, %i.bn
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.br) #25
  br label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %1, align 8, !tbaa !84    ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.bt, %i.bn
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.bt) #25
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.bs

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  store ptr %i.bq, ptr %i.bg, align 8, !tbaa !262
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer.59", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !295, !range !186, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !298, !nonnull !134, !align !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !277
  %i.h = icmp slt i32 %i.g, 12
  %i.i = select i1 %i.h, i8 65, i8 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !262 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !86
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.m), !inline_history !48
  %.pre.i.i = load i64, ptr %i.k, align 8, !tbaa !85 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.m, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.s = phi i64 [ %i.l, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !84
  store i64 %.pre-phi.i.i, ptr %i.k, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %i.i, ptr %i.u, align 1, !tbaa !65
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.j, align 8, !tbaa !262 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1, i64 8 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !86
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit5

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_:bb.a
  %i.ch = sub i64 %i.cg, %.057.i.ph63
  %xtraiter = and i64 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ci, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.057.i.prol, align 1, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cj, ptr %.08.i.prol, align 1, !tbaa !65
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !888

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ci, %.lr.ph.i.prol ]
  %i.cl = sub i64 %.057.i.ph63, %i.cg
  %i.cm = icmp ugt i64 %i.cl, -8
  br i1 %i.cm, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.di, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.co = load i8, ptr %.057.i, align 1, !tbaa !65
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.co, ptr %.08.i, align 1, !tbaa !65
  %i.cq = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !65
  %i.ct = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !65
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !65
  %i.cw = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !65
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !65
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !65
  %i.dc = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !65
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !65
  %i.df = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !65
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !65
  %i.di = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !65
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !65
  %.not.i33.7 = icmp eq ptr %i.di, %i.br
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, label %.lr.ph.i, !llvm.loop !889

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit
  %.3 = phi ptr [ %.4, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader ] ; 2 uses
  %.0 = phi ptr [ %.1, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit.preheader ] ; 7 uses
  %i.dm = load i8, ptr %.0, align 1, !tbaa !65
  %i.dn = zext i8 %i.dm to i32                    ; 2 uses
  %i.do = lshr i32 %i.dn, 3                       ; 2 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @.str.58, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !65
  %i.ds = sext i8 %i.dr to i64                    ; 6 uses
  %i.dt = getelementptr inbounds i8, ptr %.0, i64 %i.ds
  %.not.i.i34 = lshr i32 -2130771968, %i.do
  %i.du = and i32 %.not.i.i34, 1
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !148
  %i.dz = and i32 %i.dy, %i.dn
  %i.ea = shl nuw nsw i32 %i.dz, 18
  %i.eb = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !65  ; 2 uses
  %i.ed = and i8 %i.ec, 63
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 12
  %i.eg = or disjoint i32 %i.ef, %i.ea
  %i.eh = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !65  ; 2 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 6
  %i.em = or disjoint i32 %i.el, %i.eg
  %i.en = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !65  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.em, %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.ds
  %i.et = load i32, ptr %i.es, align 4, !tbaa !148
  %i.eu = lshr i32 %i.er, %i.et                   ; 4 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.ds
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !148
  %i.ex = icmp ult i32 %i.eu, %i.ew
  %i.ey = select i1 %i.ex, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.eu, 2147481600
  %i.ez = icmp eq i32 %.mask.i.i35, 55296
  %i.fa = select i1 %i.ez, i32 128, i32 0
  %i.fb = icmp samesign ugt i32 %i.eu, 1114111
  %i.fc = select i1 %i.fb, i32 256, i32 0
  %i.fd = lshr i8 %i.ec, 2
  %i.fe = and i8 %i.fd, 48
  %i.ff = lshr i8 %i.ei, 4
  %i.fg = and i8 %i.ff, 12
  %i.fh = lshr i8 %i.eo, 6
  %i.fi = or disjoint i8 %i.fg, %i.fe
  %i.fj = or disjoint i8 %i.fi, %i.fh
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = or disjoint i32 %i.ey, %i.fk
  %i.fm = or disjoint i32 %i.fl, %i.fc
  %i.fn = or disjoint i32 %i.fm, %i.fa
  %i.fo = xor i32 %i.fn, 42
  %i.fp = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.ds
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !148
  %i.fr = lshr i32 %i.fo, %i.fq
  %.not.i36 = icmp eq i32 %i.fr, 0                ; 3 uses
  %i.fs = select i1 %.not.i36, i32 %i.eu, i32 -1
  %i.ft = add nsw i64 %i.dv, %i.ds
  %i.fu = select i1 %.not.i36, i64 %i.ft, i64 1
  %i.fv = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.fs, ptr %.3, i64 %i.fu) ; 3 uses
  %i.fw = select i1 %.not.i36, ptr %i.dw, ptr %i.eb ; 2 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %.0 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %.4.idx = select i1 %i.fv, i64 %i.fz, i64 0
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %.4.idx
  %.1 = select i1 %i.fv, ptr %i.fw, ptr %.0       ; 2 uses
  %i.ga = icmp ult ptr %.1, %i.dl
  %or.cond = select i1 %i.fv, i1 %i.ga, i1 false
  br i1 %or.cond, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, label %bb.e, !llvm.loop !890

bb.e:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS8_T0_vEE_EcvNS1_10has_insertIS8_SD_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !174
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !120    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.16, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !65
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !85
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !86
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !79
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !46
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 8 uses
  %i.ac = load i8, ptr %4, align 8, !tbaa !285, !range !186, !noundef !134
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !286
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !97
  %i.ah = tail call { ptr, i64 } @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_(ptr %.sroa.09.0, i64 %i.af, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !197 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !286 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bz, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %i.ak, %.lr.ph34.i.i.i ], [ %i.ca, %._crit_edge.i.i.i ] ; 9 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !86
  %i.au = sub i64 %i.at, %i.as
  %i.av = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.aw = sub i64 %i.aq, %i.av                    ; 4 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.az = add i64 %i.aw, %i.as
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.az), !inline_history !892
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !85 ; 2 uses
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !86
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.aw, %bb.g ] ; 13 uses
  %i.be = load ptr, ptr %.sroa.09.0, align 8, !tbaa !84 ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.026.i.i.i, %i.bf
  %i.bi = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <16 x i8>, ptr %i.bk, align 1, !tbaa !65
  %wide.load36 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !65
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <16 x i8> %wide.load, ptr %i.bm, align 1, !tbaa !65
  store <16 x i8> %wide.load36, ptr %i.bn, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !893

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !185

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bq, align 1, !tbaa !65
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !894

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i.prol
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !65
  %i.bv = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !895

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bv, %.lr.ph.i.i.i.prol ]
  %i.bw = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !85
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.by = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.bz = add i64 %i.by, %.025.i.i.i              ; 2 uses
  store i64 %i.bz, ptr %i.ao, align 8, !tbaa !85
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.an
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !24

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !65
  %i.ce = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !65
  %i.ci = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !65
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !65
  %i.cm = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !65
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !65
  %i.cq = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cq, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !896

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cr = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.06.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cr, %bb.j ], [ %.sroa.06.0.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  switch i32 %i.b, label %bb.j [
    i32 10, label %bb.b
    i32 13, label %bb.d
    i32 9, label %bb.f
    i32 34, label %bb.h
    i32 39, label %bb.h
    i32 92, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !86
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail19parse_chrono_formatIwRNS1_21chrono_format_checkerEEEPKT_S7_S7_OT0_:bb.a
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split307.us:                                     ; preds = %bb.y, %bb.h
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split309.us:                                     ; preds = %bb.y, %bb.h
  %.us-phi310 = phi ptr [ %i.l, %bb.h ], [ %i.af, %bb.y ] ; 2 uses
  %i.aj = icmp eq ptr %.us-phi310, %1
  br i1 %i.aj, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %.split309.us
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull @.str.50)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ae:                                            ; preds = %.split309.us
  %i.am = load i32, ptr %.us-phi310, align 4, !tbaa !113
  switch i32 %i.am, label %bb.am [
    i32 89, label %bb.af
    i32 121, label %bb.ag
    i32 67, label %bb.ah
    i32 99, label %bb.ai
    i32 120, label %bb.aj
    i32 88, label %bb.ak
    i32 122, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

bb.ah:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

bb.ai:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

bb.aj:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

bb.ak:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

bb.al:                                            ; preds = %bb.ae
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

bb.am:                                            ; preds = %bb.ae
  %i.an = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull @.str.50)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ap:                                            ; preds = %bb.y
  %i.ap = icmp eq ptr %i.af, %1
  br i1 %i.ap, label %.split312.us, label %bb.as

.split312.us:                                     ; preds = %bb.ap, %bb.i
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull @.str.50)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.split312.us
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.ar:                                            ; preds = %.split312.us
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.as:                                            ; preds = %bb.ap
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 4 uses
  %i.at = load i32, ptr %i.af, align 4, !tbaa !113
  switch i32 %i.at, label %.split314.us [
    i32 121, label %.split316.us
    i32 109, label %.split318.us
    i32 85, label %.split320.us
    i32 87, label %.split322.us
    i32 86, label %.split324.us
    i32 100, label %.split326.us
    i32 101, label %.split328.us
    i32 119, label %.split330.us
    i32 117, label %.split332.us
    i32 72, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit
    i32 73, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit
    i32 77, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit
    i32 83, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit
    i32 122, label %.split334.us
  ]

.split316.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split318.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split320.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split322.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split324.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split326.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split328.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split330.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split332.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split334.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v126detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #29
  unreachable

.split314.us:                                     ; preds = %bb.as, %bb.j
  %i.au = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str.50)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.split314.us
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.au:                                            ; preds = %.split314.us
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.split259.us:                                     ; preds = %bb.y, %bb.h
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.50)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.split259.us
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.aw:                                            ; preds = %.split259.us
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit: ; preds = %bb.y, %bb.as, %bb.as, %bb.as, %bb.as, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.o
  %.3 = phi ptr [ %i.as, %bb.as ], [ %i.u, %bb.o ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.as, %bb.as ], [ %i.as, %bb.as ], [ %i.as, %bb.as ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ] ; 3 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit.thread, label %.lr.ph.split

_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit.thread: ; preds = %.lr.ph.split, %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit, %.lr.ph.split.us, %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit.us, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129253.us, %.lr.ph.split.us ], [ %.3.us, %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit.us ], [ %.0129253, %.lr.ph.split ], [ %.3, %_ZNK3fmt3v126detail21chrono_format_checker17on_duration_valueEv.exit ]
  ret ptr %.0134
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail19parse_chrono_formatIwRNS1_18duration_formatterIwlSt5ratioILl1ELl1EEEEEEPKT_SA_SA_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 6 uses
  %5 = alloca %struct.tm, align 8                 ; 6 uses
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit208, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !113
  switch i32 %i.d, label %bb.c [
    i32 125, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit208
    i32 37, label %.lr.ph
  ]

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.50)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #25
  br label %bb.bw

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
  %.0129230 = phi ptr [ %0, %.lr.ph ], [ %.3, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165 ] ; 9 uses
  %.0135229 = phi ptr [ %0, %.lr.ph ], [ %.1136, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165 ] ; 4 uses
  %i.l = load i32, ptr %.0129230, align 4, !tbaa !113
  switch i32 %i.l, label %bb.g [
    i32 125, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165.thread
    i32 37, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.0129230, i64 4
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165, !llvm.loop !925

bb.h:                                             ; preds = %bb.f
  %.not147 = icmp eq ptr %.0135229, %.0129230
  br i1 %.not147, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.h
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !102 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 16 ; 2 uses
  %i.p = ptrtoint ptr %.0129230 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 24
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !tbaa !91
  %.pre37.i.i.i = load i64, ptr %i.o, align 8, !tbaa !92
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.r = phi i64 [ %.pre37.i.i.i, %.lr.ph34.i.i.i ], [ %i.ae, %._crit_edge.i.i.i ] ; 2 uses
  %i.s = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.ax, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %.0135229, %.lr.ph34.i.i.i ], [ %i.ay, %._crit_edge.i.i.i ] ; 8 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ptrtoint ptr %.02732.i.i.i to i64        ; 2 uses
  %i.v = sub i64 %i.p, %i.u
  %i.w = ashr exact i64 %i.v, 2                   ; 4 uses
  %i.x = icmp ult i64 %i.t, %i.w
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.z = add i64 %i.w, %i.s
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i, i64 noundef %i.z), !inline_history !926
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !91  ; 2 uses
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !92  ; 2 uses
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.ac)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi i64 [ %i.ab, %bb.j ], [ %i.r, %bb.i ]
  %i.af = phi i64 [ %i.aa, %bb.j ], [ %i.s, %bb.i ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.ad, %bb.j ], [ %i.w, %bb.i ] ; 9 uses
  %i.ag = load ptr, ptr %.sroa.01.0.copyload.i, align 8, !tbaa !90 ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af ; 6 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %min.iters.check264 = icmp ult i64 %.025.i.i.i, 8
  br i1 %min.iters.check264, label %.lr.ph.i.i.i.preheader291, label %vector.memcheck261

vector.memcheck261:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.aj = shl i64 %i.af, 2
  %i.ak = add i64 %i.aj, %i.ah
  %i.al = sub i64 %i.u, %i.ak
  %diff.check262 = icmp ugt i64 %i.al, -32
  br i1 %diff.check262, label %.lr.ph.i.i.i.preheader291, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck261
  %n.vec266 = and i64 %.025.i.i.i, -8             ; 3 uses
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next271, %vector.body267 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %index268 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load269 = load <4 x i32>, ptr %i.am, align 4, !tbaa !113
  %wide.load270 = load <4 x i32>, ptr %i.an, align 4, !tbaa !113
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index268 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load269, ptr %i.ao, align 4, !tbaa !113
  store <4 x i32> %wide.load270, ptr %i.ap, align 4, !tbaa !113
  %index.next271 = add nuw i64 %index268, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next271, %n.vec266
  br i1 %i.aq, label %middle.block272, label %vector.body267, !llvm.loop !927

middle.block272:                                  ; preds = %vector.body267
  %cmp.n273 = icmp eq i64 %.025.i.i.i, %n.vec266
  br i1 %cmp.n273, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader291

.lr.ph.i.i.i.preheader291:                        ; preds = %vector.memcheck261, %.lr.ph.i.i.i.preheader, %middle.block272
  %.030.i.i.i.ph = phi i64 [ 0, %vector.memcheck261 ], [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec266, %middle.block272 ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader291, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader291 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader291 ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !113
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.030.i.i.i.prol
  store i32 %i.as, ptr %i.at, align 4, !tbaa !113
  %i.au = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !928

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader291
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader291 ], [ %i.au, %.lr.ph.i.i.i.prol ]
  %i.av = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block272, %bb.k
  %i.ax = add i64 %.025.i.i.i, %i.af              ; 2 uses
  store i64 %i.ax, ptr %i.n, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %.0129230
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit, label %bb.i, !llvm.loop !2

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !113
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.030.i.i.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !113
  %i.bc = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !113
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bc
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !113
  %i.bg = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !113
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bg
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !113
  %i.bk = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !113
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bk
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !113
  %i.bo = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bo, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !929

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %.0129230, i64 4 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, %1
  br i1 %i.bq, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull @.str.50)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.br) #25
  br label %bb.bw

bb.o:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !113
  switch i32 %i.bt, label %bb.r [
    i32 95, label %bb.p
    i32 45, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.0129230, i64 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %.0129230, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail19parse_chrono_formatIwRNS1_18duration_formatterIwlSt5ratioILl1ELl1EEEEEEPKT_SA_SA_OT0_:bb.a
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %.030.i.i.i161.prol
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !113
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.030.i.i.i161.prol
  store i32 %i.de, ptr %i.df, align 4, !tbaa !113
  %i.dg = add nuw i64 %.030.i.i.i161.prol, 1      ; 2 uses
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %.lr.ph.i.i.i160.prol.loopexit, label %.lr.ph.i.i.i160.prol, !llvm.loop !931

.lr.ph.i.i.i160.prol.loopexit:                    ; preds = %.lr.ph.i.i.i160.prol, %.lr.ph.i.i.i160.preheader290
  %.030.i.i.i161.unr = phi i64 [ %.030.i.i.i161.ph, %.lr.ph.i.i.i160.preheader290 ], [ %i.dg, %.lr.ph.i.i.i160.prol ]
  %i.dh = sub i64 %.030.i.i.i161.ph, %.025.i.i.i158
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %._crit_edge.i.i.i163, label %.lr.ph.i.i.i160

._crit_edge.i.i.i163:                             ; preds = %.lr.ph.i.i.i160.prol.loopexit, %.lr.ph.i.i.i160, %middle.block, %bb.z
  %i.dj = add i64 %.025.i.i.i158, %i.cq           ; 2 uses
  store i64 %i.dj, ptr %i.cb, align 8, !tbaa !91
  %.idx213 = shl nuw nsw i64 %.025.i.i.i158, 2
  %.02732.i.i.i157.add = add nuw nsw i64 %.idx213, %.02732.i.i.i157.idx ; 2 uses
  %.not.i.i.i164 = icmp eq i64 %.02732.i.i.i157.add, 4
  br i1 %.not.i.i.i164, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165, label %bb.x, !llvm.loop !2

.lr.ph.i.i.i160:                                  ; preds = %.lr.ph.i.i.i160.prol.loopexit, %.lr.ph.i.i.i160
  %.030.i.i.i161 = phi i64 [ %i.dz, %.lr.ph.i.i.i160 ], [ %.030.i.i.i161.unr, %.lr.ph.i.i.i160.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %.030.i.i.i161
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !113
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.030.i.i.i161
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !113
  %i.dn = add nuw i64 %.030.i.i.i161, 1           ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !113
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dn
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !113
  %i.dr = add nuw i64 %.030.i.i.i161, 2           ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !113
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dr
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !113
  %i.dv = add nuw i64 %.030.i.i.i161, 3           ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i157.ptr, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !113
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dv
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !113
  %i.dz = add nuw i64 %.030.i.i.i161, 4           ; 2 uses
  %exitcond.not.i.i.i162.3 = icmp eq i64 %i.dz, %.025.i.i.i158
  br i1 %exitcond.not.i.i.i162.3, label %._crit_edge.i.i.i163, label %.lr.ph.i.i.i160, !llvm.loop !932

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 10, ptr %i.a, align 4
  %.sroa.01.0.copyload.i166 = load ptr, ptr %2, align 8, !tbaa !102 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i166, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i166, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i166, i64 24
  %.pre.i.i.i169 = load i64, ptr %i.ea, align 8, !tbaa !91
  %.pre37.i.i.i170 = load i64, ptr %i.eb, align 8, !tbaa !92
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i.i.i177, %bb.aa
  %i.ed = phi i64 [ %.pre37.i.i.i170, %bb.aa ], [ %i.eo, %._crit_edge.i.i.i177 ] ; 2 uses
  %i.ee = phi i64 [ %.pre.i.i.i169, %bb.aa ], [ %i.et, %._crit_edge.i.i.i177 ] ; 3 uses
  %.02732.i.i.i171.idx = phi i64 [ 0, %bb.aa ], [ %.02732.i.i.i171.add, %._crit_edge.i.i.i177 ] ; 3 uses
  %.02732.i.i.i171.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.i171.idx
  %i.ef = sub i64 %i.ed, %i.ee
  %gepdiff235 = sub nsw i64 4, %.02732.i.i.i171.idx
  %i.eg = ashr exact i64 %gepdiff235, 2           ; 4 uses
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !93
  %i.ej = add i64 %i.eg, %i.ee
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i166, i64 noundef %i.ej), !inline_history !926
  %i.ek = load i64, ptr %i.ea, align 8, !tbaa !91 ; 2 uses
  %i.el = load i64, ptr %i.eb, align 8, !tbaa !92 ; 2 uses
  %i.em = sub i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.em)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eo = phi i64 [ %i.el, %bb.ac ], [ %i.ed, %bb.ab ]
  %i.ep = phi i64 [ %i.ek, %bb.ac ], [ %i.ee, %bb.ab ] ; 2 uses
  %.025.i.i.i172 = phi i64 [ %i.en, %bb.ac ], [ %i.eg, %bb.ab ] ; 3 uses
  %.not36.i.i.i173 = icmp eq i64 %.025.i.i.i172, 0
  br i1 %.not36.i.i.i173, label %._crit_edge.i.i.i177, label %.lr.ph.i.i.i174.preheader

.lr.ph.i.i.i174.preheader:                        ; preds = %bb.ad
  %i.eq = load ptr, ptr %.sroa.01.0.copyload.i166, align 8, !tbaa !90
  %i.er = getelementptr [4 x i8], ptr %i.eq, i64 %i.ep
  %i.es = shl nuw i64 %.025.i.i.i172, 2           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.er, ptr align 4 %.02732.i.i.i171.ptr, i64 %i.es, i1 false), !tbaa !113
  br label %._crit_edge.i.i.i177

._crit_edge.i.i.i177:                             ; preds = %bb.ad, %.lr.ph.i.i.i174.preheader
  %.idx212.pre-phi = phi i64 [ %i.es, %.lr.ph.i.i.i174.preheader ], [ 0, %bb.ad ]
  %i.et = add i64 %.025.i.i.i172, %i.ep           ; 2 uses
  store i64 %i.et, ptr %i.ea, align 8, !tbaa !91
  %.02732.i.i.i171.add = add nuw nsw i64 %.idx212.pre-phi, %.02732.i.i.i171.idx ; 2 uses
  %.not.i.i.i178 = icmp eq i64 %.02732.i.i.i171.add, 4
  br i1 %.not.i.i.i178, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179, label %bb.ab, !llvm.loop !2

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179: ; preds = %._crit_edge.i.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 9, ptr %i.b, align 4
  %.sroa.01.0.copyload.i180 = load ptr, ptr %2, align 8, !tbaa !102 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i180, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i180, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i180, i64 24
  %.pre.i.i.i183 = load i64, ptr %i.eu, align 8, !tbaa !91
  %.pre37.i.i.i184 = load i64, ptr %i.ev, align 8, !tbaa !92
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i.i191, %bb.ae
  %i.ex = phi i64 [ %.pre37.i.i.i184, %bb.ae ], [ %i.fi, %._crit_edge.i.i.i191 ] ; 2 uses
  %i.ey = phi i64 [ %.pre.i.i.i183, %bb.ae ], [ %i.fn, %._crit_edge.i.i.i191 ] ; 3 uses
  %.02732.i.i.i185.idx = phi i64 [ 0, %bb.ae ], [ %.02732.i.i.i185.add, %._crit_edge.i.i.i191 ] ; 3 uses
  %.02732.i.i.i185.ptr = getelementptr i8, ptr %i.b, i64 %.02732.i.i.i185.idx
  %i.ez = sub i64 %i.ex, %i.ey
  %gepdiff = sub nsw i64 4, %.02732.i.i.i185.idx
  %i.fa = ashr exact i64 %gepdiff, 2              ; 4 uses
  %i.fb = icmp ult i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !93
  %i.fd = add i64 %i.fa, %i.ey
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i180, i64 noundef %i.fd), !inline_history !926
  %i.fe = load i64, ptr %i.eu, align 8, !tbaa !91 ; 2 uses
  %i.ff = load i64, ptr %i.ev, align 8, !tbaa !92 ; 2 uses
  %i.fg = sub i64 %i.ff, %i.fe
  %i.fh = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fg)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fi = phi i64 [ %i.ff, %bb.ag ], [ %i.ex, %bb.af ]
  %i.fj = phi i64 [ %i.fe, %bb.ag ], [ %i.ey, %bb.af ] ; 2 uses
  %.025.i.i.i186 = phi i64 [ %i.fh, %bb.ag ], [ %i.fa, %bb.af ] ; 3 uses
  %.not36.i.i.i187 = icmp eq i64 %.025.i.i.i186, 0
  br i1 %.not36.i.i.i187, label %._crit_edge.i.i.i191, label %.lr.ph.i.i.i188.preheader

.lr.ph.i.i.i188.preheader:                        ; preds = %bb.ah
  %i.fk = load ptr, ptr %.sroa.01.0.copyload.i180, align 8, !tbaa !90
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %i.fj
  %i.fm = shl nuw i64 %.025.i.i.i186, 2           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fl, ptr align 4 %.02732.i.i.i185.ptr, i64 %i.fm, i1 false), !tbaa !113
  br label %._crit_edge.i.i.i191

._crit_edge.i.i.i191:                             ; preds = %bb.ah, %.lr.ph.i.i.i188.preheader
  %.idx.pre-phi = phi i64 [ %i.fm, %.lr.ph.i.i.i188.preheader ], [ 0, %bb.ah ]
  %i.fn = add i64 %.025.i.i.i186, %i.fj           ; 2 uses
  store i64 %i.fn, ptr %i.eu, align 8, !tbaa !91
  %.02732.i.i.i185.add = add nuw nsw i64 %.idx.pre-phi, %.02732.i.i.i185.idx ; 2 uses
  %.not.i.i.i192 = icmp eq i64 %.02732.i.i.i185.add, 4
  br i1 %.not.i.i.i192, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193, label %bb.af, !llvm.loop !2

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193: ; preds = %._crit_edge.i.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ai:                                            ; preds = %bb.v
  %i.fo = load i64, ptr %i.e, align 8, !tbaa !275
  %i.fp = udiv i64 %i.fo, 86400
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.fp, i32 noundef 0, i32 noundef 0)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.aj:                                            ; preds = %bb.v
  %i.fq = load i64, ptr %i.e, align 8, !tbaa !275
  %i.fr = udiv i64 %i.fq, 3600
  %i.fs = urem i64 %i.fr, 24
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.fs, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ak:                                            ; preds = %bb.v
  %i.ft = load i64, ptr %i.e, align 8, !tbaa !275
  %i.fu = udiv i64 %i.ft, 3600
  %i.fv = urem i64 %i.fu, 12                      ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = select i1 %i.fw, i64 12, i64 %i.fv
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.fx, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.al:                                            ; preds = %bb.v
  %i.fy = load i64, ptr %i.e, align 8, !tbaa !275
  %i.fz = udiv i64 %i.fy, 60
  %i.ga = urem i64 %i.fz, 60
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.ga, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.am:                                            ; preds = %bb.v
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 0, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.an:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !alias.scope !941
  %i.gb = load i64, ptr %i.e, align 8, !tbaa !275, !noalias !941 ; 3 uses
  %i.gc = udiv i64 %i.gb, 3600
  %i.gd = urem i64 %i.gc, 24
  %i.ge = trunc nuw nsw i64 %i.gd to i32
  store i32 %i.ge, ptr %i.h, align 8, !tbaa !277, !alias.scope !941
  %i.gf = udiv i64 %i.gb, 60
  %8 = urem i64 %i.gf, 60
  %9 = trunc nuw nsw i64 %8 to i32
  store i32 %9, ptr %i.i, align 4, !tbaa !278, !alias.scope !941
  %10 = urem i64 %i.gb, 60
  %11 = trunc nuw nsw i64 %10 to i32
  store i32 %11, ptr %5, align 8, !tbaa !279, !alias.scope !941
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_12_hour_timeEv to i64), i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ao:                                            ; preds = %bb.v
  %i.gg = load i64, ptr %i.e, align 8, !tbaa !275
  %i.gh = udiv i64 %i.gg, 3600
  %i.gi = urem i64 %i.gh, 24
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.gi, i32 noundef 2, i32 noundef 0)
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %2, align 8, !tbaa !102 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 8 ; 3 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !91 ; 2 uses
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !92
  %i.go = icmp ugt i64 %i.gl, %i.gn
  br i1 %i.go, label %bb.ap, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

bb.ap:                                            ; preds = %bb.ao
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !93
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i1.i, i64 noundef %i.gl), !inline_history !53
  %.pre.i.i3.i = load i64, ptr %i.gj, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i4.i = add i64 %.pre.i.i3.i, 1
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit: ; preds = %bb.ao, %bb.ap
  %.pre-phi.i.i2.i = phi i64 [ %i.gl, %bb.ao ], [ %.pre2.i.i4.i, %bb.ap ]
  %i.gr = phi i64 [ %i.gk, %bb.ao ], [ %.pre.i.i3.i, %bb.ap ]
  %i.gs = load ptr, ptr %.sroa.0.0.copyload.i1.i, align 8, !tbaa !90
  store i64 %.pre-phi.i.i2.i, ptr %i.gj, align 8, !tbaa !91
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gr
  store i32 58, ptr %i.gt, align 4, !tbaa !113
  %i.gu = load i64, ptr %i.e, align 8, !tbaa !275
  %i.gv = udiv i64 %i.gu, 60
  %i.gw = urem i64 %i.gv, 60
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.gw, i32 noundef 2, i32 noundef 0)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.aq:                                            ; preds = %bb.v
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE11on_iso_timeEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.ar:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false), !alias.scope !942
  %i.gx = load i64, ptr %i.e, align 8, !tbaa !275, !noalias !942 ; 3 uses
  %i.gy = udiv i64 %i.gx, 3600
  %i.gz = urem i64 %i.gy, 24
  %i.ha = trunc nuw nsw i64 %i.gz to i32
  store i32 %i.ha, ptr %6, align 8, !tbaa !277, !alias.scope !942
  %i.hb = udiv i64 %i.gx, 60
  %12 = urem i64 %i.hb, 60
  %13 = trunc nuw nsw i64 %12 to i32
  store i32 %13, ptr %7, align 4, !tbaa !278, !alias.scope !942
  %14 = urem i64 %i.gx, 60
  %15 = trunc nuw nsw i64 %14 to i32
  store i32 %15, ptr %4, align 8, !tbaa !279, !alias.scope !942
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv to i64), i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.as:                                            ; preds = %bb.v
  %i.hc = load i8, ptr %i.f, align 8, !tbaa !318, !range !186, !noundef !134
  %i.hd = trunc nuw i8 %i.hc to i1
  %.sroa.0.0.copyload.pre2.i = load ptr, ptr %2, align 8, !tbaa !102 ; 7 uses
  br i1 %i.hd, label %bb.at, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre2.i, i64 8 ; 3 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !91 ; 2 uses
  %i.hg = add i64 %i.hf, 1                        ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre2.i, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !92
  %i.hj = icmp ugt i64 %i.hg, %i.hi
  br i1 %i.hj, label %bb.au, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i

bb.au:                                            ; preds = %bb.at
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre2.i, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !93
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.pre2.i, i64 noundef %i.hg), !inline_history !937
  %.pre.i.i.i.i = load i64, ptr %i.he, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  %.sroa.0.0.copyload.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !102
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i:      ; preds = %bb.au, %bb.at
  %.sroa.0.0.copyload.pre.i = phi ptr [ %.sroa.0.0.copyload.pre2.i, %bb.at ], [ %.sroa.0.0.copyload.pre.pre.i, %bb.au ]
  %.pre-phi.i.i.i.i = phi i64 [ %i.hg, %bb.at ], [ %.pre2.i.i.i.i, %bb.au ]
  %i.hm = phi i64 [ %i.hf, %bb.at ], [ %.pre.i.i.i.i, %bb.au ]
  %i.hn = load ptr, ptr %.sroa.0.0.copyload.pre2.i, align 8, !tbaa !90
  store i64 %.pre-phi.i.i.i.i, ptr %i.he, align 8, !tbaa !91
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hm
  store i32 45, ptr %i.ho, align 4, !tbaa !113
  store i8 0, ptr %i.f, align 8, !tbaa !318
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit: ; preds = %bb.as, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.pre.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i ], [ %.sroa.0.0.copyload.pre2.i, %bb.as ]
  %i.hp = load i64, ptr %i.g, align 8, !tbaa !317
  %i.hq = call ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEmTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i, i64 noundef %i.hp)
  store ptr %i.hq, ptr %2, align 8, !tbaa !102
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.av:                                            ; preds = %bb.v
  %.sroa.0.0.copyload.i194 = load ptr, ptr %2, align 8, !tbaa !102
  %i.hr = call ptr @_ZN3fmt3v126detail9copy_unitINS0_14basic_appenderIwEEEET_NS0_17basic_string_viewIcEES5_w(ptr nonnull @.str.53, i64 1, ptr %.sroa.0.0.copyload.i194, i32 noundef signext 0)
  store ptr %i.hr, ptr %2, align 8, !tbaa !102
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.aw:                                            ; preds = %bb.v
  %i.hs = icmp eq ptr %i.bz, %1
  br i1 %i.hs, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ht = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull @.str.50)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @__cxa_throw(ptr nonnull %i.ht, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ht) #25
  br label %bb.bw

bb.ba:                                            ; preds = %bb.aw
  %i.hv = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 14 uses
  %i.hw = load i32, ptr %i.bz, align 4, !tbaa !113
  switch i32 %i.hw, label %bb.bb [
    i32 89, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 121, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 67, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 99, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 120, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 88, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 122, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.hx = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull @.str.50)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @__cxa_throw(ptr nonnull %i.hx, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hx) #25
  br label %bb.bw

bb.be:                                            ; preds = %bb.v
  %i.hz = icmp eq ptr %i.bz, %1
  br i1 %i.hz, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ia = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull @.str.50)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @__cxa_throw(ptr nonnull %i.ia, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ia) #25
  br label %bb.bw

bb.bi:                                            ; preds = %bb.be
  %i.ic = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 28 uses
  %i.id = load i32, ptr %i.bz, align 4, !tbaa !113
  switch i32 %i.id, label %bb.bn [
    i32 121, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 109, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 85, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 87, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 86, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 100, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 101, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 119, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 117, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
    i32 72, label %bb.bj
    i32 73, label %bb.bk
    i32 77, label %bb.bl
    i32 83, label %bb.bm
    i32 122, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165
  ]

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.bk:                                            ; preds = %bb.bi
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.bl:                                            ; preds = %bb.bi
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.ie = load i64, ptr %i.e, align 8, !tbaa !275
  %i.if = urem i64 %i.ie, 60
  %i.ig = trunc nuw nsw i64 %i.if to i32
  store i32 %i.ig, ptr %3, align 8, !tbaa !279
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef 1, i32 noundef %.0128)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165

bb.bn:                                            ; preds = %bb.bi
  %i.ih = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull @.str.50)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @__cxa_throw(ptr nonnull %i.ih, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ih) #25
  br label %bb.bw

bb.bq:                                            ; preds = %bb.v
  %i.ij = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull @.str.50)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @__cxa_throw(ptr nonnull %i.ij, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ij) #25
  br label %bb.bw

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165: ; preds = %._crit_edge.i.i.i163, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit, %bb.aq, %bb.ar, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit, %bb.av, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.g
  %.1136 = phi ptr [ %i.ic, %bb.bi ], [ %.0135229, %bb.g ], [ %i.ic, %bb.bi ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179 ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193 ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.ai ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.aj ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.al ], [ %i.bz, %bb.am ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.an ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %i.bz, %bb.aq ], [ %i.bz, %bb.ar ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit ], [ %i.bz, %bb.av ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bj ], [ %i.ic, %bb.bk ], [ %i.ic, %bb.bl ], [ %i.ic, %bb.bm ], [ %i.bz, %._crit_edge.i.i.i163 ] ; 2 uses
  %.3 = phi ptr [ %i.ic, %bb.bi ], [ %i.m, %bb.g ], [ %i.ic, %bb.bi ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit179 ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit193 ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.ai ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.aj ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.al ], [ %i.bz, %bb.am ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.an ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %i.bz, %bb.aq ], [ %i.bz, %bb.ar ], [ %i.bz, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE17on_duration_valueEv.exit ], [ %i.bz, %bb.av ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.bz, %bb.v ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.hv, %bb.ba ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bi ], [ %i.ic, %bb.bj ], [ %i.ic, %bb.bk ], [ %i.ic, %bb.bl ], [ %i.ic, %bb.bm ], [ %i.bz, %._crit_edge.i.i.i163 ] ; 3 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165.thread, label %bb.f

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165.thread: ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165, %bb.f
  %.0135.lcssa.ph = phi ptr [ %.1136, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165 ], [ %.0135229, %bb.f ] ; 2 uses
  %.0129.lcssa.ph = phi ptr [ %.3, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165 ], [ %.0129230, %bb.f ] ; 5 uses
  %.not149 = icmp eq ptr %.0135.lcssa.ph, %.0129.lcssa.ph
  br i1 %.not149, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit208, label %.lr.ph34.i.i.i197

.lr.ph34.i.i.i197:                                ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165.thread
  %.sroa.01.0.copyload.i195 = load ptr, ptr %2, align 8, !tbaa !102 ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i195, i64 8 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i195, i64 16 ; 2 uses
  %i.in = ptrtoint ptr %.0129.lcssa.ph to i64
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i195, i64 24
  %.pre.i.i.i198 = load i64, ptr %i.il, align 8, !tbaa !91
  %.pre37.i.i.i199 = load i64, ptr %i.im, align 8, !tbaa !92
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i.i206, %.lr.ph34.i.i.i197
  %i.ip = phi i64 [ %.pre37.i.i.i199, %.lr.ph34.i.i.i197 ], [ %i.jc, %._crit_edge.i.i.i206 ] ; 2 uses
  %i.iq = phi i64 [ %.pre.i.i.i198, %.lr.ph34.i.i.i197 ], [ %i.jv, %._crit_edge.i.i.i206 ] ; 3 uses
  %.02732.i.i.i200 = phi ptr [ %.0135.lcssa.ph, %.lr.ph34.i.i.i197 ], [ %i.jw, %._crit_edge.i.i.i206 ] ; 8 uses
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = ptrtoint ptr %.02732.i.i.i200 to i64    ; 2 uses
  %i.it = sub i64 %i.in, %i.is
  %i.iu = ashr exact i64 %i.it, 2                 ; 4 uses
  %i.iv = icmp ult i64 %i.ir, %i.iu
  br i1 %i.iv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.iw = load ptr, ptr %i.io, align 8, !tbaa !93
  %i.ix = add i64 %i.iu, %i.iq
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i195, i64 noundef %i.ix), !inline_history !926
  %i.iy = load i64, ptr %i.il, align 8, !tbaa !91 ; 2 uses
  %i.iz = load i64, ptr %i.im, align 8, !tbaa !92 ; 2 uses
  %i.ja = sub i64 %i.iz, %i.iy
  %i.jb = call i64 @llvm.umin.i64(i64 %i.iu, i64 %i.ja)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.jc = phi i64 [ %i.iz, %bb.bu ], [ %i.ip, %bb.bt ]
  %i.jd = phi i64 [ %i.iy, %bb.bu ], [ %i.iq, %bb.bt ] ; 3 uses
  %.025.i.i.i201 = phi i64 [ %i.jb, %bb.bu ], [ %i.iu, %bb.bt ] ; 9 uses
  %i.je = load ptr, ptr %.sroa.01.0.copyload.i195, align 8, !tbaa !90 ; 2 uses
  %i.jf = ptrtoaddr ptr %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jd ; 6 uses
  %.not36.i.i.i202 = icmp eq i64 %.025.i.i.i201, 0
  br i1 %.not36.i.i.i202, label %._crit_edge.i.i.i206, label %.lr.ph.i.i.i203.preheader

.lr.ph.i.i.i203.preheader:                        ; preds = %bb.bv
  %min.iters.check278 = icmp ult i64 %.025.i.i.i201, 8
  br i1 %min.iters.check278, label %.lr.ph.i.i.i203.preheader289, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph.i.i.i203.preheader
  %i.jh = shl i64 %i.jd, 2
  %i.ji = add i64 %i.jh, %i.jf
  %i.jj = sub i64 %i.is, %i.ji
  %diff.check276 = icmp ugt i64 %i.jj, -32
  br i1 %diff.check276, label %.lr.ph.i.i.i203.preheader289, label %vector.ph279

vector.ph279:                                     ; preds = %vector.memcheck275
  %n.vec280 = and i64 %.025.i.i.i201, -8          ; 3 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph279
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next285, %vector.body281 ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i200, i64 %index282 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %wide.load283 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !113
  %wide.load284 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !113
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %index282 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store <4 x i32> %wide.load283, ptr %i.jm, align 4, !tbaa !113
  store <4 x i32> %wide.load284, ptr %i.jn, align 4, !tbaa !113
  %index.next285 = add nuw i64 %index282, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next285, %n.vec280
  br i1 %i.jo, label %middle.block286, label %vector.body281, !llvm.loop !938

middle.block286:                                  ; preds = %vector.body281
  %cmp.n287 = icmp eq i64 %.025.i.i.i201, %n.vec280
  br i1 %cmp.n287, label %._crit_edge.i.i.i206, label %.lr.ph.i.i.i203.preheader289

.lr.ph.i.i.i203.preheader289:                     ; preds = %vector.memcheck275, %.lr.ph.i.i.i203.preheader, %middle.block286
  %.030.i.i.i204.ph = phi i64 [ 0, %vector.memcheck275 ], [ 0, %.lr.ph.i.i.i203.preheader ], [ %n.vec280, %middle.block286 ] ; 3 uses
  %xtraiter295 = and i64 %.025.i.i.i201, 3        ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %.lr.ph.i.i.i203.prol.loopexit, label %.lr.ph.i.i.i203.prol

.lr.ph.i.i.i203.prol:                             ; preds = %.lr.ph.i.i.i203.preheader289, %.lr.ph.i.i.i203.prol
  %.030.i.i.i204.prol = phi i64 [ %i.js, %.lr.ph.i.i.i203.prol ], [ %.030.i.i.i204.ph, %.lr.ph.i.i.i203.preheader289 ] ; 3 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %.lr.ph.i.i.i203.prol ], [ 0, %.lr.ph.i.i.i203.preheader289 ]
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i200, i64 %.030.i.i.i204.prol
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !113
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.030.i.i.i204.prol
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !113
  %i.js = add nuw i64 %.030.i.i.i204.prol, 1      ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %.lr.ph.i.i.i203.prol.loopexit, label %.lr.ph.i.i.i203.prol, !llvm.loop !939

.lr.ph.i.i.i203.prol.loopexit:                    ; preds = %.lr.ph.i.i.i203.prol, %.lr.ph.i.i.i203.preheader289
  %.030.i.i.i204.unr = phi i64 [ %.030.i.i.i204.ph, %.lr.ph.i.i.i203.preheader289 ], [ %i.js, %.lr.ph.i.i.i203.prol ]
  %i.jt = sub i64 %.030.i.i.i204.ph, %.025.i.i.i201
  %i.ju = icmp ugt i64 %i.jt, -4
  br i1 %i.ju, label %._crit_edge.i.i.i206, label %.lr.ph.i.i.i203

._crit_edge.i.i.i206:                             ; preds = %.lr.ph.i.i.i203.prol.loopexit, %.lr.ph.i.i.i203, %middle.block286, %bb.bv
  %i.jv = add i64 %.025.i.i.i201, %i.jd           ; 2 uses
  store i64 %i.jv, ptr %i.il, align 8, !tbaa !91
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i200, i64 %.025.i.i.i201 ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %i.jw, %.0129.lcssa.ph
  br i1 %.not.i.i.i207, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit208, label %bb.bt, !llvm.loop !2

.lr.ph.i.i.i203:                                  ; preds = %.lr.ph.i.i.i203.prol.loopexit, %.lr.ph.i.i.i203
  %.030.i.i.i204 = phi i64 [ %i.km, %.lr.ph.i.i.i203 ], [ %.030.i.i.i204.unr, %.lr.ph.i.i.i203.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i200, i64 %.030.i.i.i204
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !113
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.030.i.i.i204
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !113
  %i.ka = add nuw i64 %.030.i.i.i204, 1           ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i200, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !113
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ka
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !113
  %i.ke = add nuw i64 %.030.i.i.i204, 2           ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i200, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !113
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ke
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !113
  %i.ki = add nuw i64 %.030.i.i.i204, 3           ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i.i200, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !113
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ki
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !113
  %i.km = add nuw i64 %.030.i.i.i204, 4           ; 2 uses
  %exitcond.not.i.i.i205.3 = icmp eq i64 %i.km, %.025.i.i.i201
  br i1 %exitcond.not.i.i.i205.3, label %._crit_edge.i.i.i206, label %.lr.ph.i.i.i203, !llvm.loop !940

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit208: ; preds = %._crit_edge.i.i.i206, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165.thread, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129.lcssa.ph, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE7on_textEPKwS7_.exit165.thread ], [ %.0129.lcssa.ph, %._crit_edge.i.i.i206 ]
  ret ptr %.0134

bb.bw:                                            ; preds = %bb.n, %bb.u, %bb.az, %bb.bd, %bb.bh, %bb.bp, %bb.bs, %bb.e
  %.pn150 = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.bs, %bb.n ], [ %i.by, %bb.u ], [ %i.ik, %bb.bs ], [ %i.hu, %bb.az ], [ %i.hy, %bb.bd ], [ %i.ib, %bb.bh ], [ %i.ii, %bb.bp ]
  resume { ptr, i32 } %.pn150
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEElTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %0, i64 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp slt i64 %1, 0                       ; 2 uses
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 6 uses
  %i.b = or i64 %spec.select, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !65    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !97
  %i.k = icmp ult i64 %spec.select, %i.j
end_hunk_6
begin_hunk_7_@_ZN3fmt3v126detail9copy_unitINS0_14basic_appenderIwEEEET_NS0_17basic_string_viewIcEES5_w:bb.a
  %wide.load11 = load <4 x i32>, ptr %i.af, align 4, !tbaa !113
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %wide.load, ptr %i.ag, align 4, !tbaa !113
  store <4 x i32> %wide.load11, ptr %i.ah, align 4, !tbaa !113
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !943

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader12

.lr.ph.i.i.preheader12:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.030.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader12, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader12 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader12 ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !113
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.030.i.i.prol
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !113
  %i.am = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !944

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader12
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader12 ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.d
  %i.ap = add i64 %.025.i.i, %i.x                 ; 2 uses
  store i64 %i.ap, ptr %i.f, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit.loopexit, label %bb.b, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %.030.i.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !113
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.030.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !113
  %i.au = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !113
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.au
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !113
  %i.ay = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !113
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ay
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !113
  %i.bc = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.02732.i.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !113
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bc
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !113
  %i.bg = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bg, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !945

_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit.loopexit: ; preds = %._crit_edge.i.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !90
  br label %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit

_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit: ; preds = %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit.loopexit, %bb.a
  %i.bh = phi ptr [ %.pre, %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail13utf8_to_utf16D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit
  call void @free(ptr noundef %i.bh) #25
  br label %_ZN3fmt3v126detail13utf8_to_utf16D2Ev.exit

_ZN3fmt3v126detail13utf8_to_utf16D2Ev.exit:       ; preds = %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS9_T0_vEE_EEiE4typeELi0EEES9_SE_SE_S9_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %2

bb.f:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %4, align 8, !tbaa !90    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.not.i.i.i6 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i6, label %_ZN3fmt3v126detail13utf8_to_utf16D2Ev.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.bk) #25
  br label %_ZN3fmt3v126detail13utf8_to_utf16D2Ev.exit7

_ZN3fmt3v126detail13utf8_to_utf16D2Ev.exit7:      ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.bj
}

declare void @_ZN3fmt3v126detail13utf8_to_utf16C1ENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(2040), ptr, i64) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !275
  %i.d = udiv i64 %i.c, 3600
  %i.e = urem i64 %i.d, 24
  tail call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.e, i32 noundef 2, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !275
  %i.h = udiv i64 %i.g, 3600
  %i.i = urem i64 %i.h, 24
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !277
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !275
  %i.d = udiv i64 %i.c, 3600
  %i.e = urem i64 %i.d, 12                        ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = select i1 %i.f, i64 12, i64 %i.e
  tail call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.g, i32 noundef 2, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !275
  %i.j = udiv i64 %i.i, 3600
  %i.k = urem i64 %i.j, 12                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = trunc nuw nsw i64 %i.k to i32
  %i.n = select i1 %i.l, i32 12, i32 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !277
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !275
  %i.d = udiv i64 %i.c, 60
  %i.e = urem i64 %i.d, 60
  tail call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.e, i32 noundef 2, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !275
  %i.h = udiv i64 %i.g, 60
  %i.i = urem i64 %i.h, 60
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !278
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !275
  %i.d = urem i64 %i.c, 60
  tail call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.d, i32 noundef 2, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !319  ; 2 uses
  %.not.i.i = icmp sgt i64 %i.f, -1
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl1EEEEmS6_TnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESA_NS4_IS9_T1_EE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt3v126detail20throw_duration_errorEv() #29
  unreachable

_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl1EEEEmS6_TnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESA_NS4_IS9_T1_EE.exit.i: ; preds = %bb.b
  %or.cond.i = icmp slt i32 %i.h, 1
  br i1 %or.cond.i, label %_ZN3fmt3v126detail24write_fractional_secondsIwNS0_14basic_appenderIwEENSt6chrono8durationImSt5ratioILl1ELl1EEEEEEvRT0_T1_i.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl1EEEEmS6_TnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESA_NS4_IS9_T1_EE.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !102 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !92
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEicEET_S5_T0_RKT1_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.k), !inline_history !946
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %0, align 8, !tbaa !102
  br label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEicEET_S5_T0_RKT1_.exit.thread.i

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEicEET_S5_T0_RKT1_.exit.thread.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %.sroa.0.0.copyload.pre.i, %bb.e ] ; 6 uses
  %.pre-phi.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.q = phi i64 [ %i.j, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.r = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !90
  store i64 %.pre-phi.i.i.i, ptr %i.i, align 8, !tbaa !91
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  store i32 46, ptr %i.s, align 4, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %.pre.i55.i = load i64, ptr %i.t, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i57.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEicEET_S5_T0_RKT1_.exit.thread.i
  %i.w = phi i64 [ %.pre.i55.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEicEET_S5_T0_RKT1_.exit.thread.i ], [ %.pre-phi.i.i.i58.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i57.i ] ; 2 uses
  %.04.i56.i = phi i32 [ 0, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEicEET_S5_T0_RKT1_.exit.thread.i ], [ %i.ae, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i57.i ]
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load i64, ptr %i.u, align 8, !tbaa !92
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i57.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !93
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.x), !inline_history !947
  %.pre.i.i.i60.i = load i64, ptr %i.t, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i.i61.i = add i64 %.pre.i.i.i60.i, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i57.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i57.i:    ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i58.i = phi i64 [ %i.x, %bb.f ], [ %.pre2.i.i.i61.i, %bb.g ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %bb.f ], [ %.pre.i.i.i60.i, %bb.g ]
  %i.ac = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !90
  store i64 %.pre-phi.i.i.i58.i, ptr %i.t, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  store i32 48, ptr %i.ad, align 4, !tbaa !113
  %i.ae = add nuw nsw i32 %.04.i56.i, 1           ; 2 uses
  %exitcond.not.i59.i = icmp eq i32 %i.ae, %i.h
  br i1 %exitcond.not.i59.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEicEET_S5_T0_RKT1_.exit62.i, label %bb.f, !llvm.loop !54

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEicEET_S5_T0_RKT1_.exit62.i: ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i57.i
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !102
  br label %_ZN3fmt3v126detail24write_fractional_secondsIwNS0_14basic_appenderIwEENSt6chrono8durationImSt5ratioILl1ELl1EEEEEEvRT0_T1_i.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !275
  %i.ah = urem i64 %i.ag, 60
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  store i32 %i.ai, ptr %3, align 8, !tbaa !279
  call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN3fmt3v126detail24write_fractional_secondsIwNS0_14basic_appenderIwEENSt6chrono8durationImSt5ratioILl1ELl1EEEEEEvRT0_T1_i.exit

_ZN3fmt3v126detail24write_fractional_secondsIwNS0_14basic_appenderIwEENSt6chrono8durationImSt5ratioILl1ELl1EEEEEEvRT0_T1_i.exit: ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEicEET_S5_T0_RKT1_.exit62.i, %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIlSt5ratioILl1ELl1EEEEmS6_TnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESA_NS4_IS9_T1_EE.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE11on_iso_timeEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !275
  %i.c = udiv i64 %i.b, 3600
  %i.d = urem i64 %i.c, 24
  tail call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.d, i32 noundef 2, i32 noundef 0)
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %0, align 8, !tbaa !102 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !92
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i1.i, i64 noundef %i.g), !inline_history !53
  %.pre.i.i3.i = load i64, ptr %i.e, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i4.i = add i64 %.pre.i.i3.i, 1
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit: ; preds = %bb.a, %bb.b
  %.pre-phi.i.i2.i = phi i64 [ %i.g, %bb.a ], [ %.pre2.i.i4.i, %bb.b ]
  %i.m = phi i64 [ %i.f, %bb.a ], [ %.pre.i.i3.i, %bb.b ]
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i1.i, align 8, !tbaa !90
  store i64 %.pre-phi.i.i2.i, ptr %i.e, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 58, ptr %i.o, align 4, !tbaa !113
  %i.p = load i64, ptr %i.a, align 8, !tbaa !275
  %i.q = udiv i64 %i.p, 60
  %i.r = urem i64 %i.q, 60
  tail call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %i.r, i32 noundef 2, i32 noundef 0)
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !102 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !91   ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !92
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.u), !inline_history !8
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.u, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %.pre2.i.i, %bb.c ]
  %i.aa = phi i64 [ %i.t, %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE15on_24_hour_timeEv.exit ], [ %.pre.i.i, %bb.c ]
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !90
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !91
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aa
  store i32 58, ptr %i.ac, align 4, !tbaa !113
  tail call void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !318, !range !186, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10write_signEv.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !102 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.f), !inline_history !948
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i:        ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %i.f, %bb.b ], [ %.pre2.i.i.i, %bb.c ]
  %i.l = phi i64 [ %i.e, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.m = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !90
  store i64 %.pre-phi.i.i.i, ptr %i.d, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  store i32 45, ptr %i.n, align 4, !tbaa !113
  store i8 0, ptr %i.a, align 8, !tbaa !318
  br label %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10write_signEv.exit

_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10write_signEv.exit: ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i, %bb.a
  %or.cond.i.not = icmp ult i64 %1, 2147483648
  br i1 %or.cond.i.not, label %_ZN3fmt3v126detail18to_nonnegative_intIliTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10write_signEv.exit
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.56)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #25
  resume { ptr, i32 } %i.p

_ZN3fmt3v126detail18to_nonnegative_intIliTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE10write_signEv.exit
  %i.q = trunc nuw nsw i64 %1 to i32              ; 2 uses
  %i.r = or i32 %i.q, 1
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = xor i32 %i.s, 31
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !97
  %i.x = add i64 %i.w, %1
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc nuw i64 %i.y to i32                ; 3 uses
  %i.aa = icmp sgt i32 %2, %i.z
  %.sroa.0.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !102 ; 7 uses
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN3fmt3v126detail18to_nonnegative_intIliTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit
  %i.ab = sub nsw i32 %2, %i.z
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIwEEEET_S5_NS1_8pad_typeEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.ac = icmp eq i32 %3, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 24
  %.pre.i.i = load i64, ptr %i.ad, align 8, !tbaa !91
  %i.ag = select i1 %i.ac, i32 32, i32 48
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i, %.lr.ph.i.i
  %i.ah = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %.pre-phi.i.i.i.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i ] ; 2 uses
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ap, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i ]
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = load i64, ptr %i.ae, align 8, !tbaa !92
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !93
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.pre, i64 noundef %i.ai), !inline_history !949
  %.pre.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i.i = phi i64 [ %i.ai, %bb.h ], [ %.pre2.i.i.i.i, %bb.i ] ; 2 uses
  %i.am = phi i64 [ %i.ah, %bb.h ], [ %.pre.i.i.i.i, %bb.i ]
  %i.an = load ptr, ptr %.sroa.0.0.copyload.pre, align 8, !tbaa !90
  store i64 %.pre-phi.i.i.i.i, ptr %i.ad, align 8, !tbaa !91
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am
  store i32 %i.ag, ptr %i.ao, align 4, !tbaa !113
  %i.ap = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ap, %i.ab
  br i1 %exitcond.not.i.i, label %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIwEEEET_S5_NS1_8pad_typeEi.exit, label %bb.h, !llvm.loop !54

_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIwEEEET_S5_NS1_8pad_typeEi.exit: ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i.i, %bb.g
  store ptr %.sroa.0.0.copyload.pre, ptr %0, align 8, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail18to_nonnegative_intIliTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIwEEEET_S5_NS1_8pad_typeEi.exit
  %i.aq = tail call ptr @_ZN3fmt3v126detail14format_decimalIwjNS0_14basic_appenderIwEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.0.0.copyload.pre, i32 noundef %i.q, i32 noundef %i.z)
  store ptr %i.aq, ptr %0, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %8 = alloca %"class.fmt::v12::detail::tm_writer.162", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_7
begin_hunk_8_@_ZN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEE6xsputnEPKwl:bb.a
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i64 [ %i.r, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi i64 [ %i.q, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %.025.i = phi i64 [ %i.t, %bb.c ], [ %i.m, %bb.b ] ; 9 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v ; 6 uses
  %.not36.i = icmp eq i64 %.025.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.025.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.z = shl i64 %i.v, 2
  %i.aa = add i64 %i.z, %i.x
  %i.ab = sub i64 %i.k, %i.aa
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.025.i, -8                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.02732.i, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !113
  %wide.load5 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !113
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %wide.load, ptr %i.ae, align 4, !tbaa !113
  store <4 x i32> %wide.load5, ptr %i.af, align 4, !tbaa !113
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !963

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.030.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.prol
  %.030.i.prol = phi i64 [ %i.ak, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader6 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader6 ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.02732.i, i64 %.030.i.prol
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !113
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.030.i.prol
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !113
  %i.ak = add nuw i64 %.030.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !964

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader6
  %.030.i.unr = phi i64 [ %.030.i.ph, %.lr.ph.i.preheader6 ], [ %i.ak, %.lr.ph.i.prol ]
  %i.al = sub i64 %.030.i.ph, %.025.i
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  %i.an = add i64 %.025.i, %i.v                   ; 2 uses
  store i64 %i.an, ptr %i.d, align 8, !tbaa !91
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.02732.i, i64 %.025.i ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %i.c
  br i1 %.not.i, label %_ZN3fmt3v126detail6bufferIwE6appendIwEEvPKT_S7_.exit, label %bb.b, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.02732.i, i64 %.030.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !113
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.030.i
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !113
  %i.as = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.02732.i, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !113
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.as
  store i32 %i.au, ptr %i.av, align 4, !tbaa !113
  %i.aw = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.02732.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !113
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !113
  %i.ba = add nuw i64 %.030.i, 3                  ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.02732.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !113
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ba
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !113
  %i.be = add nuw i64 %.030.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.be, %.025.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !965

_ZN3fmt3v126detail6bufferIwE6appendIwEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.a
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEE8overflowEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !328, !nonnull !134, !align !135 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZN3fmt3v126detail6bufferIwE9push_backERKw.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.f), !inline_history !966
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !91 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIwE9push_backERKw.exit

_ZN3fmt3v126detail6bufferIwE9push_backERKw.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.f, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.l = phi i64 [ %i.e, %bb.b ], [ %.pre.i, %bb.c ]
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !90
  store i64 %.pre-phi.i, ptr %i.d, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  store i32 %1, ptr %i.n, align 4, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIwE9push_backERKw.exit, %bb.a
  ret i32 %1
}

declare void @_ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !322, !range !186, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !324, !nonnull !134, !align !135
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !277  ; 3 uses
  %i.i = icmp slt i32 %i.h, 12
  %i.j = add nsw i32 %i.h, -12
  %i.k = select i1 %i.i, i32 %i.h, i32 %i.j       ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, i32 12, i32 %i.k
  tail call void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.m, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !102 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !324, !nonnull !134, !align !135
  %i.q = load ptr, ptr %0, align 8, !tbaa !325, !nonnull !134, !align !135
  tail call void @_ZN3fmt3v126detail8do_writeIwEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext 73, i8 noundef signext 79)
  store ptr %.sroa.0.0.copyload.i, ptr %i.n, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !322, !range !186, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !324, !nonnull !134, !align !135
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !278
  tail call void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.h, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !102 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !324, !nonnull !134, !align !135
  %i.l = load ptr, ptr %0, align 8, !tbaa !325, !nonnull !134, !align !135
  tail call void @_ZN3fmt3v126detail8do_writeIwEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext 77, i8 noundef signext 79)
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !322, !range !186, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !324, !nonnull !134, !align !135
  %i.g = load i32, ptr %i.f, align 8, !tbaa !279
  tail call void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.g, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !324, !nonnull !134, !align !135
  %i.k = load ptr, ptr %0, align 8, !tbaa !325, !nonnull !134, !align !135
  tail call void @_ZN3fmt3v126detail8do_writeIwEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 83, i8 noundef signext 79)
  store ptr %.sroa.0.0.copyload.i, ptr %i.h, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlS4_EEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::tm_writer.162", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !320, !range !186, !noundef !134 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !288
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !288, !range !186
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !289

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !291
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !291, !nonnull !134, !align !135
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !102
  store ptr %i.m, ptr %6, align 8, !tbaa !291
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !289

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !291
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #25
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !291, !nonnull !134, !align !135
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #25
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !322
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !323
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.y, align 8, !tbaa !297
  %i.z = getelementptr inbounds i8, ptr %6, i64 %3 ; 2 uses
  %i.aa = and i64 %2, 1
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !168
  %i.ac = getelementptr i8, ptr %i.ab, i64 %2
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load ptr, ptr %i.ad, align 8, !nosanitize !134
  br label %bb.p

bb.m:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.af, %bb.m ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ag = load i8, ptr %i.e, align 8, !tbaa !288, !range !186, !noundef !134
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #25
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !102
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !288, !range !186, !noundef !134
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_12_hour_timeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !322, !range !186, !noundef !134
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !324, !nonnull !134, !align !135 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !277  ; 3 uses
  %i.i = icmp slt i32 %i.h, 12
  %i.j = add nsw i32 %i.h, -12
  %i.k = select i1 %i.i, i32 %i.h, i32 %i.j       ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, i32 12, i32 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !278
  %i.p = load i32, ptr %i.f, align 8, !tbaa !279
  %i.q = shl i32 %i.o, 24
  %i.r = or i32 %i.m, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = zext i32 %i.p to i64
  %i.u = shl i64 %i.t, 48
  %i.v = or disjoint i64 %i.u, %i.s               ; 2 uses
  %i.w = mul i64 %i.v, 205
  %i.x = lshr i64 %i.w, 11
  %i.y = and i64 %i.x, 4222124902318095
  %i.z = mul nuw nsw i64 %i.y, 6
  %i.aa = add i64 %i.z, %i.v                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = and i64 %i.ab, 4222124902318095
  %i.ad = shl i64 %i.aa, 8
  %i.ae = and i64 %i.ad, 1080863974993432320
  %i.af = or disjoint i64 %i.ac, %i.ae
  %i.ag = or disjoint i64 %i.af, 3472339291344613424
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24 ; 2 uses
  %.pre.i.i = load i64, ptr %i.ai, align 8, !tbaa !91
  %.pre37.i.i = load i64, ptr %i.aj, align 8, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %bb.b
  %i.al = phi i64 [ %.pre37.i.i, %bb.b ], [ %i.av, %._crit_edge.i.i ] ; 2 uses
  %i.am = phi i64 [ %.pre.i.i, %bb.b ], [ %i.bg, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %bb.b ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02732.i.i.idx ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %gepdiff = sub nsw i64 8, %.02732.i.i.idx       ; 4 uses
  %i.ao = icmp ult i64 %i.an, %gepdiff
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !93
  %i.aq = add i64 %gepdiff, %i.am
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.aq), !inline_history !10
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !91 ; 2 uses
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !92 ; 2 uses
  %i.at = sub i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.at)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = phi i64 [ %i.as, %bb.d ], [ %i.al, %bb.c ] ; 2 uses
  %i.aw = phi i64 [ %i.ar, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %.025.i.i = phi i64 [ %i.au, %bb.d ], [ %gepdiff, %bb.c ] ; 7 uses
  %i.ax = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !90 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %min.iters.check = icmp ult i64 %.025.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %.025.i.i, -8                  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %wide.load = load <4 x i8>, ptr %i.az, align 1, !tbaa !65
  %wide.load13 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !65
  %i.bb = sext <4 x i8> %wide.load to <4 x i32>
  %i.bc = sext <4 x i8> %wide.load13 to <4 x i32>
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> %i.bb, ptr %i.bd, align 4, !tbaa !113
  store <4 x i32> %i.bc, ptr %i.be, align 4, !tbaa !113
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !967

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader14

.lr.ph.i.i.preheader14:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.030.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %i.bg = add i64 %.025.i.i, %i.aw                ; 4 uses
  store i64 %i.bg, ptr %i.ai, align 8, !tbaa !91
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 8
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIwPcNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, label %bb.c, !llvm.loop !11

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader14, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bl, %.lr.ph.i.i ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader14 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !65
  %i.bj = sext i8 %i.bi to i32
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.030.i.i
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !113
  %i.bl = add nuw i64 %.030.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bl, %.025.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !968

_ZN3fmt3v126detail4copyIwPcNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit: ; preds = %._crit_edge.i.i
  store ptr %.sroa.0.0.copyload, ptr %i.ah, align 8, !tbaa !102
  %i.bm = add i64 %i.bg, 1                        ; 3 uses
  %i.bn = icmp ugt i64 %i.bm, %i.av
  br i1 %i.bn, label %bb.f, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail4copyIwPcNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit
  %i.bo = load ptr, ptr %i.ak, align 8, !tbaa !93
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.bm), !inline_history !8
  %.pre.i.i2 = load i64, ptr %i.ai, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i2, 1
  %.pre = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !90
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

_ZN3fmt3v1214basic_appenderIwEaSEw.exit:          ; preds = %_ZN3fmt3v126detail4copyIwPcNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, %bb.f
  %i.bp = phi ptr [ %i.ax, %_ZN3fmt3v126detail4copyIwPcNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %.pre, %bb.f ]
  %.pre-phi.i.i = phi i64 [ %i.bm, %_ZN3fmt3v126detail4copyIwPcNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %.pre2.i.i, %bb.f ]
  %i.bq = phi i64 [ %i.bg, %_ZN3fmt3v126detail4copyIwPcNS0_14basic_appenderIwEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit ], [ %.pre.i.i2, %bb.f ]
  store i64 %.pre-phi.i.i, ptr %i.ai, align 8, !tbaa !91
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  store i32 32, ptr %i.br, align 4, !tbaa !113
  %i.bs = load i8, ptr %i.b, align 8, !tbaa !322, !range !186, !noundef !134
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !324, !nonnull !134, !align !135
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !277
  %i.bx = icmp slt i32 %i.bw, 12
  %i.by = select i1 %i.bx, i32 65, i32 80
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !92 ; 2 uses
  %i.ce = icmp ugt i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.h, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !93
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.cb), !inline_history !969
  %.pre.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.sroa.0.0.copyload.i1.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.pre.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !92
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i:        ; preds = %bb.h, %bb.g
  %i.ch = phi i64 [ %i.cd, %bb.g ], [ %.pre.i, %bb.h ]
  %.sroa.0.0.copyload.i1.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.g ], [ %.sroa.0.0.copyload.i1.pre.i, %bb.h ] ; 4 uses
  %.pre-phi.i.i.i = phi i64 [ %i.cb, %bb.g ], [ %.pre2.i.i.i, %bb.h ]
  %i.ci = phi i64 [ %i.ca, %bb.g ], [ %.pre.i.i.i, %bb.h ]
  %i.cj = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !90
  store i64 %.pre-phi.i.i.i, ptr %i.bz, align 8, !tbaa !91
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ci
  store i32 %i.by, ptr %i.ck, align 4, !tbaa !113
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 8 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !91 ; 2 uses
  %i.cn = add i64 %i.cm, 1                        ; 3 uses
  %i.co = icmp ugt i64 %i.cn, %i.ch
  br i1 %i.co, label %bb.i, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit5.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !93
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i1.i, i64 noundef %i.cn), !inline_history !969
  %.pre.i.i3.i = load i64, ptr %i.cl, align 8, !tbaa !91 ; 2 uses
  %.pre2.i.i4.i = add i64 %.pre.i.i3.i, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit5.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit5.i:       ; preds = %bb.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i
  %.pre-phi.i.i2.i = phi i64 [ %i.cn, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ], [ %.pre2.i.i4.i, %bb.i ]
  %i.cr = phi i64 [ %i.cm, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ], [ %.pre.i.i3.i, %bb.i ]
  %i.cs = load ptr, ptr %.sroa.0.0.copyload.i1.i, align 8, !tbaa !90
  store i64 %.pre-phi.i.i2.i, ptr %i.cl, align 8, !tbaa !91
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 77, ptr %i.ct, align 4, !tbaa !113
  br label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv.exit

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit
  %.sroa.0.0.copyload.i6.i = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !324, !nonnull !134, !align !135
  %i.cv = load ptr, ptr %0, align 8, !tbaa !325, !nonnull !134, !align !135
  tail call void @_ZN3fmt3v126detail8do_writeIwEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i6.i, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i8 noundef signext 112, i8 noundef signext 0)
  store ptr %.sroa.0.0.copyload.i6.i, ptr %i.ah, align 8, !tbaa !102
  br label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv.exit

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv.exit: ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit5.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.l
end_hunk_8
begin_hunk_9_@bcmp
!78 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !67, i64 0, !69, i64 8, !69, i64 16, !66, i64 24}
!79 = !{!78, !66, i64 24}
!80 = !{!"p1 _ZTSSt6vectorIcSaIcEE", !66, i64 0}
!81 = !{!"_ZTSN3fmt3v126detail19fixed_buffer_traitsE", !69, i64 0, !69, i64 8}
!82 = !{!81, !69, i64 0}
!83 = !{!81, !69, i64 8}
!84 = !{!78, !67, i64 0}
!85 = !{!78, !69, i64 8}
!86 = !{!78, !69, i64 16}
!87 = !{!"_ZTSN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE", !81, i64 0, !78, i64 16, !67, i64 48, !61, i64 56}
!88 = !{!87, !67, i64 48}
!89 = !{!"_ZTSN3fmt3v126detail6bufferIwEE", !72, i64 0, !69, i64 8, !69, i64 16, !66, i64 24}
!90 = !{!89, !72, i64 0}
!91 = !{!89, !69, i64 8}
!92 = !{!89, !69, i64 16}
!93 = !{!89, !66, i64 24}
!94 = !{!"_ZTSN3fmt3v126detail15iterator_bufferIPwwNS1_19fixed_buffer_traitsEEE", !81, i64 0, !89, i64 16, !72, i64 48, !61, i64 56}
!95 = !{!94, !72, i64 48}
!96 = !{!72, !72, i64 0}
!97 = !{!69, !69, i64 0}
!98 = !{!"_ZTSN3fmt3v1217basic_string_viewIwEE", !72, i64 0, !69, i64 8}
!99 = !{!"_ZTSN3fmt3v1213parse_contextIwEE", !98, i64 0, !62, i64 16}
!100 = !{!99, !62, i64 16}
!101 = !{!"p1 _ZTSN3fmt3v126detail6bufferIwEE", !66, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"long long", !61, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!66, !66, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!107 = !{!106, !67, i64 0}
!108 = !{!106, !67, i64 16}
!109 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !66, i64 0}
!110 = !{!106, !67, i64 8}
!111 = !{!73, !72, i64 0}
!112 = !{!"wchar_t", !61, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!74, !69, i64 8}
!115 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEEE", !103, i64 0, !61, i64 8}
!116 = !{!115, !103, i64 0}
!117 = !{!"_ZTSN3fmt3v126detail4typeE", !61, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!"_ZTSN3fmt3v1211basic_specsE", !62, i64 0, !61, i64 4}
!120 = !{!119, !62, i64 0}
!121 = !{!"_ZTSN3fmt3v1212format_specsE", !119, i64 0, !62, i64 8, !62, i64 12}
!122 = !{!121, !62, i64 12}
!123 = !{!67, !67, i64 0}
!124 = !{!"llvm.loop.mustprogress"}
!125 = !{!"_ZTSZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !69, i64 0, !62, i64 8}
!126 = !{!125, !69, i64 0}
!127 = !{!125, !62, i64 8}
!128 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIwEE", !66, i64 0}
!129 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIwRNS1_14format_handlerIwEEEEPKT_S8_S8_OT0_E10id_adapter", !128, i64 0, !62, i64 8}
!130 = !{!129, !62, i64 8}
!131 = !{!"llvm.loop.isvectorized", i32 1}
!132 = !{!"llvm.loop.unroll.runtime.disable"}
!133 = !{!"llvm.loop.unroll.disable"}
!134 = !{}
!135 = !{i64 8}
!136 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIwEE", !66, i64 0}
!137 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIwEE", !136, i64 0, !69, i64 8}
!138 = !{!137, !69, i64 8}
!139 = !{!137, !136, i64 0}
!140 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIwEE", !72, i64 0, !62, i64 8}
!141 = !{!140, !72, i64 0}
!142 = !{!140, !62, i64 8}
!143 = !{!98, !72, i64 0}
!144 = !{!98, !69, i64 8}
!145 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !61, i64 0}
!146 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !145, i64 0, !117, i64 16}
!147 = !{!146, !117, i64 16}
!148 = !{!62, !62, i64 0}
!149 = !{!"__int128", !61, i64 0}
!150 = !{!"_ZTSN3fmt3v126detail15counting_bufferIwEE", !89, i64 0, !61, i64 32, !69, i64 1056}
!151 = !{!150, !69, i64 1056}
!152 = !{!"bool", !61, i64 0}
!153 = !{!"_ZTSZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEETnNSt9enable_ifIXntsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUlS4_E_", !152, i64 0, !98, i64 8, !72, i64 24, !69, i64 32}
!154 = !{!153, !152, i64 0}
!155 = !{!153, !72, i64 24}
!156 = !{!153, !69, i64 32}
!157 = !{!"p1 _ZTSNSt6locale5_ImplE", !66, i64 0}
!158 = !{!"_ZTSSt6locale", !157, i64 0}
!159 = !{!158, !157, i64 0}
!160 = !{!"any p2 pointer", !66, i64 0}
!161 = !{!"p2 _ZTSNSt6locale5facetE", !160, i64 0}
!162 = !{!"p2 omnipotent char", !160, i64 0}
!163 = !{!"_ZTSNSt6locale5_ImplE", !62, i64 0, !161, i64 8, !69, i64 16, !161, i64 24, !162, i64 32}
!164 = !{!163, !161, i64 8}
!165 = !{!"p1 _ZTSNSt6locale5facetE", !66, i64 0}
!166 = !{!165, !165, i64 0}
!167 = !{!"vtable pointer", !60, i64 0}
!168 = !{!167, !167, i64 0}
!169 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !66, i64 0}
!170 = !{!169, !169, i64 0}
!171 = !{!"_ZTSZN3fmt3v126detail10write_charIwNS0_14basic_appenderIwEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !152, i64 0, !112, i64 4}
!172 = !{!171, !152, i64 0}
!173 = !{!171, !112, i64 4}
!174 = !{!121, !62, i64 8}
!175 = !{!"_ZTSN3fmt3v1214basic_appenderIwEE", !101, i64 0}
!176 = !{!"_ZTSN3fmt3v126detail10loc_writerIwEE", !175, i64 0, !169, i64 8, !74, i64 16, !70, i64 48, !74, i64 80}
!177 = !{!176, !169, i64 8}
!178 = !{i64 4}
!179 = !{!"p1 int", !66, i64 0}
!180 = !{!179, !179, i64 0}
!181 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIwEE", !66, i64 0}
!182 = !{!181, !181, i64 0}
!183 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !66, i64 0}
!184 = !{!183, !183, i64 0}
!185 = !{!"branch_weights", i32 4, i32 28}
!186 = !{i8 0, i8 2}
!187 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIwEE", !72, i64 0, !72, i64 8, !62, i64 16}
!188 = !{!187, !72, i64 0}
!189 = !{!187, !72, i64 8}
!190 = !{!187, !62, i64 16}
!191 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !179, i64 0, !69, i64 8, !69, i64 16, !66, i64 24}
!192 = !{!191, !66, i64 24}
!193 = !{!191, !179, i64 0}
!194 = !{!191, !69, i64 16}
!195 = !{!191, !69, i64 8}
!196 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !67, i64 0, !69, i64 8}
!197 = !{!196, !67, i64 0}
!198 = !{!196, !69, i64 8}
!199 = !{!"_ZTSN3fmt3v124signE", !61, i64 0}
!200 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !199, i64 0, !67, i64 8}
!201 = !{!200, !199, i64 0}
!202 = !{!200, !67, i64 8}
!203 = !{!199, !199, i64 0}
!204 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !62, i64 0, !62, i64 4}
!205 = !{!204, !62, i64 4}
!206 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !66, i64 0}
!207 = !{!206, !206, i64 0}
!208 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIwEE", !66, i64 0}
!209 = !{!208, !208, i64 0}
!210 = !{!152, !152, i64 0}
!211 = !{!"p1 bool", !66, i64 0}
!212 = !{!211, !211, i64 0}
!213 = !{!204, !62, i64 0}
!214 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !69, i64 0, !62, i64 8}
!215 = !{!214, !62, i64 8}
!216 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !66, i64 0}
!217 = !{!216, !216, i64 0}
!218 = !{!214, !69, i64 0}
!219 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !67, i64 0, !62, i64 8, !62, i64 12}
!220 = !{!219, !67, i64 0}
!221 = !{!219, !62, i64 8}
!222 = !{!219, !62, i64 12}
!223 = !{!149, !149, i64 0}
!224 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !179, i64 0, !69, i64 8, !69, i64 16, !66, i64 24}
!225 = !{!224, !66, i64 24}
!226 = !{!224, !179, i64 0}
!227 = !{!224, !69, i64 16}
!228 = !{!"_ZTSN3fmt3v126detail9allocatorIjEE"}
!229 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !224, i64 0, !61, i64 32, !228, i64 160}
!230 = !{!"_ZTSN3fmt3v126detail6bigintE", !229, i64 0, !62, i64 168}
!231 = !{!230, !62, i64 168}
!232 = !{!224, !69, i64 8}
!233 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIwNS1_14digit_groupingIwEENS0_14basic_appenderIwEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !199, i64 0, !219, i64 8, !62, i64 24, !112, i64 28, !62, i64 32, !61, i64 36, !62, i64 40}
!234 = !{!233, !199, i64 0}
!235 = !{!233, !62, i64 24}
!236 = !{!233, !112, i64 28}
!237 = !{!233, !62, i64 32}
!238 = !{!233, !61, i64 36}
!239 = !{!233, !62, i64 40}
!240 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !66, i64 0}
!241 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !61, i64 0}
!242 = !{!241, !241, i64 0}
!243 = !{!"p1 _ZTSN3fmt3v1213parse_contextIwEE", !66, i64 0}
!244 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIwEE", !66, i64 0}
!245 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIwNS1_14digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !199, i64 0, !204, i64 4, !62, i64 12, !112, i64 16, !62, i64 20, !61, i64 24, !62, i64 28}
!246 = !{!245, !199, i64 0}
!247 = !{!245, !62, i64 12}
!248 = !{!245, !112, i64 16}
!249 = !{!245, !62, i64 20}
!250 = !{!245, !61, i64 24}
!251 = !{!245, !62, i64 28}
!252 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIwNS1_14digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !199, i64 0, !214, i64 8, !62, i64 24, !112, i64 28, !62, i64 32, !61, i64 36, !62, i64 40}
!253 = !{!252, !199, i64 0}
!254 = !{!252, !62, i64 24}
!255 = !{!252, !112, i64 28}
!256 = !{!252, !62, i64 32}
!257 = !{!252, !61, i64 36}
!258 = !{!252, !62, i64 40}
!259 = !{!"_ZTSN3fmt3v126detail21chrono_format_checkerE", !152, i64 0}
!260 = !{!259, !152, i64 0}
!261 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !66, i64 0}
!262 = !{!261, !261, i64 0}
!263 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !261, i64 0}
!264 = !{!"_ZTSN3fmt3v1210locale_refE", !66, i64 0}
!265 = !{!"_ZTSNSt6chrono8durationImSt5ratioILl1ELl1EEEE", !69, i64 0}
!266 = !{!"_ZTSN3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEEE", !263, i64 0, !69, i64 8, !62, i64 16, !264, i64 24, !152, i64 32, !265, i64 40, !152, i64 48}
!267 = !{!266, !69, i64 8}
!268 = !{!266, !152, i64 48}
!269 = !{!266, !62, i64 16}
!270 = !{!266, !152, i64 32}
!271 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !196, i64 0, !62, i64 16}
!272 = !{!271, !62, i64 16}
!273 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !66, i64 0}
!274 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !66, i64 0}
!275 = !{!265, !69, i64 0}
!276 = !{!"_ZTS2tm", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !69, i64 40, !67, i64 48}
!277 = !{!276, !62, i64 8}
!278 = !{!276, !62, i64 4}
!279 = !{!276, !62, i64 0}
!280 = !{!"p1 long", !66, i64 0}
!281 = !{!280, !280, i64 0}
!282 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !66, i64 0}
!283 = !{!282, !282, i64 0}
!284 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUlS4_E_", !152, i64 0, !69, i64 8, !196, i64 16}
!285 = !{!284, !152, i64 0}
!286 = !{!284, !69, i64 8}
!287 = !{!"_ZTSN3fmt3v126detail10get_localeE", !61, i64 0, !152, i64 8}
!288 = !{!287, !152, i64 8}
!289 = !{!"branch_weights", i32 1, i32 1048575}
!290 = !{!"p1 _ZTSSt6locale", !66, i64 0}
!291 = !{!290, !290, i64 0}
!292 = !{!"p1 _ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !66, i64 0}
!293 = !{!"p1 _ZTS2tm", !66, i64 0}
!294 = !{!"_ZTSN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE", !290, i64 0, !152, i64 8, !263, i64 16, !292, i64 24, !293, i64 32}
!295 = !{!294, !152, i64 8}
!296 = !{!294, !292, i64 24}
!297 = !{!293, !293, i64 0}
!298 = !{!294, !293, i64 32}
!299 = !{!294, !290, i64 0}
!300 = !{!"_ZTSSt13_Ios_Fmtflags", !61, i64 0}
!301 = !{!"_ZTSSt12_Ios_Iostate", !61, i64 0}
!302 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !66, i64 0}
!303 = !{!"_ZTSNSt8ios_base6_WordsE", !66, i64 0, !69, i64 8}
!304 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !66, i64 0}
!305 = !{!"_ZTSSt8ios_base", !69, i64 8, !69, i64 16, !300, i64 24, !301, i64 28, !301, i64 32, !302, i64 40, !303, i64 48, !61, i64 64, !62, i64 192, !304, i64 200, !158, i64 208}
!306 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !158, i64 56}
!307 = !{!"_ZTSN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEEE", !306, i64 0, !261, i64 64}
!308 = !{!307, !261, i64 64}
!309 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !67, i64 0, !67, i64 8, !62, i64 16}
!310 = !{!309, !67, i64 0}
!311 = !{!309, !67, i64 8}
!312 = !{!309, !62, i64 16}
!313 = !{!"branch_weights", i32 8, i32 24}
!314 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !78, i64 0, !61, i64 32, !69, i64 288}
!315 = !{!314, !69, i64 288}
!316 = !{!"_ZTSN3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEEE", !175, i64 0, !69, i64 8, !62, i64 16, !264, i64 24, !152, i64 32, !265, i64 40, !152, i64 48}
!317 = !{!316, !69, i64 8}
!318 = !{!316, !152, i64 48}
!319 = !{!316, !62, i64 16}
!320 = !{!316, !152, i64 32}
!321 = !{!"_ZTSN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE", !290, i64 0, !152, i64 8, !175, i64 16, !292, i64 24, !293, i64 32}
!322 = !{!321, !152, i64 8}
!323 = !{!321, !292, i64 24}
!324 = !{!321, !293, i64 32}
!325 = !{!321, !290, i64 0}
!326 = !{!"_ZTSSt15basic_streambufIwSt11char_traitsIwEE", !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !158, i64 56}
!327 = !{!"_ZTSN3fmt3v126detail9formatbufISt15basic_streambufIwSt11char_traitsIwEEEE", !326, i64 0, !101, i64 64}
!328 = !{!327, !101, i64 64}
!329 = !{!"_ZTSN3fmt3v126detail17ansi_color_escapeIcEE", !61, i64 0, !69, i64 40}
!330 = !{!329, !69, i64 40}
!331 = !{!"_ZTSN3fmt3v126detail20dynamic_format_specsIcEE", !121, i64 0, !61, i64 16, !61, i64 32}
!332 = !{!"_ZTSN3fmt3v126detail16native_formatterIccLNS1_4typeE8EEE", !331, i64 0}
!333 = !{!"_ZTSN3fmt3v129formatterIccvEE", !332, i64 0}
!334 = !{!"_ZTSN3fmt3v1215range_formatterIccvEE", !333, i64 0, !196, i64 48, !196, i64 64, !196, i64 80, !152, i64 96}
!335 = !{!334, !152, i64 96}
!336 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !152, i64 0, !61, i64 1}
!337 = !{!336, !152, i64 0}
!338 = !{!336, !61, i64 1}
!339 = distinct !{!339, i1 false, !"_ZN3fmt3v126formatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!340 = distinct !{!340, !339, !"_ZN3fmt3v126formatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!341 = distinct !{!341, i1 false, !"_ZN3fmt3v126formatIJiEEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEENS0_13basic_fstringIwJDpT_EE1tEDpOS9_"}
!342 = distinct !{!342, !341, !"_ZN3fmt3v126formatIJiEEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEENS0_13basic_fstringIwJDpT_EE1tEDpOS9_: argument 0"}
!343 = distinct !{!343, i1 false, !"_ZN3fmt3v126formatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!344 = distinct !{!344, !343, !"_ZN3fmt3v126formatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!345 = distinct !{!345, i1 false, !"_ZN3fmt3v129to_stringIiTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_"}
!346 = distinct !{!346, !345, !"_ZN3fmt3v129to_stringIiTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_: argument 0"}
!347 = distinct !{!347, i1 false, !"_ZN3fmt3v1210to_wstringIiEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERKT_"}
!348 = distinct !{!348, !347, !"_ZN3fmt3v1210to_wstringIiEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERKT_: argument 0"}
!349 = distinct !{!349, i1 false, !"_ZN3fmt3v126formatIJRKiEEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEENS0_13basic_fstringIwJDpT_EE1tEDpOSB_"}
!350 = distinct !{!350, !349, !"_ZN3fmt3v126formatIJRKiEEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEENS0_13basic_fstringIwJDpT_EE1tEDpOSB_: argument 0"}
!351 = distinct !{!351, i1 false, !"_ZN3fmt3v126detail10get_bufferIcSt20back_insert_iteratorISt6vectorIcSaIcEEETnNSt9enable_ifIXntsr18is_buffer_appenderIT0_EE5valueEiE4typeELi0EEENS1_15iterator_bufferIS9_T_NS1_13buffer_traitsEEES9_"}
!352 = distinct !{!352, !351, !"_ZN3fmt3v126detail10get_bufferIcSt20back_insert_iteratorISt6vectorIcSaIcEEETnNSt9enable_ifIXntsr18is_buffer_appenderIT0_EE5valueEiE4typeELi0EEENS1_15iterator_bufferIS9_T_NS1_13buffer_traitsEEES9_: argument 0"}
!353 = !{!340}
!354 = !{!342}
!355 = !{!344}
!356 = !{!346}
!357 = !{!350, !348}
!358 = !{!352}
!359 = !{!80, !80, i64 0}
!360 = distinct !{!360, i1 false, !"_ZN3fmt3v126formatIJNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSE_"}
!361 = distinct !{!361, !360, !"_ZN3fmt3v126formatIJNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSE_: argument 0"}
!362 = distinct !{!362, i1 false, !"_ZN3fmt3v126formatIJNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEENS0_13basic_fstringIwJDpT_EE1tEDpOSE_"}
!363 = distinct !{!363, !362, !"_ZN3fmt3v126formatIJNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEENS0_13basic_fstringIwJDpT_EE1tEDpOSE_: argument 0"}
!364 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !69, i64 0}
!365 = !{!364, !69, i64 0}
!366 = !{!361}
!367 = !{!363}
!368 = distinct !{!368, i1 false, !"_ZN3fmt3v126formatIJRA15_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10text_styleENS0_7fstringIJDpT_EE1tEDpOSD_"}
!369 = distinct !{!369, !368, !"_ZN3fmt3v126formatIJRA15_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10text_styleENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!370 = distinct !{!370, i1 false, !"_ZN3fmt3v126detail10get_bufferIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXntsr18is_buffer_appenderIT0_EE5valueEiE4typeELi0EEENS1_15iterator_bufferISC_T_NS1_13buffer_traitsEEESC_"}
!371 = distinct !{!371, !370, !"_ZN3fmt3v126detail10get_bufferIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXntsr18is_buffer_appenderIT0_EE5valueEiE4typeELi0EEENS1_15iterator_bufferISC_T_NS1_13buffer_traitsEEESC_: argument 0"}
!372 = !{!"p1 _ZTS8_IO_FILE", !66, i64 0}
!373 = !{!372, !372, i64 0}
!374 = !{!369}
!375 = !{!371}
!376 = !{!109, !109, i64 0}
!377 = distinct !{!377, i1 false, !"_ZN3fmt3v126formatIJRSt6vectorIcSaIcEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EENS0_7fstringIJDpT_EE1tEDpOSC_"}
!378 = distinct !{!378, !377, !"_ZN3fmt3v126formatIJRSt6vectorIcSaIcEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!379 = !{!378}
!380 = distinct !{!380, i1 false, !"_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi"}
!381 = distinct !{!381, !380, !"_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi: argument 0"}
!382 = distinct !{!382, i1 false, !"_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE3getEi"}
!383 = distinct !{!383, !382, !"_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE3getEi: argument 0"}
!384 = distinct !{null, null, null, null}
!385 = distinct !{null, null, null, null, null}
!386 = distinct !{null, null}
!387 = distinct !{!387, i1 false, !"_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi"}
!388 = distinct !{!388, !387, !"_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi: argument 0"}
!389 = distinct !{!389, i1 false, !"_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE3getEi"}
!390 = distinct !{!390, !389, !"_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE3getEi: argument 0"}
!391 = !{!383, !381}
!392 = !{!128, !128, i64 0}
!393 = !{!390, !388}
!394 = distinct !{!394, !124, !131, !132}
!395 = distinct !{!395, !133}
!396 = distinct !{!396, !124, !131}
!397 = distinct !{!397, !124}
!398 = !{!129, !128, i64 0}
!399 = distinct !{!399, i1 false, !"_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi"}
!400 = distinct !{!400, !399, !"_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi: argument 0"}
!401 = distinct !{!401, i1 false, !"_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE3getEi"}
!402 = distinct !{!402, !401, !"_ZNK3fmt3v1217basic_format_argsINS0_15generic_contextINS0_14basic_appenderIwEEwEEE3getEi: argument 0"}
!403 = distinct !{null}
!404 = distinct !{!404, i1 false, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!405 = distinct !{!405, !404, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!406 = distinct !{!406, i1 false, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!407 = distinct !{!407, !406, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!408 = !{!402, !400}
!409 = !{!405}
!410 = !{!"_ZTSN3fmt3v126detail13write_int_argIoEE", !149, i64 0, !62, i64 16}
!411 = !{!410, !149, i64 0}
!412 = !{!410, !62, i64 16}
!413 = !{!407}
!414 = distinct !{!414, i1 false, !"LVerDomain"}
!415 = distinct !{!415, !414}
!416 = distinct !{!416, !414}
!417 = distinct !{!417, !124, !131, !132}
!418 = distinct !{!418, !133}
!419 = distinct !{!419, !124, !131}
!420 = !{!415}
!421 = !{!416}
!422 = distinct !{!422, i1 false, !"_ZNKSt7__cxx118numpunctIwE8groupingEv"}
!423 = distinct !{!423, !422, !"_ZNKSt7__cxx118numpunctIwE8groupingEv: argument 0"}
!424 = distinct !{null}
!425 = distinct !{null}
!426 = !{!423}
!427 = distinct !{!427, !124, !131, !132}
!428 = distinct !{!428, !124, !132, !131}
!429 = distinct !{!429, !124}
!430 = distinct !{null, null, null, null}
!431 = distinct !{null, null, null, null, null}
!432 = distinct !{null, null, null}
!433 = distinct !{!433, !124, !131, !132}
!434 = distinct !{!434, !124, !132, !131}
!435 = distinct !{null, null, null, null}
!436 = distinct !{!436, !124}
!437 = distinct !{!437, i1 false, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!438 = distinct !{!438, !437, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!439 = !{!438}
!440 = distinct !{!440, i1 false, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!441 = distinct !{!441, !440, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!442 = !{!441}
!443 = distinct !{!443, !124}
!444 = distinct !{!444, !124}
!445 = distinct !{null, null, null, null}
!446 = distinct !{!446, !124}
!447 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIwEEmwEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !179, i64 0, !181, i64 8, !183, i64 16}
!448 = !{!447, !179, i64 0}
!449 = !{!447, !181, i64 8}
!450 = !{!447, !183, i64 16}
!451 = distinct !{!451, !124, !131, !132}
!452 = distinct !{!452, !124, !131, !132}
!453 = distinct !{!453, !133}
!454 = distinct !{!454, !124, !131}
!455 = distinct !{null, null, null, null}
!456 = distinct !{null, null, null, null}
!457 = distinct !{!457, !124}
!458 = distinct !{!458, !124, !131, !132}
!459 = distinct !{!459, !133}
!460 = distinct !{!460, !124, !131}
!461 = distinct !{!461, !124}
!462 = distinct !{!462, !124}
!463 = distinct !{!463, !124}
!464 = distinct !{!464, !124}
!465 = distinct !{null, null, null, null}
!466 = distinct !{!466, !124}
!467 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIwEEowEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !179, i64 0, !181, i64 8, !183, i64 16}
!468 = !{!467, !179, i64 0}
!469 = !{!467, !181, i64 8}
!470 = !{!467, !183, i64 16}
!471 = distinct !{null, null, null}
!472 = distinct !{!472, i1 false, !"LVerDomain"}
!473 = distinct !{!473, !472}
!474 = distinct !{!474, !472}
!475 = distinct !{!475, !124, !131, !132}
!476 = distinct !{!476, !133}
!477 = distinct !{!477, !124, !131}
!478 = !{!473}
!479 = !{!474}
!480 = distinct !{null, null, null, null}
!481 = distinct !{null, null, null, null}
!482 = distinct !{null, null, null, null}
!483 = distinct !{null, null, null}
!484 = distinct !{!484, i1 false, !"LVerDomain"}
!485 = distinct !{!485, !484}
!486 = distinct !{!486, !484}
end_hunk_9
begin_hunk_10_@bcmp
!691 = !{!690, !244, i64 8}
!692 = !{!690, !66, i64 16}
!693 = !{!690, !243, i64 0}
!694 = distinct !{!694, !124, !131, !132}
!695 = distinct !{!695, !124, !132, !131}
!696 = distinct !{!696, !124}
!697 = distinct !{null, null, null, null}
!698 = distinct !{null, null, null, null, null}
!699 = distinct !{null, null, null}
!700 = distinct !{!700, !124, !131, !132}
!701 = distinct !{!701, !124, !132, !131}
!702 = distinct !{null, null, null, null}
!703 = distinct !{!703, !124}
!704 = distinct !{!704, !124, !131, !132}
!705 = distinct !{!705, !124, !132, !131}
!706 = distinct !{!706, !124}
!707 = distinct !{null, null, null, null}
!708 = distinct !{null, null, null, null, null}
!709 = distinct !{null, null, null}
!710 = distinct !{!710, !124, !131, !132}
!711 = distinct !{!711, !124, !132, !131}
!712 = distinct !{null, null, null, null}
!713 = distinct !{!713, !124}
!714 = distinct !{!714, !124}
!715 = distinct !{!715, !124, !131, !132}
!716 = distinct !{!716, !124, !131, !132}
!717 = distinct !{!717, !133}
!718 = distinct !{!718, !124, !131}
!719 = distinct !{!719, !124}
!720 = distinct !{!720, !124}
!721 = distinct !{!721, !124}
!722 = distinct !{!722, !124}
!723 = !{!"char16_t", !61, i64 0}
!724 = !{!723, !723, i64 0}
!725 = distinct !{null, null, null, null}
!726 = distinct !{null}
!727 = distinct !{null}
!728 = distinct !{null, null, null, null}
!729 = !{!245, !62, i64 4}
!730 = distinct !{null, null, null, null}
!731 = distinct !{null, null, null, null, null}
!732 = !{!"_ZTSZN3fmt3v126detail11write_fixedIwNS1_14digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !66, i64 0, !206, i64 8, !179, i64 16, !179, i64 24, !72, i64 32, !181, i64 40, !179, i64 48}
!733 = !{!732, !66, i64 0}
!734 = !{!732, !206, i64 8}
!735 = !{!732, !179, i64 16}
!736 = !{!732, !179, i64 24}
!737 = !{!732, !72, i64 32}
!738 = !{!732, !181, i64 40}
!739 = !{!732, !179, i64 48}
!740 = !{!"_ZTSZN3fmt3v126detail11write_fixedIwNS1_14digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !66, i64 0, !211, i64 8, !72, i64 16, !179, i64 24, !206, i64 32, !179, i64 40}
!741 = !{!740, !66, i64 0}
!742 = !{!740, !211, i64 8}
!743 = !{!740, !72, i64 16}
!744 = !{!740, !179, i64 24}
!745 = !{!740, !206, i64 32}
!746 = !{!740, !179, i64 40}
!747 = distinct !{null, null, null, null}
!748 = !{i64 0, i64 8, !97, i64 8, i64 4, !148}
!749 = distinct !{null}
!750 = distinct !{null}
!751 = distinct !{null, null, null, null}
!752 = !{!252, !69, i64 8}
!753 = distinct !{null, null, null, null}
!754 = distinct !{null, null, null, null, null}
!755 = !{!"_ZTSZN3fmt3v126detail11write_fixedIwNS1_14digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !66, i64 0, !216, i64 8, !179, i64 16, !179, i64 24, !72, i64 32, !181, i64 40, !179, i64 48}
!756 = !{!755, !66, i64 0}
!757 = !{!755, !216, i64 8}
!758 = !{!755, !179, i64 16}
!759 = !{!755, !179, i64 24}
!760 = !{!755, !72, i64 32}
!761 = !{!755, !181, i64 40}
!762 = !{!755, !179, i64 48}
!763 = !{!"_ZTSZN3fmt3v126detail11write_fixedIwNS1_14digit_groupingIwEENS0_14basic_appenderIwEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !66, i64 0, !211, i64 8, !72, i64 16, !179, i64 24, !216, i64 32, !179, i64 40}
!764 = !{!763, !66, i64 0}
!765 = !{!763, !211, i64 8}
!766 = !{!763, !72, i64 16}
!767 = !{!763, !179, i64 24}
!768 = !{!763, !216, i64 32}
!769 = !{!763, !179, i64 40}
!770 = distinct !{!770, i1 false, !"_ZN3fmt3v126detail11find_escapeIwEENS1_18find_escape_resultIT_EEPKS4_S7_"}
!771 = distinct !{!771, !770, !"_ZN3fmt3v126detail11find_escapeIwEENS1_18find_escape_resultIT_EEPKS4_S7_: argument 0"}
!772 = distinct !{!772, !124}
!773 = distinct !{!773, !124, !131, !132}
!774 = distinct !{!774, !133}
!775 = distinct !{!775, !124, !131}
!776 = distinct !{!776, !124}
!777 = !{!771}
!778 = distinct !{null, null, null}
!779 = distinct !{!779, !124, !131, !132}
!780 = distinct !{!780, !133}
!781 = distinct !{!781, !124, !131}
!782 = !{!"_ZTSN3fmt3v126detail16container_bufferISt6vectorIcSaIcEEEE", !78, i64 0, !80, i64 32}
!783 = !{!782, !80, i64 32}
!784 = distinct !{null}
!785 = distinct !{!785, !124, !131, !132}
!786 = distinct !{!786, !124, !131, !132}
!787 = distinct !{!787, !133}
!788 = distinct !{!788, !124, !131}
!789 = distinct !{!789, !124}
!790 = !{!273, !273, i64 0}
!791 = !{!274, !274, i64 0}
!792 = distinct !{!792, !124}
!793 = !{!"_ZTSN3fmt3v126detail20dynamic_spec_handlerIcEE", !273, i64 0, !274, i64 8, !66, i64 16}
!794 = !{!793, !274, i64 8}
!795 = !{!793, !66, i64 16}
!796 = !{!793, !273, i64 0}
!797 = distinct !{!797, i1 false, !"_ZNK3fmt3v127context3argEi"}
!798 = distinct !{!798, !797, !"_ZNK3fmt3v127context3argEi: argument 0"}
!799 = distinct !{!799, i1 false, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!800 = distinct !{!800, !799, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!801 = distinct !{!801, i1 false, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE"}
!802 = distinct !{!802, !801, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE: argument 0"}
!803 = distinct !{!803, i1 false, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!804 = distinct !{!804, !803, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!805 = distinct !{!805, !124}
!806 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !103, i64 0, !61, i64 8}
!807 = !{!806, !103, i64 0}
!808 = !{!800, !798}
!809 = !{!804, !802}
!810 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !66, i64 0}
!811 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !810, i64 0, !69, i64 8}
!812 = !{!811, !69, i64 8}
!813 = !{!811, !810, i64 0}
!814 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !67, i64 0, !62, i64 8}
!815 = !{!814, !67, i64 0}
!816 = !{!814, !62, i64 8}
!817 = distinct !{!817, !124}
!818 = distinct !{null, null, null}
!819 = distinct !{!819, !124, !131, !132}
!820 = distinct !{!820, !124, !131, !132}
!821 = distinct !{!821, !133}
!822 = distinct !{!822, !124, !131}
!823 = distinct !{!823, i1 false, !"_ZNK3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE4timeEv"}
!824 = distinct !{!824, !823, !"_ZNK3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE4timeEv: argument 0"}
!825 = distinct !{!825, i1 false, !"_ZNK3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE4timeEv"}
!826 = distinct !{!826, !825, !"_ZNK3fmt3v126detail18duration_formatterIclSt5ratioILl1ELl1EEE4timeEv: argument 0"}
!827 = distinct !{null, null, null, null, null}
!828 = distinct !{!828, !124, !131, !132}
!829 = distinct !{!829, !124, !131, !132}
!830 = distinct !{!830, !133}
!831 = distinct !{!831, !124, !131}
!832 = !{!824}
!833 = !{!826}
!834 = distinct !{!834, !124, !131, !132}
!835 = distinct !{!835, !124, !131, !132}
!836 = distinct !{!836, !133}
!837 = distinct !{!837, !124, !131}
!838 = !{i64 0, i64 8, !123, i64 8, i64 8, !97}
!839 = distinct !{null, null, null, null}
!840 = distinct !{null, null, null, null, null}
!841 = distinct !{null, null, null, null}
!842 = distinct !{null, null, null, null, null}
!843 = distinct !{null, null, null, null}
!844 = distinct !{null}
!845 = !{!"p1 _ZTSSo", !66, i64 0}
!846 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !66, i64 0}
!847 = !{!"p1 _ZTSSt5ctypeIcE", !66, i64 0}
!848 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !66, i64 0}
!849 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !66, i64 0}
!850 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !305, i64 0, !845, i64 216, !61, i64 224, !152, i64 225, !846, i64 232, !847, i64 240, !848, i64 248, !849, i64 256}
!851 = !{!850, !845, i64 216}
!852 = !{!850, !61, i64 224}
!853 = !{!850, !152, i64 225}
!854 = !{!850, !846, i64 232}
!855 = distinct !{null}
!856 = distinct !{null}
!857 = distinct !{!857, !124, !131, !132}
!858 = distinct !{!858, !124, !131, !132}
!859 = distinct !{!859, !133}
!860 = distinct !{!860, !124, !131}
!861 = distinct !{!861, !124, !131, !132}
!862 = distinct !{!862, !124, !131, !132}
!863 = distinct !{!863, !133}
!864 = distinct !{!864, !124, !131}
!865 = !{!"p1 char32_t", !66, i64 0}
!866 = !{!"_ZTSN3fmt3v126detail14codecvt_resultIDiEE", !61, i64 0, !865, i64 128}
!867 = !{!866, !865, i64 128}
!868 = distinct !{!868, !124, !131, !132}
!869 = distinct !{!869, !124, !131, !132}
!870 = distinct !{!870, !133}
!871 = distinct !{!871, !124, !131}
!872 = distinct !{null}
!873 = distinct !{null, null, null}
!874 = distinct !{!874, !124}
!875 = !{!"char32_t", !61, i64 0}
!876 = !{!875, !875, i64 0}
!877 = distinct !{!877, i1 false, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!878 = distinct !{!878, !877, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!879 = distinct !{!879, !124, !131, !132}
!880 = distinct !{!880, !124, !131, !132}
!881 = distinct !{!881, !133}
!882 = distinct !{!882, !124, !131}
!883 = distinct !{!883, !124}
!884 = !{!878}
!885 = distinct !{!885, !124}
!886 = distinct !{!886, !124, !131, !132}
!887 = distinct !{!887, !124, !131, !132}
!888 = distinct !{!888, !133}
!889 = distinct !{!889, !124, !131}
!890 = distinct !{!890, !124}
!891 = !{i64 0, i64 8, !212, i64 8, i64 8, !281, i64 16, i64 8, !281, i64 24, i64 8, !281, i64 32, i64 8, !283}
!892 = distinct !{null, null, null}
!893 = distinct !{!893, !124, !131, !132}
!894 = distinct !{!894, !124, !131, !132}
!895 = distinct !{!895, !133}
!896 = distinct !{!896, !124, !131}
!897 = distinct !{!897, !124}
!898 = distinct !{!898, !124, !131, !132}
!899 = distinct !{!899, !124, !131, !132}
!900 = distinct !{!900, !133}
!901 = distinct !{!901, !124, !131}
!902 = distinct !{!902, !124}
!903 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUljNSA_IcEEE_", !211, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !282, i64 32}
!904 = !{!903, !211, i64 0}
!905 = !{!903, !280, i64 8}
!906 = !{!903, !280, i64 16}
!907 = !{!903, !280, i64 24}
!908 = !{!903, !282, i64 32}
!909 = distinct !{null, null, null, null}
!910 = distinct !{!910, !124}
!911 = distinct !{!911, !124, !131, !132}
!912 = distinct !{!912, !124, !131, !132}
!913 = distinct !{!913, !133}
!914 = distinct !{!914, !124, !131}
!915 = distinct !{!915, !124}
!916 = distinct !{!916, i1 false, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!917 = distinct !{!917, !916, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!918 = distinct !{null, null, null, null, null}
!919 = distinct !{!919, !124}
!920 = distinct !{!920, !124}
!921 = !{!917}
!922 = distinct !{!922, !133}
!923 = distinct !{!923, !124, !131}
!924 = distinct !{!924, !124}
!925 = distinct !{!925, !124}
!926 = distinct !{null, null, null}
!927 = distinct !{!927, !124, !131, !132}
!928 = distinct !{!928, !133}
!929 = distinct !{!929, !124, !131}
!930 = distinct !{!930, !124, !131, !132}
!931 = distinct !{!931, !133}
!932 = distinct !{!932, !124, !131}
!933 = distinct !{!933, i1 false, !"_ZNK3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE4timeEv"}
!934 = distinct !{!934, !933, !"_ZNK3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE4timeEv: argument 0"}
!935 = distinct !{!935, i1 false, !"_ZNK3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE4timeEv"}
!936 = distinct !{!936, !935, !"_ZNK3fmt3v126detail18duration_formatterIwlSt5ratioILl1ELl1EEE4timeEv: argument 0"}
!937 = distinct !{null, null, null, null, null}
!938 = distinct !{!938, !124, !131, !132}
!939 = distinct !{!939, !133}
!940 = distinct !{!940, !124, !131}
!941 = !{!934}
!942 = !{!936}
!943 = distinct !{!943, !124, !131, !132}
!944 = distinct !{!944, !133}
!945 = distinct !{!945, !124, !131}
!946 = distinct !{null, null, null, null}
!947 = distinct !{null, null, null, null, null}
!948 = distinct !{null, null, null, null}
!949 = distinct !{null, null, null, null, null}
!950 = distinct !{null, null, null, null}
!951 = distinct !{null}
!952 = !{!"p1 _ZTSSt13basic_ostreamIwSt11char_traitsIwEE", !66, i64 0}
!953 = !{!"p1 _ZTSSt15basic_streambufIwSt11char_traitsIwEE", !66, i64 0}
!954 = !{!"p1 _ZTSSt5ctypeIwE", !66, i64 0}
!955 = !{!"p1 _ZTSSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE", !66, i64 0}
!956 = !{!"p1 _ZTSSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE", !66, i64 0}
!957 = !{!"_ZTSSt9basic_iosIwSt11char_traitsIwEE", !305, i64 0, !952, i64 216, !112, i64 224, !152, i64 228, !953, i64 232, !954, i64 240, !955, i64 248, !956, i64 256}
!958 = !{!957, !952, i64 216}
!959 = !{!957, !112, i64 224}
!960 = !{!957, !152, i64 228}
!961 = !{!957, !953, i64 232}
!962 = distinct !{null}
!963 = distinct !{!963, !124, !131, !132}
!964 = distinct !{!964, !133}
!965 = distinct !{!965, !124, !131}
!966 = distinct !{null, null}
!967 = distinct !{!967, !124, !131, !132}
!968 = distinct !{!968, !124, !132, !131}
!969 = distinct !{ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv, null, null, null}
!970 = distinct !{!970, !124, !131, !132}
!971 = distinct !{!971, !124, !131, !132}
!972 = distinct !{!972, !133}
!973 = distinct !{!973, !124, !131}
!974 = distinct !{!974, !124, !131, !132}
!975 = distinct !{!975, !124, !131, !132}
!976 = distinct !{!976, !133}
!977 = distinct !{!977, !124, !131}
!978 = distinct !{!978, !124, !131, !132}
!979 = distinct !{!979, !124, !131, !132}
!980 = distinct !{!980, !133}
!981 = distinct !{!981, !124, !131}
!982 = distinct !{null, null}
!983 = distinct !{!983, !124, !131, !132}
!984 = distinct !{!984, !124, !131, !132}
!985 = distinct !{!985, !124, !132, !131}
!986 = distinct !{!986, i1 false, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!987 = distinct !{!987, !986, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!988 = !{!987}
!989 = !{!"_ZTSN3fmt3v126detail16container_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !78, i64 0, !109, i64 32}
!990 = !{!989, !109, i64 32}
!991 = distinct !{!991, !124}
!992 = distinct !{!992, !124, !131, !132}
!993 = distinct !{!993, !124, !131, !132}
!994 = distinct !{!994, !133}
!995 = distinct !{!995, !124, !131}
!996 = distinct !{!996, !124, !131, !132}
!997 = distinct !{!997, !124, !131, !132}
!998 = distinct !{!998, !133}
!999 = distinct !{!999, !124, !131}
!1000 = distinct !{!1000, !124}
!1001 = distinct !{!1001, !124, !131, !132}
!1002 = distinct !{!1002, !124, !131, !132}
!1003 = distinct !{!1003, !133}
!1004 = distinct !{!1004, !124, !131}
!1005 = distinct !{!1005, !124}
!1006 = distinct !{null, null, null, null}
!1007 = distinct !{!1007, !124}
!1008 = distinct !{null, null, null, null}
!1009 = distinct !{null, null, null, null, null}
!1010 = distinct !{!1010, !124}
!1011 = distinct !{null, null, null}
!1012 = distinct !{null, null, null, null}
!1013 = distinct !{!1013, !124}
end_hunk_10
