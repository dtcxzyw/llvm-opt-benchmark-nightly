Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/default_health_check_service?download=true
inline.NumInlined: 2317
inline.NumDeleted: 1034
begin_hunk_0_@_ZN4grpc25DefaultHealthCheckService22HealthCheckServiceImpl18HandleCheckRequestEPS0_PNS_21CallbackServerContextEPKNS_10ByteBufferEPS5_:bb.a
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
  %i.do = load ptr, ptr %i.cx, align 8, !tbaa !71 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cy
  br i1 %i.dp, label %_ZN4grpc6StatusD2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60
  %i.dq = load i64, ptr %i.cy, align 8, !tbaa !58
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #28
  br label %_ZN4grpc6StatusD2Ev.exit64

_ZN4grpc6StatusD2Ev.exit64:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i61
  %i.ds = load ptr, ptr %10, align 8, !tbaa !71   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cr
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZN4grpc6StatusD2Ev.exit64
  %i.du = load i64, ptr %i.cr, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.t:                                             ; preds = %.noexc.i54
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.u:                                             ; preds = %_ZN4grpc6StatusC2ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN4grpc6StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #26
  %i.dx = load ptr, ptr %10, align 8, !tbaa !71   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.cr
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.u
  %i.dz = load i64, ptr %i.cr, align 8, !tbaa !58
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.v:                                             ; preds = %bb.q
  %i.eb = load ptr, ptr @_ZN4grpc6Status2OKE, align 8, !tbaa !146, !nonnull !78, !align !147
  invoke void @_ZN4grpc6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %i.eb)
          to label %bb.w unwind label %bb.m

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4grpc18ServerUnaryReactor6FinishENS_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 %11)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !71 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.x
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !58
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !71 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.y:                                             ; preds = %bb.w
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4grpc6StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i73
  %.sink126 = phi i64 [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i73 ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ]
  %.sink = phi ptr [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i73 ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ]
  %i.eo = add i64 %.sink126, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.eo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72, %_ZN4grpc6StatusD2Ev.exit64, %_ZN4grpc6StatusD2Ev.exit46, %_ZN4grpc6StatusD2Ev.exit
  %i.ep = load ptr, ptr %4, align 8, !tbaa !71    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.p
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.er = load i64, ptr %i.p, align 8, !tbaa !58
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %i.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.u, %bb.o, %bb.h, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.m, %bb.y, %bb.f
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.f ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.en, %bb.y ], [ %i.cj, %bb.m ], [ %i.ax, %bb.g ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.ck, %bb.n ], [ %i.ay, %bb.h ], [ %i.dv, %bb.t ], [ %i.cl, %bb.o ], [ %i.dw, %bb.u ]
  %i.et = load ptr, ptr %4, align 8, !tbaa !71    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.p
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.ev = load i64, ptr %i.p, align 8, !tbaa !58
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn27.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4grpc25DefaultHealthCheckService22HealthCheckServiceImpl13DecodeRequestERKNS_10ByteBufferEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc::Slice", align 8       ; 11 uses
  %3 = alloca %"class.grpc::Status", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @grpc_empty_slice(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNK4grpc10ByteBuffer17DumpToSingleSliceEPNS_5SliceE(ptr dead_on_unwind nonnull writable sret(%"class.grpc::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 8, !tbaa !143
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !58
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4grpc6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !58
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #28
  br label %_ZN4grpc6StatusD2Ev.exit

_ZN4grpc6StatusD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.b, label %bb.d, label %_ZN3upb5ArenaD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3upb5ArenaD2Ev.exit24

bb.d:                                             ; preds = %_ZN4grpc6StatusD2Ev.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !461
  %.not.i = icmp eq ptr %i.p, null                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.t = select i1 %.not.i, ptr %i.s, ptr %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = and i64 %i.v, 255
  %i.x = select i1 %.not.i, i64 %i.w, i64 %i.v
  %i.y = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %_ZN3upb5ArenaC2Ev.exit unwind label %bb.f ; 7 uses

_ZN3upb5ArenaC2Ev.exit:                           ; preds = %bb.d
  %i.z = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__health__v1__HealthCheckRequest_msg_init, i64 8), align 8, !tbaa !153
  %i.aa = zext i16 %i.z to i64                    ; 5 uses
  %i.ab = and i64 %i.aa, 7
  %i.ac = icmp eq i64 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !155
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !156 ; 4 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.aa
  br i1 %i.aj, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !84

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %_ZN3upb5ArenaC2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aa
  store ptr %i.ak, ptr %i.y, align 8, !tbaa !156
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  br label %bb.e

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %_ZN3upb5ArenaC2Ev.exit
  %i.al = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %upb_Arena_Malloc.exit.i.i.i
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, label %bb.e, !prof !462

bb.e:                                             ; preds = %.noexc, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i11.i.i.i = phi ptr [ %i.af, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.al, %.noexc ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i, i8 0, i64 %i.aa, i1 false)
  %i.am = invoke i32 @upb_Decode(ptr noundef %i.t, i64 noundef %i.x, ptr noundef nonnull %.0.i11.i.i.i, ptr noundef nonnull @grpc__health__v1__HealthCheckRequest_msg_init, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.y)
          to label %.noexc21 unwind label %bb.g

.noexc21:                                         ; preds = %bb.e
  %.not8.i = icmp eq i32 %i.am, 0
  br i1 %.not8.i, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.f:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3upb5ArenaD2Ev.exit24

bb.g:                                             ; preds = %bb.e, %upb_Arena_Malloc.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %.noexc21
  %.sroa.9.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %.0.i11.i.i.i, i64 16
  %.sroa.9.0.copyload13.i = load i64, ptr %.sroa.9.0..sroa_idx12.i, align 1 ; 2 uses
  %i.ap = icmp ult i64 %.sroa.9.0.copyload13.i, 201
  br i1 %i.ap, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.i:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i11.i.i.i, i64 8
  %.sroa.010.0.copyload11.i = load ptr, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !57
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.at, ptr noundef %.sroa.010.0.copyload11.i, i64 noundef %.sroa.9.0.copyload13.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %.noexc, %.noexc21, %bb.h, %bb.j
  %.113 = phi i1 [ true, %bb.j ], [ false, %bb.h ], [ false, %.noexc21 ], [ false, %.noexc ]
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.y)
          to label %_ZN3upb5ArenaD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #29
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %i.ao, %bb.g ]
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.y)
          to label %_ZN3upb5ArenaD2Ev.exit24 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #29
  unreachable

_ZN3upb5ArenaD2Ev.exit:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, %_ZN4grpc6StatusD2Ev.exit
  %.214 = phi i1 [ false, %_ZN4grpc6StatusD2Ev.exit ], [ %.113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit ]
  invoke void @grpc_slice_unref(ptr noundef nonnull byval(%struct.grpc_slice) align 8 %2)
          to label %_ZN4grpc5SliceD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZN3upb5ArenaD2Ev.exit
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #29
  unreachable

_ZN4grpc5SliceD2Ev.exit:                          ; preds = %_ZN3upb5ArenaD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.214

_ZN3upb5ArenaD2Ev.exit24:                         ; preds = %bb.f, %bb.l, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.an, %bb.f ], [ %.pn, %bb.l ]
  invoke void @grpc_slice_unref(ptr noundef nonnull byval(%struct.grpc_slice) align 8 %2)
          to label %_ZN4grpc5SliceD2Ev.exit25 unwind label %bb.o

bb.o:                                             ; preds = %_ZN3upb5ArenaD2Ev.exit24
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #29
  unreachable

_ZN4grpc5SliceD2Ev.exit25:                        ; preds = %_ZN3upb5ArenaD2Ev.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4grpc18ServerUnaryReactor6FinishENS_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc::Status", align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit8

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.f, align 1, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4grpc6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %1) #26 ; 0 uses
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

.critedge:                                        ; preds = %bb.b
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit8 unwind label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit8:       ; preds = %.critedge, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.e, %.critedge ] ; 2 uses
  %i.m = load i32, ptr %1, align 8, !tbaa !143
  store i32 %i.m, ptr %2, align 8, !tbaa !143
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !55
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !71   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !57   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit8
  store ptr %i.q, ptr %i.n, align 8, !tbaa !71
  %i.x = load i64, ptr %i.r, align 8, !tbaa !58
  store i64 %i.x, ptr %i.p, align 8, !tbaa !58
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.y = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !57
  store ptr %i.r, ptr %i.o, align 8, !tbaa !71
  store i64 0, ptr %i.z, align 8, !tbaa !57
  store i8 0, ptr %i.r, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !55
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !71 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !57 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZN4grpc6StatusC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !71
  %i.al = load i64, ptr %i.af, align 8, !tbaa !58
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !58
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre11 = load i64, ptr %.phi.trans.insert10, align 8, !tbaa !57
  br label %_ZN4grpc6StatusC2EOS0_.exit

_ZN4grpc6StatusC2EOS0_.exit:                      ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  %i.am = phi i64 [ %i.ai, %bb.g ], [ %.pre11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !57
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !71
  store i64 0, ptr %i.an, align 8, !tbaa !57
  store i8 0, ptr %i.af, align 8, !tbaa !58
  %i.ap = load ptr, ptr %.0, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %.0, ptr noundef nonnull align 8 %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN4grpc6StatusC2EOS0_.exit
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ad
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !71  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !58
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #28
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i, %bb.c
  ret void

bb.i:                                             ; preds = %_ZN4grpc6StatusC2EOS0_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4grpc6StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #26
  resume { ptr, i32 } %i.ba
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4grpc6StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !58
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !58
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4grpc25DefaultHealthCheckService22HealthCheckServiceImpl14EncodeResponseENS0_13ServingStatusEPNS_10ByteBufferE(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.grpc_slice, align 8         ; 5 uses
  %3 = alloca %"class.grpc::Slice", align 8       ; 7 uses
  %i.c = tail call ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global) ; 7 uses
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__health__v1__HealthCheckResponse_msg_init, i64 8), align 8, !tbaa !153
  %i.e = zext i16 %i.d to i64                     ; 5 uses
  %i.f = and i64 %i.e, 7
  %i.g = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !156  ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, %i.e
  br i1 %i.n, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !84

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  store ptr %i.o, ptr %i.c, align 8, !tbaa !156
  br label %.noexc.a

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.p = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.c, i64 noundef %i.e)
          to label %.noexc.a unwind label %bb.c

.noexc.a:                                         ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.sink = phi ptr [ %i.j, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.p, %upb_Arena_Malloc.exit.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink, i8 0, i64 %i.e, i1 false)
  %i.q = icmp eq i32 %0, 0
  %i.r = icmp eq i32 %0, 1
  %i.s = select i1 %i.r, i32 1, i32 2
  %i.t = select i1 %i.q, i32 3, i32 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i32 %i.t, ptr %i.u, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.v = invoke i32 @upb_Encode(ptr noundef nonnull %.sink, ptr noundef nonnull @grpc__health__v1__HealthCheckResponse_msg_init, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %.noexc.a
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.x = icmp ne ptr %i.w, null                   ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.n

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.d:                                             ; preds = %.noexc.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !144
  invoke void @grpc_slice_from_copied_buffer(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %2, ptr noundef nonnull %i.w, i64 noundef %i.aa)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ab = invoke ptr @grpc_raw_byte_buffer_create(ptr noundef nonnull %3, i64 noundef 1)
          to label %_ZN4grpc10ByteBufferC2EPKNS_5SliceEm.exit unwind label %bb.k

_ZN4grpc10ByteBufferC2EPKNS_5SliceEm.exit:        ; preds = %bb.f
  %i.ac = load ptr, ptr %1, align 8, !tbaa !164   ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !164
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN4grpc10ByteBufferD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4grpc10ByteBufferC2EPKNS_5SliceEm.exit
  invoke void @grpc_byte_buffer_destroy(ptr noundef nonnull %i.ac)
          to label %_ZN4grpc10ByteBufferD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #29
  unreachable

_ZN4grpc10ByteBufferD2Ev.exit:                    ; preds = %_ZN4grpc10ByteBufferC2EPKNS_5SliceEm.exit, %bb.g
  invoke void @grpc_slice_unref(ptr noundef nonnull byval(%struct.grpc_slice) align 8 %3)
          to label %_ZN4grpc5SliceD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN4grpc10ByteBufferD2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZN4grpc5SliceD2Ev.exit:                          ; preds = %_ZN4grpc10ByteBufferD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @grpc_slice_unref(ptr noundef nonnull byval(%struct.grpc_slice) align 8 %3)
          to label %_ZN4grpc5SliceD2Ev.exit19 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #29
  unreachable

_ZN4grpc5SliceD2Ev.exit19:                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.m

bb.m:                                             ; preds = %_ZN4grpc5SliceD2Ev.exit19, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ai, %_ZN4grpc5SliceD2Ev.exit19 ], [ %i.ah, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.p

bb.n:                                             ; preds = %_ZN4grpc5SliceD2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.c)
          to label %_ZN3upb5ArenaD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #29
  unreachable

_ZN3upb5ArenaD2Ev.exit:                           ; preds = %bb.n
  ret i1 %i.x

bb.p:                                             ; preds = %bb.m, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.z, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.y, %bb.c ]
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.c)
          to label %_ZN3upb5ArenaD2Ev.exit22 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #29
  unreachable

_ZN3upb5ArenaD2Ev.exit22:                         ; preds = %bb.q
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4grpc6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !143
  store i32 %i.c, ptr %0, align 8, !tbaa !143
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !55
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.i, ptr %i.b, align 8, !tbaa !144
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !71
  %i.l = load i64, ptr %i.b, align 8, !tbaa !144
  store i64 %i.l, ptr %i.f, align 8, !tbaa !58
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !58
  store i8 %i.n, ptr %i.m, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !144  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !57
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !55
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !71   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !57   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.x, ptr %i.a, align 8, !tbaa !144
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
end_hunk_0
