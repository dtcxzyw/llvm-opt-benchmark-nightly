Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pixelimage?download=true
inline.NumInlined: 4522
inline.NumDeleted: 2364
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype:bb.a
bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !138
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !171
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bw) #29
  br label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit36

_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit36: ; preds = %bb.w, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.u ], [ %i.bp, %bb.v ], [ %i.bp, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.y

.critedge:                                        ; preds = %bb.s, %bb.t, %bb.i
  %i.bx = load ptr, ptr %i.y, align 8, !tbaa !42  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !44
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cd) #29
  br label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit

_ZN14HeifPixelImage16ComponentStorageD2Ev.exit:   ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.aa

bb.y:                                             ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit36, %bb.j
  %.pn29 = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %.pn, %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit36 ]
  %i.ce = load ptr, ptr %i.y, align 8, !tbaa !42  ; 4 uses
  %.not.i.i.i37 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i37, label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit38, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !44
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.ce to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ck) #29
  br label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit38

_ZN14HeifPixelImage16ComponentStorageD2Ev.exit38: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void

bb.ab:                                            ; preds = %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit33
  %.pn31 = phi { ptr, i32 } [ %i.r, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit33 ], [ %.pn29, %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit38 ]
  resume { ptr, i32 } %.pn31
}

declare void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN14HeifPixelImage16ComponentStorage5allocEjj23heif_component_datatypeiiPK20heif_security_limitsR12MemoryHandle(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__1::basic_stringstream", align 8 ; 8 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__1::basic_stringstream", align 8 ; 8 uses
  %14 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = icmp eq i32 %2, 0
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit, label %bb.f

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i8 36, ptr %9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.c, ptr noundef nonnull align 1 dereferenceable(18) @.str.1, i64 18, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 19
  store i8 0, ptr %i.d, align 1, !tbaa !36
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.e = load i8, ptr %9, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = load i64, ptr %9, align 8
  %i.j = and i64 %i.i, -2
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.critedge

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i8, ptr %9, align 8
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit82

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = load i64, ptr %9, align 8
  %i.q = and i64 %i.p, -2
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.q) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit82

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit82: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.at

bb.f:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %2, -1
  %i.s = icmp eq i32 %3, -1
  %or.cond114 = or i1 %i.r, %i.s
  br i1 %or.cond114, label %.thread.i.i83, label %bb.k

.thread.i.i83:                                    ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.t = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !36
  store i64 49, ptr %10, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 41, ptr %i.v, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.t, ptr noundef nonnull align 1 dereferenceable(41) @.str.2, i64 41, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 41
  store i8 0, ptr %i.w, align 1, !tbaa !36
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 6, i32 noundef 1000, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.thread.i.i83
  %i.x = load i8, ptr %10, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit88

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.aa = load i64, ptr %10, align 8
  %i.ab = and i64 %i.aa, -2
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit88

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit88: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.critedge

bb.i:                                             ; preds = %.thread.i.i83
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load i8, ptr %10, align 8
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %bb.j, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit89

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.ag = load i64, ptr %10, align 8
  %i.ah = and i64 %i.ag, -2
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit89

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit89: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.at

bb.k:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %2, ptr %i.ai, align 8, !tbaa !172
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %3, ptr %i.aj, align 4, !tbaa !173
  %i.ak = tail call i32 @llvm.umax.i32(i32 %2, i32 63)
  %i.al = add nuw i32 %i.ak, 1
  %spec.store.select.i = and i32 %i.al, -2        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %spec.store.select.i, ptr %i.am, align 8, !tbaa !174
  %i.an = tail call i32 @llvm.umax.i32(i32 %3, i32 63)
  %i.ao = add nuw i32 %i.an, 1
  %spec.store.select.i90 = and i32 %i.ao, -2      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %spec.store.select.i90, ptr %i.ap, align 4, !tbaa !175
  %i.aq = trunc i32 %5 to i16
  %i.ar = and i16 %i.aq, 255
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i16 %i.ar, ptr %i.as, align 4, !tbaa !146
  %i.at = trunc i32 %6 to i8                      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 38
  store i8 %i.at, ptr %i.au, align 2, !tbaa !166
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %4, ptr %i.av, align 8, !tbaa !145
  %i.aw = icmp slt i32 %5, 9
  br i1 %i.aw, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp samesign ult i32 %5, 17
  br i1 %i.ax, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = icmp samesign ult i32 %5, 33
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = icmp samesign ult i32 %5, 65
  %. = select i1 %i.az, i8 8, i8 16
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.051 = phi i8 [ 4, %bb.m ], [ 1, %bb.k ], [ 2, %bb.l ], [ %., %bb.n ]
  %15 = mul i8 %.051, %i.at                       ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 39
  store i8 %15, ptr %i.ba, align 1, !tbaa !176
  %i.bb = zext i32 %spec.store.select.i to i64
  %i.bc = zext i8 %15 to i64
  %i.bd = mul nuw nsw i64 %i.bc, %i.bb
  %i.be = add nuw nsw i64 %i.bd, 14
  %i.bf = and i64 %i.be, 2199023255536            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !177
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !357 ; 2 uses
  %.not69 = icmp eq i64 %i.bi, 0
  br i1 %.not69, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = zext i32 %3 to i64
  %i.bk = udiv i64 %i.bi, %i.bj
  %i.bl = zext i32 %2 to i64
  %i.bm = icmp ult i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.4, i64 noundef 28)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.y

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.r
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 noundef %2)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit98 unwind label %bb.y

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit98: ; preds = %bb.s
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i32 noundef %3)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit98
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.6, i64 noundef 31)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit99 unwind label %bb.y

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit99: ; preds = %bb.t
  %i.bt = load i64, ptr %i.bh, align 8, !tbaa !357
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i64 noundef %i.bt)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit99
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.7, i64 noundef 7)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit100 unwind label %bb.y ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit100: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZNKRSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit100
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 6, i32 noundef 1000, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bw = load i8, ptr %12, align 8
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.x, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !36
  %i.ca = load i64, ptr %12, align 8
  %i.cb = and i64 %i.ca, -2
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cb) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.critedge

bb.y:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit99, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit98, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit100
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit102

bb.aa:                                            ; preds = %bb.v
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load i8, ptr %12, align 8
  %i.cg = trunc i8 %i.cf to i1
  br i1 %i.cg, label %bb.ab, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit102

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !36
  %i.cj = load i64, ptr %12, align 8
  %i.ck = and i64 %i.cj, -2
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.ck) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit102

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit102: ; preds = %bb.ab, %bb.aa, %bb.z
  %.pn75 = phi { ptr, i32 } [ %i.cd, %bb.z ], [ %i.ce, %bb.aa ], [ %i.ce, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit102, %bb.y
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit102 ], [ %i.cc, %bb.y ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.at

bb.ad:                                            ; preds = %bb.o, %bb.p, %bb.q
  %i.cl = zext i32 %spec.store.select.i90 to i64
  %i.cm = mul i64 %i.bf, %i.cl
  %i.cn = or disjoint i64 %i.cm, 15               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !178
  tail call void @_ZN12MemoryHandle5allocEmPK20heif_security_limitsPKc(ptr dead_on_unwind writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.cn, ptr noundef %7, ptr noundef nonnull @.str.9)
  %i.cp = load i32, ptr %0, align 8, !tbaa !170
  %.not115 = icmp eq i32 %i.cp, 0
  br i1 %.not115, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cr = load i8, ptr %i.cq, align 8
  %i.cs = trunc i8 %i.cr to i1
  br i1 %i.cs, label %bb.af, label %_ZN5ErrorD2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36
  %i.cv = load i64, ptr %i.cq, align 8
  %i.cw = and i64 %i.cv, -2
  tail call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cw) #29
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.ae, %bb.af
  %i.cx = load i64, ptr %i.co, align 8, !tbaa !178
  %i.cy = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.cx) #34 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !56
  %i.da = icmp eq ptr %i.cy, null
  br i1 %i.da, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %_ZN5ErrorD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %13)
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.10, i64 noundef 11)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit110 unwind label %bb.al

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit110: ; preds = %bb.ag
  %i.dd = load i64, ptr %i.co, align 8, !tbaa !178
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i64 noundef %i.dd)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit110
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.11, i64 noundef 13)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit111 unwind label %bb.al ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit111: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZNKRSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(128) %13)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit111
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dg = load i8, ptr %14, align 8
  %i.dh = trunc i8 %i.dg to i1
  br i1 %i.dh, label %bb.ak, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112

bb.ak:                                            ; preds = %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !36
  %i.dk = load i64, ptr %14, align 8
  %i.dl = and i64 %i.dk, -2
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dl) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %.critedge

bb.al:                                            ; preds = %bb.ah, %bb.ag, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit110
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit111
end_hunk_0
