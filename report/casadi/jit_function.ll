Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/jit_function?download=true
inline.NumInlined: 839
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6casadi11JitFunction12codegen_bodyERNS_13CodeGeneratorE:bb.a
bb.n:                                             ; preds = %_ZNK6casadi16FunctionInternal6nnz_inEx.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i77, %bb.j, %_ZNK6casadi16FunctionInternal6nnz_inEx.exit80, %bb.g, %bb.f, %bb.e, %bb.d, %bb.i
  %lpad.loopexit.split-lp359 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.p
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp
  %i.cs = load i64, ptr %i.p, align 8, !tbaa !21
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.n
  %.pn52 = phi { ptr, i32 } [ %i.cp, %bb.n ], [ %lpad.loopexit.split-lp359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %lpad.loopexit.split-lp359, %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp ]
  %i.cu = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.n
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.cw = load i64, ptr %i.n, align 8, !tbaa !21
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %lpad.loopexit.split-lp357, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cy = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.j
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.o
  %i.da = load i64, ptr %i.j, align 8, !tbaa !21
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.af

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %.043232
  %i.de = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.dd)
  %i.df = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.de, ptr noundef nonnull @.str.13) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.p
  %i.dg = add nuw nsw i64 %.043232, 1             ; 2 uses
  %i.dh = load i64, ptr %i.b, align 8, !tbaa !146
  %i.di = icmp ult i64 %i.dg, %i.dh
  br i1 %i.di, label %.noexc.i, label %.preheader, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.w, %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.dk = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.dj) ; 0 uses
  %i.dl = load i64, ptr %i.t, align 8, !tbaa !147 ; 2 uses
  %.not238 = icmp eq i64 %i.dl, 0
  br i1 %.not238, label %._crit_edge236, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.dt = load i8, ptr %i.dm, align 8, !tbaa !83, !range !104, !noundef !105
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.lr.ph.split.preheader, label %._crit_edge236

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 22
  br label %.lr.ph.split

._crit_edge.i.i105:                               ; preds = %._crit_edge.i.i105.lr.ph, %bb.w
  %.029233 = phi i64 [ 0, %._crit_edge.i.i105.lr.ph ], [ %i.fg, %bb.w ] ; 6 uses
  %i.dw = load ptr, ptr %i.v, align 8, !tbaa !89
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %.029233
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.w, ptr %7, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.w, ptr noundef nonnull align 1 dereferenceable(11) @.str.14, i64 11, i1 false)
  store i64 11, ptr %i.x, align 8, !tbaa !19
  store i8 0, ptr %i.ad, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.y, ptr %8, align 8, !tbaa !15
  store i8 42, ptr %i.y, align 8, !tbaa !21
  store i64 1, ptr %i.z, align 8, !tbaa !19
  store i8 0, ptr %i.ae, align 1, !tbaa !21
  invoke void @_ZN6casadi13CodeGenerator5localERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %._crit_edge.i.i105
  %i.dy = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.y
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.r
  %i.ea = load i64, ptr %i.y, align 8, !tbaa !21
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ec = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.w
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.ee = load i64, ptr %i.w, align 8, !tbaa !21
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.eg = load i8, ptr %i.aa, align 8, !tbaa !83, !range !104, !noundef !105
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = load ptr, ptr %i.v, align 8, !tbaa !89
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.ei, i64 %.029233
  %i.ek = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ej) ; 2 uses
  br i1 %i.eh, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.el = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.ek, ptr noundef nonnull @.str.11)
  %i.em = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.en = load ptr, ptr %i.ab, align 8, !tbaa !85 ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 3                 ; 2 uses
  %.not.i.i.i.i119 = icmp ult i64 %.029233, %i.er
  br i1 %.not.i.i.i.i119, label %_ZNK6casadi16FunctionInternal7nnz_outEx.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, i64 noundef %.029233, i64 noundef %i.er) #25
  unreachable

_ZNK6casadi16FunctionInternal7nnz_outEx.exit:     ; preds = %bb.s
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.029233
  %i.et = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.es)
  %i.eu = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.el, i64 noundef %i.et)
  %i.ev = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.eu, ptr noundef nonnull @.str.12) ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %._crit_edge.i.i105
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.y
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.u
  %i.ez = load i64, ptr %i.y, align 8, !tbaa !21
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.fb = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.w
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.fd = load i64, ptr %i.w, align 8, !tbaa !21
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.af

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.ff = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.ek, ptr noundef nonnull @.str.15) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit, %bb.v
  %i.fg = add nuw nsw i64 %.029233, 1             ; 2 uses
  %i.fh = load i64, ptr %i.t, align 8, !tbaa !147
  %i.fi = icmp ult i64 %i.fg, %i.fh
  br i1 %i.fi, label %._crit_edge.i.i105, label %._crit_edge, !llvm.loop !144

._crit_edge236:                                   ; preds = %bb.ae, %.lr.ph, %._crit_edge
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ae
  %11 = phi i64 [ %i.go, %bb.ae ], [ %i.dl, %.lr.ph.split.preheader ]
  %.0234.a = phi i64 [ %i.gp, %bb.ae ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %12 = load i8, ptr %i.dm, align 8, !tbaa !83, !range !104, !noundef !105
  %i.fj = trunc nuw i8 %12 to i1
  br i1 %i.fj, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.fk = load ptr, ptr %i.dp, align 8, !tbaa !84
  %i.fl = load ptr, ptr %i.do, align 8, !tbaa !85 ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 3                 ; 2 uses
  %.not.i.i.i.i126 = icmp ult i64 %.0234.a, %i.fp
  br i1 %.not.i.i.i.i126, label %_ZNK6casadi16FunctionInternal7nnz_outEx.exit127, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, i64 noundef %.0234.a, i64 noundef %i.fp) #25
  unreachable

_ZNK6casadi16FunctionInternal7nnz_outEx.exit127:  ; preds = %bb.x
  %i.fq = load ptr, ptr %i.dn, align 8, !tbaa !89
  %i.fr = getelementptr inbounds nuw [32 x i8], ptr %i.fq, i64 %.0234.a
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.0234.a
  %i.ft = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.dq, ptr %10, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dq, ptr noundef nonnull align 1 dereferenceable(6) @.str.16, i64 6, i1 false)
  store i64 6, ptr %i.dr, align 8, !tbaa !19
  store i8 0, ptr %i.dv, align 2, !tbaa !21
  invoke void @_ZN6casadi13CodeGenerator4copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.fr, i64 noundef %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit127
  %i.fu = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fv = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.fu, ptr noundef nonnull @.str.10)
          to label %bb.ab unwind label %bb.ad     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.fw = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ds
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.ab
  %i.fy = load i64, ptr %i.ds, align 8, !tbaa !21
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  %i.ga = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.dq
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.gc = load i64, ptr %i.dq, align 8, !tbaa !21
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.pre = load i64, ptr %i.t, align 8, !tbaa !147
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit127
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.ds
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.ad
  %i.gi = load i64, ptr %i.ds, align 8, !tbaa !21
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ge, %bb.ac ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.gf, %bb.ad ]
  %i.gk = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.dq
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.gm = load i64, ptr %i.dq, align 8, !tbaa !21
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.go = phi i64 [ %11, %.lr.ph.split ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ] ; 2 uses
  %i.gp = add nuw nsw i64 %.0234.a, 1             ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.go
  br i1 %i.gq, label %.lr.ph.split, label %._crit_edge236, !llvm.loop !145

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %.pn52.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %.pn52.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ]
  resume { ptr, i32 } %.pn52.pn.pn.pn.pn.pn
}

declare void @_ZN6casadi13CodeGenerator5localERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6casadi13CodeGenerator4copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !159
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !15, !alias.scope !162
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !19, !alias.scope !162
  store i8 0, ptr %i.k, align 8, !tbaa !21, !alias.scope !162
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !109, !noalias !162 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !noalias !162 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110, !noalias !162 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !162 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ab = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ac = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.k
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !21
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !11
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !11
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.al, ptr %i.a, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !21
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #22
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !11
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ba) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %i.ab

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.k
  br i1 %i.be, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.y, %bb.e ], [ %i.bd, %bb.i ]
  %.pn.ph = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.bc, %bb.i ]
  %i.bf = load i64, ptr %i.k, align 8, !tbaa !21
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bg) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.bc, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bb, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1)
          to label %_ZNSolsEx.exit unwind label %bb.f ; 0 uses

_ZNSolsEx.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !15, !alias.scope !169
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !19, !alias.scope !169
  store i8 0, ptr %i.c, align 8, !tbaa !21, !alias.scope !169
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109, !noalias !169 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !169 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b
end_hunk_0
