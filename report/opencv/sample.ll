Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sample?download=true
inline.NumInlined: 266
inline.NumDeleted: 60
begin_hunk_0_@main:bb.a
          to label %.noexc125.i unwind label %bb.ad ; 2 uses

.noexc125.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i
  store ptr %i.cq, ptr %8, align 8, !tbaa !37
  %i.cr = load i64, ptr %i.i, align 8, !tbaa !36  ; 3 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.cq, ptr noundef nonnull align 1 dereferenceable(18) @.str.24, i64 18, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !35
  %i.ct = load ptr, ptr %8, align 8, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  store i32 0, ptr %i.h, align 4, !tbaa !12
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull %i.h)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %.noexc125.i
  %i.cv = load i32, ptr %i.h, align 4, !tbaa !12  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  %i.cw = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cp
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i: ; preds = %bb.q
  %i.cy = load i64, ptr %i.cp, align 8, !tbaa !11
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.da, ptr %9, align 8, !tbaa !32
  store i16 12624, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 2, ptr %i.db, align 8, !tbaa !35
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 18
  store i8 0, ptr %i.dc, align 2, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i32 0, ptr %i.g, align 4, !tbaa !12
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull %i.g)
          to label %bb.r unwind label %bb.af

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i
  %i.dd = load i32, ptr %i.g, align 4, !tbaa !12  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %i.de = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.da
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i: ; preds = %bb.r
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !11
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.di, ptr %10, align 8, !tbaa !32
  store i16 12880, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 2, ptr %i.dj, align 8, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i8 0, ptr %i.dk, align 2, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i32 0, ptr %i.f, align 4, !tbaa !12
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull %i.f)
          to label %bb.s unwind label %bb.ag

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i
  %i.dl = load i32, ptr %i.f, align 4, !tbaa !12  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %i.dm = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.di
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i: ; preds = %bb.s
  %i.do = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.dq, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i64 17, ptr %i.e, align 8, !tbaa !36
  %i.dr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc152.i unwind label %bb.ah ; 2 uses

.noexc152.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i
  store ptr %i.dr, ptr %11, align 8, !tbaa !37
  %i.ds = load i64, ptr %i.e, align 8, !tbaa !36  ; 3 uses
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.dr, ptr noundef nonnull align 1 dereferenceable(17) @.str.27, i64 17, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !35
  %i.du = load ptr, ptr %11, align 8, !tbaa !37
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  store i8 0, ptr %i.dv, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !12
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull %i.d)
          to label %bb.t unwind label %bb.ai

bb.t:                                             ; preds = %.noexc152.i
  %i.dw = load i32, ptr %i.d, align 4, !tbaa !12  ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.dx = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dq
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i: ; preds = %bb.t
  %i.dz = load i64, ptr %i.dq, align 8, !tbaa !11
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.eb, ptr %12, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.eb, ptr noundef nonnull align 1 dereferenceable(5) @.str.28, i64 5, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 5, ptr %i.ec, align 8, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 21
  store i8 0, ptr %i.ed, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !41
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext true, i32 noundef 7, ptr noundef nonnull %i.c)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i
  %i.ee = load float, ptr %i.c, align 4, !tbaa !41 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.ef = load ptr, ptr %12, align 8, !tbaa !37   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.eb
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.i: ; preds = %bb.u
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !11
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ej, ptr %14, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ej, ptr noundef nonnull align 1 dereferenceable(9) @.str.29, i64 9, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 9, ptr %i.ek, align 8, !tbaa !35
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 25
  store i8 0, ptr %i.el, align 1, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.em, ptr %13, align 8, !tbaa !32, !alias.scope !42
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 0, ptr %i.en, align 8, !tbaa !35, !alias.scope !42
  store i8 0, ptr %i.em, align 8, !tbaa !11, !alias.scope !42
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull align 8 %13)
          to label %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit.i unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load ptr, ptr %13, align 8, !tbaa !37, !alias.scope !42 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.em
  br i1 %i.eq, label %.body174.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171.i: ; preds = %bb.v
  %i.er = load i64, ptr %i.em, align 8, !tbaa !11, !alias.scope !42
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #10
  br label %.body174.i

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i
  %i.et = load i64, ptr %i.en, align 8, !tbaa !35 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 3
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !37 ; 4 uses
  br i1 %i.eu, label %bb.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

bb.w:                                             ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit.i
  %i.ev = load i16, ptr %.pre.i, align 1
  %i.ew = xor i16 %i.ev, 26483
  %i.ex = getelementptr i8, ptr %.pre.i, i64 2
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i16
  %i.fa = xor i16 %i.ez, 109
  %i.fb = or i16 %i.ew, %i.fa
  %i.fc = icmp ne i16 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %40 = icmp eq i32 %i.fd, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.w, %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit.i
  %i.fe = phi i1 [ false, %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit.i ], [ %40, %bb.w ]
  %i.ff = icmp eq ptr %.pre.i, %i.em
  br i1 %i.ff, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i177.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i177.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.fg = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.fg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.fh = load i64, ptr %i.em, align 8, !tbaa !11
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.fi) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i177.i
  %i.fj = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ej
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i
  %i.fl = load i64, ptr %i.ej, align 8, !tbaa !11
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.fn, ptr %15, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 88, ptr %i.b, align 8, !tbaa !36
  %i.fo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc184.i unwind label %bb.ak ; 3 uses

.noexc184.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i
  store ptr %i.fo, ptr %15, align 8, !tbaa !37
  %i.fp = load i64, ptr %i.b, align 8, !tbaa !36  ; 3 uses
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.fo, ptr noundef nonnull align 1 dereferenceable(88) @.str.31, i64 88, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !35
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fp
  store i8 0, ptr %i.fr, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  invoke void @_ZN2cv17CommandLineParser5aboutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.x unwind label %bb.al

bb.x:                                             ; preds = %.noexc184.i
  %i.fs = load ptr, ptr %15, align 8, !tbaa !37   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fn
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i: ; preds = %bb.x
  %i.fu = load i64, ptr %i.fn, align 8, !tbaa !11
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.fw = icmp eq i32 %i.dw, 0
  br i1 %i.fw, label %bb.y, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i
  %i.fx = icmp sgt i32 %i.cc, 5
  br i1 %i.fx, label %.invoke, label %thread-pre-split.thread.i

bb.z:                                             ; preds = %bb.a
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

bb.aa:                                            ; preds = %.noexc.i
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.s
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i: ; preds = %bb.aa
  %i.gc = load i64, ptr %i.s, align 8, !tbaa !11
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.fy, %bb.z ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i ], [ %i.fz, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.ax

.body.i:                                          ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.aw

.body92.i:                                        ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.aw

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.bz
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i: ; preds = %bb.ab
  %i.gh = load i64, ptr %i.bz, align 8, !tbaa !11
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.aw

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.ch
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.i: ; preds = %bb.ac
  %i.gm = load i64, ptr %i.ch, align 8, !tbaa !11
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.aw

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i

bb.ae:                                            ; preds = %.noexc125.i
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.cp
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i: ; preds = %bb.ae
  %i.gs = load i64, ptr %i.cp, align 8, !tbaa !11
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i, %bb.ad
  %.pn64.i = phi { ptr, i32 } [ %i.go, %bb.ad ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i ], [ %i.gp, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.aw

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %i.gv = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.da
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202.i: ; preds = %bb.af
  %i.gx = load i64, ptr %i.da, align 8, !tbaa !11
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.aw

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  %i.ha = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.di
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205.i: ; preds = %bb.ag
  %i.hc = load i64, ptr %i.di, align 8, !tbaa !11
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.aw

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.i

bb.ai:                                            ; preds = %.noexc152.i
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
end_hunk_0
begin_hunk_1_@main:bb.a
bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.ja, %bb.bj ], [ %i.iz, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #9
  br label %bb.en

bb.bl:                                            ; preds = %bb.bb
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #9
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn40 = phi { ptr, i32 } [ %i.jc, %bb.bm ], [ %i.jb, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #9
  br label %bb.en

bb.bo:                                            ; preds = %bb.bg
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %bb.bo
  %i.je = load ptr, ptr %1, align 8, !tbaa !43    ; 3 uses
  %.not.i77 = icmp eq ptr %i.je, null
  br i1 %.not.i77, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.jf = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %i.jg = getelementptr i8, ptr %i.jf, i64 -24
  %i.jh = load i64, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !52
  %i.jl = or i32 %i.jk, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ji, i32 noundef %i.jl)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.cr

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.jm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.je) #9
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.je, i64 noundef %i.jm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %bb.bp, %bb.bq
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  %i.jp = load ptr, ptr %16, align 8, !tbaa !37
  %i.jq = load i64, ptr %i.p, align 8, !tbaa !35
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.jp, i64 noundef %i.jq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.cr ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull @.str.11, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.ju = load ptr, ptr %17, align 8, !tbaa !37
  %i.jv = load i64, ptr %i.r, align 8, !tbaa !35
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef %i.ju, i64 noundef %i.jv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88 unwind label %bb.cr

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.cc)
          to label %bb.br unwind label %bb.cr     ; 3 uses

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %bb.br
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull @.str.14, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.kc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, i32 noundef %i.ck)
          to label %bb.bs unwind label %bb.cr     ; 3 uses

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %bb.bs
  %i.ke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef nonnull @.str.15, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, i32 noundef %i.cv)
          to label %bb.bt unwind label %bb.cr     ; 3 uses

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %bb.bt
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull @.str.16, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.ki = fpext float %i.ee to double
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, double noundef %i.ki)
          to label %_ZNSolsEf.exit unwind label %bb.cr ; 4 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %_ZNSolsEf.exit
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull @.str.17, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.km = sext i32 %i.dw to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr @__const.main.b, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !43 ; 2 uses
  %i.kp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ko) #9
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull %i.ko, i64 noundef %i.kp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #9
  %i.ks = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !59
  %i.ku = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !60
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef %i.kt, i32 noundef %i.kv, i32 noundef 3)
          to label %bb.bu unwind label %bb.cs

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #9
  %i.kw = load i32, ptr %i.ks, align 8, !tbaa !59
  %i.kx = load i32, ptr %i.ku, align 4, !tbaa !60
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %23, i32 noundef %i.kw, i32 noundef %i.kx, i32 noundef 0)
          to label %.noexc.i116 unwind label %bb.ct

.noexc.i116:                                      ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #9
  %i.ky = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.ky, ptr %24, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 19, ptr %i.a, align 8, !tbaa !36
  %i.kz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc117 unwind label %bb.cu ; 2 uses

.noexc117:                                        ; preds = %.noexc.i116
  store ptr %i.kz, ptr %24, align 8, !tbaa !37
  %i.la = load i64, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  store i64 %i.la, ptr %i.ky, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.kz, ptr noundef nonnull align 1 dereferenceable(19) @.str.18, i64 19, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !35
  %i.lc = load ptr, ptr %24, align 8, !tbaa !37
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.la
  store i8 0, ptr %i.ld, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #9
  %i.le = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.le, align 8, !tbaa !62
  %i.lf = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.lf, align 4, !tbaa !63
  store i32 16842752, ptr %25, align 8, !tbaa !65
  %i.lg = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %18, ptr %i.lg, align 8, !tbaa !66
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.bv unwind label %bb.cv

bb.bv:                                            ; preds = %.noexc117
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #9
  %i.lh = load ptr, ptr %24, align 8, !tbaa !37   ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.ky
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.bv
  %i.lj = load i64, ptr %i.ky, align 8, !tbaa !11
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.lk) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #9
  br i1 %i.fe, label %bb.dc, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #9
  invoke void @_ZN2cv6stereo14StereoBinaryBM6createEii(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %26, i32 noundef %i.ck, i32 noundef %i.cc)
          to label %bb.bx unwind label %bb.cw

bb.bx:                                            ; preds = %bb.bw
  %i.ll = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !14
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 208
  %i.lo = load ptr, ptr %i.ln, align 8
  invoke void %i.lo(ptr noundef nonnull align 8 dereferenceable(8) %i.ll, i32 noundef 31)
          to label %bb.by unwind label %bb.cx

bb.by:                                            ; preds = %bb.bx
  %i.lp = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !14
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 80
  %i.ls = load ptr, ptr %i.lr, align 8
  invoke void %i.ls(ptr noundef nonnull align 8 dereferenceable(8) %i.lp, i32 noundef 0)
          to label %bb.bz unwind label %bb.cx

bb.bz:                                            ; preds = %bb.by
  %i.lt = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !14
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 224
  %i.lw = load ptr, ptr %i.lv, align 8
  invoke void %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, i32 noundef 10)
          to label %bb.ca unwind label %bb.cx

bb.ca:                                            ; preds = %bb.bz
  %i.lx = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !14
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 240
  %i.ma = load ptr, ptr %i.lz, align 8
  invoke void %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, i32 noundef 0)
          to label %bb.cb unwind label %bb.cx

bb.cb:                                            ; preds = %bb.ca
  %i.mb = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !14
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 128
  %i.me = load ptr, ptr %i.md, align 8
  invoke void %i.me(ptr noundef nonnull align 8 dereferenceable(8) %i.mb, i32 noundef 400)
          to label %bb.cc unwind label %bb.cx

bb.cc:                                            ; preds = %bb.cb
  %i.mf = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !14
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 144
  %i.mi = load ptr, ptr %i.mh, align 8
  invoke void %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, i32 noundef 200)
          to label %bb.cd unwind label %bb.cx

bb.cd:                                            ; preds = %bb.cc
  %i.mj = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !14
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 160
  %i.mm = load ptr, ptr %i.ml, align 8
  invoke void %i.mm(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, i32 noundef 0)
          to label %bb.ce unwind label %bb.cx

bb.ce:                                            ; preds = %bb.cd
  %i.mn = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.mo = fptosi float %i.ee to i32
  %i.mp = load ptr, ptr %i.mn, align 8, !tbaa !14
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 272
  %i.mr = load ptr, ptr %i.mq, align 8
  invoke void %i.mr(ptr noundef nonnull align 8 dereferenceable(8) %i.mn, i32 noundef %i.mo)
          to label %bb.cf unwind label %bb.cx

bb.cf:                                            ; preds = %bb.ce
  %i.ms = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !14
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 320
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, i32 noundef %i.dw)
          to label %bb.cg unwind label %bb.cx

bb.cg:                                            ; preds = %bb.cf
  %i.mw = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !14
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 336
  %i.mz = load ptr, ptr %i.my, align 8
  invoke void %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, i32 noundef %i.cv)
          to label %bb.ch unwind label %bb.cx

bb.ch:                                            ; preds = %bb.cg
  %i.na = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !14
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 288
  %i.nd = load ptr, ptr %i.nc, align 8
  invoke void %i.nd(ptr noundef nonnull align 8 dereferenceable(8) %i.na, i32 noundef 1)
          to label %bb.ci unwind label %bb.cx

bb.ci:                                            ; preds = %bb.ch
  %i.ne = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !14
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 304
  %i.nh = load ptr, ptr %i.ng, align 8
  invoke void %i.nh(ptr noundef nonnull align 8 dereferenceable(8) %i.ne, i1 noundef zeroext false)
          to label %bb.cj unwind label %bb.cx

bb.cj:                                            ; preds = %bb.ci
  %i.ni = load ptr, ptr %26, align 8, !tbaa !69   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #9
  %i.nj = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 0, ptr %i.nj, align 8, !tbaa !62
  %i.nk = getelementptr inbounds nuw i8, ptr %27, i64 20
  store i32 0, ptr %i.nk, align 4, !tbaa !63
  store i32 16842752, ptr %27, align 8, !tbaa !65
  %i.nl = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %18, ptr %i.nl, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #9
  %i.nm = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 0, ptr %i.nm, align 8, !tbaa !62
  %i.nn = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 0, ptr %i.nn, align 4, !tbaa !63
  store i32 16842752, ptr %28, align 8, !tbaa !65
  %i.no = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %19, ptr %i.no, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #9
  %i.np = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 0, ptr %i.nq, align 8
  store i32 33619968, ptr %29, align 8, !tbaa !65
  store ptr %23, ptr %i.np, align 8, !tbaa !66
  %i.nr = load ptr, ptr %i.ni, align 8, !tbaa !14
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 64
  %i.nt = load ptr, ptr %i.ns, align 8
  invoke void %i.nt(ptr noundef nonnull align 8 dereferenceable(8) %i.ni, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %._crit_edge.i.i120 unwind label %bb.cy

._crit_edge.i.i120:                               ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #9
  %i.nu = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.nu, ptr %30, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.nu, ptr noundef nonnull align 1 dereferenceable(9) @.str.19, i64 9, i1 false)
  %i.nv = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 9, ptr %i.nv, align 8, !tbaa !35
  %i.nw = getelementptr inbounds nuw i8, ptr %30, i64 25
  store i8 0, ptr %i.nw, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #9
  %i.nx = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 0, ptr %i.nx, align 8, !tbaa !62
  %i.ny = getelementptr inbounds nuw i8, ptr %31, i64 20
  store i32 0, ptr %i.ny, align 4, !tbaa !63
  store i32 16842752, ptr %31, align 8, !tbaa !65
  %i.nz = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %23, ptr %i.nz, align 8, !tbaa !66
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.ck unwind label %bb.cz

bb.ck:                                            ; preds = %._crit_edge.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #9
  %i.oa = load ptr, ptr %30, align 8, !tbaa !37   ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.nu
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.ck
  %i.oc = load i64, ptr %i.nu, align 8, !tbaa !11
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #9
  %i.oe = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !17 ; 8 uses
  %.not.i.i127 = icmp eq ptr %i.of, null
  br i1 %.not.i.i127, label %_ZNSt12__shared_ptrIN2cv6stereo14StereoBinaryBMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 4 uses
  %i.oh = load atomic i64, ptr %i.og acquire, align 8 ; 2 uses
  %i.oi = icmp eq i64 %i.oh, 4294967297
  %i.oj = trunc i64 %i.oh to i32                  ; 2 uses
  br i1 %i.oi, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.og, align 8, !tbaa !19
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 12
  store i32 0, ptr %i.ok, align 4, !tbaa !20
  %i.ol = load ptr, ptr %i.of, align 8, !tbaa !14
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(16) %i.of) #9, !inline_history !28
  %i.oo = load ptr, ptr %i.of, align 8, !tbaa !14
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(16) %i.of) #9, !inline_history !28
  br label %_ZNSt12__shared_ptrIN2cv6stereo14StereoBinaryBMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cn:                                            ; preds = %bb.cl
  %i.or = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i = icmp eq i8 %i.or, 0
  br i1 %.not.i.i.i, label %bb.cp, label %bb.co
end_hunk_1
