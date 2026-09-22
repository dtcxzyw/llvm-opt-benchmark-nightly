Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/seq_boxes?download=true
inline.NumInlined: 3512
inline.NumDeleted: 1577
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK8Box_sdtp4dumpER6Indent:bb.a
  %i.hn = load i8, ptr %i.hm, align 8
  %i.ho = trunc i8 %i.hn to i1
  br i1 %i.ho, label %bb.am, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !37
  %i.hr = load i64, ptr %i.hm, align 8
  %i.hs = and i64 %i.hr, -2
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hs) #27
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %bb.al, %bb.am
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.hl) #26
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #26
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.ht) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.an:                                            ; preds = %.thread.i.i.i.i.i, %bb.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i52, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i64, %bb.ak, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i40, %bb.an, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit33
  %.pn30 = phi { ptr, i32 } [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit33 ], [ %i.hu, %bb.an ], [ %i.cu, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i ], [ %i.dy, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i40 ], [ %i.fd, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i52 ], [ %i.hd, %bb.ak ], [ %i.gh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i64 ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn30
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8Box_sdtp5parseER14BitstreamRangePK20heif_security_limits(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(41) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.Error, align 8               ; 3 uses
  call void @_ZN7FullBox21parse_full_box_headerER14BitstreamRange(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5ErrorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #27
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !72   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !228
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !229  ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.i
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.r = sub nuw i64 %i.i, %i.p
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.r)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !229
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.d:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.s = icmp ugt i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store ptr %i.t, ptr %i.k, align 8, !tbaa !228
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.u = phi ptr [ %.pre, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  %i.v = call noundef zeroext i1 @_ZN14BitstreamRange4readEPhm(ptr noundef nonnull align 8 dereferenceable(41) %2, ptr noundef %i.u, i64 noundef %i.i) ; 0 uses
  %i.w = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.w, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !77
  br label %_ZN5ErrorC2ERKS_.exit

bb.g:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !37
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !37
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef %i.aa, i64 noundef %i.ab)
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8Box_tref5parseER14BitstreamRangePK20heif_security_limits(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(41) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.BoxHeader, align 8           ; 13 uses
  %5 = alloca %class.Error, align 8               ; 8 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__1::basic_stringstream", align 8 ; 19 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %10 = alloca %"struct.Box_tref::Reference", align 8 ; 9 uses
  %11 = alloca %"class.std::__1::basic_stringstream", align 8 ; 19 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 3 uses
  %i.u = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN9BoxHeaderD2Ev.exit, %bb.a
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !72
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.ck, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN9BoxHeaderC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN9BoxHeader12parse_headerER14BitstreamRange(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %5, ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 8 dereferenceable(41) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bd = load i32, ptr %5, align 8, !tbaa !102
  %i.be = load i32, ptr @_ZN5Error2OkE, align 8, !tbaa !102
  %.not131 = icmp eq i32 %i.bd, %i.be
  br i1 %.not131, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %5, align 8
  store i64 %i.bf, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br label %bb.cd

bb.f:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit125

bb.g:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !802 ; 3 uses
  %i.bi = load i32, ptr %i.e, align 8, !tbaa !803
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = icmp ult i64 %i.bh, %i.bj
  br i1 %i.bk, label %.thread.i.i, label %bb.m

.thread.i.i:                                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc72 unwind label %bb.j   ; 3 uses

.noexc72:                                         ; preds = %.thread.i.i
  store ptr %i.bl, ptr %i.av, align 8, !tbaa !37
  store i64 41, ptr %6, align 8
  store i64 38, ptr %i.aw, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.bl, ptr noundef nonnull align 1 dereferenceable(38) @.str.122, i64 38, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 38
  store i8 0, ptr %i.bm, align 1, !tbaa !37
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc72
  %i.bn = load i8, ptr %6, align 8
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %bb.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !37
  %i.bq = load i64, ptr %6, align 8
  %i.br = and i64 %i.bq, -2
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.br) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.cd

bb.j:                                             ; preds = %.thread.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73

bb.k:                                             ; preds = %.noexc72
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load i8, ptr %6, align 8
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.l, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73

bb.l:                                             ; preds = %bb.k
  %i.bw = load ptr, ptr %i.av, align 8, !tbaa !37
  %i.bx = load i64, ptr %6, align 8
  %i.by = and i64 %i.bx, -2
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.by) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73: ; preds = %bb.l, %bb.k, %bb.j
  %.pn66 = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %i.bt, %bb.k ], [ %i.bt, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ch

bb.m:                                             ; preds = %bb.g
  %i.bz = sub nuw i64 %i.bh, %i.bj                ; 3 uses
  %i.ca = and i64 %i.bz, 3
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = icmp ult i64 %i.bz, 4
  %or.cond = or i1 %i.cc, %i.cb
  br i1 %or.cond, label %.thread.i.i74, label %bb.s

.thread.i.i74:                                    ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.cd = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29
          to label %.noexc79 unwind label %bb.p   ; 3 uses

.noexc79:                                         ; preds = %.thread.i.i74
  store ptr %i.cd, ptr %i.at, align 8, !tbaa !37
  store i64 73, ptr %7, align 8
  store i64 64, ptr %i.au, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cd, ptr noundef nonnull align 1 dereferenceable(64) @.str.123, i64 64, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store i8 0, ptr %i.ce, align 1, !tbaa !37
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %.noexc79
  %i.cf = load i8, ptr %7, align 8
  %i.cg = trunc i8 %i.cf to i1
  br i1 %i.cg, label %bb.o, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81

bb.o:                                             ; preds = %bb.n
  %i.ch = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.ci = load i64, ptr %7, align 8
  %i.cj = and i64 %i.ci, -2
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cj) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.cd

bb.p:                                             ; preds = %.thread.i.i74
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit82

bb.q:                                             ; preds = %.noexc79
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load i8, ptr %7, align 8
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit82

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.cp = load i64, ptr %7, align 8
  %i.cq = and i64 %i.cp, -2
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cq) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit82

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit82: ; preds = %bb.r, %bb.q, %bb.p
  %.pn63 = phi { ptr, i32 } [ %i.ck, %bb.p ], [ %i.cl, %bb.q ], [ %i.cl, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ch

bb.s:                                             ; preds = %bb.m
  %i.cr = lshr exact i64 %i.bz, 2                 ; 4 uses
  %i.cs = load i32, ptr %i.f, align 4, !tbaa !804 ; 2 uses
  %.not = icmp ne i32 %i.cs, 0
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ugt i64 %i.cr, %i.ct
  %or.cond71 = select i1 %.not, i1 %i.cu, i1 false
  br i1 %or.cond71, label %bb.t, label %bb.ap

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %bb.t
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.124, i64 noundef 34)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.ak

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.u
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i64 noundef %i.cr)
          to label %bb.v unwind label %bb.ak

bb.v:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.125, i64 noundef 33)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit85 unwind label %bb.ak

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit85: ; preds = %bb.v
  %i.cy = load i32, ptr %i.f, align 4, !tbaa !804
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i32 noundef %i.cy)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit85
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.126, i64 noundef 12)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit87 unwind label %bb.ak ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit87: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.db = load i32, ptr %i.ag, align 8, !tbaa !36, !noalias !808 ; 2 uses
  %i.dc = and i32 %i.db, 16
  %.not.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit87
  %i.dd = load ptr, ptr %i.ah, align 8, !tbaa !38, !noalias !808 ; 2 uses
  %i.de = load ptr, ptr %i.ai, align 8, !tbaa !39, !noalias !808 ; 3 uses
  %i.df = icmp ult ptr %i.dd, %i.de
  br i1 %i.df, label %bb.y, label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  store ptr %i.de, ptr %i.ah, align 8, !tbaa !38, !noalias !808
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.z:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit87
  %i.dg = and i32 %i.db, 8
  %.not1.i.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.aa

.thread15.i.i.i:                                  ; preds = %bb.z
  store i8 0, ptr %9, align 8, !alias.scope !808
  br label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.dh = load ptr, ptr %i.al, align 8, !tbaa !40, !noalias !808
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i: ; preds = %bb.x, %bb.y, %bb.aa
  %.sink22.i.i.i = phi ptr [ %i.dh, %bb.aa ], [ %i.de, %bb.y ], [ %i.dd, %bb.x ]
  %.sink21.in.i.i.i = phi ptr [ %i.ak, %bb.aa ], [ %i.aj, %bb.y ], [ %i.aj, %bb.x ]
  %.sink21.i.i.i = load ptr, ptr %.sink21.in.i.i.i, align 8, !tbaa !41, !noalias !808 ; 2 uses
  %i.di = ptrtoint ptr %.sink22.i.i.i to i64
  %i.dj = ptrtoint ptr %.sink21.i.i.i to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 8 uses
  %i.dl = icmp ugt i64 %i.dk, -9
  br i1 %i.dl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #28
          to label %.noexc88 unwind label %.loopexit.split-lp144

.noexc88:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  %i.dm = icmp ult i64 %i.dk, 23
  br i1 %i.dm, label %bb.ad, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.ac
  %i.dn = or i64 %i.dk, 7                         ; 2 uses
  %i.do = icmp eq i64 %i.dn, 23
  %i.dp = add nuw i64 %i.dn, 1
  %i.dq = select i1 %i.do, i64 25, i64 %i.dp      ; 2 uses
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #29
          to label %.noexc89 unwind label %.loopexit143 ; 2 uses

.noexc89:                                         ; preds = %.thread.i.i.i.i.i
  store ptr %i.dr, ptr %i.am, align 8, !tbaa !37, !alias.scope !808
  %i.ds = or i64 %i.dq, 1
  store i64 %i.ds, ptr %9, align 8, !alias.scope !808
  store i64 %i.dk, ptr %i.an, align 8, !tbaa !37, !alias.scope !808
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dt = trunc nuw nsw i64 %i.dk to i8
  %i.du = shl nuw nsw i8 %i.dt, 1
  store i8 %i.du, ptr %9, align 8, !alias.scope !808
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.noexc89
  %.017.i.i.i.i.i = phi ptr [ %i.dr, %.noexc89 ], [ %i.ao, %bb.ad ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i.i, ptr align 1 %.sink21.i.i.i, i64 %i.dk, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.thread15.i.i.i
  %.sroa.4.0.i712.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.dk, %bb.ae ], [ 0, %.thread15.i.i.i ]
  %.018.i.i.i.i.i = phi ptr [ %i.ao, %bb.ad ], [ %.017.i.i.i.i.i, %bb.ae ], [ %i.ao, %.thread15.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i, i64 %.sroa.4.0.i712.i.i.i
  store i8 0, ptr %i.dv, align 1, !tbaa !37
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 1000, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.dw = load i8, ptr %9, align 8
  %i.dx = trunc i8 %i.dw to i1
  br i1 %i.dx, label %bb.ah, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.dz = load i64, ptr %9, align 8
  %i.ea = and i64 %i.dz, -2
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ea) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  store ptr %i.u, ptr %8, align 8, !tbaa !16
  %i.eb = load i64, ptr %i.w, align 8
  %i.ec = getelementptr inbounds i8, ptr %8, i64 %i.eb
  store ptr %i.v, ptr %i.ec, align 8, !tbaa !16
  store ptr %i.x, ptr %i.af, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.ap, align 8, !tbaa !16
  %i.ed = load i8, ptr %i.aq, align 8
  %i.ee = trunc i8 %i.ed to i1
  br i1 %i.ee, label %bb.ai, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.ai:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90
  %i.ef = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.eg = load i64, ptr %i.aq, align 8
  %i.eh = and i64 %i.eg, -2
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.eh) #27
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90, %bb.ai
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.ap) #26
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #26
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.as) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.cd

bb.aj:                                            ; preds = %bb.t
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %bb.w, %bb.v, %bb.u, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit85, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit143:                                     ; preds = %.thread.i.i.i.i.i
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91

.loopexit.split-lp144:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91

bb.al:                                            ; preds = %bb.af
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load i8, ptr %9, align 8
  %i.em = trunc i8 %i.el to i1
  br i1 %i.em, label %bb.am, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91

bb.am:                                            ; preds = %bb.al
  %i.en = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.eo = load i64, ptr %9, align 8
  %i.ep = and i64 %i.eo, -2
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.ep) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91: ; preds = %.loopexit143, %.loopexit.split-lp144, %bb.am, %bb.al
  %.pn58 = phi { ptr, i32 } [ %i.ek, %bb.am ], [ %i.ek, %bb.al ], [ %lpad.loopexit145, %.loopexit143 ], [ %lpad.loopexit.split-lp146, %.loopexit.split-lp144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91, %bb.ak
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91 ], [ %i.ej, %bb.ak ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %bb.an ], [ %i.ei, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ch

bb.ap:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.eq = load i32, ptr %i.h, align 8, !tbaa !809
  store i32 %i.eq, ptr %10, align 8, !tbaa !244
  %.not55180 = icmp eq i64 %i.bh, %i.bj
  br i1 %.not55180, label %._crit_edge, label %.lr.ph

bb.aq:                                            ; preds = %bb.ca
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %bb.ap, %bb.bu
  %.025181 = phi i64 [ %i.im, %bb.bu ], [ 0, %bb.ap ] ; 2 uses
  %i.es = load i64, ptr %i.a, align 8, !tbaa !72
  %13 = icmp eq i64 %i.es, 0
  br i1 %13, label %bb.ar, label %bb.bn

bb.ar:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.as unwind label %bb.bh

bb.as:                                            ; preds = %bb.ar
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.127, i64 noundef 24)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit93 unwind label %bb.bi

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit93: ; preds = %bb.as
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i64 noundef %i.cr)
          to label %bb.at unwind label %bb.bi

bb.at:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit93
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.128, i64 noundef 34)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit95 unwind label %bb.bi

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit95: ; preds = %bb.at
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i64 noundef %.025181)
          to label %bb.au unwind label %bb.bi

bb.au:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit95
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.126, i64 noundef 12)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit97 unwind label %bb.bi ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit97: ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.ey = load i32, ptr %i.l, align 8, !tbaa !36, !noalias !813 ; 2 uses
  %i.ez = and i32 %i.ey, 16
  %.not.i.i.i.i98 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i.i98, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit97
  %i.fa = load ptr, ptr %i.m, align 8, !tbaa !38, !noalias !813 ; 2 uses
  %i.fb = load ptr, ptr %i.n, align 8, !tbaa !39, !noalias !813 ; 3 uses
  %i.fc = icmp ult ptr %i.fa, %i.fb
  br i1 %i.fc, label %bb.aw, label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i99

bb.aw:                                            ; preds = %bb.av
  store ptr %i.fb, ptr %i.m, align 8, !tbaa !38, !noalias !813
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i99

bb.ax:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit97
  %i.fd = and i32 %i.ey, 8
  %.not1.i.i.i.i108 = icmp eq i32 %i.fd, 0
  br i1 %.not1.i.i.i.i108, label %.thread15.i.i.i109, label %bb.ay

.thread15.i.i.i109:                               ; preds = %bb.ax
  store i8 0, ptr %12, align 8, !alias.scope !813
  br label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.fe = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !813
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i99

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i99: ; preds = %bb.av, %bb.aw, %bb.ay
  %.sink22.i.i.i100 = phi ptr [ %i.fe, %bb.ay ], [ %i.fb, %bb.aw ], [ %i.fa, %bb.av ]
  %.sink21.in.i.i.i101 = phi ptr [ %i.p, %bb.ay ], [ %i.o, %bb.aw ], [ %i.o, %bb.av ]
  %.sink21.i.i.i102 = load ptr, ptr %.sink21.in.i.i.i101, align 8, !tbaa !41, !noalias !813 ; 2 uses
  %i.ff = ptrtoint ptr %.sink22.i.i.i100 to i64
  %i.fg = ptrtoint ptr %.sink21.i.i.i102 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 8 uses
  %i.fi = icmp ugt i64 %i.fh, -9
  br i1 %i.fi, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i99
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #28
          to label %.noexc110 unwind label %.loopexit.split-lp134

.noexc110:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i99
  %i.fj = icmp ult i64 %i.fh, 23
  br i1 %i.fj, label %bb.bb, label %.thread.i.i.i.i.i103

.thread.i.i.i.i.i103:                             ; preds = %bb.ba
  %i.fk = or i64 %i.fh, 7                         ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 23
  %i.fm = add nuw i64 %i.fk, 1
  %i.fn = select i1 %i.fl, i64 25, i64 %i.fm      ; 2 uses
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #29
          to label %.noexc111 unwind label %.loopexit133 ; 2 uses

.noexc111:                                        ; preds = %.thread.i.i.i.i.i103
  store ptr %i.fo, ptr %i.r, align 8, !tbaa !37, !alias.scope !813
  %i.fp = or i64 %i.fn, 1
  store i64 %i.fp, ptr %12, align 8, !alias.scope !813
  store i64 %i.fh, ptr %i.s, align 8, !tbaa !37, !alias.scope !813
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fq = trunc nuw nsw i64 %i.fh to i8
  %i.fr = shl nuw nsw i8 %i.fq, 1
  store i8 %i.fr, ptr %12, align 8, !alias.scope !813
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i107 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i107, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.noexc111
  %.017.i.i.i.i.i104 = phi ptr [ %i.fo, %.noexc111 ], [ %i.t, %bb.bb ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i.i104, ptr align 1 %.sink21.i.i.i102, i64 %i.fh, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %.thread15.i.i.i109
  %.sroa.4.0.i712.i.i.i105 = phi i64 [ 0, %bb.bb ], [ %i.fh, %bb.bc ], [ 0, %.thread15.i.i.i109 ]
  %.018.i.i.i.i.i106 = phi ptr [ %i.t, %bb.bb ], [ %.017.i.i.i.i.i104, %bb.bc ], [ %i.t, %.thread15.i.i.i109 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i106, i64 %.sroa.4.0.i712.i.i.i105
  store i8 0, ptr %i.fs, align 1, !tbaa !37
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.ft = load i8, ptr %12, align 8
  %i.fu = trunc i8 %i.ft to i1
  br i1 %i.fu, label %bb.bf, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit113

bb.bf:                                            ; preds = %bb.be
  %i.fv = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.fw = load i64, ptr %12, align 8
  %i.fx = and i64 %i.fw, -2
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fx) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit113

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit113: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  store ptr %i.u, ptr %11, align 8, !tbaa !16
  %i.fy = load i64, ptr %i.w, align 8
  %i.fz = getelementptr inbounds i8, ptr %11, i64 %i.fy
  store ptr %i.v, ptr %i.fz, align 8, !tbaa !16
  store ptr %i.x, ptr %i.k, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.y, align 8, !tbaa !16
  %i.ga = load i8, ptr %i.z, align 8
  %i.gb = trunc i8 %i.ga to i1
  br i1 %i.gb, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit113
  %i.gc = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.gd = load i64, ptr %i.z, align 8
  %i.ge = and i64 %i.gd, -2
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.ge) #27
  br label %.thread

.thread:                                          ; preds = %bb.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit113
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.y) #26
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #26
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.ab) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.cb

bb.bh:                                            ; preds = %bb.ar
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bi:                                            ; preds = %bb.au, %bb.at, %bb.as, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit95, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit93
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit133:                                     ; preds = %.thread.i.i.i.i.i103
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115

.loopexit.split-lp134:                            ; preds = %bb.az
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115

bb.bj:                                            ; preds = %bb.bd
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load i8, ptr %12, align 8
  %i.gj = trunc i8 %i.gi to i1
  br i1 %i.gj, label %bb.bk, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115

bb.bk:                                            ; preds = %bb.bj
  %i.gk = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.gl = load i64, ptr %12, align 8
  %i.gm = and i64 %i.gl, -2
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gm) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115: ; preds = %.loopexit133, %.loopexit.split-lp134, %bb.bk, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.gh, %bb.bk ], [ %i.gh, %bb.bj ], [ %lpad.loopexit135, %.loopexit133 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115, %bb.bi
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115 ], [ %i.gg, %bb.bi ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #26
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bh
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bl ], [ %i.gf, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body

bb.bn:                                            ; preds = %.lr.ph
  %i.gn = invoke noundef i32 @_ZN14BitstreamRange6read32Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
          to label %bb.bo unwind label %.loopexit ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.go = load ptr, ptr %i.i, align 8, !tbaa !150 ; 4 uses
  %i.gp = load ptr, ptr %i.j, align 8, !tbaa !151 ; 2 uses
  %i.gq = icmp ult ptr %i.go, %i.gp
  br i1 %i.gq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !42
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bo
  %i.gs = load ptr, ptr %i.g, align 8, !tbaa !152
  %i.gt = ptrtoint ptr %i.go to i64               ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64               ; 3 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 2 uses
  %i.gw = ashr exact i64 %i.gv, 2
  %i.gx = add nsw i64 %i.gw, 1                    ; 2 uses
  %i.gy = icmp ugt i64 %i.gx, 4611686018427387903
  br i1 %i.gy, label %bb.br, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #28
          to label %.noexc116 unwind label %.loopexit.split-lp

.noexc116:                                        ; preds = %bb.br
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.bq
  %i.gz = ptrtoint ptr %i.gp to i64
  %i.ha = sub i64 %i.gz, %i.gu                    ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.ha, 9223372036854775804
  %i.hb = ashr exact i64 %i.ha, 1
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hb, i64 %i.gx)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 4611686018427387903 ; 4 uses
  %i.hc = icmp ne i64 %.0.i.i.i, 0
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp ugt i64 %.0.i.i.i, 4611686018427387903
  br i1 %i.hd, label %bb.bs, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

bb.bs:                                            ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #28
          to label %.noexc117 unwind label %.loopexit.split-lp

.noexc117:                                        ; preds = %bb.bs
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i
  %i.he = shl nuw i64 %.0.i.i.i, 2
  %i.hf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.he) #29
          to label %.noexc118 unwind label %.loopexit ; 3 uses

.noexc118:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.hg = ptrtoaddr ptr %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.gv ; 7 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %.0.i.i.i
  store i32 %i.gn, ptr %i.hh, align 4, !tbaa !42
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 3 uses
  %i.hk = load ptr, ptr %i.i, align 8, !tbaa !150 ; 6 uses
  %i.hl = ptrtoaddr ptr %i.hk to i64              ; 2 uses
  %i.hm = load ptr, ptr %i.g, align 8, !tbaa !152 ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, %i.hm
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc118
  %i.hn = ptrtoaddr ptr %i.hm to i64
  %i.ho = add i64 %i.hl, -4
  %i.hp = sub i64 %i.ho, %i.hn                    ; 2 uses
  %i.hq = lshr i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hp, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.hs = add i64 %i.gu, %i.hl
  %i.ht = add i64 %i.gt, %i.hg
  %i.hu = sub i64 %i.ht, %i.hs
  %diff.check = icmp ugt i64 %i.hu, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hr, 9223372036854775800     ; 3 uses
  %i.hv = mul i64 %n.vec, -4                      ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hh, i64 %i.hv  ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hk, i64 %i.hv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hy = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hh, i64 %i.hy ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.hk, i64 %i.hy ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %next.gep250, i64 -16
  %i.ia = getelementptr inbounds i8, ptr %next.gep250, i64 -32
  %wide.load = load <4 x i32>, ptr %i.hz, align 4, !tbaa !42, !noalias !814
  %wide.load251 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !42, !noalias !814
  %i.ib = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ic = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ib, align 4, !tbaa !42, !noalias !814
  store <4 x i32> %wide.load251, ptr %i.ic, align 4, !tbaa !42, !noalias !814
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !799

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hr, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader253

.lr.ph.i.i.i.i.i.i.i.i.i.preheader253:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.hh, %vector.memcheck ], [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hw, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.hk, %vector.memcheck ], [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader253, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ie = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader253 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader253 ]
  %i.if = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !42, !noalias !814
  %i.ih = getelementptr inbounds i8, ptr %i.ie, i64 -4 ; 3 uses
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !42, !noalias !814
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.if, %i.hm
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !800

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc118
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.hh, %.noexc118 ], [ %i.hw, %middle.block ], [ %i.ih, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !151
  store ptr %i.hj, ptr %i.i, align 8, !tbaa !151
  %i.ii = load ptr, ptr %i.j, align 8, !tbaa !151
  store ptr %i.hi, ptr %i.j, align 8, !tbaa !151
  %.not.i5.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i5.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.hm to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.il) #27
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, %bb.bp
  %.0.i = phi ptr [ %i.gr, %bb.bp ], [ %i.hj, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.hj, %bb.bt ]
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !150
  %i.im = add nuw nsw i64 %.025181, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %i.cr
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !801

.loopexit:                                        ; preds = %bb.bn, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.br, %bb.bs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %bb.bu, %bb.ap
  %i.in = load ptr, ptr %i.ac, align 8, !tbaa !249 ; 7 uses
  %i.io = load ptr, ptr %i.ad, align 8, !tbaa !250
  %i.ip = icmp ult ptr %i.in, %i.io
  br i1 %i.ip, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %._crit_edge
  %i.iq = load i32, ptr %10, align 8, !tbaa !244
  store i32 %i.iq, ptr %i.in, align 8, !tbaa !244
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i8 0, i64 24, i1 false)
  %i.iu = load ptr, ptr %i.g, align 8, !tbaa !152 ; 3 uses
  %i.iv = load ptr, ptr %i.i, align 8, !tbaa !150 ; 2 uses
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.iu to i64
  %i.iy = sub i64 %i.iw, %i.ix                    ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.iv, %i.iu
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iz = icmp slt i64 %i.iy, 0
  br i1 %i.iz, label %bb.bx, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ir) #28
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp139

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.bx
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bw
  %i.ja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #29
          to label %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i.i.i.i.i.i.i unwind label %.loopexit138 ; 4 uses

_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.ja, ptr %i.ir, align 8, !tbaa !152
  store ptr %i.ja, ptr %i.is, align 8, !tbaa !150
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iy ; 2 uses
  store ptr %i.jb, ptr %i.it, align 8, !tbaa !151
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ja, ptr align 4 %i.iu, i64 %i.iy, i1 false)
  store ptr %i.jb, ptr %i.is, align 8, !tbaa !150
  br label %_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i

.loopexit138:                                     ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i.i.i.i.i.i
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp139:                            ; preds = %bb.bx
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %.loopexit.split-lp139, %.loopexit138
  %lpad.phi142 = phi { ptr, i32 } [ %lpad.loopexit140, %.loopexit138 ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp139 ]
  %i.jc = load ptr, ptr %i.ir, align 8, !tbaa !152 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.body.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store ptr %i.jc, ptr %i.is, align 8, !tbaa !150
  %i.jd = load ptr, ptr %i.it, align 8, !tbaa !151
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jc to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jg) #27
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bz, %bb.by
  store ptr %i.in, ptr %i.ac, align 8, !tbaa !249
  br label %.body

_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i.i.i.i.i.i.i, %bb.bv
  %i.jh = getelementptr inbounds nuw i8, ptr %i.in, i64 32 ; 2 uses
  store ptr %i.jh, ptr %i.ac, align 8, !tbaa !249
  br label %_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit

bb.ca:                                            ; preds = %._crit_edge
  %i.ji = invoke noundef ptr @_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit unwind label %bb.aq

_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit: ; preds = %bb.ca, %_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i
  %.0.i119 = phi ptr [ %i.jh, %_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i ], [ %i.ji, %bb.ca ]
  store ptr %.0.i119, ptr %i.ac, align 8, !tbaa !249
  br label %bb.cb

bb.cb:                                            ; preds = %.thread, %_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit
  %.not55152 = phi i1 [ false, %.thread ], [ true, %_ZNSt3__16vectorIN8Box_tref9ReferenceENS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit ]
  %i.jj = load ptr, ptr %i.g, align 8, !tbaa !152 ; 4 uses
  %.not.i.i.i121 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i121, label %_ZN8Box_tref9ReferenceD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.jj, ptr %i.i, align 8, !tbaa !150
  %i.jk = load ptr, ptr %i.j, align 8, !tbaa !151
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %i.jj to i64
  %i.jn = sub i64 %i.jl, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jn) #27
  br label %_ZN8Box_tref9ReferenceD2Ev.exit

_ZN8Box_tref9ReferenceD2Ev.exit:                  ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81, %_ZN8Box_tref9ReferenceD2Ev.exit, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.e
  %.4 = phi i1 [ false, %bb.e ], [ false, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ false, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81 ], [ false, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ %.not55152, %_ZN8Box_tref9ReferenceD2Ev.exit ]
  %i.jo = load i8, ptr %i.c, align 8
  %i.jp = trunc i8 %i.jo to i1
  br i1 %i.jp, label %bb.ce, label %_ZN5ErrorD2Ev.exit

bb.ce:                                            ; preds = %bb.cd
  %i.jq = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.jr = load i64, ptr %i.c, align 8
  %i.js = and i64 %i.jr, -2
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.js) #27
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV9BoxHeader, i64 16), ptr %4, align 8, !tbaa !16
  %i.jt = load ptr, ptr %i.ay, align 8, !tbaa !229 ; 4 uses
  %.not.i.i.i122 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i122, label %_ZN9BoxHeaderD2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN5ErrorD2Ev.exit
  store ptr %i.jt, ptr %i.az, align 8, !tbaa !228
  %i.ju = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jx) #27
  br label %_ZN9BoxHeaderD2Ev.exit

_ZN9BoxHeaderD2Ev.exit:                           ; preds = %_ZN5ErrorD2Ev.exit, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.4, label %bb.b, label %_ZN5ErrorD2Ev.exit128

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aq, %.body.i.i, %bb.bm
  %.pn56 = phi { ptr, i32 } [ %lpad.phi142, %.body.i.i ], [ %.pn.pn.pn, %bb.bm ], [ %i.er, %bb.aq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.jy = load ptr, ptr %i.g, align 8, !tbaa !152 ; 4 uses
  %.not.i.i.i123 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i123, label %_ZN8Box_tref9ReferenceD2Ev.exit124, label %bb.cg

bb.cg:                                            ; preds = %.body
  store ptr %i.jy, ptr %i.i, align 8, !tbaa !150
  %i.jz = load ptr, ptr %i.j, align 8, !tbaa !151
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kc) #27
  br label %_ZN8Box_tref9ReferenceD2Ev.exit124

_ZN8Box_tref9ReferenceD2Ev.exit124:               ; preds = %.body, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit82, %_ZN8Box_tref9ReferenceD2Ev.exit124, %bb.ao, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73 ], [ %.pn56, %_ZN8Box_tref9ReferenceD2Ev.exit124 ], [ %.pn63, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit82 ], [ %.pn58.pn.pn, %bb.ao ] ; 2 uses
  %i.kd = load i8, ptr %i.c, align 8
  %i.ke = trunc i8 %i.kd to i1
  br i1 %i.ke, label %bb.ci, label %_ZN5ErrorD2Ev.exit125

bb.ci:                                            ; preds = %bb.ch
  %i.kf = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.kg = load i64, ptr %i.c, align 8
  %i.kh = and i64 %i.kg, -2
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kh) #27
  br label %_ZN5ErrorD2Ev.exit125

_ZN5ErrorD2Ev.exit125:                            ; preds = %bb.ci, %bb.ch, %bb.f
  %.pn66.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.f ], [ %.pn66.pn, %bb.ch ], [ %.pn66.pn, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV9BoxHeader, i64 16), ptr %4, align 8, !tbaa !16
  %i.ki = load ptr, ptr %i.ay, align 8, !tbaa !229 ; 4 uses
  %.not.i.i.i126 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i126, label %_ZN9BoxHeaderD2Ev.exit127, label %bb.cj

bb.cj:                                            ; preds = %_ZN5ErrorD2Ev.exit125
  store ptr %i.ki, ptr %i.az, align 8, !tbaa !228
  %i.kj = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.ki to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.km) #27
  br label %_ZN9BoxHeaderD2Ev.exit127

_ZN9BoxHeaderD2Ev.exit127:                        ; preds = %_ZN5ErrorD2Ev.exit125, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn66.pn.pn

bb.ck:                                            ; preds = %bb.b
  call void @_ZNK8Box_tref27check_for_double_referencesEv(ptr dead_on_unwind writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
  %i.kn = load i32, ptr %0, align 8, !tbaa !102
  %.not132 = icmp eq i32 %i.kn, 0
  br i1 %.not132, label %bb.cl, label %_ZN5ErrorD2Ev.exit128

bb.cl:                                            ; preds = %bb.ck
  %i.ko = load i8, ptr %i.b, align 8
  %i.kp = trunc i8 %i.ko to i1
  br i1 %i.kp, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !37
  %i.ks = load i64, ptr %i.b, align 8
  %i.kt = and i64 %i.ks, -2
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kt) #27
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  call void @_ZNK14BitstreamRange9get_errorEv(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %2)
  br label %_ZN5ErrorD2Ev.exit128

_ZN5ErrorD2Ev.exit128:                            ; preds = %_ZN9BoxHeaderD2Ev.exit, %bb.ck, %bb.cn
  ret void
}

declare void @_ZN9BoxHeaderC1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #1

declare void @_ZN9BoxHeader12parse_headerER14BitstreamRange(ptr dead_on_unwind writable sret(%class.Error) align 8, ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8Box_tref27check_for_double_referencesEv(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::set", align 8     ; 12 uses
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %.not73 = icmp eq ptr %i.b, %i.d
  br i1 %.not73, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph75, %.thread45
  %.sroa.036.074 = phi ptr [ %i.b, %.lr.ph75 ], [ %i.l, %.thread45 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %2, align 8, !tbaa !820
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.036.074, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.036.074, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !150  ; 2 uses
  %.not5071 = icmp eq ptr %i.h, %i.j
  br i1 %.not5071, label %.thread45, label %.lr.ph

.thread45.loopexit:                               ; preds = %.loopexit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !255
  br label %.thread45

.thread45:                                        ; preds = %.thread45.loopexit, %bb.b
  %i.k = phi ptr [ %.pre, %.thread45.loopexit ], [ null, %bb.b ]
  call void @_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE7destroyEPNS_11__tree_nodeIjPvEE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.036.074, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.sroa.032.072 = phi ptr [ %i.ec, %.loopexit ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = load i32, ptr %.sroa.032.072, align 4, !tbaa !42 ; 5 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !255  ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i.i, label %_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE12__find_equalIjEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISA_EERKT_.exit.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %.lr.ph ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.n, %.lr.ph ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = icmp ult i32 %i.p, %i.m                  ; 3 uses
  %.19.in.idx.i.i.i = select i1 %i.q, i64 8, i64 0
  %.19.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 %.19.in.idx.i.i.i
  %.1.i.i.i = select i1 %i.q, ptr %.012.i.i.i, ptr %.0811.i.i.i ; 2 uses
  %.19.i.i.i = load ptr, ptr %.19.in.i.i.i, align 8, !tbaa !821 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.19.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE13__lower_boundIjEENS_15__tree_iteratorIjPNS_11__tree_nodeIjPvEElEERKT_SB_PNS_15__tree_end_nodeIPNS_16__tree_node_baseIS9_EEEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !815

_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE13__lower_boundIjEENS_15__tree_iteratorIjPNS_11__tree_nodeIjPvEElEERKT_SB_PNS_15__tree_end_nodeIPNS_16__tree_node_baseIS9_EEEE.exit.i.i: ; preds = %.lr.ph.i.i.i
  %.not.i.i = icmp eq ptr %.1.i.i.i, %i.e
  br i1 %.not.i.i, label %.preheader.i.i.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE13__lower_boundIjEENS_15__tree_iteratorIjPNS_11__tree_nodeIjPvEElEERKT_SB_PNS_15__tree_end_nodeIPNS_16__tree_node_baseIS9_EEEE.exit.i.i
  %.1.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.q, ptr %.012.i.i.i, ptr %.0811.i.i.i
  %.1.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 28
  %i.r = load i32, ptr %.1.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !42
  %i.s = icmp ult i32 %i.m, %i.r
  br i1 %i.s, label %.preheader.i.i.i.i.preheader, label %.thread.i.i

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c, %_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE13__lower_boundIjEENS_15__tree_iteratorIjPNS_11__tree_nodeIjPvEElEERKT_SB_PNS_15__tree_end_nodeIPNS_16__tree_node_baseIS9_EEEE.exit.i.i
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.backedge, %.preheader.i.i.i.i.preheader
  %.pr.i.i.i = phi ptr [ %i.n, %.preheader.i.i.i.i.preheader ], [ %.pr.i.i.i.be, %.preheader.i.i.i.i.backedge ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 2 uses
  %i.v = icmp ult i32 %i.m, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i.i.i.i
  %i.w = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !821 ; 2 uses
  %.not31.i.i.i.i = icmp eq ptr %i.w, null
end_hunk_0
