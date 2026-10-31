Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/database-sqlite3?download=true
inline.NumInlined: 1402
inline.NumDeleted: 419
begin_hunk_0_@_ZN21PlayerDatabaseSQLite314initStatementsEv:.noexc.i
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.ah
  %i.ot = load i64, ptr %i.ia, align 8, !tbaa !55
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ou) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325, %bb.ag
  %.pn60 = phi { ptr, i32 } [ %i.op, %bb.ag ], [ %i.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ], [ %i.oq, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.aq

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

bb.aj:                                            ; preds = %.invoke425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit241
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = load ptr, ptr %11, align 8, !tbaa !65   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.iy
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %bb.aj
  %i.oz = load i64, ptr %i.iy, align 8, !tbaa !55
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328, %bb.ai
  %.pn62 = phi { ptr, i32 } [ %i.ov, %bb.ai ], [ %i.ow, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328 ], [ %i.ow, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.aq

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

bb.al:                                            ; preds = %.invoke427, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit258
  %i.pc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pd = load ptr, ptr %12, align 8, !tbaa !65   ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.jw
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %bb.al
  %i.pf = load i64, ptr %i.jw, align 8, !tbaa !55
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331, %bb.ak
  %.pn64 = phi { ptr, i32 } [ %i.pb, %bb.ak ], [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331 ], [ %i.pc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.aq

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

bb.an:                                            ; preds = %.invoke429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit275
  %i.pi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pj = load ptr, ptr %13, align 8, !tbaa !65   ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.ku
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %bb.an
  %i.pl = load i64, ptr %i.ku, align 8, !tbaa !55
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334, %bb.am
  %.pn66 = phi { ptr, i32 } [ %i.ph, %bb.am ], [ %i.pi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334 ], [ %i.pi, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.aq

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

bb.ap:                                            ; preds = %.invoke431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit292
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pp = load ptr, ptr %14, align 8, !tbaa !65   ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.ls
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %bb.ap
  %i.pr = load i64, ptr %i.ls, align 8, !tbaa !55
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337, %bb.ao
  %.pn68 = phi { ptr, i32 } [ %i.pn, %bb.ao ], [ %i.po, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %i.po, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339 ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333 ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330 ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ]
  resume { ptr, i32 } %.pn68.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN21PlayerDatabaseSQLite316playerDataExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(240) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.f = load ptr, ptr %1, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @sqlite3_bind_text(ptr noundef %i.e, i32 noundef 1, ptr noundef %i.f, i32 noundef %i.i, ptr noundef null)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.j, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.l = tail call i32 @sqlite3_step(ptr noundef %i.k)
  %i.m = icmp eq i32 %i.l, 100
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.o = tail call i32 @sqlite3_reset(ptr noundef %i.n) ; 0 uses
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21PlayerDatabaseSQLite310savePlayerEP12RemotePlayer(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !317  ; 16 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 482, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN21PlayerDatabaseSQLite310savePlayerEP12RemotePlayer) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.c, align 8, !tbaa !318 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !318 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 9 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(240) %0), !inline_history !108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 9 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !66
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call i32 @sqlite3_bind_text(ptr noundef %i.i, i32 noundef 1, ptr noundef %i.j, i32 noundef %i.m, ptr noundef null)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %i.n, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.p = tail call i32 @sqlite3_step(ptr noundef %i.o)
  %i.q = icmp eq i32 %i.p, 100
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.s = tail call i32 @sqlite3_reset(ptr noundef %i.r) ; 0 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !32
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(240) %0)
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.y = load i64, ptr %i.k, align 8, !tbaa !66
  %i.z = trunc i64 %i.y to i32
  %i.aa = tail call i32 @sqlite3_bind_text(ptr noundef %i.w, i32 noundef 1, ptr noundef %i.x, i32 noundef %i.z, ptr noundef null)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.aa, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1140
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !319
  %i.ae = fpext nsz float %i.ad to double
  %i.af = tail call i32 @sqlite3_bind_double(ptr noundef %i.ab, i32 noundef 2, double noundef %i.ae)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.af, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !320
  %i.aj = fpext nsz float %i.ai to double
  %i.ak = tail call i32 @sqlite3_bind_double(ptr noundef %i.ag, i32 noundef 3, double noundef %i.aj)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ak, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.am = fpext nsz <2 x float> %.sroa.01.0.copyload.i to <2 x double> ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = tail call i32 @sqlite3_bind_double(ptr noundef %i.al, i32 noundef 4, double noundef %i.an)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ao, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.aq = extractelement <2 x double> %i.am, i64 1
  %i.ar = tail call i32 @sqlite3_bind_double(ptr noundef %i.ap, i32 noundef 5, double noundef %i.aq)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ar, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.at = fpext nsz float %.sroa.22.0.copyload.i to double
  %i.au = tail call i32 @sqlite3_bind_double(ptr noundef %i.as, i32 noundef 6, double noundef %i.at)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.au, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 224
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef zeroext i16 %i.ay(ptr noundef nonnull align 8 dereferenceable(954) %i.b)
  %i.ba = zext i16 %i.az to i64
  %i.bb = tail call i32 @sqlite3_bind_int64(ptr noundef %i.av, i32 noundef 7, i64 noundef %i.ba)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.bb, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 1138
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !321
  %i.bf = zext i16 %i.be to i64
  %i.bg = tail call i32 @sqlite3_bind_int64(ptr noundef %i.bc, i32 noundef 8, i64 noundef %i.bf)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.bg, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 9 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1140
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !319
  %i.bl = fpext nsz float %i.bk to double
  %i.bm = tail call i32 @sqlite3_bind_double(ptr noundef %i.bi, i32 noundef 1, double noundef %i.bl)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.bm, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !320
  %i.bq = fpext nsz float %i.bp to double
  %i.br = tail call i32 @sqlite3_bind_double(ptr noundef %i.bn, i32 noundef 2, double noundef %i.bq)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.br, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bt = fpext nsz <2 x float> %.sroa.01.0.copyload.i to <2 x double> ; 2 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 0
  %i.bv = tail call i32 @sqlite3_bind_double(ptr noundef %i.bs, i32 noundef 3, double noundef %i.bu)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.bv, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.bw = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bx = extractelement <2 x double> %i.bt, i64 1
  %i.by = tail call i32 @sqlite3_bind_double(ptr noundef %i.bw, i32 noundef 4, double noundef %i.bx)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.by, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.bz = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.ca = fpext nsz float %.sroa.22.0.copyload.i to double
  %i.cb = tail call i32 @sqlite3_bind_double(ptr noundef %i.bz, i32 noundef 5, double noundef %i.ca)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.cb, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 224
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef zeroext i16 %i.cf(ptr noundef nonnull align 8 dereferenceable(954) %i.b)
  %i.ch = zext i16 %i.cg to i64
  %i.ci = tail call i32 @sqlite3_bind_int64(ptr noundef %i.cc, i32 noundef 6, i64 noundef %i.ch)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ci, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.cj = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 1138
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !321
  %i.cm = zext i16 %i.cl to i64
  %i.cn = tail call i32 @sqlite3_bind_int64(ptr noundef %i.cj, i32 noundef 7, i64 noundef %i.cm)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.cn, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.co = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.cq = load i64, ptr %i.k, align 8, !tbaa !66
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = tail call i32 @sqlite3_bind_text(ptr noundef %i.co, i32 noundef 8, ptr noundef %i.cp, i32 noundef %i.cr, ptr noundef null)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.cs, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.in = phi ptr [ %i.bh, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %.sink265 = load ptr, ptr %.sink.in, align 8, !tbaa !71
  %i.ct = tail call i32 @sqlite3_step(ptr noundef %.sink265)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ct, i64 0, ptr nonnull @.str.70, i32 noundef 101)
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !71
  %i.cu = tail call i32 @sqlite3_reset(ptr noundef %.sink) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !91
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.cy = load i64, ptr %i.k, align 8, !tbaa !66
  %i.cz = trunc i64 %i.cy to i32
  %i.da = tail call i32 @sqlite3_bind_text(ptr noundef %i.cw, i32 noundef 1, ptr noundef %i.cx, i32 noundef %i.cz, ptr noundef null)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.da, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !91
  %i.dc = tail call i32 @sqlite3_step(ptr noundef %i.db)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.dc, i64 0, ptr nonnull @.str.70, i32 noundef 101)
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !91
  %i.de = tail call i32 @sqlite3_reset(ptr noundef %i.dd) ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !92
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.di = load i64, ptr %i.k, align 8, !tbaa !66
  %i.dj = trunc i64 %i.di to i32
  %i.dk = tail call i32 @sqlite3_bind_text(ptr noundef %i.dg, i32 noundef 1, ptr noundef %i.dh, i32 noundef %i.dj, ptr noundef null)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.dk, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !92
  %i.dm = tail call i32 @sqlite3_step(ptr noundef %i.dl)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.dm, i64 0, ptr nonnull @.str.70, i32 noundef 101)
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !92
  %i.do = tail call i32 @sqlite3_reset(ptr noundef %i.dn) ; 0 uses
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 336
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(1226) %i.b) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !322
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !323 ; 2 uses
  %.not231 = icmp eq ptr %i.du, %i.dv
  br i1 %.not231, label %._crit_edge230, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.g

._crit_edge230:                                   ; preds = %._crit_edge, %bb.f
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !97
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.en = load i64, ptr %i.k, align 8, !tbaa !66
  %i.eo = trunc i64 %i.en to i32
  %i.ep = invoke i32 @sqlite3_bind_text(ptr noundef %i.el, i32 noundef 1, ptr noundef %i.em, i32 noundef %i.eo, ptr noundef null)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge230
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ep, i64 0, ptr nonnull @.str.70, i32 noundef 0)
          to label %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.lr.ph, %._crit_edge
  %i.eq = phi ptr [ %i.dv, %.lr.ph ], [ %i.gl, %._crit_edge ]
  %i.er = phi i64 [ 0, %.lr.ph ], [ %i.gj, %._crit_edge ]
  %.0228 = phi i16 [ 0, %.lr.ph ], [ %i.gi, %._crit_edge ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !325 ; 8 uses
  %i.eu = load ptr, ptr %i.dw, align 8, !tbaa !89
  %i.ev = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.ew = load i64, ptr %i.k, align 8, !tbaa !66
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = invoke i32 @sqlite3_bind_text(ptr noundef %i.eu, i32 noundef 1, ptr noundef %i.ev, i32 noundef %i.ex, ptr noundef null)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %bb.g
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ey, i64 0, ptr nonnull @.str.70, i32 noundef 0)
          to label %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit114: ; preds = %.noexc112
  %i.ez = load ptr, ptr %i.dw, align 8, !tbaa !89
  %i.fa = zext i16 %.0228 to i32                  ; 2 uses
  %i.fb = invoke i32 @sqlite3_bind_int(ptr noundef %i.ez, i32 noundef 2, i32 noundef %i.fa)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit114
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.fb, i64 0, ptr nonnull @.str.70, i32 noundef 0)
          to label %_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit: ; preds = %.noexc115
  %i.fc = load ptr, ptr %i.dw, align 8, !tbaa !89
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 60
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !332
  %i.ff = invoke i32 @sqlite3_bind_int(ptr noundef %i.fc, i32 noundef 3, i32 noundef %i.fe)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ff, i64 0, ptr nonnull @.str.70, i32 noundef 0)
          to label %_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit119: ; preds = %.noexc117
  %i.fg = load ptr, ptr %i.dw, align 8, !tbaa !89
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !65
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !66
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = invoke i32 @sqlite3_bind_text(ptr noundef %i.fg, i32 noundef 4, ptr noundef %i.fi, i32 noundef %i.fl, ptr noundef null)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit119
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.fm, i64 0, ptr nonnull @.str.70, i32 noundef 0)
          to label %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit124: ; preds = %.noexc122
  %i.fn = load ptr, ptr %i.dw, align 8, !tbaa !89
  %i.fo = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !333
  %i.fq = load ptr, ptr %i.et, align 8, !tbaa !334
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = sdiv exact i64 %i.ft, 296
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = invoke i32 @sqlite3_bind_int(ptr noundef %i.fn, i32 noundef 5, i32 noundef %i.fv)
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125:                                        ; preds = %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit124
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.fw, i64 0, ptr nonnull @.str.70, i32 noundef 0)
          to label %_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit127: ; preds = %.noexc125
  %i.fx = load ptr, ptr %i.dw, align 8, !tbaa !89
  %i.fy = invoke i32 @sqlite3_step(ptr noundef %i.fx)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit127
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.fy, i64 0, ptr nonnull @.str.70, i32 noundef 101)
          to label %_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.h
  %i.fz = load ptr, ptr %i.dw, align 8, !tbaa !89
  %i.ga = invoke i32 @sqlite3_reset(ptr noundef %i.fz)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.gb = load ptr, ptr %i.fo, align 8, !tbaa !333
  %i.gc = load ptr, ptr %i.et, align 8, !tbaa !334
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = sdiv exact i64 %i.gf, 296
  %i.gh = and i64 %i.gg, 4294967295
  %.not232 = icmp eq i64 %i.gh, 0
  br i1 %.not232, label %._crit_edge, label %._crit_edge.i.i

end_hunk_0
begin_hunk_1_@_ZN21PlayerDatabaseSQLite310savePlayerEP12RemotePlayer:bb.a

_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit160: ; preds = %bb.y
  %i.jx = load ptr, ptr %i.ek, align 8, !tbaa !97
  %i.jy = invoke i32 @sqlite3_reset(ptr noundef %i.jx)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.z:                                             ; preds = %_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit160
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 1152
  %i.ka = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK14SimpleMetadata10getStringsEPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.jz, ptr noundef null)
          to label %_ZNK14SimpleMetadata10getStringsB5cxx11Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK14SimpleMetadata10getStringsB5cxx11Ev.exit:   ; preds = %bb.z
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit178, %_ZNK14SimpleMetadata10getStringsB5cxx11Ev.exit
  %.sroa.0183.0.in = phi ptr [ %i.kb, %_ZNK14SimpleMetadata10getStringsB5cxx11Ev.exit ], [ %.sroa.0183.0, %_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit178 ]
  %.sroa.0183.0 = load ptr, ptr %.sroa.0183.0.in, align 8, !tbaa !181 ; 6 uses
  %.not201 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not201, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kd = load ptr, ptr %0, align 8, !tbaa !32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void %i.kf(ptr noundef nonnull align 8 dereferenceable(240) %0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 8
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !96
  %i.ki = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.kj = load i64, ptr %i.k, align 8, !tbaa !66
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = invoke i32 @sqlite3_bind_text(ptr noundef %i.kh, i32 noundef 1, ptr noundef %i.ki, i32 noundef %i.kk, ptr noundef null)
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc164:                                        ; preds = %bb.ac
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.kl, i64 0, ptr nonnull @.str.70, i32 noundef 0)
          to label %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit166: ; preds = %.noexc164
  %i.km = load ptr, ptr %i.kc, align 8, !tbaa !96
  %i.kn = load ptr, ptr %i.kg, align 8, !tbaa !65
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 16
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !66
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = invoke i32 @sqlite3_bind_text(ptr noundef %i.km, i32 noundef 2, ptr noundef %i.kn, i32 noundef %i.kq, ptr noundef null)
          to label %.noexc169 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc169:                                        ; preds = %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit166
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.kr, i64 0, ptr nonnull @.str.70, i32 noundef 0)
          to label %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit171: ; preds = %.noexc169
  %i.ks = load ptr, ptr %i.kc, align 8, !tbaa !96
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !65
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 48
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !66
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = invoke i32 @sqlite3_bind_text(ptr noundef %i.ks, i32 noundef 3, ptr noundef %i.ku, i32 noundef %i.kx, ptr noundef null)
          to label %.noexc174 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc174:                                        ; preds = %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit171
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ky, i64 0, ptr nonnull @.str.70, i32 noundef 0)
          to label %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit176 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit176: ; preds = %.noexc174
  %i.kz = load ptr, ptr %i.kc, align 8, !tbaa !96
  %i.la = invoke i32 @sqlite3_step(ptr noundef %i.kz)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit176
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.la, i64 0, ptr nonnull @.str.70, i32 noundef 101)
          to label %_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit178: ; preds = %bb.ad
  %i.lb = load ptr, ptr %i.kc, align 8, !tbaa !96
  %i.lc = invoke i32 @sqlite3_reset(ptr noundef %i.lb)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit176, %_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit178, %bb.ac, %.noexc164, %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit166, %.noexc169, %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit171, %.noexc174, %bb.ad, %_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit127, %bb.g, %.noexc112, %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit114, %.noexc115, %_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit, %.noexc117, %_ZNK16Database_SQLite313int_to_sqliteEP12sqlite3_stmtii.exit119, %.noexc122, %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit124, %.noexc125, %bb.h, %bb.ab, %bb.ae, %_ZNK16Database_SQLite313str_to_sqliteEP12sqlite3_stmtiSt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNK16Database_SQLite312sqlite3_vrfyEiiSt17basic_string_viewIcSt11char_traitsIcEE.exit160, %._crit_edge230, %.noexc, %bb.y, %bb.z
  %lpad.loopexit.split-lp276 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ab
  invoke void @_ZN12RemotePlayer16onSuccessfulSaveEv(ptr noundef nonnull align 8 dereferenceable(1002) %1)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.ld = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ld, ptr %5, align 8, !tbaa !32
  %i.le = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.lf = getelementptr i8, ptr %i.ld, i64 -24
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds i8, ptr %5, i64 %i.lg
  store ptr %i.le, ptr %i.lh, align 8, !tbaa !32
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.li, align 8, !tbaa !32
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !65 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.af
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !55
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.li, align 8, !tbaa !32
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lp) #28
  %i.lq = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.lq) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %.pn94.pn.pn.pn = phi { ptr, i32 } [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.pn94, %.body ], [ %lpad.loopexit.split-lp276, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn94.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare void @_ZNK9ItemStack9serializeERSob(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN12RemotePlayer16onSuccessfulSaveEv(ptr noundef nonnull align 8 dereferenceable(1002)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: uwtable
define dso_local void @_ZThn120_N21PlayerDatabaseSQLite310savePlayerEP12RemotePlayer(ptr noundef %0, ptr noundef %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -120
  tail call void @_ZN21PlayerDatabaseSQLite310savePlayerEP12RemotePlayer(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN21PlayerDatabaseSQLite310loadPlayerEP12RemotePlayerP9PlayerSAO(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %struct.ItemStack, align 8          ; 28 uses
  %6 = alloca %struct.ItemStack, align 8          ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(240) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !66
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call i32 @sqlite3_bind_text(ptr noundef %i.h, i32 noundef 1, ptr noundef %i.j, i32 noundef %i.m, ptr noundef null)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.n, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.p = tail call i32 @sqlite3_step(ptr noundef %i.o)
  %.not = icmp eq i32 %i.p, 100                   ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 @sqlite3_reset(ptr noundef %i.q) ; 0 uses
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.s = tail call nsz double @sqlite3_column_double(ptr noundef %i.q, i32 noundef 0)
  %i.t = fptrunc nsz double %i.s to float
  tail call void @_ZN9PlayerSAO12setLookPitchEf(ptr noundef nonnull align 8 dereferenceable(1226) %2, float noundef %i.t)
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.v = tail call nsz double @sqlite3_column_double(ptr noundef %i.u, i32 noundef 1)
  %i.w = fptrunc nsz double %i.v to float
  tail call void @_ZN9PlayerSAO12setPlayerYawEf(ptr noundef nonnull align 8 dereferenceable(1226) %2, float noundef %i.w)
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !84   ; 3 uses
  %i.y = tail call nsz double @sqlite3_column_double(ptr noundef %i.x, i32 noundef 2)
  %i.z = tail call nsz double @sqlite3_column_double(ptr noundef %i.x, i32 noundef 3)
  %i.aa = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.z, i64 1
  %i.ac = fptrunc nsz <2 x double> %i.ab to <2 x float>
  %i.ad = tail call nsz double @sqlite3_column_double(ptr noundef %i.x, i32 noundef 4)
  %i.ae = fptrunc nsz double %i.ad to float
  tail call void @_ZN9PlayerSAO15setBasePositionEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(1226) %2, <2 x float> %i.ac, float %i.ae)
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.ag = tail call noundef i32 @sqlite3_column_int(ptr noundef %i.af, i32 noundef 5)
  %i.ah = icmp slt i32 %i.ag, 65535
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.aj = tail call noundef i32 @sqlite3_column_int(ptr noundef %i.ai, i32 noundef 5)
  %i.ak = trunc i32 %i.aj to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.al = phi i16 [ %i.ak, %bb.d ], [ -1, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 324
  store i16 %i.al, ptr %i.am, align 4, !tbaa !352
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.ao = tail call noundef i32 @sqlite3_column_int(ptr noundef %i.an, i32 noundef 6)
  %i.ap = icmp slt i32 %i.ao, 65535
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.ar = tail call noundef i32 @sqlite3_column_int(ptr noundef %i.aq, i32 noundef 6)
  %i.as = trunc i32 %i.ar to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.at = phi i16 [ %i.as, %bb.f ], [ -1, %bb.e ]
  tail call void @_ZN9PlayerSAO9setBreathEtb(ptr noundef nonnull align 8 dereferenceable(1226) %2, i16 noundef zeroext %i.at, i1 noundef zeroext false)
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.av = tail call i32 @sqlite3_reset(ptr noundef %i.au) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 8 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !93
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.az = load i64, ptr %i.k, align 8, !tbaa !66
  %i.ba = trunc i64 %i.az to i32
  %i.bb = tail call i32 @sqlite3_bind_text(ptr noundef %i.ax, i32 noundef 1, ptr noundef %i.ay, i32 noundef %i.ba, ptr noundef null)
  tail call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.bb, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !93
  %i.bd = tail call i32 @sqlite3_step(ptr noundef %i.bc)
  %i.be = icmp eq i32 %i.bd, 100
  br i1 %i.be, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 6 uses
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 8), align 8 ; 3 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 16), align 8 ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 -80    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 288 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.cd = load ptr, ptr @_ZTT17ItemStackMetadata, align 8 ; 3 uses
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 24), align 8 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 -80    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 248
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 144
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph110, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.cz = load ptr, ptr %i.aw, align 8, !tbaa !93
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.da = call ptr @sqlite3_column_text(ptr noundef %i.cz, i32 noundef 2), !noalias !353 ; 4 uses
  %.not.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.thread.i, label %bb.i

._crit_edge.i.i.i.i.thread.i:                     ; preds = %bb.h
  store ptr %i.bf, ptr %3, align 8, !tbaa !64, !alias.scope !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !353
  store i64 0, ptr %i.c, align 8, !tbaa !13, !noalias !353
  br label %_ZN16Database_SQLite316sqlite_to_stringB5cxx11EP12sqlite3_stmti.exit

bb.i:                                             ; preds = %bb.h
  %i.db = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.da) #28, !noalias !353 ; 4 uses
  store ptr %i.bf, ptr %3, align 8, !tbaa !64, !alias.scope !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !353
  store i64 %i.db, ptr %i.c, align 8, !tbaa !13, !noalias !353
  %i.dc = icmp ugt i64 %i.db, 15
  br i1 %i.dc, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.i
  %i.dd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.dd, ptr %3, align 8, !tbaa !65, !alias.scope !353
  %i.de = load i64, ptr %i.c, align 8, !tbaa !13, !noalias !353
  store i64 %i.de, ptr %i.bf, align 8, !tbaa !55, !alias.scope !353
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.i
  %i.df = phi ptr [ %i.dd, %.noexc.i.i.i.i ], [ %i.bf, %bb.i ] ; 2 uses
  switch i64 %i.db, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN16Database_SQLite316sqlite_to_stringB5cxx11EP12sqlite3_stmti.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !55
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !55
  br label %_ZN16Database_SQLite316sqlite_to_stringB5cxx11EP12sqlite3_stmti.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr nonnull align 1 %i.da, i64 %i.db, i1 false)
  br label %_ZN16Database_SQLite316sqlite_to_stringB5cxx11EP12sqlite3_stmti.exit

_ZN16Database_SQLite316sqlite_to_stringB5cxx11EP12sqlite3_stmti.exit: ; preds = %._crit_edge.i.i.i.i.thread.i, %._crit_edge.i.i.i.i.i, %bb.j, %bb.k
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !13, !noalias !353 ; 2 uses
  store i64 %i.dh, ptr %i.bg, align 8, !tbaa !66, !alias.scope !353
  %i.di = load ptr, ptr %3, align 8, !tbaa !65, !alias.scope !353
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 0, ptr %i.dj, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !353
  %i.dk = load ptr, ptr %i.aw, align 8, !tbaa !93
  %i.dl = invoke noundef i32 @sqlite3_column_int(ptr noundef %i.dk, i32 noundef 3)
          to label %_ZN16Database_SQLite314sqlite_to_uintEP12sqlite3_stmti.exit unwind label %bb.ae

_ZN16Database_SQLite314sqlite_to_uintEP12sqlite3_stmti.exit: ; preds = %_ZN16Database_SQLite316sqlite_to_stringB5cxx11EP12sqlite3_stmti.exit
  %i.dm = invoke noundef ptr @_ZN9Inventory7addListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(33) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.dl)
          to label %bb.l unwind label %bb.ae      ; 2 uses

bb.l:                                             ; preds = %_ZN16Database_SQLite314sqlite_to_uintEP12sqlite3_stmti.exit
  %i.dn = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bf
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.dp = load i64, ptr %i.bf, align 8, !tbaa !55
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.dr = load ptr, ptr %i.aw, align 8, !tbaa !93
  %i.ds = call noundef i32 @sqlite3_column_int(ptr noundef %i.dr, i32 noundef 1)
  call void @_ZN13InventoryList8setWidthEj(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, i32 noundef %i.ds)
  %i.dt = load ptr, ptr %i.aw, align 8, !tbaa !93
  %i.du = call noundef i32 @sqlite3_column_int(ptr noundef %i.dt, i32 noundef 0)
  %i.dv = load ptr, ptr %i.bi, align 8, !tbaa !94
  %i.dw = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.dx = load i64, ptr %i.k, align 8, !tbaa !66
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = call i32 @sqlite3_bind_text(ptr noundef %i.dv, i32 noundef 1, ptr noundef %i.dw, i32 noundef %i.dy, ptr noundef null)
  call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.dz, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.ea = load ptr, ptr %i.bi, align 8, !tbaa !94
  %i.eb = call i32 @sqlite3_bind_int(ptr noundef %i.ea, i32 noundef 2, i32 noundef %i.du)
  call void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.eb, i64 0, ptr nonnull @.str.70, i32 noundef 0)
  %i.ec = load ptr, ptr %i.bi, align 8, !tbaa !94
  %i.ed = call i32 @sqlite3_step(ptr noundef %i.ec)
  %i.ee = icmp eq i32 %i.ed, 100
  br i1 %i.ee, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ef = load ptr, ptr %i.bi, align 8, !tbaa !94
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.eg = call ptr @sqlite3_column_text(ptr noundef %i.ef, i32 noundef 1), !noalias !354 ; 4 uses
  %.not.i.i46 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i46, label %._crit_edge.i.i.i.i.thread.i49, label %bb.m

._crit_edge.i.i.i.i.thread.i49:                   ; preds = %.lr.ph
  store ptr %i.bj, ptr %4, align 8, !tbaa !64, !alias.scope !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !354
  store i64 0, ptr %i.b, align 8, !tbaa !13, !noalias !354
  br label %_ZN16Database_SQLite316sqlite_to_stringB5cxx11EP12sqlite3_stmti.exit50
end_hunk_1
