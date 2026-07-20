inline.NumInlined: 9031
inline.NumDeleted: 2243
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6Assimp11FBXExporter16WriteDefinitionsEv:bb.a
  %i.bvn = add i64 %i.bvm, 1
  call void @_ZdlPvm(ptr noundef %i.bvk, i64 noundef %i.bvn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2316
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #31
  %i.bvo = load ptr, ptr %153, align 8            ; 2 uses
  %i.bvp = icmp eq ptr %i.bvo, %i.ban
  br i1 %i.bvp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318
  %i.bvq = load i64, ptr %i.ban, align 8
  %i.bvr = add i64 %i.bvq, 1
  call void @_ZdlPvm(ptr noundef %i.bvo, i64 noundef %i.bvr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2319
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #31
  br label %.body

bb.ix:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1973
  %i.bvs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #31
  %i.bvt = load ptr, ptr %160, align 8            ; 2 uses
  %i.bvu = icmp eq ptr %i.bvt, %i.bbw
  br i1 %i.bvu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2322: ; preds = %bb.ix
  %i.bvv = load i64, ptr %i.bbw, align 8
  %i.bvw = add i64 %i.bvv, 1
  call void @_ZdlPvm(ptr noundef %i.bvt, i64 noundef %i.bvw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2324: ; preds = %bb.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2322
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #31
  %i.bvx = load ptr, ptr %159, align 8            ; 2 uses
  %i.bvy = icmp eq ptr %i.bvx, %i.bbu
  br i1 %i.bvy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2324
  %i.bvz = load i64, ptr %i.bbu, align 8
  %i.bwa = add i64 %i.bvz, 1
  call void @_ZdlPvm(ptr noundef %i.bvx, i64 noundef %i.bwa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2325
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #31
  %i.bwb = load ptr, ptr %158, align 8            ; 2 uses
  %i.bwc = icmp eq ptr %i.bwb, %i.bbr
  br i1 %i.bwc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2327
  %i.bwd = load i64, ptr %i.bbr, align 8
  %i.bwe = add i64 %i.bwd, 1
  call void @_ZdlPvm(ptr noundef %i.bwb, i64 noundef %i.bwe) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2328
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #31
  %i.bwf = load ptr, ptr %157, align 8            ; 2 uses
  %i.bwg = icmp eq ptr %i.bwf, %i.bbo
  br i1 %i.bwg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2330
  %i.bwh = load i64, ptr %i.bbo, align 8
  %i.bwi = add i64 %i.bwh, 1
  call void @_ZdlPvm(ptr noundef %i.bwf, i64 noundef %i.bwi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2331
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #31
  br label %.body

bb.iy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2001
  %i.bwj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #31
  %i.bwk = load ptr, ptr %164, align 8            ; 2 uses
  %i.bwl = icmp eq ptr %i.bwk, %i.bcx
  br i1 %i.bwl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2334: ; preds = %bb.iy
  %i.bwm = load i64, ptr %i.bcx, align 8
  %i.bwn = add i64 %i.bwm, 1
  call void @_ZdlPvm(ptr noundef %i.bwk, i64 noundef %i.bwn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2336: ; preds = %bb.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2334
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #31
  %i.bwo = load ptr, ptr %163, align 8            ; 2 uses
  %i.bwp = icmp eq ptr %i.bwo, %i.bcv
  br i1 %i.bwp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2336
  %i.bwq = load i64, ptr %i.bcv, align 8
  %i.bwr = add i64 %i.bwq, 1
  call void @_ZdlPvm(ptr noundef %i.bwo, i64 noundef %i.bwr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2337
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #31
  %i.bws = load ptr, ptr %162, align 8            ; 2 uses
  %i.bwt = icmp eq ptr %i.bws, %i.bcs
  br i1 %i.bwt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2339
  %i.bwu = load i64, ptr %i.bcs, align 8
  %i.bwv = add i64 %i.bwu, 1
  call void @_ZdlPvm(ptr noundef %i.bws, i64 noundef %i.bwv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2340
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #31
  %i.bww = load ptr, ptr %161, align 8            ; 2 uses
  %i.bwx = icmp eq ptr %i.bww, %i.bcp
  br i1 %i.bwx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2342
  %i.bwy = load i64, ptr %i.bcp, align 8
  %i.bwz = add i64 %i.bwy, 1
  call void @_ZdlPvm(ptr noundef %i.bww, i64 noundef %i.bwz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2343
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #31
  br label %.body

bb.iz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2029
  %i.bxa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2357

bb.ja:                                            ; preds = %.noexc2032
  %i.bxb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354

bb.jb:                                            ; preds = %.noexc2036
  %i.bxc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #31
  %i.bxd = load ptr, ptr %168, align 8            ; 2 uses
  %i.bxe = icmp eq ptr %i.bxd, %i.bee
  br i1 %i.bxe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2346: ; preds = %bb.jb
  %i.bxf = load i64, ptr %i.bee, align 8
  %i.bxg = add i64 %i.bxf, 1
  call void @_ZdlPvm(ptr noundef %i.bxd, i64 noundef %i.bxg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2348: ; preds = %bb.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2346
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #31
  %i.bxh = load ptr, ptr %167, align 8            ; 2 uses
  %i.bxi = icmp eq ptr %i.bxh, %i.bec
  br i1 %i.bxi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2348
  %i.bxj = load i64, ptr %i.bec, align 8
  %i.bxk = add i64 %i.bxj, 1
  call void @_ZdlPvm(ptr noundef %i.bxh, i64 noundef %i.bxk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2349
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #31
  %i.bxl = load ptr, ptr %166, align 8            ; 2 uses
  %i.bxm = icmp eq ptr %i.bxl, %i.bdw
  br i1 %i.bxm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351
  %i.bxn = load i64, ptr %i.bdw, align 8
  %i.bxo = add i64 %i.bxn, 1
  call void @_ZdlPvm(ptr noundef %i.bxl, i64 noundef %i.bxo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2352, %bb.ja
  %.pn623.pn.pn = phi { ptr, i32 } [ %i.bxb, %bb.ja ], [ %i.bxc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2352 ], [ %i.bxc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #31
  %i.bxp = load ptr, ptr %165, align 8            ; 2 uses
  %i.bxq = icmp eq ptr %i.bxp, %i.bdq
  br i1 %i.bxq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354
  %i.bxr = load i64, ptr %i.bdq, align 8
  %i.bxs = add i64 %i.bxr, 1
  call void @_ZdlPvm(ptr noundef %i.bxp, i64 noundef %i.bxs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2355, %bb.iz
  %.pn623.pn.pn.pn = phi { ptr, i32 } [ %i.bxa, %bb.iz ], [ %.pn623.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2355 ], [ %.pn623.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #31
  br label %.body

bb.jc:                                            ; preds = %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit2069, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit1351
  %i.bxt = phi ptr [ %.pre3771, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit2069 ], [ %i.aaw, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit1351 ] ; 4 uses
  %.3358 = phi i32 [ %i.bfl, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit2069 ], [ %i.aav, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit1351 ] ; 3 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 16
  %i.bxv = load i32, ptr %i.bxu, align 8          ; 8 uses
  store i32 %i.bxv, ptr %i.ay, align 4
  %.not3759 = icmp eq i32 %i.bxv, 0
  br i1 %.not3759, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.jc
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxt, i64 24
  %.pre3772 = load ptr, ptr %i.bxw, align 8       ; 3 uses
  %i.bxx = icmp eq i32 %i.bxv, 1
  br i1 %i.bxx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %286 = and i32 %i.bxv, -2
  %unroll_iter = zext i32 %286 to i64
  br label %bb.je

._crit_edge.unr-lcssa:                            ; preds = %bb.ji
  %lcmp.mod.not = trunc i32 %i.bxv to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.03693749.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1370.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.03713748.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.byy, %._crit_edge.unr-lcssa ]
  %.epil.init = phi i32 [ %i.bxv, %.lr.ph ], [ %i.byx, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod4865 = trunc i32 %i.bxv to i1
  call void @llvm.assume(i1 %lcmp.mod4865)
  %i.bxy = getelementptr inbounds nuw [8 x i8], ptr %.pre3772, i64 %.03713748.epil.init
  %i.bxz = load ptr, ptr %i.bxy, align 8
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxz, i64 1264
  %i.byb = load i32, ptr %i.bya, align 8          ; 3 uses
  %.not833.epil = icmp eq i32 %i.byb, 0
  br i1 %.not833.epil, label %._crit_edge, label %bb.jd

bb.jd:                                            ; preds = %.epil.preheader
  %i.byc = add i32 %.epil.init, %i.byb            ; 2 uses
  store i32 %i.byc, ptr %i.ay, align 4
  %i.byd = add i32 %.03693749.epil.init, 1
  %i.bye = add i32 %i.byd, %i.byb
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.jd, %._crit_edge.unr-lcssa
  %.lcssa4862 = phi i32 [ %i.byx, %._crit_edge.unr-lcssa ], [ %i.byc, %bb.jd ], [ %.epil.init, %.epil.preheader ]
  %.1370.lcssa = phi i32 [ %.1370.1, %._crit_edge.unr-lcssa ], [ %i.bye, %bb.jd ], [ %.03693749.epil.init, %.epil.preheader ] ; 2 uses
  %i.byf = icmp eq i32 %.lcssa4862, 0
  br i1 %i.byf, label %._crit_edge.thread, label %._crit_edge.i.i2358

bb.je:                                            ; preds = %bb.ji, %.lr.ph.new
  %.03693749 = phi i32 [ 0, %.lr.ph.new ], [ %.1370.1, %bb.ji ] ; 2 uses
  %.03713748 = phi i64 [ 0, %.lr.ph.new ], [ %i.byy, %bb.ji ] ; 3 uses
  %i.byg = phi i32 [ %i.bxv, %.lr.ph.new ], [ %i.byx, %bb.ji ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ji ]
  %i.byh = getelementptr inbounds nuw [8 x i8], ptr %.pre3772, i64 %.03713748
  %i.byi = load ptr, ptr %i.byh, align 8
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byi, i64 1264
  %i.byk = load i32, ptr %i.byj, align 8          ; 3 uses
  %.not833 = icmp eq i32 %i.byk, 0
  br i1 %.not833, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.byl = add i32 %i.byg, %i.byk                 ; 2 uses
  store i32 %i.byl, ptr %i.ay, align 4
  %i.bym = add i32 %.03693749, 1
  %i.byn = add i32 %i.bym, %i.byk
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %i.byo = phi i32 [ %i.byl, %bb.jf ], [ %i.byg, %bb.je ] ; 2 uses
  %.1370 = phi i32 [ %i.byn, %bb.jf ], [ %.03693749, %bb.je ] ; 2 uses
  %i.byp = getelementptr inbounds nuw [8 x i8], ptr %.pre3772, i64 %.03713748
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byp, i64 8
  %i.byr = load ptr, ptr %i.byq, align 8
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byr, i64 1264
  %i.byt = load i32, ptr %i.bys, align 8          ; 3 uses
  %.not833.1 = icmp eq i32 %i.byt, 0
  br i1 %.not833.1, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.byu = add i32 %i.byo, %i.byt                 ; 2 uses
  store i32 %i.byu, ptr %i.ay, align 4
  %i.byv = add i32 %.1370, 1
  %i.byw = add i32 %i.byv, %i.byt
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.byx = phi i32 [ %i.byu, %bb.jh ], [ %i.byo, %bb.jg ] ; 3 uses
  %.1370.1 = phi i32 [ %i.byw, %bb.jh ], [ %.1370, %bb.jg ] ; 3 uses
  %i.byy = add nuw nsw i64 %.03713748, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %bb.je, !llvm.loop !52

._crit_edge.i.i2358:                              ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #31
  %i.byz = getelementptr inbounds nuw i8, ptr %170, i64 16 ; 6 uses
  store ptr %i.byz, ptr %170, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.byz, ptr noundef nonnull align 1 dereferenceable(10) @.str.81, i64 10, i1 false)
  %i.bza = getelementptr inbounds nuw i8, ptr %170, i64 8
  store i64 10, ptr %i.bza, align 8
  %i.bzb = getelementptr inbounds nuw i8, ptr %170, i64 26
  store i8 0, ptr %i.bzb, align 2
  invoke void @_ZN6Assimp3FBX4NodeC2IJRA9_KcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %169, ptr noundef nonnull align 8 dereferenceable(32) %170, ptr noundef nonnull align 1 dereferenceable(9) @.str.184)
          to label %bb.jj unwind label %bb.jy

bb.jj:                                            ; preds = %._crit_edge.i.i2358
  %i.bzc = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6Assimp3FBX4NodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(112) %169) #31 ; 0 uses
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %169) #31
  %i.bzd = load ptr, ptr %170, align 8            ; 2 uses
  %i.bze = icmp eq ptr %i.bzd, %i.byz
  br i1 %i.bze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2362: ; preds = %bb.jj
  %i.bzf = load i64, ptr %i.byz, align 8
  %i.bzg = add i64 %i.bzf, 1
  call void @_ZdlPvm(ptr noundef %i.bzd, i64 noundef %i.bzg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2364: ; preds = %bb.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2362
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #31
  %i.bzh = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 6 uses
  store ptr %i.bzh, ptr %171, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bzh, ptr noundef nonnull align 1 dereferenceable(5) @.str.71, i64 5, i1 false)
  %i.bzi = getelementptr inbounds nuw i8, ptr %171, i64 8
  store i64 5, ptr %i.bzi, align 8
  %i.bzj = getelementptr inbounds nuw i8, ptr %171, i64 21
  store i8 0, ptr %i.bzj, align 1
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJRiEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(32) %171, ptr noundef nonnull align 4 dereferenceable(4) %i.ay)
          to label %bb.jk unwind label %bb.jz

bb.jk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2364
  %i.bzk = load ptr, ptr %171, align 8            ; 2 uses
  %i.bzl = icmp eq ptr %i.bzk, %i.bzh
  br i1 %i.bzl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2369: ; preds = %bb.jk
  %i.bzm = load i64, ptr %i.bzh, align 8
  %i.bzn = add i64 %i.bzm, 1
  call void @_ZdlPvm(ptr noundef %i.bzk, i64 noundef %i.bzn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2371: ; preds = %bb.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2369
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #31
  %i.bzo = getelementptr inbounds nuw i8, ptr %173, i64 16 ; 6 uses
  store ptr %i.bzo, ptr %173, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #31
  store i64 16, ptr %i.w, align 8
  %i.bzp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %173, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0)
          to label %.noexc2374 unwind label %bb.ka ; 2 uses

.noexc2374:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2371
  store ptr %i.bzp, ptr %173, align 8
  %i.bzq = load i64, ptr %i.w, align 8            ; 3 uses
  store i64 %i.bzq, ptr %i.bzo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bzp, ptr noundef nonnull align 1 dereferenceable(16) @.str.83, i64 16, i1 false)
  %i.bzr = getelementptr inbounds nuw i8, ptr %173, i64 8
  store i64 %i.bzq, ptr %i.bzr, align 8
  %i.bzs = load ptr, ptr %173, align 8
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzs, i64 %i.bzq
  store i8 0, ptr %i.bzt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #31
  invoke void @_ZN6Assimp3FBX4NodeC2IJRA8_KcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %172, ptr noundef nonnull align 8 dereferenceable(32) %173, ptr noundef nonnull align 1 dereferenceable(8) @.str.185)
          to label %bb.jl unwind label %bb.kb

bb.jl:                                            ; preds = %.noexc2374
  %i.bzu = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6Assimp3FBX4NodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(112) %172) #31 ; 0 uses
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %172) #31
  %i.bzv = load ptr, ptr %173, align 8            ; 2 uses
  %i.bzw = icmp eq ptr %i.bzv, %i.bzo
  br i1 %i.bzw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2376: ; preds = %bb.jl
  %i.bzx = load i64, ptr %i.bzo, align 8
  %i.bzy = add i64 %i.bzx, 1
  call void @_ZdlPvm(ptr noundef %i.bzv, i64 noundef %i.bzy) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2377: ; preds = %bb.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2376
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #31
  %i.bzz = getelementptr inbounds nuw i8, ptr %175, i64 16 ; 4 uses
  store ptr %i.bzz, ptr %175, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bzz, ptr noundef nonnull align 1 dereferenceable(12) @.str.45, i64 12, i1 false)
  %i.caa = getelementptr inbounds nuw i8, ptr %175, i64 8
  store i64 12, ptr %i.caa, align 8
  %i.cab = getelementptr inbounds nuw i8, ptr %175, i64 28
  store i8 0, ptr %i.cab, align 4
  %i.cac = getelementptr inbounds nuw i8, ptr %174, i64 16 ; 2 uses
  store ptr %i.cac, ptr %174, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cac, ptr noundef nonnull align 1 dereferenceable(12) @.str.45, i64 12, i1 false)
  %i.cad = getelementptr inbounds nuw i8, ptr %174, i64 8
  store i64 12, ptr %i.cad, align 8
  %i.cae = getelementptr inbounds nuw i8, ptr %174, i64 28
  store i8 0, ptr %i.cae, align 4
  %i.caf = getelementptr inbounds nuw i8, ptr %174, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.caf, i8 0, i64 49, i1 false)
  %i.cag = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6Assimp3FBX4NodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull align 8 dereferenceable(112) %174) #31 ; 0 uses
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %174) #31
  %i.cah = load ptr, ptr %175, align 8            ; 2 uses
  %i.cai = icmp eq ptr %i.cah, %i.bzz
  br i1 %i.cai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2387: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2377
  %i.caj = load i64, ptr %i.bzz, align 8
  %i.cak = add i64 %i.caj, 1
  call void @_ZdlPvm(ptr noundef %i.cah, i64 noundef %i.cak) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2389

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2389: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2387
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #31
  %i.cal = getelementptr inbounds nuw i8, ptr %176, i64 16 ; 6 uses
  store ptr %i.cal, ptr %176, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11FBXExporter16WriteDefinitionsEv:bb.a
  %i.dzz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eaa = load ptr, ptr %267, align 8            ; 2 uses
  %i.eab = icmp eq ptr %i.eaa, %i.dxd
  br i1 %i.eab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3357: ; preds = %bb.sc
  %i.eac = load i64, ptr %i.dxd, align 8
  %i.ead = add i64 %i.eac, 1
  call void @_ZdlPvm(ptr noundef %i.eaa, i64 noundef %i.ead) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3359: ; preds = %bb.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3357, %bb.sb
  %.pn797 = phi { ptr, i32 } [ %i.dzy, %bb.sb ], [ %i.dzz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3357 ], [ %i.dzz, %bb.sc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %266) #31
  br label %.body

bb.sd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3310
  %i.eae = landingpad { ptr, i32 }
          cleanup
  %i.eaf = load ptr, ptr %273, align 8            ; 2 uses
  %i.eag = icmp eq ptr %i.eaf, %i.dyi
  br i1 %i.eag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3363: ; preds = %bb.sd
  %i.eah = load i64, ptr %i.dyi, align 8
  %i.eai = add i64 %i.eah, 1
  call void @_ZdlPvm(ptr noundef %i.eaf, i64 noundef %i.eai) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3365: ; preds = %bb.sd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3363
  call void @llvm.lifetime.end.p0(ptr nonnull %273) #31
  %i.eaj = load ptr, ptr %272, align 8            ; 2 uses
  %i.eak = icmp eq ptr %i.eaj, %i.dyg
  br i1 %i.eak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3365
  %i.eal = load i64, ptr %i.dyg, align 8
  %i.eam = add i64 %i.eal, 1
  call void @_ZdlPvm(ptr noundef %i.eaj, i64 noundef %i.eam) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3366
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #31
  %i.ean = load ptr, ptr %271, align 8            ; 2 uses
  %i.eao = icmp eq ptr %i.ean, %i.dyd
  br i1 %i.eao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3368
  %i.eap = load i64, ptr %i.dyd, align 8
  %i.eaq = add i64 %i.eap, 1
  call void @_ZdlPvm(ptr noundef %i.ean, i64 noundef %i.eaq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3371: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3369
  call void @llvm.lifetime.end.p0(ptr nonnull %271) #31
  %i.ear = load ptr, ptr %270, align 8            ; 2 uses
  %i.eas = icmp eq ptr %i.ear, %i.dya
  br i1 %i.eas, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3372: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3371
  %i.eat = load i64, ptr %i.dya, align 8
  %i.eau = add i64 %i.eat, 1
  call void @_ZdlPvm(ptr noundef %i.ear, i64 noundef %i.eau) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3374: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3372
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #31
  br label %.body

bb.se:                                            ; preds = %bb.ry, %.noexc3348
  %i.eav = load i32, ptr %i.ay, align 4
  %i.eaw = add nsw i32 %i.eav, %.7362             ; 2 uses
  %.pre3775 = load ptr, ptr %i.dp, align 8        ; 2 uses
  %.phi.trans.insert3776 = getelementptr inbounds nuw i8, ptr %.pre3775, i64 48
  %.pre3777 = load i32, ptr %.phi.trans.insert3776, align 8 ; 2 uses
  %i.eax = mul i32 %.pre3777, 9
  store i32 %i.eax, ptr %i.ay, align 4
  %.not806 = icmp eq i32 %.pre3777, 0
  br i1 %.not806, label %.thread4847, label %._crit_edge.i.i3375

._crit_edge.i.i3375:                              ; preds = %bb.se
  call void @llvm.lifetime.start.p0(ptr nonnull %274) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %275) #31
  %i.eay = getelementptr inbounds nuw i8, ptr %275, i64 16 ; 6 uses
  store ptr %i.eay, ptr %275, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.eay, ptr noundef nonnull align 1 dereferenceable(10) @.str.81, i64 10, i1 false)
  %i.eaz = getelementptr inbounds nuw i8, ptr %275, i64 8
  store i64 10, ptr %i.eaz, align 8
  %i.eba = getelementptr inbounds nuw i8, ptr %275, i64 26
  store i8 0, ptr %i.eba, align 2
  invoke void @_ZN6Assimp3FBX4NodeC2IJRA15_KcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %274, ptr noundef nonnull align 8 dereferenceable(32) %275, ptr noundef nonnull align 1 dereferenceable(15) @.str.258)
          to label %bb.sf unwind label %bb.sj

bb.sf:                                            ; preds = %._crit_edge.i.i3375
  %i.ebb = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6Assimp3FBX4NodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(112) %274) #31 ; 0 uses
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %274) #31
  %i.ebc = load ptr, ptr %275, align 8            ; 2 uses
  %i.ebd = icmp eq ptr %i.ebc, %i.eay
  br i1 %i.ebd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3379: ; preds = %bb.sf
  %i.ebe = load i64, ptr %i.eay, align 8
  %i.ebf = add i64 %i.ebe, 1
  call void @_ZdlPvm(ptr noundef %i.ebc, i64 noundef %i.ebf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3381: ; preds = %bb.sf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3379
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %274) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %276) #31
  %i.ebg = getelementptr inbounds nuw i8, ptr %276, i64 16 ; 6 uses
  store ptr %i.ebg, ptr %276, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ebg, ptr noundef nonnull align 1 dereferenceable(5) @.str.71, i64 5, i1 false)
  %i.ebh = getelementptr inbounds nuw i8, ptr %276, i64 8
  store i64 5, ptr %i.ebh, align 8
  %i.ebi = getelementptr inbounds nuw i8, ptr %276, i64 21
  store i8 0, ptr %i.ebi, align 1
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJRiEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(32) %276, ptr noundef nonnull align 4 dereferenceable(4) %i.ay)
          to label %bb.sg unwind label %bb.sk

bb.sg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3381
  %i.ebj = load ptr, ptr %276, align 8            ; 2 uses
  %i.ebk = icmp eq ptr %i.ebj, %i.ebg
  br i1 %i.ebk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3386: ; preds = %bb.sg
  %i.ebl = load i64, ptr %i.ebg, align 8
  %i.ebm = add i64 %i.ebl, 1
  call void @_ZdlPvm(ptr noundef %i.ebj, i64 noundef %i.ebm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3388: ; preds = %bb.sg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3386
  call void @llvm.lifetime.end.p0(ptr nonnull %276) #31
  %i.ebn = load ptr, ptr %i.di, align 8           ; 3 uses
  %i.ebo = load ptr, ptr %i.dk, align 8
  %.not.i3389 = icmp eq ptr %i.ebn, %i.ebo
  br i1 %.not.i3389, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3388
  invoke void @_ZN6Assimp3FBX4NodeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.ebn, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %.noexc3390 unwind label %.loopexit.split-lp

.noexc3390:                                       ; preds = %bb.sh
  %i.ebp = load ptr, ptr %i.di, align 8
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.ebp, i64 112
  store ptr %i.ebq, ptr %i.di, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3392

bb.si:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3388
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ebn, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3392 unwind label %.loopexit.split-lp

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3392: ; preds = %.noexc3390, %bb.si
  %i.ebr = load i32, ptr %i.ay, align 4
  %i.ebs = add nsw i32 %i.ebr, %i.eaw
  %.pre3778 = load ptr, ptr %i.dp, align 8
  br label %.thread4847

bb.sj:                                            ; preds = %._crit_edge.i.i3375
  %i.ebt = landingpad { ptr, i32 }
          cleanup
  %i.ebu = load ptr, ptr %275, align 8            ; 2 uses
  %i.ebv = icmp eq ptr %i.ebu, %i.eay
  br i1 %i.ebv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3393: ; preds = %bb.sj
  %i.ebw = load i64, ptr %i.eay, align 8
  %i.ebx = add i64 %i.ebw, 1
  call void @_ZdlPvm(ptr noundef %i.ebu, i64 noundef %i.ebx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3395

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3395: ; preds = %bb.sj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3393
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %274) #31
  br label %.body

bb.sk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3381
  %i.eby = landingpad { ptr, i32 }
          cleanup
  %i.ebz = load ptr, ptr %276, align 8            ; 2 uses
  %i.eca = icmp eq ptr %i.ebz, %i.ebg
  br i1 %i.eca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3396: ; preds = %bb.sk
  %i.ecb = load i64, ptr %i.ebg, align 8
  %i.ecc = add i64 %i.ecb, 1
  call void @_ZdlPvm(ptr noundef %i.ebz, i64 noundef %i.ecc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3398

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3398: ; preds = %bb.sk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3396
  call void @llvm.lifetime.end.p0(ptr nonnull %276) #31
  br label %.body

.thread4847:                                      ; preds = %_ZL14count_texturesPK7aiScene.exit.thread, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3392, %bb.se
  %i.ecd = phi ptr [ %.pre3778, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3392 ], [ %.pre3775, %bb.se ], [ %i.dwk, %_ZL14count_texturesPK7aiScene.exit.thread ] ; 3 uses
  %.9364 = phi i32 [ %i.ebs, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3392 ], [ %i.eaw, %bb.se ], [ %.7362, %_ZL14count_texturesPK7aiScene.exit.thread ] ; 3 uses
  store i32 0, ptr %i.ay, align 4
  %i.ece = getelementptr inbounds nuw i8, ptr %i.ecd, i64 16
  %i.ecf = load i32, ptr %i.ece, align 8          ; 6 uses
  %.not3760 = icmp eq i32 %i.ecf, 0
  br i1 %.not3760, label %_ZL15count_deformersPK7aiScene.exit, label %.lr.ph3753

.lr.ph3753:                                       ; preds = %.thread4847
  %i.ecg = getelementptr inbounds nuw i8, ptr %i.ecd, i64 24
  %.pre3779 = load ptr, ptr %i.ecg, align 8       ; 3 uses
  %i.ech = icmp eq i32 %i.ecf, 1
  br i1 %i.ech, label %.epil.preheader4866, label %.lr.ph3753.new

.lr.ph3753.new:                                   ; preds = %.lr.ph3753
  %287 = and i32 %i.ecf, -2
  %unroll_iter4873 = zext i32 %287 to i64
  br label %bb.sm

._crit_edge3754.unr-lcssa:                        ; preds = %bb.sq
  %lcmp.mod4870.not = trunc i32 %i.ecf to i1
  br i1 %lcmp.mod4870.not, label %.epil.preheader4866, label %._crit_edge3754

.epil.preheader4866:                              ; preds = %._crit_edge3754.unr-lcssa, %.lr.ph3753
  %.03683751.epil.init = phi i64 [ 0, %.lr.ph3753 ], [ %i.edo, %._crit_edge3754.unr-lcssa ]
  %.epil.init4869 = phi i32 [ 0, %.lr.ph3753 ], [ %i.edn, %._crit_edge3754.unr-lcssa ] ; 2 uses
  %lcmp.mod4872 = trunc i32 %i.ecf to i1
  call void @llvm.assume(i1 %lcmp.mod4872)
  %i.eci = getelementptr inbounds nuw [8 x i8], ptr %.pre3779, i64 %.03683751.epil.init
  %i.ecj = load ptr, ptr %i.eci, align 8          ; 2 uses
  %i.eck = getelementptr inbounds nuw i8, ptr %i.ecj, i64 224
  %i.ecl = load ptr, ptr %i.eck, align 8
  %.not.i3399.epil = icmp ne ptr %i.ecl, null
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.ecj, i64 216
  %i.ecn = load i32, ptr %i.ecm, align 8
  %i.eco = icmp ne i32 %i.ecn, 0
  %i.ecp = select i1 %.not.i3399.epil, i1 %i.eco, i1 false
  br i1 %i.ecp, label %bb.sl, label %._crit_edge3754

bb.sl:                                            ; preds = %.epil.preheader4866
  %i.ecq = add nsw i32 %.epil.init4869, 1         ; 2 uses
  store i32 %i.ecq, ptr %i.ay, align 4
  br label %._crit_edge3754

._crit_edge3754:                                  ; preds = %.epil.preheader4866, %bb.sl, %._crit_edge3754.unr-lcssa
  %.lcssa = phi i32 [ %i.edn, %._crit_edge3754.unr-lcssa ], [ %i.ecq, %bb.sl ], [ %.epil.init4869, %.epil.preheader4866 ]
  %i.ecr = icmp eq i32 %.lcssa, 0
  br i1 %i.ecr, label %bb.sx, label %._crit_edge.i.i3400

bb.sm:                                            ; preds = %bb.sq, %.lr.ph3753.new
  %.03683751 = phi i64 [ 0, %.lr.ph3753.new ], [ %i.edo, %bb.sq ] ; 3 uses
  %i.ecs = phi i32 [ 0, %.lr.ph3753.new ], [ %i.edn, %bb.sq ] ; 2 uses
  %niter4874 = phi i64 [ 0, %.lr.ph3753.new ], [ %niter4874.next.1, %bb.sq ]
  %i.ect = getelementptr inbounds nuw [8 x i8], ptr %.pre3779, i64 %.03683751
  %i.ecu = load ptr, ptr %i.ect, align 8          ; 2 uses
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.ecu, i64 224
  %i.ecw = load ptr, ptr %i.ecv, align 8
  %.not.i3399 = icmp ne ptr %i.ecw, null
  %i.ecx = getelementptr inbounds nuw i8, ptr %i.ecu, i64 216
  %i.ecy = load i32, ptr %i.ecx, align 8
  %i.ecz = icmp ne i32 %i.ecy, 0
  %i.eda = select i1 %.not.i3399, i1 %i.ecz, i1 false
  br i1 %i.eda, label %bb.sn, label %bb.so

bb.sn:                                            ; preds = %bb.sm
  %i.edb = add nsw i32 %i.ecs, 1                  ; 2 uses
  store i32 %i.edb, ptr %i.ay, align 4
  br label %bb.so

bb.so:                                            ; preds = %bb.sn, %bb.sm
  %i.edc = phi i32 [ %i.edb, %bb.sn ], [ %i.ecs, %bb.sm ] ; 2 uses
  %i.edd = getelementptr inbounds nuw [8 x i8], ptr %.pre3779, i64 %.03683751
  %i.ede = getelementptr inbounds nuw i8, ptr %i.edd, i64 8
  %i.edf = load ptr, ptr %i.ede, align 8          ; 2 uses
  %i.edg = getelementptr inbounds nuw i8, ptr %i.edf, i64 224
  %i.edh = load ptr, ptr %i.edg, align 8
  %.not.i3399.1 = icmp ne ptr %i.edh, null
  %i.edi = getelementptr inbounds nuw i8, ptr %i.edf, i64 216
  %i.edj = load i32, ptr %i.edi, align 8
  %i.edk = icmp ne i32 %i.edj, 0
  %i.edl = select i1 %.not.i3399.1, i1 %i.edk, i1 false
  br i1 %i.edl, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %bb.so
  %i.edm = add nsw i32 %i.edc, 1                  ; 2 uses
  store i32 %i.edm, ptr %i.ay, align 4
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %i.edn = phi i32 [ %i.edm, %bb.sp ], [ %i.edc, %bb.so ] ; 3 uses
  %i.edo = add nuw nsw i64 %.03683751, 2          ; 2 uses
  %niter4874.next.1 = add i64 %niter4874, 2       ; 2 uses
  %niter4874.ncmp.1.not = icmp eq i64 %niter4874.next.1, %unroll_iter4873
  br i1 %niter4874.ncmp.1.not, label %._crit_edge3754.unr-lcssa, label %bb.sm, !llvm.loop !59

._crit_edge.i.i3400:                              ; preds = %._crit_edge3754
  call void @llvm.lifetime.start.p0(ptr nonnull %277) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %278) #31
  %i.edp = getelementptr inbounds nuw i8, ptr %278, i64 16 ; 6 uses
  store ptr %i.edp, ptr %278, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.edp, ptr noundef nonnull align 1 dereferenceable(10) @.str.81, i64 10, i1 false)
  %i.edq = getelementptr inbounds nuw i8, ptr %278, i64 8
  store i64 10, ptr %i.edq, align 8
  %i.edr = getelementptr inbounds nuw i8, ptr %278, i64 26
  store i8 0, ptr %i.edr, align 2
  invoke void @_ZN6Assimp3FBX4NodeC2IJRA5_KcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %277, ptr noundef nonnull align 8 dereferenceable(32) %278, ptr noundef nonnull align 1 dereferenceable(5) @.str.259)
          to label %bb.sr unwind label %bb.sv

bb.sr:                                            ; preds = %._crit_edge.i.i3400
  %i.eds = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6Assimp3FBX4NodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(112) %277) #31 ; 0 uses
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %277) #31
  %i.edt = load ptr, ptr %278, align 8            ; 2 uses
  %i.edu = icmp eq ptr %i.edt, %i.edp
  br i1 %i.edu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3404: ; preds = %bb.sr
  %i.edv = load i64, ptr %i.edp, align 8
  %i.edw = add i64 %i.edv, 1
  call void @_ZdlPvm(ptr noundef %i.edt, i64 noundef %i.edw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3406: ; preds = %bb.sr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3404
  call void @llvm.lifetime.end.p0(ptr nonnull %278) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %279) #31
  %i.edx = getelementptr inbounds nuw i8, ptr %279, i64 16 ; 6 uses
  store ptr %i.edx, ptr %279, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.edx, ptr noundef nonnull align 1 dereferenceable(5) @.str.71, i64 5, i1 false)
  %i.edy = getelementptr inbounds nuw i8, ptr %279, i64 8
  store i64 5, ptr %i.edy, align 8
  %i.edz = getelementptr inbounds nuw i8, ptr %279, i64 21
  store i8 0, ptr %i.edz, align 1
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJRiEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(32) %279, ptr noundef nonnull align 4 dereferenceable(4) %i.ay)
          to label %bb.ss unwind label %bb.sw

bb.ss:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3406
  %i.eea = load ptr, ptr %279, align 8            ; 2 uses
  %i.eeb = icmp eq ptr %i.eea, %i.edx
  br i1 %i.eeb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3411: ; preds = %bb.ss
  %i.eec = load i64, ptr %i.edx, align 8
  %i.eed = add i64 %i.eec, 1
  call void @_ZdlPvm(ptr noundef %i.eea, i64 noundef %i.eed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3413

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3413: ; preds = %bb.ss, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3411
  call void @llvm.lifetime.end.p0(ptr nonnull %279) #31
  %i.eee = load ptr, ptr %i.di, align 8           ; 3 uses
  %i.eef = load ptr, ptr %i.dk, align 8
  %.not.i3414 = icmp eq ptr %i.eee, %i.eef
  br i1 %.not.i3414, label %bb.su, label %bb.st

bb.st:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3413
  invoke void @_ZN6Assimp3FBX4NodeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.eee, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %.noexc3415 unwind label %.loopexit.split-lp

.noexc3415:                                       ; preds = %bb.st
  %i.eeg = load ptr, ptr %i.di, align 8
  %i.eeh = getelementptr inbounds nuw i8, ptr %i.eeg, i64 112
  store ptr %i.eeh, ptr %i.di, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3417

bb.su:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3413
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.eee, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3417 unwind label %.loopexit.split-lp

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3417: ; preds = %.noexc3415, %bb.su
  %i.eei = load i32, ptr %i.ay, align 4
  %i.eej = add nsw i32 %i.eei, %.9364
  %.pre3780 = load ptr, ptr %i.dp, align 8        ; 2 uses
  %.phi.trans.insert3781 = getelementptr inbounds nuw i8, ptr %.pre3780, i64 16
  %.pre3782 = load i32, ptr %.phi.trans.insert3781, align 8
  br label %bb.sx

bb.sv:                                            ; preds = %._crit_edge.i.i3400
  %i.eek = landingpad { ptr, i32 }
          cleanup
  %i.eel = load ptr, ptr %278, align 8            ; 2 uses
  %i.eem = icmp eq ptr %i.eel, %i.edp
  br i1 %i.eem, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3418: ; preds = %bb.sv
  %i.een = load i64, ptr %i.edp, align 8
  %i.eeo = add i64 %i.een, 1
  call void @_ZdlPvm(ptr noundef %i.eel, i64 noundef %i.eeo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3420: ; preds = %bb.sv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3418
  call void @llvm.lifetime.end.p0(ptr nonnull %278) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #31
  br label %.body

bb.sw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3406
  %i.eep = landingpad { ptr, i32 }
          cleanup
  %i.eeq = load ptr, ptr %279, align 8            ; 2 uses
  %i.eer = icmp eq ptr %i.eeq, %i.edx
  br i1 %i.eer, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3421: ; preds = %bb.sw
  %i.ees = load i64, ptr %i.edx, align 8
  %i.eet = add i64 %i.ees, 1
  call void @_ZdlPvm(ptr noundef %i.eeq, i64 noundef %i.eet) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3423: ; preds = %bb.sw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3421
  call void @llvm.lifetime.end.p0(ptr nonnull %279) #31
  br label %.body

bb.sx:                                            ; preds = %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3417, %._crit_edge3754
  %i.eeu = phi i32 [ %.pre3782, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3417 ], [ %i.ecf, %._crit_edge3754 ] ; 5 uses
  %i.eev = phi ptr [ %.pre3780, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3417 ], [ %i.ecd, %._crit_edge3754 ]
  %.10365 = phi i32 [ %i.eej, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3417 ], [ %.9364, %._crit_edge3754 ] ; 3 uses
  %.not12.i = icmp eq i32 %i.eeu, 0
  br i1 %.not12.i, label %_ZL15count_deformersPK7aiScene.exit, label %.lr.ph.i3424

.lr.ph.i3424:                                     ; preds = %bb.sx
  %i.eew = getelementptr inbounds nuw i8, ptr %i.eev, i64 24
  %i.eex = load ptr, ptr %i.eew, align 8          ; 3 uses
  %i.eey = icmp eq i32 %i.eeu, 1
  br i1 %i.eey, label %.epil.preheader4875, label %.lr.ph.i3424.new

.lr.ph.i3424.new:                                 ; preds = %.lr.ph.i3424
  %288 = and i32 %i.eeu, -2
  %unroll_iter4880 = zext i32 %288 to i64
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sy, %.lr.ph.i3424.new
  %.011.i = phi i32 [ 0, %.lr.ph.i3424.new ], [ %.1.i.1, %bb.sy ]
  %.0810.i = phi i64 [ 0, %.lr.ph.i3424.new ], [ %i.efm, %bb.sy ] ; 3 uses
  %niter4881 = phi i64 [ 0, %.lr.ph.i3424.new ], [ %niter4881.next.1, %bb.sy ]
  %i.eez = getelementptr inbounds nuw [8 x i8], ptr %i.eex, i64 %.0810.i
  %i.efa = load ptr, ptr %i.eez, align 8
  %i.efb = getelementptr inbounds nuw i8, ptr %i.efa, i64 216
  %i.efc = load i32, ptr %i.efb, align 8          ; 2 uses
  %.not.i3425 = icmp eq i32 %i.efc, 0
  %i.efd = add i32 %i.efc, 1
  %i.efe = select i1 %.not.i3425, i32 0, i32 %i.efd
  %.1.i = add i32 %i.efe, %.011.i
  %i.eff = getelementptr inbounds nuw [8 x i8], ptr %i.eex, i64 %.0810.i
  %i.efg = getelementptr inbounds nuw i8, ptr %i.eff, i64 8
  %i.efh = load ptr, ptr %i.efg, align 8
  %i.efi = getelementptr inbounds nuw i8, ptr %i.efh, i64 216
  %i.efj = load i32, ptr %i.efi, align 8          ; 2 uses
  %.not.i3425.1 = icmp eq i32 %i.efj, 0
  %i.efk = add i32 %i.efj, 1
  %i.efl = select i1 %.not.i3425.1, i32 0, i32 %i.efk
  %.1.i.1 = add i32 %i.efl, %.1.i                 ; 3 uses
  %i.efm = add nuw nsw i64 %.0810.i, 2            ; 2 uses
  %niter4881.next.1 = add i64 %niter4881, 2       ; 2 uses
  %niter4881.ncmp.1 = icmp eq i64 %niter4881.next.1, %unroll_iter4880
  br i1 %niter4881.ncmp.1, label %_ZL15count_deformersPK7aiScene.exit.loopexit.unr-lcssa, label %bb.sy, !llvm.loop !60

_ZL15count_deformersPK7aiScene.exit.loopexit.unr-lcssa: ; preds = %bb.sy
  %lcmp.mod4877.not = trunc i32 %i.eeu to i1
  br i1 %lcmp.mod4877.not, label %.epil.preheader4875, label %_ZL15count_deformersPK7aiScene.exit

.epil.preheader4875:                              ; preds = %_ZL15count_deformersPK7aiScene.exit.loopexit.unr-lcssa, %.lr.ph.i3424
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.i3424 ], [ %.1.i.1, %_ZL15count_deformersPK7aiScene.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi i64 [ 0, %.lr.ph.i3424 ], [ %i.efm, %_ZL15count_deformersPK7aiScene.exit.loopexit.unr-lcssa ]
  %lcmp.mod4879 = trunc i32 %i.eeu to i1
  call void @llvm.assume(i1 %lcmp.mod4879)
  %i.efn = getelementptr inbounds nuw [8 x i8], ptr %i.eex, i64 %.0810.i.epil.init
  %i.efo = load ptr, ptr %i.efn, align 8
  %i.efp = getelementptr inbounds nuw i8, ptr %i.efo, i64 216
  %i.efq = load i32, ptr %i.efp, align 8          ; 2 uses
  %.not.i3425.epil = icmp eq i32 %i.efq, 0
  %i.efr = add i32 %i.efq, 1
  %i.efs = select i1 %.not.i3425.epil, i32 0, i32 %i.efr
  %.1.i.epil = add i32 %i.efs, %.011.i.epil.init
  br label %_ZL15count_deformersPK7aiScene.exit

_ZL15count_deformersPK7aiScene.exit:              ; preds = %.epil.preheader4875, %_ZL15count_deformersPK7aiScene.exit.loopexit.unr-lcssa, %.thread4847, %bb.sx
  %.103654854 = phi i32 [ %.10365, %bb.sx ], [ %.9364, %.thread4847 ], [ %.10365, %_ZL15count_deformersPK7aiScene.exit.loopexit.unr-lcssa ], [ %.10365, %.epil.preheader4875 ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.sx ], [ 0, %.thread4847 ], [ %.1.i.1, %_ZL15count_deformersPK7aiScene.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %.epil.preheader4875 ]
  %i.eft = add nsw i32 %.0.lcssa.i, %.0369.lcssa4846 ; 2 uses
  store i32 %i.eft, ptr %i.ay, align 4
  %.not816 = icmp eq i32 %i.eft, 0
  br i1 %.not816, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3462, label %._crit_edge.i.i3428

._crit_edge.i.i3428:                              ; preds = %_ZL15count_deformersPK7aiScene.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %280) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %281) #31
  %i.efu = getelementptr inbounds nuw i8, ptr %281, i64 16 ; 6 uses
  store ptr %i.efu, ptr %281, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.efu, ptr noundef nonnull align 1 dereferenceable(10) @.str.81, i64 10, i1 false)
  %i.efv = getelementptr inbounds nuw i8, ptr %281, i64 8
  store i64 10, ptr %i.efv, align 8
  %i.efw = getelementptr inbounds nuw i8, ptr %281, i64 26
  store i8 0, ptr %i.efw, align 2
  invoke void @_ZN6Assimp3FBX4NodeC2IJRA9_KcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %280, ptr noundef nonnull align 8 dereferenceable(32) %281, ptr noundef nonnull align 1 dereferenceable(9) @.str.260)
          to label %bb.sz unwind label %bb.td

bb.sz:                                            ; preds = %._crit_edge.i.i3428
  %i.efx = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6Assimp3FBX4NodeaSEOS1_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(112) %280) #31 ; 0 uses
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %280) #31
  %i.efy = load ptr, ptr %281, align 8            ; 2 uses
  %i.efz = icmp eq ptr %i.efy, %i.efu
  br i1 %i.efz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3432: ; preds = %bb.sz
  %i.ega = load i64, ptr %i.efu, align 8
  %i.egb = add i64 %i.ega, 1
  call void @_ZdlPvm(ptr noundef %i.efy, i64 noundef %i.egb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3434: ; preds = %bb.sz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3432
  call void @llvm.lifetime.end.p0(ptr nonnull %281) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %280) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %282) #31
  %i.egc = getelementptr inbounds nuw i8, ptr %282, i64 16 ; 6 uses
  store ptr %i.egc, ptr %282, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.egc, ptr noundef nonnull align 1 dereferenceable(5) @.str.71, i64 5, i1 false)
  %i.egd = getelementptr inbounds nuw i8, ptr %282, i64 8
  store i64 5, ptr %i.egd, align 8
  %i.ege = getelementptr inbounds nuw i8, ptr %282, i64 21
  store i8 0, ptr %i.ege, align 1
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJRiEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(32) %282, ptr noundef nonnull align 4 dereferenceable(4) %i.ay)
          to label %bb.ta unwind label %bb.te

bb.ta:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3434
  %i.egf = load ptr, ptr %282, align 8            ; 2 uses
  %i.egg = icmp eq ptr %i.egf, %i.egc
  br i1 %i.egg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3439: ; preds = %bb.ta
  %i.egh = load i64, ptr %i.egc, align 8
  %i.egi = add i64 %i.egh, 1
  call void @_ZdlPvm(ptr noundef %i.egf, i64 noundef %i.egi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3441

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3441: ; preds = %bb.ta, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3439
  call void @llvm.lifetime.end.p0(ptr nonnull %282) #31
  %i.egj = load ptr, ptr %i.di, align 8           ; 3 uses
  %i.egk = load ptr, ptr %i.dk, align 8
  %.not.i3442 = icmp eq ptr %i.egj, %i.egk
  br i1 %.not.i3442, label %bb.tc, label %bb.tb

bb.tb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3441
  invoke void @_ZN6Assimp3FBX4NodeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.egj, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %.noexc3443 unwind label %.loopexit.split-lp

.noexc3443:                                       ; preds = %bb.tb
  %i.egl = load ptr, ptr %i.di, align 8
  %i.egm = getelementptr inbounds nuw i8, ptr %i.egl, i64 112
  store ptr %i.egm, ptr %i.di, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3445

bb.tc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3441
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.egj, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3445 unwind label %.loopexit.split-lp

_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3445: ; preds = %.noexc3443, %bb.tc
  %i.egn = load i32, ptr %i.ay, align 4
  %i.ego = add nsw i32 %i.egn, %.103654854
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3462

bb.td:                                            ; preds = %._crit_edge.i.i3428
  %i.egp = landingpad { ptr, i32 }
          cleanup
  %i.egq = load ptr, ptr %281, align 8            ; 2 uses
  %i.egr = icmp eq ptr %i.egq, %i.efu
  br i1 %i.egr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3446: ; preds = %bb.td
  %i.egs = load i64, ptr %i.efu, align 8
  %i.egt = add i64 %i.egs, 1
  call void @_ZdlPvm(ptr noundef %i.egq, i64 noundef %i.egt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3448: ; preds = %bb.td, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3446
  call void @llvm.lifetime.end.p0(ptr nonnull %281) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %280) #31
  br label %.body

bb.te:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3434
  %i.egu = landingpad { ptr, i32 }
          cleanup
  %i.egv = load ptr, ptr %282, align 8            ; 2 uses
  %i.egw = icmp eq ptr %i.egv, %i.egc
  br i1 %i.egw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3449: ; preds = %bb.te
  %i.egx = load i64, ptr %i.egc, align 8
  %i.egy = add i64 %i.egx, 1
  call void @_ZdlPvm(ptr noundef %i.egv, i64 noundef %i.egy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3451: ; preds = %bb.te, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3449
  call void @llvm.lifetime.end.p0(ptr nonnull %282) #31
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3462: ; preds = %_ZL15count_deformersPK7aiScene.exit, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3445
  %.11366 = phi i32 [ %i.ego, %_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE9push_backERKS2_.exit3445 ], [ %.103654854, %_ZL15count_deformersPK7aiScene.exit ]
  store i32 0, ptr %i.ay, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %283) #31
  %i.egz = getelementptr inbounds nuw i8, ptr %283, i64 16 ; 2 uses
  store ptr %i.egz, ptr %283, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.egz, ptr noundef nonnull align 1 dereferenceable(11) @.str.261, i64 11, i1 false)
  %i.eha = getelementptr inbounds nuw i8, ptr %283, i64 8
  store i64 11, ptr %i.eha, align 8
  %i.ehb = getelementptr inbounds nuw i8, ptr %283, i64 27
  store i8 0, ptr %i.ehb, align 1
  %i.ehc = getelementptr inbounds nuw i8, ptr %283, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ehc, i8 0, i64 49, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %284) #31
  %i.ehd = getelementptr inbounds nuw i8, ptr %284, i64 16 ; 6 uses
  store ptr %i.ehd, ptr %284, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ehd, ptr noundef nonnull align 1 dereferenceable(7) @.str.31, i64 7, i1 false)
  %i.ehe = getelementptr inbounds nuw i8, ptr %284, i64 8
  store i64 7, ptr %i.ehe, align 8
  %i.ehf = getelementptr inbounds nuw i8, ptr %284, i64 23
  store i8 0, ptr %i.ehf, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq) #31
  store i32 100, ptr %i.bq, align 4
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJiEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %283, ptr noundef nonnull align 8 dereferenceable(32) %284, ptr noundef nonnull align 4 dereferenceable(4) %i.bq)
          to label %bb.tf unwind label %bb.th

bb.tf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #31
  %i.ehg = load ptr, ptr %284, align 8            ; 2 uses
  %i.ehh = icmp eq ptr %i.ehg, %i.ehd
  br i1 %i.ehh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3469, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3467: ; preds = %bb.tf
  %i.ehi = load i64, ptr %i.ehd, align 8
  %i.ehj = add i64 %i.ehi, 1
  call void @_ZdlPvm(ptr noundef %i.ehg, i64 noundef %i.ehj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3469

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3469: ; preds = %bb.tf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3467
  call void @llvm.lifetime.end.p0(ptr nonnull %284) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %285) #31
  %i.ehk = getelementptr inbounds nuw i8, ptr %285, i64 16 ; 6 uses
  store ptr %i.ehk, ptr %285, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ehk, ptr noundef nonnull align 1 dereferenceable(5) @.str.71, i64 5, i1 false)
  %i.ehl = getelementptr inbounds nuw i8, ptr %285, i64 8
  store i64 5, ptr %i.ehl, align 8
  %i.ehm = getelementptr inbounds nuw i8, ptr %285, i64 21
  store i8 0, ptr %i.ehm, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br) #31
  store i32 %.11366, ptr %i.br, align 4
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJiEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %283, ptr noundef nonnull align 8 dereferenceable(32) %285, ptr noundef nonnull align 4 dereferenceable(4) %i.br)
          to label %bb.tg unwind label %bb.ti

bb.tg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #31
  %i.ehn = load ptr, ptr %285, align 8            ; 2 uses
  %i.eho = icmp eq ptr %i.ehn, %i.ehk
  br i1 %i.eho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3476, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3474

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3474: ; preds = %bb.tg
  %i.ehp = load i64, ptr %i.ehk, align 8
  %i.ehq = add i64 %i.ehp, 1
  call void @_ZdlPvm(ptr noundef %i.ehn, i64 noundef %i.ehq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3476
end_hunk_1
