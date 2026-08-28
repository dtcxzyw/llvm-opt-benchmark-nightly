Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@gladLoadGLUserPtr:bb.a
  %i.tk = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.723) #56, !inline_history !17
  store ptr %i.tk, ptr @glad_glProgramUniformMatrix2x3fv, align 8
  %i.tl = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.724) #56, !inline_history !17
  store ptr %i.tl, ptr @glad_glProgramUniformMatrix2x4dv, align 8
  %i.tm = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.725) #56, !inline_history !17
  store ptr %i.tm, ptr @glad_glProgramUniformMatrix2x4fv, align 8
  %i.tn = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.726) #56, !inline_history !17
  store ptr %i.tn, ptr @glad_glProgramUniformMatrix3dv, align 8
  %i.to = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.727) #56, !inline_history !17
  store ptr %i.to, ptr @glad_glProgramUniformMatrix3fv, align 8
  %i.tp = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.728) #56, !inline_history !17
  store ptr %i.tp, ptr @glad_glProgramUniformMatrix3x2dv, align 8
  %i.tq = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.729) #56, !inline_history !17
  store ptr %i.tq, ptr @glad_glProgramUniformMatrix3x2fv, align 8
  %i.tr = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.730) #56, !inline_history !17
  store ptr %i.tr, ptr @glad_glProgramUniformMatrix3x4dv, align 8
  %i.ts = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.731) #56, !inline_history !17
  store ptr %i.ts, ptr @glad_glProgramUniformMatrix3x4fv, align 8
  %i.tt = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.732) #56, !inline_history !17
  store ptr %i.tt, ptr @glad_glProgramUniformMatrix4dv, align 8
  %i.tu = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.733) #56, !inline_history !17
  store ptr %i.tu, ptr @glad_glProgramUniformMatrix4fv, align 8
  %i.tv = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.734) #56, !inline_history !17
  store ptr %i.tv, ptr @glad_glProgramUniformMatrix4x2dv, align 8
  %i.tw = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.735) #56, !inline_history !17
  store ptr %i.tw, ptr @glad_glProgramUniformMatrix4x2fv, align 8
  %i.tx = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.736) #56, !inline_history !17
  store ptr %i.tx, ptr @glad_glProgramUniformMatrix4x3dv, align 8
  %i.ty = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.737) #56, !inline_history !17
  store ptr %i.ty, ptr @glad_glProgramUniformMatrix4x3fv, align 8
  %i.tz = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.738) #56, !inline_history !17
  store ptr %i.tz, ptr @glad_glReleaseShaderCompiler, align 8
  %i.ua = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.739) #56, !inline_history !17
  store ptr %i.ua, ptr @glad_glScissorArrayv, align 8
  %i.ub = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.740) #56, !inline_history !17
  store ptr %i.ub, ptr @glad_glScissorIndexed, align 8
  %i.uc = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.741) #56, !inline_history !17
  store ptr %i.uc, ptr @glad_glScissorIndexedv, align 8
  %i.ud = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.742) #56, !inline_history !17
  store ptr %i.ud, ptr @glad_glShaderBinary, align 8
  %i.ue = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.743) #56, !inline_history !17
  store ptr %i.ue, ptr @glad_glUseProgramStages, align 8
  %i.uf = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.744) #56, !inline_history !17
  store ptr %i.uf, ptr @glad_glValidateProgramPipeline, align 8
  %i.ug = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.745) #56, !inline_history !17
  store ptr %i.ug, ptr @glad_glVertexAttribL1d, align 8
  %i.uh = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.746) #56, !inline_history !17
  store ptr %i.uh, ptr @glad_glVertexAttribL1dv, align 8
  %i.ui = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.747) #56, !inline_history !17
  store ptr %i.ui, ptr @glad_glVertexAttribL2d, align 8
  %i.uj = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.748) #56, !inline_history !17
  store ptr %i.uj, ptr @glad_glVertexAttribL2dv, align 8
  %i.uk = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.749) #56, !inline_history !17
  store ptr %i.uk, ptr @glad_glVertexAttribL3d, align 8
  %i.ul = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.750) #56, !inline_history !17
  store ptr %i.ul, ptr @glad_glVertexAttribL3dv, align 8
  %i.um = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.751) #56, !inline_history !17
  store ptr %i.um, ptr @glad_glVertexAttribL4d, align 8
  %i.un = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.752) #56, !inline_history !17
  store ptr %i.un, ptr @glad_glVertexAttribL4dv, align 8
  %i.uo = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.753) #56, !inline_history !17
  store ptr %i.uo, ptr @glad_glVertexAttribLPointer, align 8
  %i.up = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.754) #56, !inline_history !17
  store ptr %i.up, ptr @glad_glViewportArrayv, align 8
  %i.uq = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.755) #56, !inline_history !17
  store ptr %i.uq, ptr @glad_glViewportIndexedf, align 8
  %i.ur = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.756) #56, !inline_history !17
  store ptr %i.ur, ptr @glad_glViewportIndexedfv, align 8
  br label %glad_gl_load_GL_VERSION_4_1.exit

glad_gl_load_GL_VERSION_4_1.exit:                 ; preds = %glad_gl_load_GL_VERSION_4_0.exit, %bb.q
  %i.us = load i32, ptr @GLAD_GL_VERSION_4_2, align 4
  %.not.i177 = icmp eq i32 %i.us, 0
  br i1 %.not.i177, label %glad_gl_load_GL_VERSION_4_2.exit, label %bb.r

bb.r:                                             ; preds = %glad_gl_load_GL_VERSION_4_1.exit
  %i.ut = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.757) #56, !inline_history !18
  store ptr %i.ut, ptr @glad_glBindImageTexture, align 8
  %i.uu = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.758) #56, !inline_history !18
  store ptr %i.uu, ptr @glad_glDrawArraysInstancedBaseInstance, align 8
  %i.uv = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.759) #56, !inline_history !18
  store ptr %i.uv, ptr @glad_glDrawElementsInstancedBaseInstance, align 8
  %i.uw = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.760) #56, !inline_history !18
  store ptr %i.uw, ptr @glad_glDrawElementsInstancedBaseVertexBaseInstance, align 8
  %i.ux = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.761) #56, !inline_history !18
  store ptr %i.ux, ptr @glad_glDrawTransformFeedbackInstanced, align 8
  %i.uy = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.762) #56, !inline_history !18
  store ptr %i.uy, ptr @glad_glDrawTransformFeedbackStreamInstanced, align 8
  %i.uz = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.763) #56, !inline_history !18
  store ptr %i.uz, ptr @glad_glGetActiveAtomicCounterBufferiv, align 8
  %i.va = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.764) #56, !inline_history !18
  store ptr %i.va, ptr @glad_glGetInternalformativ, align 8
  %i.vb = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.765) #56, !inline_history !18
  store ptr %i.vb, ptr @glad_glMemoryBarrier, align 8
  %i.vc = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.766) #56, !inline_history !18
  store ptr %i.vc, ptr @glad_glTexStorage1D, align 8
  %i.vd = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.767) #56, !inline_history !18
  store ptr %i.vd, ptr @glad_glTexStorage2D, align 8
  %i.ve = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.768) #56, !inline_history !18
  store ptr %i.ve, ptr @glad_glTexStorage3D, align 8
  br label %glad_gl_load_GL_VERSION_4_2.exit

glad_gl_load_GL_VERSION_4_2.exit:                 ; preds = %glad_gl_load_GL_VERSION_4_1.exit, %bb.r
  %i.vf = load i32, ptr @GLAD_GL_VERSION_4_3, align 4
  %.not.i178 = icmp eq i32 %i.vf, 0
  br i1 %.not.i178, label %glad_gl_load_GL_VERSION_4_3.exit, label %bb.s

bb.s:                                             ; preds = %glad_gl_load_GL_VERSION_4_2.exit
  %i.vg = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.769) #56, !inline_history !19
  store ptr %i.vg, ptr @glad_glBindVertexBuffer, align 8
  %i.vh = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.770) #56, !inline_history !19
  store ptr %i.vh, ptr @glad_glClearBufferData, align 8
  %i.vi = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.771) #56, !inline_history !19
  store ptr %i.vi, ptr @glad_glClearBufferSubData, align 8
  %i.vj = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.772) #56, !inline_history !19
  store ptr %i.vj, ptr @glad_glCopyImageSubData, align 8
  %i.vk = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.773) #56, !inline_history !19
  store ptr %i.vk, ptr @glad_glDebugMessageCallback, align 8
  %i.vl = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.774) #56, !inline_history !19
  store ptr %i.vl, ptr @glad_glDebugMessageControl, align 8
  %i.vm = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.775) #56, !inline_history !19
  store ptr %i.vm, ptr @glad_glDebugMessageInsert, align 8
  %i.vn = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.776) #56, !inline_history !19
  store ptr %i.vn, ptr @glad_glDispatchCompute, align 8
  %i.vo = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.777) #56, !inline_history !19
  store ptr %i.vo, ptr @glad_glDispatchComputeIndirect, align 8
  %i.vp = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.778) #56, !inline_history !19
  store ptr %i.vp, ptr @glad_glFramebufferParameteri, align 8
  %i.vq = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.779) #56, !inline_history !19
  store ptr %i.vq, ptr @glad_glGetDebugMessageLog, align 8
  %i.vr = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.780) #56, !inline_history !19
  store ptr %i.vr, ptr @glad_glGetFramebufferParameteriv, align 8
  %i.vs = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.781) #56, !inline_history !19
  store ptr %i.vs, ptr @glad_glGetInternalformati64v, align 8
  %i.vt = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.782) #56, !inline_history !19
  store ptr %i.vt, ptr @glad_glGetObjectLabel, align 8
  %i.vu = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.783) #56, !inline_history !19
  store ptr %i.vu, ptr @glad_glGetObjectPtrLabel, align 8
  %i.vv = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.335) #56, !inline_history !19
  store ptr %i.vv, ptr @glad_glGetPointerv, align 8
  %i.vw = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.784) #56, !inline_history !19
  store ptr %i.vw, ptr @glad_glGetProgramInterfaceiv, align 8
  %i.vx = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.785) #56, !inline_history !19
  store ptr %i.vx, ptr @glad_glGetProgramResourceIndex, align 8
  %i.vy = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.786) #56, !inline_history !19
  store ptr %i.vy, ptr @glad_glGetProgramResourceLocation, align 8
  %i.vz = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.787) #56, !inline_history !19
  store ptr %i.vz, ptr @glad_glGetProgramResourceLocationIndex, align 8
  %i.wa = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.788) #56, !inline_history !19
  store ptr %i.wa, ptr @glad_glGetProgramResourceName, align 8
  %i.wb = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.789) #56, !inline_history !19
  store ptr %i.wb, ptr @glad_glGetProgramResourceiv, align 8
  %i.wc = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.790) #56, !inline_history !19
  store ptr %i.wc, ptr @glad_glInvalidateBufferData, align 8
  %i.wd = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.791) #56, !inline_history !19
  store ptr %i.wd, ptr @glad_glInvalidateBufferSubData, align 8
  %i.we = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.792) #56, !inline_history !19
  store ptr %i.we, ptr @glad_glInvalidateFramebuffer, align 8
  %i.wf = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.793) #56, !inline_history !19
  store ptr %i.wf, ptr @glad_glInvalidateSubFramebuffer, align 8
  %i.wg = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.794) #56, !inline_history !19
  store ptr %i.wg, ptr @glad_glInvalidateTexImage, align 8
  %i.wh = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.795) #56, !inline_history !19
  store ptr %i.wh, ptr @glad_glInvalidateTexSubImage, align 8
  %i.wi = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.796) #56, !inline_history !19
  store ptr %i.wi, ptr @glad_glMultiDrawArraysIndirect, align 8
  %i.wj = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.797) #56, !inline_history !19
  store ptr %i.wj, ptr @glad_glMultiDrawElementsIndirect, align 8
  %i.wk = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.798) #56, !inline_history !19
  store ptr %i.wk, ptr @glad_glObjectLabel, align 8
  %i.wl = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.799) #56, !inline_history !19
  store ptr %i.wl, ptr @glad_glObjectPtrLabel, align 8
  %i.wm = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.800) #56, !inline_history !19
  store ptr %i.wm, ptr @glad_glPopDebugGroup, align 8
  %i.wn = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.801) #56, !inline_history !19
  store ptr %i.wn, ptr @glad_glPushDebugGroup, align 8
  %i.wo = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.802) #56, !inline_history !19
  store ptr %i.wo, ptr @glad_glShaderStorageBlockBinding, align 8
  %i.wp = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.803) #56, !inline_history !19
  store ptr %i.wp, ptr @glad_glTexBufferRange, align 8
  %i.wq = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.804) #56, !inline_history !19
  store ptr %i.wq, ptr @glad_glTexStorage2DMultisample, align 8
  %i.wr = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.805) #56, !inline_history !19
  store ptr %i.wr, ptr @glad_glTexStorage3DMultisample, align 8
  %i.ws = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.806) #56, !inline_history !19
  store ptr %i.ws, ptr @glad_glTextureView, align 8
  %i.wt = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.807) #56, !inline_history !19
  store ptr %i.wt, ptr @glad_glVertexAttribBinding, align 8
  %i.wu = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.808) #56, !inline_history !19
  store ptr %i.wu, ptr @glad_glVertexAttribFormat, align 8
  %i.wv = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.809) #56, !inline_history !19
  store ptr %i.wv, ptr @glad_glVertexAttribIFormat, align 8
  %i.ww = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.810) #56, !inline_history !19
  store ptr %i.ww, ptr @glad_glVertexAttribLFormat, align 8
  %i.wx = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.811) #56, !inline_history !19
  store ptr %i.wx, ptr @glad_glVertexBindingDivisor, align 8
  br label %glad_gl_load_GL_VERSION_4_3.exit

glad_gl_load_GL_VERSION_4_3.exit:                 ; preds = %glad_gl_load_GL_VERSION_4_2.exit, %bb.s
  %i.wy = call fastcc i32 @glad_gl_find_extensions_gl(i32 noundef %.044.i)
  %.not = icmp eq i32 %i.wy, 0
  br i1 %.not, label %glad_gl_load_GL_OES_fixed_point.exit, label %bb.t

bb.t:                                             ; preds = %glad_gl_load_GL_VERSION_4_3.exit
  %i.wz = load i32, ptr @GLAD_GL_ARB_ES2_compatibility, align 4
  %.not.i179 = icmp eq i32 %i.wz, 0
  br i1 %.not.i179, label %glad_gl_load_GL_ARB_ES2_compatibility.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.xa = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.671) #56, !inline_history !20
  store ptr %i.xa, ptr @glad_glClearDepthf, align 8
  %i.xb = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.676) #56, !inline_history !20
  store ptr %i.xb, ptr @glad_glDepthRangef, align 8
  %i.xc = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.683) #56, !inline_history !20
  store ptr %i.xc, ptr @glad_glGetShaderPrecisionFormat, align 8
  %i.xd = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.738) #56, !inline_history !20
  store ptr %i.xd, ptr @glad_glReleaseShaderCompiler, align 8
  %i.xe = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.742) #56, !inline_history !20
  store ptr %i.xe, ptr @glad_glShaderBinary, align 8
  br label %glad_gl_load_GL_ARB_ES2_compatibility.exit

glad_gl_load_GL_ARB_ES2_compatibility.exit:       ; preds = %bb.t, %bb.u
  %i.xf = load i32, ptr @GLAD_GL_ARB_ES3_1_compatibility, align 4
  %.not.i180 = icmp eq i32 %i.xf, 0
  br i1 %.not.i180, label %glad_gl_load_GL_ARB_ES3_1_compatibility.exit, label %bb.v

bb.v:                                             ; preds = %glad_gl_load_GL_ARB_ES2_compatibility.exit
  %i.xg = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.928) #56, !inline_history !21
  store ptr %i.xg, ptr @glad_glMemoryBarrierByRegion, align 8
  br label %glad_gl_load_GL_ARB_ES3_1_compatibility.exit

glad_gl_load_GL_ARB_ES3_1_compatibility.exit:     ; preds = %glad_gl_load_GL_ARB_ES2_compatibility.exit, %bb.v
  %i.xh = load i32, ptr @GLAD_GL_ARB_ES3_2_compatibility, align 4
  %.not.i181 = icmp eq i32 %i.xh, 0
  br i1 %.not.i181, label %glad_gl_load_GL_ARB_ES3_2_compatibility.exit, label %bb.w

bb.w:                                             ; preds = %glad_gl_load_GL_ARB_ES3_1_compatibility.exit
  %i.xi = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.929) #56, !inline_history !22
  store ptr %i.xi, ptr @glad_glPrimitiveBoundingBoxARB, align 8
  br label %glad_gl_load_GL_ARB_ES3_2_compatibility.exit

glad_gl_load_GL_ARB_ES3_2_compatibility.exit:     ; preds = %glad_gl_load_GL_ARB_ES3_1_compatibility.exit, %bb.w
  %i.xj = load i32, ptr @GLAD_GL_ARB_blend_func_extended, align 4
  %.not.i182 = icmp eq i32 %i.xj, 0
  br i1 %.not.i182, label %glad_gl_load_GL_ARB_blend_func_extended.exit, label %bb.x

bb.x:                                             ; preds = %glad_gl_load_GL_ARB_ES3_2_compatibility.exit
  %i.xk = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.595) #56, !inline_history !23
  store ptr %i.xk, ptr @glad_glBindFragDataLocationIndexed, align 8
  %i.xl = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.599) #56, !inline_history !23
  store ptr %i.xl, ptr @glad_glGetFragDataIndex, align 8
  br label %glad_gl_load_GL_ARB_blend_func_extended.exit

glad_gl_load_GL_ARB_blend_func_extended.exit:     ; preds = %glad_gl_load_GL_ARB_ES3_2_compatibility.exit, %bb.x
  %i.xm = load i32, ptr @GLAD_GL_ARB_buffer_storage, align 4
  %.not.i183 = icmp eq i32 %i.xm, 0
  br i1 %.not.i183, label %glad_gl_load_GL_ARB_buffer_storage.exit, label %bb.y

bb.y:                                             ; preds = %glad_gl_load_GL_ARB_blend_func_extended.exit
  %i.xn = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.930) #56, !inline_history !24
  store ptr %i.xn, ptr @glad_glBufferStorage, align 8
  br label %glad_gl_load_GL_ARB_buffer_storage.exit

glad_gl_load_GL_ARB_buffer_storage.exit:          ; preds = %glad_gl_load_GL_ARB_blend_func_extended.exit, %bb.y
  %i.xo = load i32, ptr @GLAD_GL_ARB_clear_buffer_object, align 4
  %.not.i184 = icmp eq i32 %i.xo, 0
  br i1 %.not.i184, label %glad_gl_load_GL_ARB_clear_buffer_object.exit, label %bb.z

bb.z:                                             ; preds = %glad_gl_load_GL_ARB_buffer_storage.exit
  %i.xp = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.770) #56, !inline_history !25
  store ptr %i.xp, ptr @glad_glClearBufferData, align 8
  %i.xq = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.771) #56, !inline_history !25
  store ptr %i.xq, ptr @glad_glClearBufferSubData, align 8
  br label %glad_gl_load_GL_ARB_clear_buffer_object.exit

glad_gl_load_GL_ARB_clear_buffer_object.exit:     ; preds = %glad_gl_load_GL_ARB_buffer_storage.exit, %bb.z
  %i.xr = load i32, ptr @GLAD_GL_ARB_clear_texture, align 4
  %.not.i185 = icmp eq i32 %i.xr, 0
  br i1 %.not.i185, label %glad_gl_load_GL_ARB_clear_texture.exit, label %bb.aa

bb.aa:                                            ; preds = %glad_gl_load_GL_ARB_clear_buffer_object.exit
  %i.xs = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.931) #56, !inline_history !26
  store ptr %i.xs, ptr @glad_glClearTexImage, align 8
  %i.xt = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.932) #56, !inline_history !26
  store ptr %i.xt, ptr @glad_glClearTexSubImage, align 8
  br label %glad_gl_load_GL_ARB_clear_texture.exit

glad_gl_load_GL_ARB_clear_texture.exit:           ; preds = %glad_gl_load_GL_ARB_clear_buffer_object.exit, %bb.aa
  %i.xu = load i32, ptr @GLAD_GL_ARB_color_buffer_float, align 4
  %.not.i186 = icmp eq i32 %i.xu, 0
  br i1 %.not.i186, label %glad_gl_load_GL_ARB_color_buffer_float.exit, label %bb.ab

bb.ab:                                            ; preds = %glad_gl_load_GL_ARB_clear_texture.exit
  %i.xv = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.933) #56, !inline_history !27
  store ptr %i.xv, ptr @glad_glClampColorARB, align 8
  br label %glad_gl_load_GL_ARB_color_buffer_float.exit

glad_gl_load_GL_ARB_color_buffer_float.exit:      ; preds = %glad_gl_load_GL_ARB_clear_texture.exit, %bb.ab
  %i.xw = load i32, ptr @GLAD_GL_ARB_compute_shader, align 4
  %.not.i187 = icmp eq i32 %i.xw, 0
  br i1 %.not.i187, label %glad_gl_load_GL_ARB_compute_shader.exit, label %bb.ac

bb.ac:                                            ; preds = %glad_gl_load_GL_ARB_color_buffer_float.exit
  %i.xx = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.776) #56, !inline_history !28
  store ptr %i.xx, ptr @glad_glDispatchCompute, align 8
  %i.xy = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.777) #56, !inline_history !28
  store ptr %i.xy, ptr @glad_glDispatchComputeIndirect, align 8
  br label %glad_gl_load_GL_ARB_compute_shader.exit

glad_gl_load_GL_ARB_compute_shader.exit:          ; preds = %glad_gl_load_GL_ARB_color_buffer_float.exit, %bb.ac
  %i.xz = load i32, ptr @GLAD_GL_ARB_compute_variable_group_size, align 4
  %.not.i188 = icmp eq i32 %i.xz, 0
  br i1 %.not.i188, label %glad_gl_load_GL_ARB_compute_variable_group_size.exit, label %bb.ad

bb.ad:                                            ; preds = %glad_gl_load_GL_ARB_compute_shader.exit
  %i.ya = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.934) #56, !inline_history !29
  store ptr %i.ya, ptr @glad_glDispatchComputeGroupSizeARB, align 8
  br label %glad_gl_load_GL_ARB_compute_variable_group_size.exit

glad_gl_load_GL_ARB_compute_variable_group_size.exit: ; preds = %glad_gl_load_GL_ARB_compute_shader.exit, %bb.ad
  %i.yb = load i32, ptr @GLAD_GL_ARB_copy_buffer, align 4
  %.not.i189 = icmp eq i32 %i.yb, 0
  br i1 %.not.i189, label %glad_gl_load_GL_ARB_copy_buffer.exit, label %bb.ae

bb.ae:                                            ; preds = %glad_gl_load_GL_ARB_compute_variable_group_size.exit
  %i.yc = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.564) #56, !inline_history !30
  store ptr %i.yc, ptr @glad_glCopyBufferSubData, align 8
  br label %glad_gl_load_GL_ARB_copy_buffer.exit

glad_gl_load_GL_ARB_copy_buffer.exit:             ; preds = %glad_gl_load_GL_ARB_compute_variable_group_size.exit, %bb.ae
  %i.yd = load i32, ptr @GLAD_GL_ARB_copy_image, align 4
  %.not.i190 = icmp eq i32 %i.yd, 0
  br i1 %.not.i190, label %glad_gl_load_GL_ARB_copy_image.exit, label %bb.af

bb.af:                                            ; preds = %glad_gl_load_GL_ARB_copy_buffer.exit
  %i.ye = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.772) #56, !inline_history !31
  store ptr %i.ye, ptr @glad_glCopyImageSubData, align 8
  br label %glad_gl_load_GL_ARB_copy_image.exit

glad_gl_load_GL_ARB_copy_image.exit:              ; preds = %glad_gl_load_GL_ARB_copy_buffer.exit, %bb.af
  %i.yf = load i32, ptr @GLAD_GL_ARB_debug_output, align 4
  %.not.i191 = icmp eq i32 %i.yf, 0
  br i1 %.not.i191, label %glad_gl_load_GL_ARB_debug_output.exit, label %bb.ag

bb.ag:                                            ; preds = %glad_gl_load_GL_ARB_copy_image.exit
  %i.yg = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.935) #56, !inline_history !32
  store ptr %i.yg, ptr @glad_glDebugMessageCallbackARB, align 8
  %i.yh = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.936) #56, !inline_history !32
  store ptr %i.yh, ptr @glad_glDebugMessageControlARB, align 8
  %i.yi = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.937) #56, !inline_history !32
  store ptr %i.yi, ptr @glad_glDebugMessageInsertARB, align 8
  %i.yj = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.938) #56, !inline_history !32
  store ptr %i.yj, ptr @glad_glGetDebugMessageLogARB, align 8
  br label %glad_gl_load_GL_ARB_debug_output.exit

glad_gl_load_GL_ARB_debug_output.exit:            ; preds = %glad_gl_load_GL_ARB_copy_image.exit, %bb.ag
  %i.yk = load i32, ptr @GLAD_GL_ARB_direct_state_access, align 4
  %.not.i192 = icmp eq i32 %i.yk, 0
  br i1 %.not.i192, label %glad_gl_load_GL_ARB_direct_state_access.exit, label %bb.ah

bb.ah:                                            ; preds = %glad_gl_load_GL_ARB_debug_output.exit
  %i.yl = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.939) #56, !inline_history !33
  store ptr %i.yl, ptr @glad_glBindTextureUnit, align 8
  %i.ym = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.940) #56, !inline_history !33
  store ptr %i.ym, ptr @glad_glBlitNamedFramebuffer, align 8
  %i.yn = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.941) #56, !inline_history !33
  store ptr %i.yn, ptr @glad_glCheckNamedFramebufferStatus, align 8
  %i.yo = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.942) #56, !inline_history !33
  store ptr %i.yo, ptr @glad_glClearNamedBufferData, align 8
  %i.yp = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.943) #56, !inline_history !33
  store ptr %i.yp, ptr @glad_glClearNamedBufferSubData, align 8
  %i.yq = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.944) #56, !inline_history !33
  store ptr %i.yq, ptr @glad_glClearNamedFramebufferfi, align 8
  %i.yr = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.945) #56, !inline_history !33
  store ptr %i.yr, ptr @glad_glClearNamedFramebufferfv, align 8
  %i.ys = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.946) #56, !inline_history !33
  store ptr %i.ys, ptr @glad_glClearNamedFramebufferiv, align 8
  %i.yt = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.947) #56, !inline_history !33
  store ptr %i.yt, ptr @glad_glClearNamedFramebufferuiv, align 8
  %i.yu = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.948) #56, !inline_history !33
  store ptr %i.yu, ptr @glad_glCompressedTextureSubImage1D, align 8
  %i.yv = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.949) #56, !inline_history !33
  store ptr %i.yv, ptr @glad_glCompressedTextureSubImage2D, align 8
  %i.yw = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.950) #56, !inline_history !33
  store ptr %i.yw, ptr @glad_glCompressedTextureSubImage3D, align 8
  %i.yx = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.951) #56, !inline_history !33
  store ptr %i.yx, ptr @glad_glCopyNamedBufferSubData, align 8
  %i.yy = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.952) #56, !inline_history !33
  store ptr %i.yy, ptr @glad_glCopyTextureSubImage1D, align 8
  %i.yz = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.953) #56, !inline_history !33
  store ptr %i.yz, ptr @glad_glCopyTextureSubImage2D, align 8
  %i.za = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.954) #56, !inline_history !33
  store ptr %i.za, ptr @glad_glCopyTextureSubImage3D, align 8
  %i.zb = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.955) #56, !inline_history !33
  store ptr %i.zb, ptr @glad_glCreateBuffers, align 8
  %i.zc = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.956) #56, !inline_history !33
  store ptr %i.zc, ptr @glad_glCreateFramebuffers, align 8
  %i.zd = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.957) #56, !inline_history !33
  store ptr %i.zd, ptr @glad_glCreateProgramPipelines, align 8
  %i.ze = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.958) #56, !inline_history !33
  store ptr %i.ze, ptr @glad_glCreateQueries, align 8
  %i.zf = call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.959) #56, !inline_history !33
end_hunk_0
begin_hunk_1_@glad_gl_find_extensions_gl:bb.a
  br i1 %i.bno, label %glad_gl_has_extension.exit1817, label %.lr.ph40.i1815

bb.ve:                                            ; preds = %.lr.ph.i1807
  %indvars.iv.next.i1810 = add nuw nsw i64 %indvars.iv.i1808, 1 ; 2 uses
  %exitcond.not.i1811 = icmp eq i64 %indvars.iv.next.i1810, %wide.trip.count.i1806
  br i1 %exitcond.not.i1811, label %glad_gl_has_extension.exit1817, label %.lr.ph.i1807

.lr.ph.i1807:                                     ; preds = %bb.ve, %.lr.ph.preheader.i1805
  %indvars.iv.i1808 = phi i64 [ 0, %.lr.ph.preheader.i1805 ], [ %indvars.iv.next.i1810, %bb.ve ] ; 2 uses
  %i.bnp = getelementptr inbounds nuw [8 x i8], ptr %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787, i64 %indvars.iv.i1808
  %i.bnq = load ptr, ptr %i.bnp, align 8
  %i.bnr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bnq, ptr noundef nonnull dereferenceable(36) @.str.925) #57
  %.not.i1809 = icmp eq i32 %i.bnr, 0
  br i1 %.not.i1809, label %glad_gl_has_extension.exit1817, label %bb.ve

glad_gl_has_extension.exit1817.thread:            ; preds = %bb.va, %.preheader.i1814
  store i32 0, ptr @GLAD_GL_KHR_texture_compression_astc_ldr, align 4
  br label %bb.vf

.preheader33.i1818.thread:                        ; preds = %.preheader33.i1803, %.preheader33.i1803.thread
  %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806.ph = phi ptr [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787, %.preheader33.i1803 ], [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787.ph, %.preheader33.i1803.thread ]
  store i32 0, ptr @GLAD_GL_KHR_texture_compression_astc_ldr, align 4
  br label %.preheader33.i1833.thread

glad_gl_has_extension.exit1817:                   ; preds = %bb.ve, %.lr.ph.i1807, %bb.vc, %bb.vc, %bb.vd
  %.02207221922362254228123002327234623732392241924382465248425112530255725762603262226492668269527142741276027872806283328522879289829252944297129903017303630633082310931283155317432013220324732663293331233393358338534043431345034773496352335423569358836153634366136803707372637533772379938183845386438913910393739563983400240294048407540944121414041674186421342324259427843054324435143704397441644434462448945084535455445814600462746464673469247194738476547844811 = phi ptr [ %.02207221922362254228123002327234623732392241924382465248425112530255725762603262226492668269527142741276027872806283328522879289829252944297129903017303630633082310931283155317432013220324732663293331233393358338534043431345034773496352335423569358836153634366136803707372637533772379938183845386438913910393739563983400240294048407540944121414041674186421342324259427843054324435143704397441644434462448945084535455445814600462746464673469247194738476547844810, %bb.vc ], [ %.02207221922362254228123002327234623732392241924382465248425112530255725762603262226492668269527142741276027872806283328522879289829252944297129903017303630633082310931283155317432013220324732663293331233393358338534043431345034773496352335423569358836153634366136803707372637533772379938183845386438913910393739563983400240294048407540944121414041674186421342324259427843054324435143704397441644434462448945084535455445814600462746464673469247194738476547844810, %bb.vd ], [ %.02207221922362254228123002327234623732392241924382465248425112530255725762603262226492668269527142741276027872806283328522879289829252944297129903017303630633082310931283155317432013220324732663293331233393358338534043431345034773496352335423569358836153634366136803707372637533772379938183845386438913910393739563983400240294048407540944121414041674186421342324259427843054324435143704397441644434462448945084535455445814600462746464673469247194738476547844810, %bb.vc ], [ %.0220722192236225422812300232723462373239224192438246524842511253025572576260326222649266826952714274127602787280628332852287928982925294429712990301730363063308231093128315531743201322032473266329333123339335833853404343134503477349635233542356935883615363436613680370737263753377237993818384538643891391039373956398340024029404840754094412141404167418642134232425942784305432443514370439744164443446244894508453545544581460046274646467346924719473847654784, %.lr.ph.i1807 ], [ %.0220722192236225422812300232723462373239224192438246524842511253025572576260326222649266826952714274127602787280628332852287928982925294429712990301730363063308231093128315531743201322032473266329333123339335833853404343134503477349635233542356935883615363436613680370737263753377237993818384538643891391039373956398340024029404840754094412141404167418642134232425942784305432443514370439744164443446244894508453545544581460046274646467346924719473847654784, %bb.ve ] ; 3 uses
  %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854808 = phi i32 [ %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854809, %bb.vc ], [ %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854809, %bb.vd ], [ %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854809, %bb.vc ], [ %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785, %.lr.ph.i1807 ], [ %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785, %bb.ve ] ; 5 uses
  %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806 = phi ptr [ %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874807, %bb.vc ], [ %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874807, %bb.vd ], [ %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874807, %bb.vc ], [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787, %.lr.ph.i1807 ], [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787, %bb.ve ] ; 5 uses
  %.4.i1812 = phi i32 [ 1, %bb.vc ], [ 1, %bb.vc ], [ 0, %bb.vd ], [ 1, %.lr.ph.i1807 ], [ 0, %bb.ve ]
  store i32 %.4.i1812, ptr @GLAD_GL_KHR_texture_compression_astc_ldr, align 4
  br i1 %i.b, label %bb.vf, label %.preheader33.i1818

.preheader33.i1818:                               ; preds = %glad_gl_has_extension.exit1817
  %.not3234.not.i1819 = icmp eq i32 %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854808, 0
  br i1 %.not3234.not.i1819, label %.preheader33.i1833.thread, label %.lr.ph.preheader.i1820

.lr.ph.preheader.i1820:                           ; preds = %.preheader33.i1818
  %wide.trip.count.i1821 = zext i32 %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854808 to i64
  br label %.lr.ph.i1822

bb.vf:                                            ; preds = %glad_gl_has_extension.exit1817.thread, %glad_gl_has_extension.exit1817
  %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064834 = phi ptr [ %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874807, %glad_gl_has_extension.exit1817.thread ], [ %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806, %glad_gl_has_extension.exit1817 ] ; 4 uses
  %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084832 = phi i32 [ %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854809, %glad_gl_has_extension.exit1817.thread ], [ %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854808, %glad_gl_has_extension.exit1817 ] ; 4 uses
  %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114829 = phi ptr [ %.02207221922362254228123002327234623732392241924382465248425112530255725762603262226492668269527142741276027872806283328522879289829252944297129903017303630633082310931283155317432013220324732663293331233393358338534043431345034773496352335423569358836153634366136803707372637533772379938183845386438913910393739563983400240294048407540944121414041674186421342324259427843054324435143704397441644434462448945084535455445814600462746464673469247194738476547844810, %glad_gl_has_extension.exit1817.thread ], [ %.02207221922362254228123002327234623732392241924382465248425112530255725762603262226492668269527142741276027872806283328522879289829252944297129903017303630633082310931283155317432013220324732663293331233393358338534043431345034773496352335423569358836153634366136803707372637533772379938183845386438913910393739563983400240294048407540944121414041674186421342324259427843054324435143704397441644434462448945084535455445814600462746464673469247194738476547844811, %glad_gl_has_extension.exit1817 ] ; 7 uses
  %i.bns = icmp eq ptr %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114829, null
  br i1 %i.bns, label %glad_gl_has_extension.exit1832.thread, label %.preheader.i1829

.preheader.i1829:                                 ; preds = %bb.vf
  %i.bnt = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114829, ptr noundef nonnull dereferenceable(1) @.str.926) #57 ; 2 uses
  %i.bnu = icmp eq ptr %i.bnt, null
  br i1 %i.bnu, label %glad_gl_has_extension.exit1832.thread, label %.lr.ph40.i1830

.lr.ph40.i1830:                                   ; preds = %.preheader.i1829, %bb.vi
  %i.bnv = phi ptr [ %i.boc, %bb.vi ], [ %i.bnt, %.preheader.i1829 ] ; 3 uses
  %.02639.i1831 = phi ptr [ %i.bnw, %bb.vi ], [ %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114829, %.preheader.i1829 ]
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 34 ; 3 uses
  %i.bnx = icmp eq ptr %i.bnv, %.02639.i1831
  br i1 %i.bnx, label %bb.vh, label %bb.vg

bb.vg:                                            ; preds = %.lr.ph40.i1830
  %i.bny = getelementptr inbounds i8, ptr %i.bnv, i64 -1
  %i.bnz = load i8, ptr %i.bny, align 1
  %i.boa = icmp eq i8 %i.bnz, 32
  br i1 %i.boa, label %bb.vh, label %bb.vi

bb.vh:                                            ; preds = %bb.vg, %.lr.ph40.i1830
  %i.bob = load i8, ptr %i.bnw, align 1
  switch i8 %i.bob, label %bb.vi [
    i8 32, label %glad_gl_has_extension.exit1832
    i8 0, label %glad_gl_has_extension.exit1832
  ]

bb.vi:                                            ; preds = %bb.vh, %bb.vg
  %i.boc = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bnw, ptr noundef nonnull dereferenceable(1) @.str.926) #57 ; 2 uses
  %i.bod = icmp eq ptr %i.boc, null
  br i1 %i.bod, label %glad_gl_has_extension.exit1832, label %.lr.ph40.i1830

bb.vj:                                            ; preds = %.lr.ph.i1822
  %indvars.iv.next.i1825 = add nuw nsw i64 %indvars.iv.i1823, 1 ; 2 uses
  %exitcond.not.i1826 = icmp eq i64 %indvars.iv.next.i1825, %wide.trip.count.i1821
  br i1 %exitcond.not.i1826, label %glad_gl_has_extension.exit1832, label %.lr.ph.i1822

.lr.ph.i1822:                                     ; preds = %bb.vj, %.lr.ph.preheader.i1820
  %indvars.iv.i1823 = phi i64 [ 0, %.lr.ph.preheader.i1820 ], [ %indvars.iv.next.i1825, %bb.vj ] ; 2 uses
  %i.boe = getelementptr inbounds nuw [8 x i8], ptr %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806, i64 %indvars.iv.i1823
  %i.bof = load ptr, ptr %i.boe, align 8
  %i.bog = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bof, ptr noundef nonnull dereferenceable(35) @.str.926) #57
  %.not.i1824 = icmp eq i32 %i.bog, 0
  br i1 %.not.i1824, label %glad_gl_has_extension.exit1832, label %bb.vj

glad_gl_has_extension.exit1832.thread:            ; preds = %bb.vf, %.preheader.i1829
  store i32 0, ptr @GLAD_GL_OES_compressed_paletted_texture, align 4
  br label %bb.vk

.preheader33.i1833.thread:                        ; preds = %.preheader33.i1818, %.preheader33.i1818.thread
  %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064833.ph = phi ptr [ %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806, %.preheader33.i1818 ], [ %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806.ph, %.preheader33.i1818.thread ]
  store i32 0, ptr @GLAD_GL_OES_compressed_paletted_texture, align 4
  br label %glad_gl_has_extension.exit1847

glad_gl_has_extension.exit1832:                   ; preds = %bb.vj, %.lr.ph.i1822, %bb.vh, %bb.vh, %bb.vi
  %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064833 = phi ptr [ %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064834, %bb.vh ], [ %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064834, %bb.vi ], [ %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064834, %bb.vh ], [ %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806, %.lr.ph.i1822 ], [ %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806, %bb.vj ] ; 5 uses
  %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084831 = phi i32 [ %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084832, %bb.vh ], [ %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084832, %bb.vi ], [ %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084832, %bb.vh ], [ %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854808, %.lr.ph.i1822 ], [ %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854808, %bb.vj ] ; 5 uses
  %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114830 = phi ptr [ %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114829, %bb.vh ], [ %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114829, %bb.vi ], [ %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114829, %bb.vh ], [ %.02207221922362254228123002327234623732392241924382465248425112530255725762603262226492668269527142741276027872806283328522879289829252944297129903017303630633082310931283155317432013220324732663293331233393358338534043431345034773496352335423569358836153634366136803707372637533772379938183845386438913910393739563983400240294048407540944121414041674186421342324259427843054324435143704397441644434462448945084535455445814600462746464673469247194738476547844811, %.lr.ph.i1822 ], [ %.02207221922362254228123002327234623732392241924382465248425112530255725762603262226492668269527142741276027872806283328522879289829252944297129903017303630633082310931283155317432013220324732663293331233393358338534043431345034773496352335423569358836153634366136803707372637533772379938183845386438913910393739563983400240294048407540944121414041674186421342324259427843054324435143704397441644434462448945084535455445814600462746464673469247194738476547844811, %bb.vj ]
  %.4.i1827 = phi i32 [ 1, %bb.vh ], [ 1, %bb.vh ], [ 0, %bb.vi ], [ 1, %.lr.ph.i1822 ], [ 0, %bb.vj ]
  store i32 %.4.i1827, ptr @GLAD_GL_OES_compressed_paletted_texture, align 4
  br i1 %i.b, label %bb.vk, label %.preheader33.i1833

.preheader33.i1833:                               ; preds = %glad_gl_has_extension.exit1832
  %.not3234.not.i1834 = icmp eq i32 %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084831, 0
  br i1 %.not3234.not.i1834, label %glad_gl_has_extension.exit1847, label %.lr.ph.preheader.i1835

.lr.ph.preheader.i1835:                           ; preds = %.preheader33.i1833
  %wide.trip.count.i1836 = zext i32 %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084831 to i64
  br label %.lr.ph.i1837

bb.vk:                                            ; preds = %glad_gl_has_extension.exit1832.thread, %glad_gl_has_extension.exit1832
  %.0220722192236225422812300232723462373239224192438246524842511253025572576260326222649266826952714274127602787280628332852287928982925294429712990301730363063308231093128315531743201322032473266329333123339335833853404343134503477349635233542356935883615363436613680370737263753377237993818384538643891391039373956398340024029404840754094412141404167418642134232425942784305432443514370439744164443446244894508453545544581460046274646467346924719473847654784481148304856 = phi ptr [ %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114829, %glad_gl_has_extension.exit1832.thread ], [ %.022072219223622542281230023272346237323922419243824652484251125302557257626032622264926682695271427412760278728062833285228792898292529442971299030173036306330823109312831553174320132203247326632933312333933583385340434313450347734963523354235693588361536343661368037073726375337723799381838453864389139103937395639834002402940484075409441214140416741864213423242594278430543244351437043974416444344624489450845354554458146004627464646734692471947384765478448114830, %glad_gl_has_extension.exit1832 ] ; 3 uses
  %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785480848314855 = phi i32 [ %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084832, %glad_gl_has_extension.exit1832.thread ], [ %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084831, %glad_gl_has_extension.exit1832 ] ; 5 uses
  %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787480648334853 = phi ptr [ %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064834, %glad_gl_has_extension.exit1832.thread ], [ %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064833, %glad_gl_has_extension.exit1832 ] ; 5 uses
  %i.boh = icmp eq ptr %.0220722192236225422812300232723462373239224192438246524842511253025572576260326222649266826952714274127602787280628332852287928982925294429712990301730363063308231093128315531743201322032473266329333123339335833853404343134503477349635233542356935883615363436613680370737263753377237993818384538643891391039373956398340024029404840754094412141404167418642134232425942784305432443514370439744164443446244894508453545544581460046274646467346924719473847654784481148304856, null
  br i1 %i.boh, label %glad_gl_has_extension.exit1847, label %.preheader.i1844

.preheader.i1844:                                 ; preds = %bb.vk
  %i.boi = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.0220722192236225422812300232723462373239224192438246524842511253025572576260326222649266826952714274127602787280628332852287928982925294429712990301730363063308231093128315531743201322032473266329333123339335833853404343134503477349635233542356935883615363436613680370737263753377237993818384538643891391039373956398340024029404840754094412141404167418642134232425942784305432443514370439744164443446244894508453545544581460046274646467346924719473847654784481148304856, ptr noundef nonnull dereferenceable(1) @.str.927) #57 ; 2 uses
  %i.boj = icmp eq ptr %i.boi, null
  br i1 %i.boj, label %glad_gl_has_extension.exit1847, label %.lr.ph40.i1845

.lr.ph40.i1845:                                   ; preds = %.preheader.i1844, %bb.vn
  %i.bok = phi ptr [ %i.bor, %bb.vn ], [ %i.boi, %.preheader.i1844 ] ; 3 uses
  %.02639.i1846 = phi ptr [ %i.bol, %bb.vn ], [ %.0220722192236225422812300232723462373239224192438246524842511253025572576260326222649266826952714274127602787280628332852287928982925294429712990301730363063308231093128315531743201322032473266329333123339335833853404343134503477349635233542356935883615363436613680370737263753377237993818384538643891391039373956398340024029404840754094412141404167418642134232425942784305432443514370439744164443446244894508453545544581460046274646467346924719473847654784481148304856, %.preheader.i1844 ]
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 18 ; 3 uses
  %i.bom = icmp eq ptr %i.bok, %.02639.i1846
  br i1 %i.bom, label %bb.vm, label %bb.vl

bb.vl:                                            ; preds = %.lr.ph40.i1845
  %i.bon = getelementptr inbounds i8, ptr %i.bok, i64 -1
  %i.boo = load i8, ptr %i.bon, align 1
  %i.bop = icmp eq i8 %i.boo, 32
  br i1 %i.bop, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %bb.vl, %.lr.ph40.i1845
  %i.boq = load i8, ptr %i.bol, align 1
  switch i8 %i.boq, label %bb.vn [
    i8 32, label %glad_gl_has_extension.exit1847
    i8 0, label %glad_gl_has_extension.exit1847
  ]

bb.vn:                                            ; preds = %bb.vm, %bb.vl
  %i.bor = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bol, ptr noundef nonnull dereferenceable(1) @.str.927) #57 ; 2 uses
  %i.bos = icmp eq ptr %i.bor, null
  br i1 %i.bos, label %glad_gl_has_extension.exit1847, label %.lr.ph40.i1845

bb.vo:                                            ; preds = %.lr.ph.i1837
  %indvars.iv.next.i1840 = add nuw nsw i64 %indvars.iv.i1838, 1 ; 2 uses
  %exitcond.not.i1841 = icmp eq i64 %indvars.iv.next.i1840, %wide.trip.count.i1836
  br i1 %exitcond.not.i1841, label %glad_gl_has_extension.exit1847, label %.lr.ph.i1837

.lr.ph.i1837:                                     ; preds = %bb.vo, %.lr.ph.preheader.i1835
  %indvars.iv.i1838 = phi i64 [ 0, %.lr.ph.preheader.i1835 ], [ %indvars.iv.next.i1840, %bb.vo ] ; 2 uses
  %i.bot = getelementptr inbounds nuw [8 x i8], ptr %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064833, i64 %indvars.iv.i1838
  %i.bou = load ptr, ptr %i.bot, align 8
  %i.bov = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bou, ptr noundef nonnull dereferenceable(19) @.str.927) #57
  %.not.i1839 = icmp eq i32 %i.bov, 0
  br i1 %.not.i1839, label %glad_gl_has_extension.exit1847.thread, label %bb.vo

glad_gl_has_extension.exit1847.thread:            ; preds = %.lr.ph.i1837
  store i32 1, ptr @GLAD_GL_OES_fixed_point, align 4
  br label %.preheader.i1849

glad_gl_has_extension.exit1847:                   ; preds = %bb.vo, %bb.vm, %bb.vm, %bb.vn, %.preheader33.i1833.thread, %.preheader33.i1833, %bb.vk, %.preheader.i1844
  %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785480848314854 = phi i32 [ 0, %.preheader33.i1833.thread ], [ %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785480848314855, %bb.vk ], [ %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785480848314855, %.preheader.i1844 ], [ 0, %.preheader33.i1833 ], [ %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785480848314855, %bb.vm ], [ %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785480848314855, %bb.vn ], [ %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785480848314855, %bb.vm ], [ %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084831, %bb.vo ]
  %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787480648334852 = phi ptr [ %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064833.ph, %.preheader33.i1833.thread ], [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787480648334853, %bb.vk ], [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787480648334853, %.preheader.i1844 ], [ %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064833, %.preheader33.i1833 ], [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787480648334853, %bb.vm ], [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787480648334853, %bb.vn ], [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787480648334853, %bb.vm ], [ %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064833, %bb.vo ] ; 2 uses
  %.4.i1842 = phi i32 [ 0, %.preheader33.i1833.thread ], [ 0, %bb.vk ], [ 0, %.preheader.i1844 ], [ 0, %.preheader33.i1833 ], [ 1, %bb.vm ], [ 1, %bb.vm ], [ 0, %bb.vn ], [ 0, %bb.vo ]
  store i32 %.4.i1842, ptr @GLAD_GL_OES_fixed_point, align 4
  %.not.i1848 = icmp eq ptr %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787480648334852, null
  br i1 %.not.i1848, label %glad_gl_free_extensions.exit, label %.preheader.i1849

.preheader.i1849:                                 ; preds = %glad_gl_has_extension.exit1847.thread, %glad_gl_has_extension.exit1847
  %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806483348525693 = phi ptr [ %.022052222223122572276230323222349236823952414244124602487250625332552257925982625264426712690271727362763278228092828285528742901292029472966299330123039305830853104313131503177319632233242326932883315333433613380340734263453347234993518354535643591361036373656368337023729374837753794382138403867388639133932395939784005402440514070409741164143416241894208423542544281430043274346437343924419443844654484451145304557457646034622464946684695471447414760478748064833, %glad_gl_has_extension.exit1847.thread ], [ %.0220522222231225722762303232223492368239524142441246024872506253325522579259826252644267126902717273627632782280928282855287429012920294729662993301230393058308531043131315031773196322332423269328833153334336133803407342634533472349935183545356435913610363736563683370237293748377537943821384038673886391339323959397840054024405140704097411641434162418942084235425442814300432743464373439244194438446544844511453045574576460346224649466846954714474147604787480648334852, %glad_gl_has_extension.exit1847 ] ; 2 uses
  %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854808483148545692 = phi i32 [ %.022062220223322552278230123242347237023932416243924622485250825312554257726002623264626692692271527382761278428072830285328762899292229452968299130143037306030833106312931523175319832213244326732903313333633593382340534283451347434973520354335663589361236353658368137043727375037733796381938423865388839113934395739804003402640494072409541184141416441874210423342564279430243254348437143944417444044634486450945324555457846014624464746704693471647394762478548084831, %glad_gl_has_extension.exit1847.thread ], [ %.0220622202233225522782301232423472370239324162439246224852508253125542577260026232646266926922715273827612784280728302853287628992922294529682991301430373060308331063129315231753198322132443267329033133336335933823405342834513474349735203543356635893612363536583681370437273750377337963819384238653888391139343957398040034026404940724095411841414164418742104233425642794302432543484371439444174440446344864509453245554578460146244647467046934716473947624785480848314854, %glad_gl_has_extension.exit1847 ] ; 2 uses
  %.not8.i = icmp eq i32 %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854808483148545692, 0
  br i1 %.not8.i, label %._crit_edge.i1856, label %.lr.ph.preheader.i1850

.lr.ph.preheader.i1850:                           ; preds = %.preheader.i1849
  %wide.trip.count.i1851 = zext i32 %.02206222022332255227823012324234723702393241624392462248525082531255425772600262326462669269227152738276127842807283028532876289929222945296829913014303730603083310631293152317531983221324432673290331333363359338234053428345134743497352035433566358936123635365836813704372737503773379638193842386538883911393439573980400340264049407240954118414141644187421042334256427943024325434843714394441744404463448645094532455545784601462446474670469347164739476247854808483148545692 to i64
  br label %.lr.ph.i1852

.lr.ph.i1852:                                     ; preds = %.lr.ph.i1852, %.lr.ph.preheader.i1850
  %indvars.iv.i1853 = phi i64 [ 0, %.lr.ph.preheader.i1850 ], [ %indvars.iv.next.i1854, %.lr.ph.i1852 ] ; 2 uses
  %i.bow = getelementptr inbounds nuw [8 x i8], ptr %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806483348525693, i64 %indvars.iv.i1853
  %i.box = load ptr, ptr %i.bow, align 8
  call void @free(ptr noundef %i.box) #56
  %indvars.iv.next.i1854 = add nuw nsw i64 %indvars.iv.i1853, 1 ; 2 uses
  %exitcond.not.i1855 = icmp eq i64 %indvars.iv.next.i1854, %wide.trip.count.i1851
  br i1 %exitcond.not.i1855, label %._crit_edge.i1856, label %.lr.ph.i1852

._crit_edge.i1856:                                ; preds = %.lr.ph.i1852, %.preheader.i1849
  call void @free(ptr noundef nonnull %.02205222222312257227623032322234923682395241424412460248725062533255225792598262526442671269027172736276327822809282828552874290129202947296629933012303930583085310431313150317731963223324232693288331533343361338034073426345334723499351835453564359136103637365636833702372937483775379438213840386738863913393239593978400540244051407040974116414341624189420842354254428143004327434643734392441944384465448445114530455745764603462246494668469547144741476047874806483348525693) #56
  br label %glad_gl_free_extensions.exit

glad_gl_free_extensions.exit:                     ; preds = %bb.b, %.thread30.i, %._crit_edge.i1856, %glad_gl_has_extension.exit1847
  %.0 = phi i32 [ 1, %._crit_edge.i1856 ], [ 1, %glad_gl_has_extension.exit1847 ], [ 0, %.thread30.i ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @gladLoadGL(ptr nofree noundef readonly %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = tail call ptr %0(ptr noundef nonnull @.str) #56, !inline_history !84 ; 3 uses
  store ptr %i.c, ptr @glad_glGetString, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %gladLoadGLUserPtr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr %i.c(i32 noundef 7938) #56, !inline_history !85
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %gladLoadGLUserPtr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i32 0, ptr %i.b, align 4
  %i.g = load ptr, ptr @glad_glGetString, align 8
  %i.h = tail call ptr %i.g(i32 noundef 7938) #56, !inline_history !86 ; 7 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.glad_gl_find_core_gl.exit_crit_edge.i, label %.preheader.preheader.i.i

.glad_gl_find_core_gl.exit_crit_edge.i:           ; preds = %bb.c
  %.pre.i = load i32, ptr @GLAD_GL_VERSION_1_0, align 4
  br label %glad_gl_find_core_gl.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.c
  %i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(14) @.str.274, i64 noundef 13) #57
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.split.loop.exit.i.i, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.k = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(14) @.str.275, i64 noundef 13) #57
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.split.loop.exit.i.i, label %.preheader.2.i.i

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.m = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(11) @.str.276, i64 noundef 10) #57
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.split.loop.exit.i.i, label %.preheader.3.i.i

.preheader.3.i.i:                                 ; preds = %.preheader.2.i.i
  %i.o = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(11) @.str.277, i64 noundef 10) #57
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.split.loop.exit.i.i, label %.split.loop.exit48.i.i

.split.loop.exit.i.i:                             ; preds = %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 13, %.preheader.preheader.i.i ], [ 13, %.preheader.1.i.i ], [ 10, %.preheader.2.i.i ], [ 10, %.preheader.3.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.lcssa.i.i
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %.split.loop.exit.i.i, %.preheader.3.i.i
  %.2.i.i = phi ptr [ %i.q, %.split.loop.exit.i.i ], [ %i.h, %.preheader.3.i.i ]
  %i.r = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %.2.i.i, ptr noundef nonnull @.str.278, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #56 ; 0 uses
  %i.s = load i32, ptr %i.a, align 4              ; 9 uses
  %i.t = icmp eq i32 %i.s, 1                      ; 6 uses
  %i.u = load i32, ptr %i.b, align 4              ; 7 uses
  %i.v = icmp sgt i32 %i.u, -1                    ; 4 uses
  %or.cond.i.i = select i1 %i.t, i1 %i.v, i1 false
  %i.w = icmp sgt i32 %i.s, 1                     ; 6 uses
  %i.x = or i1 %i.w, %or.cond.i.i
  %i.y = zext i1 %i.x to i32                      ; 2 uses
  store i32 %i.y, ptr @GLAD_GL_VERSION_1_0, align 4
  %i.z = icmp sgt i32 %i.u, 0                     ; 4 uses
  %or.cond3.i.i = select i1 %i.t, i1 %i.z, i1 false
  %i.aa = or i1 %i.w, %or.cond3.i.i
  %i.ab = zext i1 %i.aa to i32
  store i32 %i.ab, ptr @GLAD_GL_VERSION_1_1, align 4
  %i.ac = icmp sgt i32 %i.u, 1                    ; 3 uses
  %or.cond5.i.i = select i1 %i.t, i1 %i.ac, i1 false
  %i.ad = or i1 %i.w, %or.cond5.i.i
  %i.ae = zext i1 %i.ad to i32
  store i32 %i.ae, ptr @GLAD_GL_VERSION_1_2, align 4
  %i.af = icmp sgt i32 %i.u, 2                    ; 3 uses
  %or.cond7.i.i = select i1 %i.t, i1 %i.af, i1 false
  %i.ag = or i1 %i.w, %or.cond7.i.i
  %i.ah = zext i1 %i.ag to i32
  store i32 %i.ah, ptr @GLAD_GL_VERSION_1_3, align 4
  %i.ai = icmp sgt i32 %i.u, 3
  %or.cond9.i.i = select i1 %i.t, i1 %i.ai, i1 false
  %i.aj = or i1 %i.w, %or.cond9.i.i
  %i.ak = zext i1 %i.aj to i32
  store i32 %i.ak, ptr @GLAD_GL_VERSION_1_4, align 4
  %i.al = icmp sgt i32 %i.u, 4
  %or.cond11.i.i = select i1 %i.t, i1 %i.al, i1 false
  %i.am = or i1 %i.w, %or.cond11.i.i
  %i.an = zext i1 %i.am to i32
  store i32 %i.an, ptr @GLAD_GL_VERSION_1_5, align 4
  %i.ao = icmp eq i32 %i.s, 2                     ; 2 uses
  %or.cond13.i.i = select i1 %i.ao, i1 %i.v, i1 false
  %i.ap = icmp sgt i32 %i.s, 2                    ; 2 uses
  %i.aq = or i1 %i.ap, %or.cond13.i.i
  %i.ar = zext i1 %i.aq to i32
  store i32 %i.ar, ptr @GLAD_GL_VERSION_2_0, align 4
  %or.cond15.i.i = select i1 %i.ao, i1 %i.z, i1 false
  %i.as = or i1 %i.ap, %or.cond15.i.i
  %i.at = zext i1 %i.as to i32
  store i32 %i.at, ptr @GLAD_GL_VERSION_2_1, align 4
  %i.au = icmp eq i32 %i.s, 3                     ; 4 uses
  %or.cond17.i.i = select i1 %i.au, i1 %i.v, i1 false
  %i.av = icmp sgt i32 %i.s, 3                    ; 4 uses
  %i.aw = or i1 %i.av, %or.cond17.i.i
  %i.ax = zext i1 %i.aw to i32
  store i32 %i.ax, ptr @GLAD_GL_VERSION_3_0, align 4
  %or.cond19.i.i = select i1 %i.au, i1 %i.z, i1 false
  %i.ay = or i1 %i.av, %or.cond19.i.i
  %i.az = zext i1 %i.ay to i32
  store i32 %i.az, ptr @GLAD_GL_VERSION_3_1, align 4
  %or.cond21.i.i = select i1 %i.au, i1 %i.ac, i1 false
  %i.ba = or i1 %i.av, %or.cond21.i.i
  %i.bb = zext i1 %i.ba to i32
  store i32 %i.bb, ptr @GLAD_GL_VERSION_3_2, align 4
  %or.cond23.i.i = select i1 %i.au, i1 %i.af, i1 false
  %i.bc = or i1 %i.av, %or.cond23.i.i
  %i.bd = zext i1 %i.bc to i32
  store i32 %i.bd, ptr @GLAD_GL_VERSION_3_3, align 4
  %i.be = icmp eq i32 %i.s, 4                     ; 4 uses
  %or.cond25.i.i = select i1 %i.be, i1 %i.v, i1 false
  %i.bf = icmp sgt i32 %i.s, 4                    ; 4 uses
  %i.bg = or i1 %i.bf, %or.cond25.i.i
  %i.bh = zext i1 %i.bg to i32
  store i32 %i.bh, ptr @GLAD_GL_VERSION_4_0, align 4
  %or.cond27.i.i = select i1 %i.be, i1 %i.z, i1 false
  %i.bi = or i1 %i.bf, %or.cond27.i.i
  %i.bj = zext i1 %i.bi to i32
  store i32 %i.bj, ptr @GLAD_GL_VERSION_4_1, align 4
  %or.cond29.i.i = select i1 %i.be, i1 %i.ac, i1 false
  %i.bk = or i1 %i.bf, %or.cond29.i.i
  %i.bl = zext i1 %i.bk to i32
  store i32 %i.bl, ptr @GLAD_GL_VERSION_4_2, align 4
  %or.cond31.i.i = select i1 %i.be, i1 %i.af, i1 false
  %i.bm = or i1 %i.bf, %or.cond31.i.i
  %i.bn = zext i1 %i.bm to i32
  store i32 %i.bn, ptr @GLAD_GL_VERSION_4_3, align 4
  %i.bo = mul nsw i32 %i.s, 10000
  %i.bp = add nsw i32 %i.bo, %i.u
  br label %glad_gl_find_core_gl.exit.i

glad_gl_find_core_gl.exit.i:                      ; preds = %.split.loop.exit48.i.i, %.glad_gl_find_core_gl.exit_crit_edge.i
  %i.bq = phi i32 [ %i.y, %.split.loop.exit48.i.i ], [ %.pre.i, %.glad_gl_find_core_gl.exit_crit_edge.i ]
  %.044.i.i = phi i32 [ %i.bp, %.split.loop.exit48.i.i ], [ 0, %.glad_gl_find_core_gl.exit_crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %.not.i163.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i163.i, label %glad_gl_load_GL_VERSION_1_0.exit.i, label %bb.d

bb.d:                                             ; preds = %glad_gl_find_core_gl.exit.i
  %i.br = call ptr %0(ptr noundef nonnull @.str.279) #56, !inline_history !87
  store ptr %i.br, ptr @glad_glBlendFunc, align 8
  %i.bs = call ptr %0(ptr noundef nonnull @.str.280) #56, !inline_history !87
  store ptr %i.bs, ptr @glad_glClear, align 8
  %i.bt = call ptr %0(ptr noundef nonnull @.str.281) #56, !inline_history !87
  store ptr %i.bt, ptr @glad_glClearColor, align 8
  %i.bu = call ptr %0(ptr noundef nonnull @.str.282) #56, !inline_history !87
  store ptr %i.bu, ptr @glad_glClearDepth, align 8
  %i.bv = call ptr %0(ptr noundef nonnull @.str.283) #56, !inline_history !87
  store ptr %i.bv, ptr @glad_glClearStencil, align 8
  %i.bw = call ptr %0(ptr noundef nonnull @.str.284) #56, !inline_history !87
  store ptr %i.bw, ptr @glad_glColorMask, align 8
  %i.bx = call ptr %0(ptr noundef nonnull @.str.285) #56, !inline_history !87
  store ptr %i.bx, ptr @glad_glCullFace, align 8
  %i.by = call ptr %0(ptr noundef nonnull @.str.286) #56, !inline_history !87
  store ptr %i.by, ptr @glad_glDepthFunc, align 8
  %i.bz = call ptr %0(ptr noundef nonnull @.str.287) #56, !inline_history !87
  store ptr %i.bz, ptr @glad_glDepthMask, align 8
  %i.ca = call ptr %0(ptr noundef nonnull @.str.288) #56, !inline_history !87
  store ptr %i.ca, ptr @glad_glDepthRange, align 8
  %i.cb = call ptr %0(ptr noundef nonnull @.str.289) #56, !inline_history !87
  store ptr %i.cb, ptr @glad_glDisable, align 8
  %i.cc = call ptr %0(ptr noundef nonnull @.str.290) #56, !inline_history !87
  store ptr %i.cc, ptr @glad_glDrawBuffer, align 8
  %i.cd = call ptr %0(ptr noundef nonnull @.str.291) #56, !inline_history !87
  store ptr %i.cd, ptr @glad_glEnable, align 8
  %i.ce = call ptr %0(ptr noundef nonnull @.str.292) #56, !inline_history !87
  store ptr %i.ce, ptr @glad_glFinish, align 8
  %i.cf = call ptr %0(ptr noundef nonnull @.str.293) #56, !inline_history !87
  store ptr %i.cf, ptr @glad_glFlush, align 8
  %i.cg = call ptr %0(ptr noundef nonnull @.str.294) #56, !inline_history !87
  store ptr %i.cg, ptr @glad_glFrontFace, align 8
  %i.ch = call ptr %0(ptr noundef nonnull @.str.295) #56, !inline_history !87
  store ptr %i.ch, ptr @glad_glGetBooleanv, align 8
  %i.ci = call ptr %0(ptr noundef nonnull @.str.296) #56, !inline_history !87
  store ptr %i.ci, ptr @glad_glGetDoublev, align 8
  %i.cj = call ptr %0(ptr noundef nonnull @.str.297) #56, !inline_history !87
  store ptr %i.cj, ptr @glad_glGetError, align 8
  %i.ck = call ptr %0(ptr noundef nonnull @.str.298) #56, !inline_history !87
  store ptr %i.ck, ptr @glad_glGetFloatv, align 8
  %i.cl = call ptr %0(ptr noundef nonnull @.str.299) #56, !inline_history !87
  store ptr %i.cl, ptr @glad_glGetIntegerv, align 8
  %i.cm = call ptr %0(ptr noundef nonnull @.str) #56, !inline_history !87
  store ptr %i.cm, ptr @glad_glGetString, align 8
end_hunk_1
begin_hunk_2_@gladLoadGL:bb.a
  %i.tk = call ptr %0(ptr noundef nonnull @.str.723) #56, !inline_history !100
  store ptr %i.tk, ptr @glad_glProgramUniformMatrix2x3fv, align 8
  %i.tl = call ptr %0(ptr noundef nonnull @.str.724) #56, !inline_history !100
  store ptr %i.tl, ptr @glad_glProgramUniformMatrix2x4dv, align 8
  %i.tm = call ptr %0(ptr noundef nonnull @.str.725) #56, !inline_history !100
  store ptr %i.tm, ptr @glad_glProgramUniformMatrix2x4fv, align 8
  %i.tn = call ptr %0(ptr noundef nonnull @.str.726) #56, !inline_history !100
  store ptr %i.tn, ptr @glad_glProgramUniformMatrix3dv, align 8
  %i.to = call ptr %0(ptr noundef nonnull @.str.727) #56, !inline_history !100
  store ptr %i.to, ptr @glad_glProgramUniformMatrix3fv, align 8
  %i.tp = call ptr %0(ptr noundef nonnull @.str.728) #56, !inline_history !100
  store ptr %i.tp, ptr @glad_glProgramUniformMatrix3x2dv, align 8
  %i.tq = call ptr %0(ptr noundef nonnull @.str.729) #56, !inline_history !100
  store ptr %i.tq, ptr @glad_glProgramUniformMatrix3x2fv, align 8
  %i.tr = call ptr %0(ptr noundef nonnull @.str.730) #56, !inline_history !100
  store ptr %i.tr, ptr @glad_glProgramUniformMatrix3x4dv, align 8
  %i.ts = call ptr %0(ptr noundef nonnull @.str.731) #56, !inline_history !100
  store ptr %i.ts, ptr @glad_glProgramUniformMatrix3x4fv, align 8
  %i.tt = call ptr %0(ptr noundef nonnull @.str.732) #56, !inline_history !100
  store ptr %i.tt, ptr @glad_glProgramUniformMatrix4dv, align 8
  %i.tu = call ptr %0(ptr noundef nonnull @.str.733) #56, !inline_history !100
  store ptr %i.tu, ptr @glad_glProgramUniformMatrix4fv, align 8
  %i.tv = call ptr %0(ptr noundef nonnull @.str.734) #56, !inline_history !100
  store ptr %i.tv, ptr @glad_glProgramUniformMatrix4x2dv, align 8
  %i.tw = call ptr %0(ptr noundef nonnull @.str.735) #56, !inline_history !100
  store ptr %i.tw, ptr @glad_glProgramUniformMatrix4x2fv, align 8
  %i.tx = call ptr %0(ptr noundef nonnull @.str.736) #56, !inline_history !100
  store ptr %i.tx, ptr @glad_glProgramUniformMatrix4x3dv, align 8
  %i.ty = call ptr %0(ptr noundef nonnull @.str.737) #56, !inline_history !100
  store ptr %i.ty, ptr @glad_glProgramUniformMatrix4x3fv, align 8
  %i.tz = call ptr %0(ptr noundef nonnull @.str.738) #56, !inline_history !100
  store ptr %i.tz, ptr @glad_glReleaseShaderCompiler, align 8
  %i.ua = call ptr %0(ptr noundef nonnull @.str.739) #56, !inline_history !100
  store ptr %i.ua, ptr @glad_glScissorArrayv, align 8
  %i.ub = call ptr %0(ptr noundef nonnull @.str.740) #56, !inline_history !100
  store ptr %i.ub, ptr @glad_glScissorIndexed, align 8
  %i.uc = call ptr %0(ptr noundef nonnull @.str.741) #56, !inline_history !100
  store ptr %i.uc, ptr @glad_glScissorIndexedv, align 8
  %i.ud = call ptr %0(ptr noundef nonnull @.str.742) #56, !inline_history !100
  store ptr %i.ud, ptr @glad_glShaderBinary, align 8
  %i.ue = call ptr %0(ptr noundef nonnull @.str.743) #56, !inline_history !100
  store ptr %i.ue, ptr @glad_glUseProgramStages, align 8
  %i.uf = call ptr %0(ptr noundef nonnull @.str.744) #56, !inline_history !100
  store ptr %i.uf, ptr @glad_glValidateProgramPipeline, align 8
  %i.ug = call ptr %0(ptr noundef nonnull @.str.745) #56, !inline_history !100
  store ptr %i.ug, ptr @glad_glVertexAttribL1d, align 8
  %i.uh = call ptr %0(ptr noundef nonnull @.str.746) #56, !inline_history !100
  store ptr %i.uh, ptr @glad_glVertexAttribL1dv, align 8
  %i.ui = call ptr %0(ptr noundef nonnull @.str.747) #56, !inline_history !100
  store ptr %i.ui, ptr @glad_glVertexAttribL2d, align 8
  %i.uj = call ptr %0(ptr noundef nonnull @.str.748) #56, !inline_history !100
  store ptr %i.uj, ptr @glad_glVertexAttribL2dv, align 8
  %i.uk = call ptr %0(ptr noundef nonnull @.str.749) #56, !inline_history !100
  store ptr %i.uk, ptr @glad_glVertexAttribL3d, align 8
  %i.ul = call ptr %0(ptr noundef nonnull @.str.750) #56, !inline_history !100
  store ptr %i.ul, ptr @glad_glVertexAttribL3dv, align 8
  %i.um = call ptr %0(ptr noundef nonnull @.str.751) #56, !inline_history !100
  store ptr %i.um, ptr @glad_glVertexAttribL4d, align 8
  %i.un = call ptr %0(ptr noundef nonnull @.str.752) #56, !inline_history !100
  store ptr %i.un, ptr @glad_glVertexAttribL4dv, align 8
  %i.uo = call ptr %0(ptr noundef nonnull @.str.753) #56, !inline_history !100
  store ptr %i.uo, ptr @glad_glVertexAttribLPointer, align 8
  %i.up = call ptr %0(ptr noundef nonnull @.str.754) #56, !inline_history !100
  store ptr %i.up, ptr @glad_glViewportArrayv, align 8
  %i.uq = call ptr %0(ptr noundef nonnull @.str.755) #56, !inline_history !100
  store ptr %i.uq, ptr @glad_glViewportIndexedf, align 8
  %i.ur = call ptr %0(ptr noundef nonnull @.str.756) #56, !inline_history !100
  store ptr %i.ur, ptr @glad_glViewportIndexedfv, align 8
  br label %glad_gl_load_GL_VERSION_4_1.exit.i

glad_gl_load_GL_VERSION_4_1.exit.i:               ; preds = %bb.q, %glad_gl_load_GL_VERSION_4_0.exit.i
  %i.us = load i32, ptr @GLAD_GL_VERSION_4_2, align 4
  %.not.i177.i = icmp eq i32 %i.us, 0
  br i1 %.not.i177.i, label %glad_gl_load_GL_VERSION_4_2.exit.i, label %bb.r

bb.r:                                             ; preds = %glad_gl_load_GL_VERSION_4_1.exit.i
  %i.ut = call ptr %0(ptr noundef nonnull @.str.757) #56, !inline_history !101
  store ptr %i.ut, ptr @glad_glBindImageTexture, align 8
  %i.uu = call ptr %0(ptr noundef nonnull @.str.758) #56, !inline_history !101
  store ptr %i.uu, ptr @glad_glDrawArraysInstancedBaseInstance, align 8
  %i.uv = call ptr %0(ptr noundef nonnull @.str.759) #56, !inline_history !101
  store ptr %i.uv, ptr @glad_glDrawElementsInstancedBaseInstance, align 8
  %i.uw = call ptr %0(ptr noundef nonnull @.str.760) #56, !inline_history !101
  store ptr %i.uw, ptr @glad_glDrawElementsInstancedBaseVertexBaseInstance, align 8
  %i.ux = call ptr %0(ptr noundef nonnull @.str.761) #56, !inline_history !101
  store ptr %i.ux, ptr @glad_glDrawTransformFeedbackInstanced, align 8
  %i.uy = call ptr %0(ptr noundef nonnull @.str.762) #56, !inline_history !101
  store ptr %i.uy, ptr @glad_glDrawTransformFeedbackStreamInstanced, align 8
  %i.uz = call ptr %0(ptr noundef nonnull @.str.763) #56, !inline_history !101
  store ptr %i.uz, ptr @glad_glGetActiveAtomicCounterBufferiv, align 8
  %i.va = call ptr %0(ptr noundef nonnull @.str.764) #56, !inline_history !101
  store ptr %i.va, ptr @glad_glGetInternalformativ, align 8
  %i.vb = call ptr %0(ptr noundef nonnull @.str.765) #56, !inline_history !101
  store ptr %i.vb, ptr @glad_glMemoryBarrier, align 8
  %i.vc = call ptr %0(ptr noundef nonnull @.str.766) #56, !inline_history !101
  store ptr %i.vc, ptr @glad_glTexStorage1D, align 8
  %i.vd = call ptr %0(ptr noundef nonnull @.str.767) #56, !inline_history !101
  store ptr %i.vd, ptr @glad_glTexStorage2D, align 8
  %i.ve = call ptr %0(ptr noundef nonnull @.str.768) #56, !inline_history !101
  store ptr %i.ve, ptr @glad_glTexStorage3D, align 8
  br label %glad_gl_load_GL_VERSION_4_2.exit.i

glad_gl_load_GL_VERSION_4_2.exit.i:               ; preds = %bb.r, %glad_gl_load_GL_VERSION_4_1.exit.i
  %i.vf = load i32, ptr @GLAD_GL_VERSION_4_3, align 4
  %.not.i178.i = icmp eq i32 %i.vf, 0
  br i1 %.not.i178.i, label %glad_gl_load_GL_VERSION_4_3.exit.i, label %bb.s

bb.s:                                             ; preds = %glad_gl_load_GL_VERSION_4_2.exit.i
  %i.vg = call ptr %0(ptr noundef nonnull @.str.769) #56, !inline_history !102
  store ptr %i.vg, ptr @glad_glBindVertexBuffer, align 8
  %i.vh = call ptr %0(ptr noundef nonnull @.str.770) #56, !inline_history !102
  store ptr %i.vh, ptr @glad_glClearBufferData, align 8
  %i.vi = call ptr %0(ptr noundef nonnull @.str.771) #56, !inline_history !102
  store ptr %i.vi, ptr @glad_glClearBufferSubData, align 8
  %i.vj = call ptr %0(ptr noundef nonnull @.str.772) #56, !inline_history !102
  store ptr %i.vj, ptr @glad_glCopyImageSubData, align 8
  %i.vk = call ptr %0(ptr noundef nonnull @.str.773) #56, !inline_history !102
  store ptr %i.vk, ptr @glad_glDebugMessageCallback, align 8
  %i.vl = call ptr %0(ptr noundef nonnull @.str.774) #56, !inline_history !102
  store ptr %i.vl, ptr @glad_glDebugMessageControl, align 8
  %i.vm = call ptr %0(ptr noundef nonnull @.str.775) #56, !inline_history !102
  store ptr %i.vm, ptr @glad_glDebugMessageInsert, align 8
  %i.vn = call ptr %0(ptr noundef nonnull @.str.776) #56, !inline_history !102
  store ptr %i.vn, ptr @glad_glDispatchCompute, align 8
  %i.vo = call ptr %0(ptr noundef nonnull @.str.777) #56, !inline_history !102
  store ptr %i.vo, ptr @glad_glDispatchComputeIndirect, align 8
  %i.vp = call ptr %0(ptr noundef nonnull @.str.778) #56, !inline_history !102
  store ptr %i.vp, ptr @glad_glFramebufferParameteri, align 8
  %i.vq = call ptr %0(ptr noundef nonnull @.str.779) #56, !inline_history !102
  store ptr %i.vq, ptr @glad_glGetDebugMessageLog, align 8
  %i.vr = call ptr %0(ptr noundef nonnull @.str.780) #56, !inline_history !102
  store ptr %i.vr, ptr @glad_glGetFramebufferParameteriv, align 8
  %i.vs = call ptr %0(ptr noundef nonnull @.str.781) #56, !inline_history !102
  store ptr %i.vs, ptr @glad_glGetInternalformati64v, align 8
  %i.vt = call ptr %0(ptr noundef nonnull @.str.782) #56, !inline_history !102
  store ptr %i.vt, ptr @glad_glGetObjectLabel, align 8
  %i.vu = call ptr %0(ptr noundef nonnull @.str.783) #56, !inline_history !102
  store ptr %i.vu, ptr @glad_glGetObjectPtrLabel, align 8
  %i.vv = call ptr %0(ptr noundef nonnull @.str.335) #56, !inline_history !102
  store ptr %i.vv, ptr @glad_glGetPointerv, align 8
  %i.vw = call ptr %0(ptr noundef nonnull @.str.784) #56, !inline_history !102
  store ptr %i.vw, ptr @glad_glGetProgramInterfaceiv, align 8
  %i.vx = call ptr %0(ptr noundef nonnull @.str.785) #56, !inline_history !102
  store ptr %i.vx, ptr @glad_glGetProgramResourceIndex, align 8
  %i.vy = call ptr %0(ptr noundef nonnull @.str.786) #56, !inline_history !102
  store ptr %i.vy, ptr @glad_glGetProgramResourceLocation, align 8
  %i.vz = call ptr %0(ptr noundef nonnull @.str.787) #56, !inline_history !102
  store ptr %i.vz, ptr @glad_glGetProgramResourceLocationIndex, align 8
  %i.wa = call ptr %0(ptr noundef nonnull @.str.788) #56, !inline_history !102
  store ptr %i.wa, ptr @glad_glGetProgramResourceName, align 8
  %i.wb = call ptr %0(ptr noundef nonnull @.str.789) #56, !inline_history !102
  store ptr %i.wb, ptr @glad_glGetProgramResourceiv, align 8
  %i.wc = call ptr %0(ptr noundef nonnull @.str.790) #56, !inline_history !102
  store ptr %i.wc, ptr @glad_glInvalidateBufferData, align 8
  %i.wd = call ptr %0(ptr noundef nonnull @.str.791) #56, !inline_history !102
  store ptr %i.wd, ptr @glad_glInvalidateBufferSubData, align 8
  %i.we = call ptr %0(ptr noundef nonnull @.str.792) #56, !inline_history !102
  store ptr %i.we, ptr @glad_glInvalidateFramebuffer, align 8
  %i.wf = call ptr %0(ptr noundef nonnull @.str.793) #56, !inline_history !102
  store ptr %i.wf, ptr @glad_glInvalidateSubFramebuffer, align 8
  %i.wg = call ptr %0(ptr noundef nonnull @.str.794) #56, !inline_history !102
  store ptr %i.wg, ptr @glad_glInvalidateTexImage, align 8
  %i.wh = call ptr %0(ptr noundef nonnull @.str.795) #56, !inline_history !102
  store ptr %i.wh, ptr @glad_glInvalidateTexSubImage, align 8
  %i.wi = call ptr %0(ptr noundef nonnull @.str.796) #56, !inline_history !102
  store ptr %i.wi, ptr @glad_glMultiDrawArraysIndirect, align 8
  %i.wj = call ptr %0(ptr noundef nonnull @.str.797) #56, !inline_history !102
  store ptr %i.wj, ptr @glad_glMultiDrawElementsIndirect, align 8
  %i.wk = call ptr %0(ptr noundef nonnull @.str.798) #56, !inline_history !102
  store ptr %i.wk, ptr @glad_glObjectLabel, align 8
  %i.wl = call ptr %0(ptr noundef nonnull @.str.799) #56, !inline_history !102
  store ptr %i.wl, ptr @glad_glObjectPtrLabel, align 8
  %i.wm = call ptr %0(ptr noundef nonnull @.str.800) #56, !inline_history !102
  store ptr %i.wm, ptr @glad_glPopDebugGroup, align 8
  %i.wn = call ptr %0(ptr noundef nonnull @.str.801) #56, !inline_history !102
  store ptr %i.wn, ptr @glad_glPushDebugGroup, align 8
  %i.wo = call ptr %0(ptr noundef nonnull @.str.802) #56, !inline_history !102
  store ptr %i.wo, ptr @glad_glShaderStorageBlockBinding, align 8
  %i.wp = call ptr %0(ptr noundef nonnull @.str.803) #56, !inline_history !102
  store ptr %i.wp, ptr @glad_glTexBufferRange, align 8
  %i.wq = call ptr %0(ptr noundef nonnull @.str.804) #56, !inline_history !102
  store ptr %i.wq, ptr @glad_glTexStorage2DMultisample, align 8
  %i.wr = call ptr %0(ptr noundef nonnull @.str.805) #56, !inline_history !102
  store ptr %i.wr, ptr @glad_glTexStorage3DMultisample, align 8
  %i.ws = call ptr %0(ptr noundef nonnull @.str.806) #56, !inline_history !102
  store ptr %i.ws, ptr @glad_glTextureView, align 8
  %i.wt = call ptr %0(ptr noundef nonnull @.str.807) #56, !inline_history !102
  store ptr %i.wt, ptr @glad_glVertexAttribBinding, align 8
  %i.wu = call ptr %0(ptr noundef nonnull @.str.808) #56, !inline_history !102
  store ptr %i.wu, ptr @glad_glVertexAttribFormat, align 8
  %i.wv = call ptr %0(ptr noundef nonnull @.str.809) #56, !inline_history !102
  store ptr %i.wv, ptr @glad_glVertexAttribIFormat, align 8
  %i.ww = call ptr %0(ptr noundef nonnull @.str.810) #56, !inline_history !102
  store ptr %i.ww, ptr @glad_glVertexAttribLFormat, align 8
  %i.wx = call ptr %0(ptr noundef nonnull @.str.811) #56, !inline_history !102
  store ptr %i.wx, ptr @glad_glVertexBindingDivisor, align 8
  br label %glad_gl_load_GL_VERSION_4_3.exit.i

glad_gl_load_GL_VERSION_4_3.exit.i:               ; preds = %bb.s, %glad_gl_load_GL_VERSION_4_2.exit.i
  %i.wy = call fastcc i32 @glad_gl_find_extensions_gl(i32 noundef %.044.i.i)
  %.not.i = icmp eq i32 %i.wy, 0
  br i1 %.not.i, label %gladLoadGLUserPtr.exit, label %bb.t

bb.t:                                             ; preds = %glad_gl_load_GL_VERSION_4_3.exit.i
  %i.wz = load i32, ptr @GLAD_GL_ARB_ES2_compatibility, align 4
  %.not.i179.i = icmp eq i32 %i.wz, 0
  br i1 %.not.i179.i, label %glad_gl_load_GL_ARB_ES2_compatibility.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.xa = call ptr %0(ptr noundef nonnull @.str.671) #56, !inline_history !103
  store ptr %i.xa, ptr @glad_glClearDepthf, align 8
  %i.xb = call ptr %0(ptr noundef nonnull @.str.676) #56, !inline_history !103
  store ptr %i.xb, ptr @glad_glDepthRangef, align 8
  %i.xc = call ptr %0(ptr noundef nonnull @.str.683) #56, !inline_history !103
  store ptr %i.xc, ptr @glad_glGetShaderPrecisionFormat, align 8
  %i.xd = call ptr %0(ptr noundef nonnull @.str.738) #56, !inline_history !103
  store ptr %i.xd, ptr @glad_glReleaseShaderCompiler, align 8
  %i.xe = call ptr %0(ptr noundef nonnull @.str.742) #56, !inline_history !103
  store ptr %i.xe, ptr @glad_glShaderBinary, align 8
  br label %glad_gl_load_GL_ARB_ES2_compatibility.exit.i

glad_gl_load_GL_ARB_ES2_compatibility.exit.i:     ; preds = %bb.u, %bb.t
  %i.xf = load i32, ptr @GLAD_GL_ARB_ES3_1_compatibility, align 4
  %.not.i180.i = icmp eq i32 %i.xf, 0
  br i1 %.not.i180.i, label %glad_gl_load_GL_ARB_ES3_1_compatibility.exit.i, label %bb.v

bb.v:                                             ; preds = %glad_gl_load_GL_ARB_ES2_compatibility.exit.i
  %i.xg = call ptr %0(ptr noundef nonnull @.str.928) #56, !inline_history !104
  store ptr %i.xg, ptr @glad_glMemoryBarrierByRegion, align 8
  br label %glad_gl_load_GL_ARB_ES3_1_compatibility.exit.i

glad_gl_load_GL_ARB_ES3_1_compatibility.exit.i:   ; preds = %bb.v, %glad_gl_load_GL_ARB_ES2_compatibility.exit.i
  %i.xh = load i32, ptr @GLAD_GL_ARB_ES3_2_compatibility, align 4
  %.not.i181.i = icmp eq i32 %i.xh, 0
  br i1 %.not.i181.i, label %glad_gl_load_GL_ARB_ES3_2_compatibility.exit.i, label %bb.w

bb.w:                                             ; preds = %glad_gl_load_GL_ARB_ES3_1_compatibility.exit.i
  %i.xi = call ptr %0(ptr noundef nonnull @.str.929) #56, !inline_history !105
  store ptr %i.xi, ptr @glad_glPrimitiveBoundingBoxARB, align 8
  br label %glad_gl_load_GL_ARB_ES3_2_compatibility.exit.i

glad_gl_load_GL_ARB_ES3_2_compatibility.exit.i:   ; preds = %bb.w, %glad_gl_load_GL_ARB_ES3_1_compatibility.exit.i
  %i.xj = load i32, ptr @GLAD_GL_ARB_blend_func_extended, align 4
  %.not.i182.i = icmp eq i32 %i.xj, 0
  br i1 %.not.i182.i, label %glad_gl_load_GL_ARB_blend_func_extended.exit.i, label %bb.x

bb.x:                                             ; preds = %glad_gl_load_GL_ARB_ES3_2_compatibility.exit.i
  %i.xk = call ptr %0(ptr noundef nonnull @.str.595) #56, !inline_history !106
  store ptr %i.xk, ptr @glad_glBindFragDataLocationIndexed, align 8
  %i.xl = call ptr %0(ptr noundef nonnull @.str.599) #56, !inline_history !106
  store ptr %i.xl, ptr @glad_glGetFragDataIndex, align 8
  br label %glad_gl_load_GL_ARB_blend_func_extended.exit.i

glad_gl_load_GL_ARB_blend_func_extended.exit.i:   ; preds = %bb.x, %glad_gl_load_GL_ARB_ES3_2_compatibility.exit.i
  %i.xm = load i32, ptr @GLAD_GL_ARB_buffer_storage, align 4
  %.not.i183.i = icmp eq i32 %i.xm, 0
  br i1 %.not.i183.i, label %glad_gl_load_GL_ARB_buffer_storage.exit.i, label %bb.y

bb.y:                                             ; preds = %glad_gl_load_GL_ARB_blend_func_extended.exit.i
  %i.xn = call ptr %0(ptr noundef nonnull @.str.930) #56, !inline_history !107
  store ptr %i.xn, ptr @glad_glBufferStorage, align 8
  br label %glad_gl_load_GL_ARB_buffer_storage.exit.i

glad_gl_load_GL_ARB_buffer_storage.exit.i:        ; preds = %bb.y, %glad_gl_load_GL_ARB_blend_func_extended.exit.i
  %i.xo = load i32, ptr @GLAD_GL_ARB_clear_buffer_object, align 4
  %.not.i184.i = icmp eq i32 %i.xo, 0
  br i1 %.not.i184.i, label %glad_gl_load_GL_ARB_clear_buffer_object.exit.i, label %bb.z

bb.z:                                             ; preds = %glad_gl_load_GL_ARB_buffer_storage.exit.i
  %i.xp = call ptr %0(ptr noundef nonnull @.str.770) #56, !inline_history !108
  store ptr %i.xp, ptr @glad_glClearBufferData, align 8
  %i.xq = call ptr %0(ptr noundef nonnull @.str.771) #56, !inline_history !108
  store ptr %i.xq, ptr @glad_glClearBufferSubData, align 8
  br label %glad_gl_load_GL_ARB_clear_buffer_object.exit.i

glad_gl_load_GL_ARB_clear_buffer_object.exit.i:   ; preds = %bb.z, %glad_gl_load_GL_ARB_buffer_storage.exit.i
  %i.xr = load i32, ptr @GLAD_GL_ARB_clear_texture, align 4
  %.not.i185.i = icmp eq i32 %i.xr, 0
  br i1 %.not.i185.i, label %glad_gl_load_GL_ARB_clear_texture.exit.i, label %bb.aa

bb.aa:                                            ; preds = %glad_gl_load_GL_ARB_clear_buffer_object.exit.i
  %i.xs = call ptr %0(ptr noundef nonnull @.str.931) #56, !inline_history !109
  store ptr %i.xs, ptr @glad_glClearTexImage, align 8
  %i.xt = call ptr %0(ptr noundef nonnull @.str.932) #56, !inline_history !109
  store ptr %i.xt, ptr @glad_glClearTexSubImage, align 8
  br label %glad_gl_load_GL_ARB_clear_texture.exit.i

glad_gl_load_GL_ARB_clear_texture.exit.i:         ; preds = %bb.aa, %glad_gl_load_GL_ARB_clear_buffer_object.exit.i
  %i.xu = load i32, ptr @GLAD_GL_ARB_color_buffer_float, align 4
  %.not.i186.i = icmp eq i32 %i.xu, 0
  br i1 %.not.i186.i, label %glad_gl_load_GL_ARB_color_buffer_float.exit.i, label %bb.ab

bb.ab:                                            ; preds = %glad_gl_load_GL_ARB_clear_texture.exit.i
  %i.xv = call ptr %0(ptr noundef nonnull @.str.933) #56, !inline_history !110
  store ptr %i.xv, ptr @glad_glClampColorARB, align 8
  br label %glad_gl_load_GL_ARB_color_buffer_float.exit.i

glad_gl_load_GL_ARB_color_buffer_float.exit.i:    ; preds = %bb.ab, %glad_gl_load_GL_ARB_clear_texture.exit.i
  %i.xw = load i32, ptr @GLAD_GL_ARB_compute_shader, align 4
  %.not.i187.i = icmp eq i32 %i.xw, 0
  br i1 %.not.i187.i, label %glad_gl_load_GL_ARB_compute_shader.exit.i, label %bb.ac

bb.ac:                                            ; preds = %glad_gl_load_GL_ARB_color_buffer_float.exit.i
  %i.xx = call ptr %0(ptr noundef nonnull @.str.776) #56, !inline_history !111
  store ptr %i.xx, ptr @glad_glDispatchCompute, align 8
  %i.xy = call ptr %0(ptr noundef nonnull @.str.777) #56, !inline_history !111
  store ptr %i.xy, ptr @glad_glDispatchComputeIndirect, align 8
  br label %glad_gl_load_GL_ARB_compute_shader.exit.i

glad_gl_load_GL_ARB_compute_shader.exit.i:        ; preds = %bb.ac, %glad_gl_load_GL_ARB_color_buffer_float.exit.i
  %i.xz = load i32, ptr @GLAD_GL_ARB_compute_variable_group_size, align 4
  %.not.i188.i = icmp eq i32 %i.xz, 0
  br i1 %.not.i188.i, label %glad_gl_load_GL_ARB_compute_variable_group_size.exit.i, label %bb.ad

bb.ad:                                            ; preds = %glad_gl_load_GL_ARB_compute_shader.exit.i
  %i.ya = call ptr %0(ptr noundef nonnull @.str.934) #56, !inline_history !112
  store ptr %i.ya, ptr @glad_glDispatchComputeGroupSizeARB, align 8
  br label %glad_gl_load_GL_ARB_compute_variable_group_size.exit.i

glad_gl_load_GL_ARB_compute_variable_group_size.exit.i: ; preds = %bb.ad, %glad_gl_load_GL_ARB_compute_shader.exit.i
  %i.yb = load i32, ptr @GLAD_GL_ARB_copy_buffer, align 4
  %.not.i189.i = icmp eq i32 %i.yb, 0
  br i1 %.not.i189.i, label %glad_gl_load_GL_ARB_copy_buffer.exit.i, label %bb.ae

bb.ae:                                            ; preds = %glad_gl_load_GL_ARB_compute_variable_group_size.exit.i
  %i.yc = call ptr %0(ptr noundef nonnull @.str.564) #56, !inline_history !113
  store ptr %i.yc, ptr @glad_glCopyBufferSubData, align 8
  br label %glad_gl_load_GL_ARB_copy_buffer.exit.i

glad_gl_load_GL_ARB_copy_buffer.exit.i:           ; preds = %bb.ae, %glad_gl_load_GL_ARB_compute_variable_group_size.exit.i
  %i.yd = load i32, ptr @GLAD_GL_ARB_copy_image, align 4
  %.not.i190.i = icmp eq i32 %i.yd, 0
  br i1 %.not.i190.i, label %glad_gl_load_GL_ARB_copy_image.exit.i, label %bb.af

bb.af:                                            ; preds = %glad_gl_load_GL_ARB_copy_buffer.exit.i
  %i.ye = call ptr %0(ptr noundef nonnull @.str.772) #56, !inline_history !114
  store ptr %i.ye, ptr @glad_glCopyImageSubData, align 8
  br label %glad_gl_load_GL_ARB_copy_image.exit.i

glad_gl_load_GL_ARB_copy_image.exit.i:            ; preds = %bb.af, %glad_gl_load_GL_ARB_copy_buffer.exit.i
  %i.yf = load i32, ptr @GLAD_GL_ARB_debug_output, align 4
  %.not.i191.i = icmp eq i32 %i.yf, 0
  br i1 %.not.i191.i, label %glad_gl_load_GL_ARB_debug_output.exit.i, label %bb.ag

bb.ag:                                            ; preds = %glad_gl_load_GL_ARB_copy_image.exit.i
  %i.yg = call ptr %0(ptr noundef nonnull @.str.935) #56, !inline_history !115
  store ptr %i.yg, ptr @glad_glDebugMessageCallbackARB, align 8
  %i.yh = call ptr %0(ptr noundef nonnull @.str.936) #56, !inline_history !115
  store ptr %i.yh, ptr @glad_glDebugMessageControlARB, align 8
  %i.yi = call ptr %0(ptr noundef nonnull @.str.937) #56, !inline_history !115
  store ptr %i.yi, ptr @glad_glDebugMessageInsertARB, align 8
  %i.yj = call ptr %0(ptr noundef nonnull @.str.938) #56, !inline_history !115
  store ptr %i.yj, ptr @glad_glGetDebugMessageLogARB, align 8
  br label %glad_gl_load_GL_ARB_debug_output.exit.i

glad_gl_load_GL_ARB_debug_output.exit.i:          ; preds = %bb.ag, %glad_gl_load_GL_ARB_copy_image.exit.i
  %i.yk = load i32, ptr @GLAD_GL_ARB_direct_state_access, align 4
  %.not.i192.i = icmp eq i32 %i.yk, 0
  br i1 %.not.i192.i, label %glad_gl_load_GL_ARB_direct_state_access.exit.i, label %bb.ah

bb.ah:                                            ; preds = %glad_gl_load_GL_ARB_debug_output.exit.i
  %i.yl = call ptr %0(ptr noundef nonnull @.str.939) #56, !inline_history !116
  store ptr %i.yl, ptr @glad_glBindTextureUnit, align 8
  %i.ym = call ptr %0(ptr noundef nonnull @.str.940) #56, !inline_history !116
  store ptr %i.ym, ptr @glad_glBlitNamedFramebuffer, align 8
  %i.yn = call ptr %0(ptr noundef nonnull @.str.941) #56, !inline_history !116
  store ptr %i.yn, ptr @glad_glCheckNamedFramebufferStatus, align 8
  %i.yo = call ptr %0(ptr noundef nonnull @.str.942) #56, !inline_history !116
  store ptr %i.yo, ptr @glad_glClearNamedBufferData, align 8
  %i.yp = call ptr %0(ptr noundef nonnull @.str.943) #56, !inline_history !116
  store ptr %i.yp, ptr @glad_glClearNamedBufferSubData, align 8
  %i.yq = call ptr %0(ptr noundef nonnull @.str.944) #56, !inline_history !116
  store ptr %i.yq, ptr @glad_glClearNamedFramebufferfi, align 8
  %i.yr = call ptr %0(ptr noundef nonnull @.str.945) #56, !inline_history !116
  store ptr %i.yr, ptr @glad_glClearNamedFramebufferfv, align 8
  %i.ys = call ptr %0(ptr noundef nonnull @.str.946) #56, !inline_history !116
  store ptr %i.ys, ptr @glad_glClearNamedFramebufferiv, align 8
  %i.yt = call ptr %0(ptr noundef nonnull @.str.947) #56, !inline_history !116
  store ptr %i.yt, ptr @glad_glClearNamedFramebufferuiv, align 8
  %i.yu = call ptr %0(ptr noundef nonnull @.str.948) #56, !inline_history !116
  store ptr %i.yu, ptr @glad_glCompressedTextureSubImage1D, align 8
  %i.yv = call ptr %0(ptr noundef nonnull @.str.949) #56, !inline_history !116
  store ptr %i.yv, ptr @glad_glCompressedTextureSubImage2D, align 8
  %i.yw = call ptr %0(ptr noundef nonnull @.str.950) #56, !inline_history !116
  store ptr %i.yw, ptr @glad_glCompressedTextureSubImage3D, align 8
  %i.yx = call ptr %0(ptr noundef nonnull @.str.951) #56, !inline_history !116
  store ptr %i.yx, ptr @glad_glCopyNamedBufferSubData, align 8
  %i.yy = call ptr %0(ptr noundef nonnull @.str.952) #56, !inline_history !116
  store ptr %i.yy, ptr @glad_glCopyTextureSubImage1D, align 8
  %i.yz = call ptr %0(ptr noundef nonnull @.str.953) #56, !inline_history !116
  store ptr %i.yz, ptr @glad_glCopyTextureSubImage2D, align 8
  %i.za = call ptr %0(ptr noundef nonnull @.str.954) #56, !inline_history !116
  store ptr %i.za, ptr @glad_glCopyTextureSubImage3D, align 8
  %i.zb = call ptr %0(ptr noundef nonnull @.str.955) #56, !inline_history !116
  store ptr %i.zb, ptr @glad_glCreateBuffers, align 8
  %i.zc = call ptr %0(ptr noundef nonnull @.str.956) #56, !inline_history !116
  store ptr %i.zc, ptr @glad_glCreateFramebuffers, align 8
  %i.zd = call ptr %0(ptr noundef nonnull @.str.957) #56, !inline_history !116
  store ptr %i.zd, ptr @glad_glCreateProgramPipelines, align 8
  %i.ze = call ptr %0(ptr noundef nonnull @.str.958) #56, !inline_history !116
  store ptr %i.ze, ptr @glad_glCreateQueries, align 8
  %i.zf = call ptr %0(ptr noundef nonnull @.str.959) #56, !inline_history !116
end_hunk_2
begin_hunk_3_@rlDrawRenderBatch:bb.a

bb.ae:                                            ; preds = %.lr.ph, %.lr.ph
  %i.vn = load ptr, ptr @glad_glDrawArrays, align 8
  call void %i.vn(i32 noundef %i.vk, i32 noundef %.082377, i32 noundef %i.vm) #56
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph
  %i.vo = load ptr, ptr @glad_glDrawElements, align 8
  %i.vp = sdiv i32 %i.vm, 4
  %i.vq = mul nsw i32 %i.vp, 6
  %i.vr = sdiv i32 %.082377, 4
  %i.vs = mul nsw i32 %i.vr, 6
  %i.vt = sext i32 %i.vs to i64
  %i.vu = shl nsw i64 %i.vt, 2
  %i.vv = inttoptr i64 %i.vu to ptr
  call void %i.vo(i32 noundef 4, i32 noundef %i.vq, i32 noundef 5125, ptr noundef %i.vv) #56
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.vw = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.vx = getelementptr inbounds nuw [16 x i8], ptr %i.vw, i64 %indvars.iv ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.vz = load i32, ptr %i.vy, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.wb = load i32, ptr %i.wa, align 4
  %i.wc = add i32 %i.vz, %.082377
  %i.wd = add i32 %i.wc, %i.wb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.we = load i32, ptr %i.dr, align 8
  %i.wf = sext i32 %i.we to i64
  %i.wg = icmp slt i64 %indvars.iv.next, %i.wf
  br i1 %i.wg, label %.lr.ph, label %._crit_edge

bb.ah:                                            ; preds = %._crit_edge
  %i.wh = load ptr, ptr @glad_glBindBuffer, align 8
  call void %i.wh(i32 noundef 34962, i32 noundef 0) #56
  %i.wi = load ptr, ptr @glad_glBindBuffer, align 8
  call void %i.wi(i32 noundef 34963, i32 noundef 0) #56
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge
  %i.wj = load ptr, ptr @glad_glBindTexture, align 8
  call void %i.wj(i32 noundef 3553, i32 noundef 0) #56
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.j
  %i.wk = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !170, !noundef !171
  %i.wl = trunc nuw i8 %i.wk to i1
  br i1 %i.wl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.wm = load ptr, ptr @glad_glBindVertexArray, align 8
  call void %i.wm(i32 noundef 0) #56
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.wn = load ptr, ptr @glad_glUseProgram, align 8
  call void %i.wn(i32 noundef 0) #56
  br i1 %i.dt, label %bb.h, label %bb.g

bb.am:                                            ; preds = %bb.g
  %i.wo = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2704), align 8
  %i.wp = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2708), align 4
  %i.wq = load ptr, ptr @glad_glViewport, align 8
  call void %i.wq(i32 noundef 0, i32 noundef 0, i32 noundef %i.wo, i32 noundef %i.wp) #56, !inline_history !172
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.g
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float -1.000000e+00, ptr %i.wr, align 4
  store <16 x float> %.sroa.0.0.copyload, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), align 8
  store <4 x float> %i.cl, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  store <4 x float> %i.cm, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 104), align 8
  store <4 x float> %i.cn, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 120), align 8
  store <4 x float> %i.co, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 136), align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv386 = phi i64 [ 0, %bb.an ], [ %indvars.iv.next387.1, %bb.ao ] ; 5 uses
  %i.ws = load ptr, ptr %i.ds, align 8
  %i.wt = getelementptr inbounds nuw [16 x i8], ptr %i.ws, i64 %indvars.iv386
  store i32 7, ptr %i.wt, align 4
  %i.wu = load ptr, ptr %i.ds, align 8
  %i.wv = getelementptr inbounds nuw [16 x i8], ptr %i.wu, i64 %indvars.iv386
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  store i32 0, ptr %i.ww, align 4
  %i.wx = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  %i.wy = load ptr, ptr %i.ds, align 8
  %i.wz = getelementptr inbounds nuw [16 x i8], ptr %i.wy, i64 %indvars.iv386
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 12
  store i32 %i.wx, ptr %i.xa, align 4
  %indvars.iv.next387 = or disjoint i64 %indvars.iv386, 1 ; 3 uses
  %i.xb = load ptr, ptr %i.ds, align 8
  %i.xc = getelementptr inbounds nuw [16 x i8], ptr %i.xb, i64 %indvars.iv.next387
  store i32 7, ptr %i.xc, align 4
  %i.xd = load ptr, ptr %i.ds, align 8
  %i.xe = getelementptr inbounds nuw [16 x i8], ptr %i.xd, i64 %indvars.iv.next387
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  store i32 0, ptr %i.xf, align 4
  %i.xg = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  %i.xh = load ptr, ptr %i.ds, align 8
  %i.xi = getelementptr inbounds nuw [16 x i8], ptr %i.xh, i64 %indvars.iv.next387
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 12
  store i32 %i.xg, ptr %i.xj, align 4
  %indvars.iv.next387.1 = add nuw nsw i64 %indvars.iv386, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next387.1, 256
  br i1 %exitcond.not.1, label %.preheader.preheader, label %bb.ao

.preheader.preheader:                             ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2344), i8 0, i64 16, i1 false)
  store i32 1, ptr %i.dr, align 8
  %i.xk = load i32, ptr %i.dq, align 4
  %i.xl = add nsw i32 %i.xk, 1                    ; 2 uses
  %i.xm = load i32, ptr %0, align 8
  %.not = icmp slt i32 %i.xl, %i.xm
  %spec.store.select96 = select i1 %.not, i32 %i.xl, i32 0
  store i32 %spec.store.select96, ptr %i.dq, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlEnd() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @RLGL, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.c = load float, ptr %i.b, align 4
  %i.d = fadd float %i.c, 5.000000e-05
  store float %i.d, ptr %i.b, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlVertex3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 280), align 8, !range !170, !noundef !171
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = insertelement <2 x float> poison, float %1, i64 0 ; 2 uses
  %i.d = insertelement <2 x float> %i.c, float %2, i64 1 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), align 8
  %i.f = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 220), align 4
  %i.g = fmul float %1, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.e, float %0, float %i.g)
  %i.i = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 224), align 8
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float %2, float %i.h)
  %i.k = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 228), align 4
  %i.l = fadd float %i.k, %i.j
  %i.m = load <8 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 232), align 8 ; 4 uses
  %i.n = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.r = insertelement <2 x float> poison, float %0, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.p)
  %i.u = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.v = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.v, <2 x float> %i.t)
  %i.x = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.y = fadd <2 x float> %i.x, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.016 = phi float [ %i.l, %bb.b ], [ %0, %bb.a ]
  %i.z = phi <2 x float> [ %i.y, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.ab = load ptr, ptr @RLGL, align 8            ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [72 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = shl nsw i32 %i.ai, 2
  %i.ak = add nsw i32 %i.aj, -4
  %i.al = icmp sgt i32 %i.aa, %i.ak
  br i1 %i.al, label %bb.d, label %rlCheckRenderBatchLimit.exit

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [16 x i8], ptr %i.an, i64 %i.aq ; 5 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  switch i32 %i.at, label %rlCheckRenderBatchLimit.exit [
    i32 1, label %bb.e
    i32 4, label %bb.f
    i32 7, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.ar, i64 -12
  %i.av = load i32, ptr %i.au, align 4
  %3 = and i32 %i.av, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %rlCheckRenderBatchLimit.exit.sink.split, label %rlCheckRenderBatchLimit.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %i.ar, i64 -12
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = srem i32 %i.ax, 3
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %rlCheckRenderBatchLimit.exit.sink.split, label %rlCheckRenderBatchLimit.exit

bb.g:                                             ; preds = %bb.d
  %i.ba = getelementptr i8, ptr %i.ar, i64 -12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 3
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %rlCheckRenderBatchLimit.exit.sink.split, label %rlCheckRenderBatchLimit.exit

rlCheckRenderBatchLimit.exit.sink.split:          ; preds = %bb.g, %bb.f, %bb.e
  %i.be = getelementptr i8, ptr %i.ar, i64 -4
  %i.bf = load i32, ptr %i.be, align 4
  tail call void @rlDrawRenderBatch(ptr noundef nonnull %i.ab)
  %i.bg = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [16 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -16
  store i32 %i.at, ptr %i.bn, align 4
  %i.bo = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [16 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  store i32 %i.bf, ptr %i.bv, align 4
  br label %rlCheckRenderBatchLimit.exit

rlCheckRenderBatchLimit.exit:                     ; preds = %rlCheckRenderBatchLimit.exit.sink.split, %bb.d, %bb.e, %bb.f, %bb.g, %bb.c
  %i.bw = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [72 x i8], ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.cg = mul nsw i32 %i.cf, 3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ch
  store float %.016, ptr %i.ci, align 4
  %i.cj = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [72 x i8], ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.ct = mul nsw i32 %i.cs, 3
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [4 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %i.cx = extractelement <2 x float> %i.z, i64 0
  store float %i.cx, ptr %i.cw, align 4
  %i.cy = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [72 x i8], ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.di = mul nsw i32 %i.dh, 3
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = extractelement <2 x float> %i.z, i64 1
  store float %i.dm, ptr %i.dl, align 4
  %i.dn = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 52), align 4
  %i.do = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [72 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.dy = shl nsw i32 %i.dx, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dz
  store float %i.dn, ptr %i.ea, align 4
  %i.eb = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 56), align 8
  %i.ec = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [72 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.em = shl nsw i32 %i.el, 1
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  store float %i.eb, ptr %i.ep, align 4
  %i.eq = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 60), align 4
  %i.er = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [72 x i8], ptr %i.et, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.fb = mul nsw i32 %i.fa, 3
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fc
  store float %i.eq, ptr %i.fd, align 4
  %i.fe = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 64), align 8
  %i.ff = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [72 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.fp = mul nsw i32 %i.fo, 3
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr [4 x i8], ptr %i.fn, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 4
  store float %i.fe, ptr %i.fs, align 4
  %i.ft = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 68), align 4
  %i.fu = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [72 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.ge = mul nsw i32 %i.gd, 3
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr [4 x i8], ptr %i.gc, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  store float %i.ft, ptr %i.gh, align 4
  %i.gi = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 72), align 8
  %i.gj = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [72 x i8], ptr %i.gl, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.gt = shl nsw i32 %i.gs, 2
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 %i.gu
  store i8 %i.gi, ptr %i.gv, align 1
  %i.gw = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 73), align 1
  %i.gx = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [72 x i8], ptr %i.gz, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.hh = shl nsw i32 %i.hg, 2
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr i8, ptr %i.hf, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 1
  store i8 %i.gw, ptr %i.hk, align 1
  %i.hl = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 74), align 2
  %i.hm = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
end_hunk_3
begin_hunk_4_@rlLoadTexture:bb.a
    i32 22, label %bb.v
    i32 16, label %bb.w
    i32 17, label %bb.w
    i32 20, label %bb.w
    i32 23, label %bb.w
    i32 24, label %bb.x
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  br label %.thread.i

bb.p:                                             ; preds = %bb.n, %bb.n
  br label %.thread.i

bb.q:                                             ; preds = %bb.n
  br label %.thread.i

bb.r:                                             ; preds = %bb.n
  br label %.thread.i

bb.s:                                             ; preds = %bb.n
  br label %.thread.i

bb.t:                                             ; preds = %bb.n
  br label %.thread.i

bb.u:                                             ; preds = %bb.n
  br label %.thread.i

bb.v:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.al = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.am = sdiv <2 x i32> %i.al, splat (i32 4)     ; 2 uses
  %i.an = extractelement <2 x i32> %i.am, i64 0
  %i.ao = shl i32 %i.an, 3
  %i.ap = extractelement <2 x i32> %i.am, i64 1
  %i.aq = mul i32 %i.ao, %i.ap
  br label %rlGetPixelDataSize.exit

bb.w:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.ar = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.as = sdiv <2 x i32> %i.ar, splat (i32 4)     ; 2 uses
  %i.at = extractelement <2 x i32> %i.as, i64 0
  %i.au = shl i32 %i.at, 4
  %i.av = extractelement <2 x i32> %i.as, i64 1
  %i.aw = mul i32 %i.au, %i.av
  br label %rlGetPixelDataSize.exit

bb.x:                                             ; preds = %bb.n
  %i.ax = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.ay = sdiv <2 x i32> %i.ax, splat (i32 4)     ; 2 uses
  %i.az = extractelement <2 x i32> %i.ay, i64 0
  %i.ba = shl nsw i32 %i.az, 2
  %i.bb = extractelement <2 x i32> %i.ay, i64 1
  %i.bc = mul i32 %i.ba, %i.bb
  br label %rlGetPixelDataSize.exit

bb.y:                                             ; preds = %bb.n
  br i1 %or.cond.i, label %.thread.i, label %rlGetPixelDataSize.exit

.thread.i:                                        ; preds = %bb.y, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.02024.i = phi double [ 0.000000e+00, %bb.y ], [ 8.000000e+00, %bb.u ], [ 6.000000e+00, %bb.t ], [ 1.600000e+01, %bb.s ], [ 1.200000e+01, %bb.r ], [ 3.000000e+00, %bb.q ], [ 4.000000e+00, %bb.p ], [ 2.000000e+00, %bb.o ], [ 1.000000e+00, %bb.n ]
  %i.bd = sitofp <2 x i32> %i.ak to <2 x double>  ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = fmul nnan double %.02024.i, %i.be
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  %i.bh = fmul double %i.bf, %i.bg
  %i.bi = fptosi double %i.bh to i32
  br label %rlGetPixelDataSize.exit

rlGetPixelDataSize.exit:                          ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %.thread.i
  %.1.i = phi i32 [ %i.bi, %.thread.i ], [ 0, %bb.y ], [ %i.aw, %bb.w ], [ %i.bc, %bb.x ], [ %i.aq, %bb.v ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #56
  call void @rlGetGlTextureFormats(i32 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.bj = extractelement <2 x i32> %i.ak, i64 0   ; 3 uses
  %i.bk = extractelement <2 x i32> %i.ak, i64 1   ; 3 uses
  call void (i32, ptr, ...) @TraceLog(i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef %.094, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %.1.i, i32 noundef %.06992)
  %i.bl = load i32, ptr %i.b, align 4             ; 3 uses
  %.not80 = icmp eq i32 %i.bl, 0
  br i1 %.not80, label %bb.af, label %bb.z

bb.z:                                             ; preds = %rlGetPixelDataSize.exit
  br i1 %i.ac, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr @glad_glTexImage2D, align 8
  %i.bn = load i32, ptr %i.c, align 4
  %i.bo = load i32, ptr %i.d, align 4
  call void %i.bm(i32 noundef 3553, i32 noundef %.094, i32 noundef %i.bl, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef 0, i32 noundef %i.bn, i32 noundef %i.bo, ptr noundef %.193) #56
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr @glad_glCompressedTexImage2D, align 8
  call void %i.bp(i32 noundef 3553, i32 noundef %.094, i32 noundef %i.bl, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef 0, i32 noundef %.1.i, ptr noundef %.193) #56
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  switch i32 %3, label %bb.af [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) @__const.rlLoadTextureCubemap.swizzleMask, i64 16, i1 false)
  %i.bq = load ptr, ptr @glad_glTexParameteriv, align 8
  call void %i.bq(i32 noundef 3553, i32 noundef 36422, ptr noundef nonnull %i.e) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #56
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const.rlLoadTextureCubemap.swizzleMask.54, i64 16, i1 false)
  %i.br = load ptr, ptr @glad_glTexParameteriv, align 8
  call void %i.br(i32 noundef 3553, i32 noundef 36422, ptr noundef nonnull %i.f) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #56
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae, %rlGetPixelDataSize.exit
  %i.bs = sdiv <2 x i32> %i.ak, splat (i32 2)
  %i.bt = add i32 %.1.i, %.06992
  %i.bu = zext i32 %.1.i to i64
  %.2.idx = select i1 %.not, i64 0, i64 %i.bu
  %.2 = getelementptr inbounds nuw i8, ptr %.193, i64 %.2.idx
  %i.bv = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bs, <2 x i32> splat (i32 1))
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  %i.bw = add nuw nsw i32 %.094, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.n

bb.ag:                                            ; preds = %._crit_edge
  %i.bx = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.bx(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #56
  %i.by = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.by(i32 noundef 3553, i32 noundef 10241, i32 noundef 9987) #56
  %i.bz = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.bz(i32 noundef 3553, i32 noundef 33084, i32 noundef 0) #56
  %i.ca = load ptr, ptr @glad_glTexParameteri, align 8
  %i.cb = add nsw i32 %4, -1
  call void %i.ca(i32 noundef 3553, i32 noundef 33085, i32 noundef %i.cb) #56
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  %i.cc = load ptr, ptr @glad_glBindTexture, align 8
  call void %i.cc(i32 noundef 3553, i32 noundef 0) #56
  %i.cd = load i32, ptr %i.a, align 4             ; 2 uses
  %.not79 = icmp eq i32 %i.cd, 0
  br i1 %.not79, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = call ptr @rlGetPixelFormatName(i32 noundef %3)
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.48, i32 noundef %i.cd, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.ce, i32 noundef %4)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.49)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.072 = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret i32 %.072
}

; Function Attrs: nounwind uwtable
define void @rlLoadRenderBatch(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.rlRenderBatch) align 8 captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %.b = load i1, ptr @isGpuReady, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.38)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 72) #60 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph115, label %._crit_edge116.thread

._crit_edge116.thread:                            ; preds = %bb.c
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.39)
  br label %._crit_edge120

.lr.ph115:                                        ; preds = %bb.c
  %i.e = mul nsw i32 %2, 12                       ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = shl nsw i32 %2, 3                        ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i32 %2, 4                        ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i32 %2, 6                        ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp sgt i32 %2, 0
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1) ; 3 uses
  %smax126 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %smax138 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1) ; 2 uses
  %smax144 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 6)
  %i.n = add nsw i32 %smax144, -2
  %i.o = udiv i32 %i.n, 6
  %wide.trip.count149 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %wide.trip.count127 = zext nneg i32 %smax126 to i64 ; 2 uses
  %wide.trip.count139 = zext nneg i32 %smax138 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160.a = trunc i32 %smax to i1
  %xtraiter161 = and i64 %wide.trip.count127, 1
  %unroll_iter165 = and i64 %wide.trip.count127, 2147483640
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  %lcmp.mod164.a = trunc i32 %smax126 to i1
  %xtraiter167 = and i64 %wide.trip.count, 1
  %unroll_iter171 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  %lcmp.mod170 = trunc i32 %smax to i1
  %xtraiter173 = and i64 %wide.trip.count139, 1
  %unroll_iter177 = and i64 %wide.trip.count139, 2147483632
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  %lcmp.mod176 = trunc i32 %smax138 to i1
  br label %bb.d

._crit_edge116:                                   ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.39)
  %i.p = mul nsw i32 %2, 12
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2                      ; 2 uses
  %i.s = shl nsw i32 %2, 3
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = shl nsw i32 %2, 4
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i32 %2, 6
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2
  %wide.trip.count154 = zext nneg i32 %1 to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph115, %._crit_edge
  %indvars.iv146 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next147, %._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv146 ; 6 uses
  store i32 %2, ptr %i.aa, align 8
  %i.ab = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 6 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 6 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 6 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 1) #60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 6 uses
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 4) #60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 7 uses
  store ptr %i.aj, ptr %i.ak, align 8
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 0, %bb.d ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %bb.d ]
  %i.al = load ptr, ptr %i.ac, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.ac, align 8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store float 0.000000e+00, ptr %i.ap, align 4
  %i.aq = load ptr, ptr %i.ac, align 8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store float 0.000000e+00, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.ac, align 8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store float 0.000000e+00, ptr %i.av, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph105.preheader.unr-lcssa, label %.lr.ph

.lr.ph105.preheader.unr-lcssa:                    ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.lr.ph105.preheader.new, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph105.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod160.a)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.next.3, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ] ; 2 uses
  %i.aw = load ptr, ptr %i.ac, align 8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.epil
  store float 0.000000e+00, ptr %i.ax, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.lr.ph105.preheader.new, label %.lr.ph.epil, !llvm.loop !189

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader.unr-lcssa, %.lr.ph.epil
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %indvars.iv123 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %indvars.iv.next124.3, %.lr.ph105 ] ; 5 uses
  %niter166 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter166.next.3, %.lr.ph105 ]
  %i.ay = load ptr, ptr %i.ae, align 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv123
  store float 0.000000e+00, ptr %i.az, align 4
  %i.ba = load ptr, ptr %i.ae, align 8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv123
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store float 0.000000e+00, ptr %i.bc, align 4
  %i.bd = load ptr, ptr %i.ae, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv123
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float 0.000000e+00, ptr %i.bf, align 4
  %i.bg = load ptr, ptr %i.ae, align 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv123
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store float 0.000000e+00, ptr %i.bi, align 4
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv123, 4 ; 2 uses
  %niter166.next.3 = add i64 %niter166, 4         ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %.lr.ph107.preheader.unr-lcssa, label %.lr.ph105

.lr.ph107.preheader.unr-lcssa:                    ; preds = %.lr.ph105
  br i1 %lcmp.mod163.not, label %.lr.ph107.preheader.new, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %.lr.ph107.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod164.a)
  br label %.lr.ph105.epil

.lr.ph105.epil:                                   ; preds = %.lr.ph105.epil, %.lr.ph105.epil.preheader
  %indvars.iv123.epil = phi i64 [ %indvars.iv.next124.epil, %.lr.ph105.epil ], [ %indvars.iv.next124.3, %.lr.ph105.epil.preheader ] ; 2 uses
  %epil.iter162 = phi i64 [ %epil.iter162.next, %.lr.ph105.epil ], [ 0, %.lr.ph105.epil.preheader ] ; 2 uses
  %i.bj = load ptr, ptr %i.ae, align 8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv123.epil
  store float 0.000000e+00, ptr %i.bk, align 4
  %indvars.iv.next124.epil = add nuw nsw i64 %indvars.iv123.epil, 1
  %epil.iter162.next = add i64 %epil.iter162, 1
  %epil.iter162.cmp.not = icmp eq i64 %epil.iter162, 0
  br i1 %epil.iter162.cmp.not, label %.lr.ph107.preheader.new, label %.lr.ph105.epil, !llvm.loop !191

.lr.ph107.preheader.new:                          ; preds = %.lr.ph107.preheader.unr-lcssa, %.lr.ph105.epil
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107, %.lr.ph107.preheader.new
  %indvars.iv129 = phi i64 [ 0, %.lr.ph107.preheader.new ], [ %indvars.iv.next130.3, %.lr.ph107 ] ; 5 uses
  %niter172 = phi i64 [ 0, %.lr.ph107.preheader.new ], [ %niter172.next.3, %.lr.ph107 ]
  %i.bl = load ptr, ptr %i.ag, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv129
  store float 0.000000e+00, ptr %i.bm, align 4
  %i.bn = load ptr, ptr %i.ag, align 8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv129
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store float 0.000000e+00, ptr %i.bp, align 4
  %i.bq = load ptr, ptr %i.ag, align 8
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv129
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float 0.000000e+00, ptr %i.bs, align 4
  %i.bt = load ptr, ptr %i.ag, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv129
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store float 0.000000e+00, ptr %i.bv, align 4
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %.lr.ph109.preheader.unr-lcssa, label %.lr.ph107

.lr.ph109.preheader.unr-lcssa:                    ; preds = %.lr.ph107
  br i1 %lcmp.mod169.not, label %.lr.ph109.preheader.new, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %.lr.ph109.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph107.epil

.lr.ph107.epil:                                   ; preds = %.lr.ph107.epil, %.lr.ph107.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv.next130.epil, %.lr.ph107.epil ], [ %indvars.iv.next130.3, %.lr.ph107.epil.preheader ] ; 2 uses
  %epil.iter168 = phi i64 [ %epil.iter168.next, %.lr.ph107.epil ], [ 0, %.lr.ph107.epil.preheader ] ; 2 uses
  %i.bw = load ptr, ptr %i.ag, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv129.epil
  store float 0.000000e+00, ptr %i.bx, align 4
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168, 0
  br i1 %epil.iter168.cmp.not, label %.lr.ph109.preheader.new, label %.lr.ph107.epil, !llvm.loop !192

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader.unr-lcssa, %.lr.ph107.epil
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %indvars.iv135 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %indvars.iv.next136.3, %.lr.ph109 ] ; 5 uses
  %niter178 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter178.next.3, %.lr.ph109 ]
  %i.by = load ptr, ptr %i.ai, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv135
  store i8 0, ptr %i.bz, align 1
  %i.ca = load ptr, ptr %i.ai, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv135
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 0, ptr %i.cc, align 1
  %i.cd = load ptr, ptr %i.ai, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv135
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 0, ptr %i.cf, align 1
  %i.cg = load ptr, ptr %i.ai, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv135
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  store i8 0, ptr %i.ci, align 1
  %indvars.iv.next136.3 = add nuw nsw i64 %indvars.iv135, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %.lr.ph112.preheader.unr-lcssa, label %.lr.ph109

.lr.ph112.preheader.unr-lcssa:                    ; preds = %.lr.ph109
  br i1 %lcmp.mod175.not, label %.lr.ph112.preheader, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %.lr.ph112.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph109.epil

.lr.ph109.epil:                                   ; preds = %.lr.ph109.epil, %.lr.ph109.epil.preheader
  %indvars.iv135.epil = phi i64 [ %indvars.iv.next136.epil, %.lr.ph109.epil ], [ %indvars.iv.next136.3, %.lr.ph109.epil.preheader ] ; 2 uses
  %epil.iter174 = phi i64 [ %epil.iter174.next, %.lr.ph109.epil ], [ 0, %.lr.ph109.epil.preheader ] ; 2 uses
  %i.cj = load ptr, ptr %i.ai, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv135.epil
  store i8 0, ptr %i.ck, align 1
  %indvars.iv.next136.epil = add nuw nsw i64 %indvars.iv135.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174, 0
  br i1 %epil.iter174.cmp.not, label %.lr.ph112.preheader, label %.lr.ph109.epil, !llvm.loop !193

.lr.ph112.preheader:                              ; preds = %.lr.ph109.epil, %.lr.ph112.preheader.unr-lcssa
  br label %.lr.ph112

._crit_edge:                                      ; preds = %.lr.ph112, %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge116, label %bb.d

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph112 ], [ 0, %.lr.ph112.preheader ] ; 7 uses
  %.092110 = phi i32 [ %i.dg, %.lr.ph112 ], [ 0, %.lr.ph112.preheader ] ; 3 uses
  %i.cl = shl nuw nsw i32 %.092110, 2             ; 5 uses
  %i.cm = load ptr, ptr %i.ak, align 8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv141
  store i32 %i.cl, ptr %i.cn, align 4
  %i.co = or disjoint i32 %i.cl, 1
  %i.cp = load ptr, ptr %i.ak, align 8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv141
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %i.co, ptr %i.cr, align 4
  %i.cs = or disjoint i32 %i.cl, 2                ; 2 uses
  %i.ct = load ptr, ptr %i.ak, align 8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv141
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.cs, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %i.ak, align 8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv141
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 %i.cl, ptr %i.cy, align 4
  %i.cz = load ptr, ptr %i.ak, align 8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv141
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i32 %i.cs, ptr %i.db, align 4
  %i.dc = or disjoint i32 %i.cl, 3
  %i.dd = load ptr, ptr %i.ak, align 8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv141
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 %i.dc, ptr %i.df, align 4
  %i.dg = add nuw nsw i32 %.092110, 1
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 6
  %exitcond145.not = icmp eq i32 %.092110, %i.o
  br i1 %exitcond145.not, label %._crit_edge, label %.lr.ph112

._crit_edge120:                                   ; preds = %bb.g, %._crit_edge116.thread
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.40)
  %i.dh = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !170, !noundef !171
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.h, label %bb.i

bb.e:                                             ; preds = %._crit_edge116, %bb.g
  %indvars.iv151 = phi i64 [ 0, %._crit_edge116 ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !170, !noundef !171
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dl = load ptr, ptr @glad_glGenVertexArrays, align 8
  %i.dm = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv151
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 2 uses
  tail call void %i.dl(i32 noundef 1, ptr noundef nonnull %i.dn) #56
  %i.do = load ptr, ptr @glad_glBindVertexArray, align 8
  %i.dp = load i32, ptr %i.dn, align 8
  tail call void %i.do(i32 noundef %i.dp) #56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dq = load ptr, ptr @glad_glGenBuffers, align 8
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv151 ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 52 ; 2 uses
  tail call void %i.dq(i32 noundef 1, ptr noundef nonnull %i.ds) #56
  %i.dt = load ptr, ptr @glad_glBindBuffer, align 8
  %i.du = load i32, ptr %i.ds, align 4
  tail call void %i.dt(i32 noundef 34962, i32 noundef %i.du) #56
  %i.dv = load ptr, ptr @glad_glBufferData, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dv(i32 noundef 34962, i64 noundef %i.r, ptr noundef %i.dx, i32 noundef 35048) #56
  %i.dy = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ea = load i32, ptr %i.dz, align 4
  tail call void %i.dy(i32 noundef %i.ea) #56
  %i.eb = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ed = load i32, ptr %i.ec, align 4
  tail call void %i.eb(i32 noundef %i.ed, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.ee = load ptr, ptr @glad_glGenBuffers, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  tail call void %i.ee(i32 noundef 1, ptr noundef nonnull %i.ef) #56
  %i.eg = load ptr, ptr @glad_glBindBuffer, align 8
  %i.eh = load i32, ptr %i.ef, align 8
  tail call void %i.eg(i32 noundef 34962, i32 noundef %i.eh) #56
  %i.ei = load ptr, ptr @glad_glBufferData, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ei(i32 noundef 34962, i64 noundef %i.u, ptr noundef %i.ek, i32 noundef 35048) #56
  %i.el = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4
  tail call void %i.el(i32 noundef %i.eo) #56
  %i.ep = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4
  tail call void %i.ep(i32 noundef %i.es, i32 noundef 2, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.et = load ptr, ptr @glad_glGenBuffers, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dr, i64 60 ; 2 uses
  tail call void %i.et(i32 noundef 1, ptr noundef nonnull %i.eu) #56
  %i.ev = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ew = load i32, ptr %i.eu, align 4
  tail call void %i.ev(i32 noundef 34962, i32 noundef %i.ew) #56
  %i.ex = load ptr, ptr @glad_glBufferData, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  tail call void %i.ex(i32 noundef 34962, i64 noundef %i.r, ptr noundef %i.ez, i32 noundef 35048) #56
  %i.fa = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fd = load i32, ptr %i.fc, align 4
  tail call void %i.fa(i32 noundef %i.fd) #56
  %i.fe = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fh = load i32, ptr %i.fg, align 4
  tail call void %i.fe(i32 noundef %i.fh, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.fi = load ptr, ptr @glad_glGenBuffers, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dr, i64 64 ; 2 uses
  tail call void %i.fi(i32 noundef 1, ptr noundef nonnull %i.fj) #56
  %i.fk = load ptr, ptr @glad_glBindBuffer, align 8
  %i.fl = load i32, ptr %i.fj, align 8
  tail call void %i.fk(i32 noundef 34962, i32 noundef %i.fl) #56
  %i.fm = load ptr, ptr @glad_glBufferData, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fm(i32 noundef 34962, i64 noundef %i.w, ptr noundef %i.fo, i32 noundef 35048) #56
  %i.fp = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.fs = load i32, ptr %i.fr, align 4
  tail call void %i.fp(i32 noundef %i.fs) #56
  %i.ft = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  %i.fw = load i32, ptr %i.fv, align 4
  tail call void %i.ft(i32 noundef %i.fw, i32 noundef 4, i32 noundef 5121, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null) #56
  %i.fx = load ptr, ptr @glad_glGenBuffers, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 68 ; 2 uses
  tail call void %i.fx(i32 noundef 1, ptr noundef nonnull %i.fy) #56
  %i.fz = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ga = load i32, ptr %i.fy, align 4
  tail call void %i.fz(i32 noundef 34963, i32 noundef %i.ga) #56
  %i.gb = load ptr, ptr @glad_glBufferData, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8
  tail call void %i.gb(i32 noundef 34963, i64 noundef %i.z, ptr noundef %i.gd, i32 noundef 35044) #56
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge120, label %bb.e

bb.h:                                             ; preds = %._crit_edge120
  %i.ge = load ptr, ptr @glad_glBindVertexArray, align 8
  tail call void %i.ge(i32 noundef 0) #56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge120
  %i.gf = tail call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 256, i64 noundef 16) #60 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gf, ptr %i.gg, align 8
  %i.gh = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  %i.gi = insertelement <4 x i32> <i32 7, i32 0, i32 0, i32 poison>, i32 %i.gh, i64 3 ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  store i32 %1, ptr %0, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float -1.000000e+00, ptr %i.gk, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %bb.i
  %indvars.iv156 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next157.3, %bb.k ] ; 5 uses
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %indvars.iv156
end_hunk_4
begin_hunk_5_@UpdateCameraPro:bb.a
  %.sroa.013.0.i.i.i40 = phi <2 x float> [ %.sroa.013.4.vec.insert.i.i.i61, %bb.l ], [ %.sroa.018.4.vec.insert.i.i.i, %GetCameraUp.exit.i.i ] ; 3 uses
  %.sroa.617.0.i.i.i41 = phi float [ %i.ha, %bb.l ], [ %i.gs, %GetCameraUp.exit.i.i ] ; 2 uses
  br i1 %i.eq, label %bb.p, label %bb.m

bb.m:                                             ; preds = %GetCameraRight.exit.i
  %i.hb = tail call float @llvm.fabs.f32(float %i.fy)
  %i.hc = fcmp ogt float %i.hb, f0x3F350481
  br i1 %i.hc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.036.0.vec.insert.i58 = insertelement <2 x float> %.sroa.013.0.i.i.i40, float 0.000000e+00, i64 0
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.036.4.vec.insert.i42 = insertelement <2 x float> %.sroa.013.0.i.i.i40, float 0.000000e+00, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %GetCameraRight.exit.i
  %.sroa.036.0.i43 = phi <2 x float> [ %.sroa.036.4.vec.insert.i42, %bb.o ], [ %.sroa.036.0.vec.insert.i58, %bb.n ], [ %.sroa.013.0.i.i.i40, %GetCameraRight.exit.i ] ; 5 uses
  %.sroa.11.0.i44 = phi float [ %.sroa.617.0.i.i.i41, %bb.o ], [ %.sroa.617.0.i.i.i41, %bb.n ], [ 0.000000e+00, %GetCameraRight.exit.i ] ; 4 uses
  %.sroa.07.0.vec.extract.i.i45 = extractelement <2 x float> %.sroa.036.0.i43, i64 0 ; 2 uses
  %foldExtExtBinop110 = fmul <2 x float> %.sroa.036.0.i43, %.sroa.036.0.i43
  %i.hd = extractelement <2 x float> %foldExtExtBinop110, i64 1
  %i.he = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i45, float %.sroa.07.0.vec.extract.i.i45, float %i.hd)
  %i.hf = tail call float @llvm.fmuladd.f32(float %.sroa.11.0.i44, float %.sroa.11.0.i44, float %i.he) ; 2 uses
  %i.hg = fcmp une float %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.q, label %CameraMoveRight.exit

bb.q:                                             ; preds = %bb.p
  %sqrt.i.i55 = tail call float @llvm.sqrt.f32(float %i.hf)
  %i.hh = fdiv float 1.000000e+00, %sqrt.i.i55    ; 2 uses
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %.sroa.036.0.i43, %i.hj
  %i.hl = fmul float %.sroa.11.0.i44, %i.hh
  br label %CameraMoveRight.exit

CameraMoveRight.exit:                             ; preds = %bb.p, %bb.q
  %.sroa.11.1.i48 = phi float [ %.sroa.11.0.i44, %bb.p ], [ %i.hl, %bb.q ]
  %i.hm = phi <2 x float> [ %.sroa.036.0.i43, %bb.p ], [ %i.hk, %bb.q ]
  %i.hn = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = fmul <2 x float> %i.hn, %i.hm           ; 2 uses
  %i.hp = fmul float %.sroa.016.4.vec.extract, %.sroa.11.1.i48 ; 2 uses
  %i.hq = fadd <2 x float> %i.fh, %i.ho
  %i.hr = fadd float %i.fi, %i.hp
  %i.hs = fadd <2 x float> %i.fj, %i.ho
  %i.ht = fadd float %i.fk, %i.hp
  br i1 %i.gb, label %bb.r, label %CameraMoveUp.exit

bb.r:                                             ; preds = %CameraMoveRight.exit
  %sqrt.i.i.i75 = tail call float @llvm.sqrt.f32(float %i.ga)
  %i.hu = fdiv float 1.000000e+00, %sqrt.i.i.i75  ; 2 uses
  %i.hv = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %i.ef, %i.hw
  %i.hy = fmul float %i.eg, %i.hu
  br label %CameraMoveUp.exit

CameraMoveUp.exit:                                ; preds = %CameraMoveRight.exit, %bb.r
  %.sroa.617.0.i.i.i67 = phi float [ %i.eg, %CameraMoveRight.exit ], [ %i.hy, %bb.r ]
  %i.hz = phi <2 x float> [ %i.ef, %CameraMoveRight.exit ], [ %i.hx, %bb.r ]
  %i.ia = insertelement <2 x float> poison, float %2, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %i.ib, %i.hz           ; 2 uses
  %i.id = fmul float %2, %.sroa.617.0.i.i.i67     ; 2 uses
  %i.ie = fadd float %i.hr, %i.id
  %i.if = fadd <2 x float> %i.hs, %i.ic           ; 3 uses
  %i.ig = fadd float %i.ht, %i.id                 ; 3 uses
  store <2 x float> %i.if, ptr %i.l, align 4
  store float %i.ig, ptr %.sroa.233.0..sroa_idx.i, align 4
  %i.ih = fadd <2 x float> %i.hq, %i.ic
  %i.ii = fsub <2 x float> %i.if, %i.ih           ; 5 uses
  %i.ij = fsub float %i.ig, %i.ie                 ; 4 uses
  %foldExtExtBinop112 = fmul <2 x float> %i.ii, %i.ii
  %i.ik = extractelement <2 x float> %foldExtExtBinop112, i64 1
  %i.il = extractelement <2 x float> %i.ii, i64 0 ; 2 uses
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.ik)
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.im) ; 2 uses
  %sqrt.i.i78 = tail call float @llvm.sqrt.f32(float %i.in) ; 2 uses
  %i.io = fcmp une float %i.in, 0.000000e+00      ; 2 uses
  %i.ip = fdiv float 1.000000e+00, %sqrt.i.i78    ; 2 uses
  %i.iq = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.ii, %i.ir
  %i.it = fmul float %i.ij, %i.ip
  %.sroa.013.0.i.i.i82 = select i1 %i.io, <2 x float> %i.is, <2 x float> %i.ii
  %.sroa.617.0.i.i.i83 = select i1 %i.io, float %i.it, float %i.ij
  %i.iu = fadd float %5, %sqrt.i.i78              ; 2 uses
  %i.iv = fcmp ole float %i.iu, 0.000000e+00
  %.neg.i = fneg float %i.iu
  %i.iw = select i1 %i.iv, float -1.000000e-03, float %.neg.i ; 2 uses
  %i.ix = fmul float %i.iw, %.sroa.617.0.i.i.i83
  %i.iy = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x float> %i.iz, %.sroa.013.0.i.i.i82
  %i.jb = fadd <2 x float> %i.if, %i.ja
  %i.jc = fadd float %i.ig, %i.ix
  store <2 x float> %i.jb, ptr %0, align 4
  store float %i.jc, ptr %.sroa.231.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @sinflate(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #30 {
bb.a:
  %i.a = tail call fastcc i32 @sinfl_decompress(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @sinfl_decompress(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #30 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.sinfl, align 8              ; 25 uses
  %i.i = alloca [320 x i8], align 16              ; 8 uses
  %i.j = alloca [128 x i32], align 16             ; 5 uses
  %i.k = alloca [19 x i8], align 16               ; 5 uses
  %i.l = alloca [320 x i8], align 16              ; 14 uses
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6960) %i.q, i8 0, i64 6960, i1 false)
  store ptr %2, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 5364 ; 4 uses
  %i.w = ptrtoint ptr %0 to i64                   ; 8 uses
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 288 ; 2 uses
  %i.z = ptrtoint ptr %i.p to i64
  %scevgep375 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %scevgep379 = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %scevgep383 = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %scevgep550 = getelementptr i8, ptr %i.l, i64 -1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0153426 = phi ptr [ %0, %bb.a ], [ %.0153426.be, %.backedge ] ; 6 uses
  %i.aa = load ptr, ptr %i.r, align 8
  %i.ab = load ptr, ptr %4, align 8               ; 5 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 7
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.ab, align 1
  %i.ag = load i32, ptr %i.u, align 8             ; 3 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl i64 %.val.i, %i.ah
  %i.aj = load i64, ptr %i.t, align 8
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = sub nsw i32 63, %i.ag
  %i.am = ashr i32 %i.al, 3
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ab, i64 %i.an
  store ptr %i.ao, ptr %4, align 8
  %i.ap = or i32 %i.ag, 56
  br label %sinfl_refill.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = load i32, ptr %i.u, align 8             ; 3 uses
  %i.ar = sub nsw i32 63, %i.aq
  %i.as = ashr i32 %i.ar, 3
  %i.at = sext i32 %i.as to i64
  %i.au = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.at) ; 2 uses
  %i.av = trunc i64 %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %sext.i = shl i64 %i.au, 32
  %i.aw = ashr exact i64 %sext.i, 32              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 1 %i.ab, i64 %i.aw, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.h, align 8
  %i.ax = zext nneg i32 %i.aq to i64
  %i.ay = shl i64 %.0..0..0..0..0..0..i, %i.ax
  %i.az = load i64, ptr %i.t, align 8
  %i.ba = or i64 %i.az, %i.ay
  %i.bb = getelementptr inbounds i8, ptr %i.ab, i64 %i.aw
  store ptr %i.bb, ptr %4, align 8
  %i.bc = shl i32 %i.av, 3
  %i.bd = add nsw i32 %i.bc, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %sinfl_refill.exit

sinfl_refill.exit:                                ; preds = %bb.c, %bb.d
  %i.be = phi i32 [ %i.ap, %bb.c ], [ %i.bd, %bb.d ]
  %.val.i174 = phi i64 [ %i.ak, %bb.c ], [ %i.ba, %bb.d ] ; 3 uses
  %5 = trunc i64 %.val.i174 to i32
  %6 = and i32 %5, 1                              ; 2 uses
  %i.bf = trunc i64 %.val.i174 to i32
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = and i32 %i.bg, 3
  %i.bi = lshr i64 %.val.i174, 3
  store i64 %i.bi, ptr %i.t, align 8
  %i.bj = add nsw i32 %i.be, -3
  store i32 %i.bj, ptr %i.u, align 8
  switch i32 %i.bh, label %default.unreachable416 [
    i32 0, label %bb.f
    i32 1, label %.preheader298.preheader
    i32 2, label %bb.l
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %sinfl_refill.exit
  %i.bk = ptrtoint ptr %.0153426 to i64
  %i.bl = sub i64 %i.bk, %i.w
  %i.bm = trunc i64 %i.bl to i32
  br label %.thread274

bb.f:                                             ; preds = %sinfl_refill.exit
  %i.bn = load i32, ptr %i.u, align 8             ; 2 uses
  %i.bo = and i32 %i.bn, 7
  %.val.i176 = load i64, ptr %i.t, align 8
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = lshr i64 %.val.i176, %i.bp              ; 3 uses
  %i.br = lshr i64 %i.bq, 16
  %i.bs = add nsw i32 %i.bn, -32
  %.neg.neg = ashr i32 %i.bs, 3
  %.neg = sub nsw i32 0, %.neg.neg
  %i.bt = load ptr, ptr %4, align 8
  %i.bu = sext i32 %.neg to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu ; 3 uses
  store i32 0, ptr %i.u, align 8
  store i64 0, ptr %i.t, align 8
  %i.bw = xor i64 %i.br, %i.bq
  %i.bx = and i64 %i.bw, 65535
  %.not172 = icmp eq i64 %i.bx, 65535
  br i1 %.not172, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = ptrtoint ptr %.0153426 to i64
  %i.bz = sub i64 %i.by, %i.w
  %i.ca = trunc i64 %i.bz to i32
  br label %.thread274

bb.h:                                             ; preds = %bb.f
  %i.cb = and i64 %i.bq, 65535                    ; 5 uses
  %i.cc = ptrtoint ptr %i.bv to i64
  %i.cd = sub i64 %i.z, %i.cc
  %i.ce = icmp sge i64 %i.cd, %i.cb
  %i.cf = icmp ne i64 %i.cb, 0
  %or.cond = and i1 %i.cf, %i.ce
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = ptrtoint ptr %.0153426 to i64
  %i.ch = sub i64 %i.cg, %i.w
  %i.ci = trunc i64 %i.ch to i32
  br label %.thread274

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0153426, ptr align 1 %i.bv, i64 %i.cb, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cb
  store ptr %i.cj, ptr %4, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.0153426, i64 %i.cb ; 2 uses
  %.not173 = icmp eq i32 %6, 0
  br i1 %.not173, label %.backedge, label %bb.k

.backedge:                                        ; preds = %bb.j, %bb.at
  %.0153426.be = phi ptr [ %.3156, %bb.at ], [ %i.ck, %bb.j ]
  br label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.w
  %i.cn = trunc i64 %i.cm to i32
  br label %.thread274

.preheader298.preheader:                          ; preds = %sinfl_refill.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.i, i8 8, i64 144, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %scevgep375, i8 9, i64 112, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %scevgep379, i8 7, i64 24, i1 false)
  store i64 578721382704613384, ptr %scevgep383, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.y, i8 5, i64 32, i1 false)
  call fastcc void @sinfl_build(ptr noundef %i.s, ptr noundef %i.i, i32 noundef 10, i32 noundef 15, i32 noundef 288)
  call fastcc void @sinfl_build(ptr noundef %i.v, ptr noundef %i.y, i32 noundef 8, i32 noundef 15, i32 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #56
  br label %.preheader299.preheader

bb.l:                                             ; preds = %sinfl_refill.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.k, i8 0, i64 19, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #56
  %i.co = load ptr, ptr %i.r, align 8
  %i.cp = load ptr, ptr %4, align 8               ; 5 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 6 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 7
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val.i181 = load i64, ptr %i.cp, align 1
  %i.cu = load i32, ptr %i.u, align 8             ; 3 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl i64 %.val.i181, %i.cv
  %i.cx = load i64, ptr %i.t, align 8
  %i.cy = or i64 %i.cw, %i.cx
  %i.cz = sub nsw i32 63, %i.cu
  %i.da = ashr i32 %i.cz, 3
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cp, i64 %i.db ; 2 uses
  store ptr %i.dc, ptr %4, align 8
  %i.dd = or i32 %i.cu, 56
  br label %sinfl_refill.exit182

bb.n:                                             ; preds = %bb.l
  %i.de = load i32, ptr %i.u, align 8             ; 3 uses
  %i.df = sub nsw i32 63, %i.de
  %i.dg = ashr i32 %i.df, 3
  %i.dh = sext i32 %i.dg to i64
  %i.di = tail call i64 @llvm.smin.i64(i64 %i.cs, i64 %i.dh) ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %sext.i179 = shl i64 %i.di, 32
  %i.dk = ashr exact i64 %sext.i179, 32           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %i.cp, i64 %i.dk, i1 false)
  %.0..0..0..0..0..0..i180 = load i64, ptr %i.g, align 8
  %i.dl = zext nneg i32 %i.de to i64
  %i.dm = shl i64 %.0..0..0..0..0..0..i180, %i.dl
  %i.dn = load i64, ptr %i.t, align 8
  %i.do = or i64 %i.dn, %i.dm
  %i.dp = getelementptr inbounds i8, ptr %i.cp, i64 %i.dk ; 2 uses
  store ptr %i.dp, ptr %4, align 8
  %i.dq = shl i32 %i.dj, 3
  %i.dr = add nsw i32 %i.dq, %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %sinfl_refill.exit182

sinfl_refill.exit182:                             ; preds = %bb.m, %bb.n
  %.promoted = phi ptr [ %i.dc, %bb.m ], [ %i.dp, %bb.n ]
  %i.ds = phi i32 [ %i.dd, %bb.m ], [ %i.dr, %bb.n ]
  %.val.i183 = phi i64 [ %i.cy, %bb.m ], [ %i.do, %bb.n ] ; 4 uses
  %i.dt = lshr i64 %.val.i183, 10
  %i.du = and i64 %i.dt, 15
  %i.dv = lshr i64 %.val.i183, 14                 ; 2 uses
  store i64 %i.dv, ptr %i.t, align 8
  %i.dw = add nsw i32 %i.ds, -14                  ; 2 uses
  store i32 %i.dw, ptr %i.u, align 8
  %i.dx = add nuw nsw i64 %i.du, 3
  br label %bb.o

bb.o:                                             ; preds = %sinfl_refill.exit182, %sinfl_get.exit
  %indvars.iv = phi i64 [ 0, %sinfl_refill.exit182 ], [ %indvars.iv.next, %sinfl_get.exit ] ; 3 uses
  %i.dy = phi ptr [ %.promoted, %sinfl_refill.exit182 ], [ %.promoted324, %sinfl_get.exit ] ; 4 uses
  %i.dz = phi i32 [ %i.dw, %sinfl_refill.exit182 ], [ %i.fa, %sinfl_get.exit ] ; 6 uses
  %i.ea = phi i64 [ %i.dv, %sinfl_refill.exit182 ], [ %i.ez, %sinfl_get.exit ] ; 2 uses
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.cq, %i.eb                    ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 7
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val.i.i = load i64, ptr %i.dy, align 1
  %i.ee = zext nneg i32 %i.dz to i64
  %i.ef = shl i64 %.val.i.i, %i.ee
  %i.eg = or i64 %i.ef, %i.ea
  %i.eh = sub nsw i32 63, %i.dz
  %i.ei = ashr i32 %i.eh, 3
  %i.ej = sext i32 %i.ei to i64
  %i.ek = or i32 %i.dz, 56
  br label %sinfl_get.exit

bb.q:                                             ; preds = %bb.o
  %i.el = sub nsw i32 63, %i.dz
  %i.em = ashr i32 %i.el, 3
  %i.en = sext i32 %i.em to i64
  %i.eo = tail call i64 @llvm.smin.i64(i64 %i.ec, i64 %i.en) ; 2 uses
  %i.ep = trunc i64 %i.eo to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %sext.i.i = shl i64 %i.eo, 32
  %i.eq = ashr exact i64 %sext.i.i, 32            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 1 %i.dy, i64 %i.eq, i1 false)
  %.0..0..0..0..0..0..0..0..i.i = load i64, ptr %i.f, align 8
  %i.er = zext nneg i32 %i.dz to i64
  %i.es = shl i64 %.0..0..0..0..0..0..0..0..i.i, %i.er
  %i.et = or i64 %i.ea, %i.es
  %i.eu = shl i32 %i.ep, 3
  %i.ev = add nsw i32 %i.eu, %i.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %sinfl_get.exit

sinfl_get.exit:                                   ; preds = %bb.p, %bb.q
  %.pn417 = phi i64 [ %i.ej, %bb.p ], [ %i.eq, %bb.q ]
  %i.ew = phi i32 [ %i.ek, %bb.p ], [ %i.ev, %bb.q ]
  %.val.i2.i = phi i64 [ %i.eg, %bb.p ], [ %i.et, %bb.q ] ; 2 uses
  %.promoted324 = getelementptr inbounds i8, ptr %i.dy, i64 %.pn417 ; 3 uses
  %i.ex = trunc i64 %.val.i2.i to i8
  %i.ey = and i8 %i.ex, 7
  %i.ez = lshr i64 %.val.i2.i, 3                  ; 3 uses
  %i.fa = add nsw i32 %i.ew, -3                   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr @sdefl_flush.perm, i64 %indvars.iv
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fd
  store i8 %i.ey, ptr %i.fe, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.dx
  br i1 %exitcond.not, label %bb.r, label %bb.o

bb.r:                                             ; preds = %sinfl_get.exit
  store ptr %.promoted324, ptr %4, align 8
  store i64 %i.ez, ptr %i.t, align 8
  store i32 %i.fa, ptr %i.u, align 8
  %i.ff = trunc i64 %.val.i183 to i32
  %i.fg = and i32 %i.ff, 31
  %i.fh = add nuw nsw i32 %i.fg, 257              ; 3 uses
  %i.fi = trunc i64 %.val.i183 to i32
  %i.fj = lshr i32 %i.fi, 5
  %i.fk = and i32 %i.fj, 31
  %i.fl = add nuw nsw i32 %i.fk, 1                ; 2 uses
  call fastcc void @sinfl_build(ptr noundef %i.j, ptr noundef %i.k, i32 noundef 7, i32 noundef 7, i32 noundef 19)
  %i.fm = add nuw nsw i32 %i.fl, %i.fh
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.1127327 = phi i32 [ 0, %bb.r ], [ %.5, %.loopexit ] ; 5 uses
  %i.fn = phi ptr [ %.promoted324, %bb.r ], [ %i.lb, %.loopexit ] ; 4 uses
  %i.fo = phi i32 [ %i.fa, %bb.r ], [ %i.la, %.loopexit ] ; 6 uses
  %i.fp = phi i64 [ %i.ez, %bb.r ], [ %i.kz, %.loopexit ] ; 2 uses
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = sub i64 %i.cq, %i.fq                    ; 2 uses
  %i.fs = icmp sgt i64 %i.fr, 7
  br i1 %i.fs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val.i188 = load i64, ptr %i.fn, align 1
  %i.ft = zext nneg i32 %i.fo to i64
  %i.fu = shl i64 %.val.i188, %i.ft
  %i.fv = or i64 %i.fu, %i.fp
  %i.fw = sub nsw i32 63, %i.fo
  %i.fx = ashr i32 %i.fw, 3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = or i32 %i.fo, 56
  br label %sinfl_refill.exit189

bb.u:                                             ; preds = %bb.s
  %i.ga = sub nsw i32 63, %i.fo
  %i.gb = ashr i32 %i.ga, 3
  %i.gc = sext i32 %i.gb to i64
  %i.gd = tail call i64 @llvm.smin.i64(i64 %i.fr, i64 %i.gc) ; 2 uses
  %i.ge = trunc i64 %i.gd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %sext.i186 = shl i64 %i.gd, 32
  %i.gf = ashr exact i64 %sext.i186, 32           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr align 1 %i.fn, i64 %i.gf, i1 false)
  %.0..0..0..0..0..0..i187 = load i64, ptr %i.e, align 8
  %i.gg = zext nneg i32 %i.fo to i64
  %i.gh = shl i64 %.0..0..0..0..0..0..i187, %i.gg
  %i.gi = or i64 %i.fp, %i.gh
  %i.gj = shl i32 %i.ge, 3
  %i.gk = add nsw i32 %i.gj, %i.fo
end_hunk_5
begin_hunk_6_@sinfl_decompress:bb.a
  store i32 %i.kr, ptr %i.u, align 8
  %i.ks = sext i32 %.1127327 to i64               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.ks
  %i.kt = and i64 %.val.i2.i202, 127              ; 2 uses
  %i.ku = add nuw nsw i64 %i.kt, 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.ku, i1 false)
  %i.kv = add nsw i64 %i.ks, 11
  %i.kw = add nsw i64 %i.kv, %i.kt
  %i.kx = trunc nsw i64 %i.kw to i32
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.ac, %bb.ab, %bb.aa, %sinfl_get.exit194
  %indvars.iv.next370.lcssa = phi i64 [ %indvars.iv.next370.5, %bb.ac ], [ %indvars.iv.next370.4, %bb.ab ], [ %indvars.iv.next370.2, %sinfl_get.exit194 ], [ %indvars.iv.next370.3, %bb.aa ]
  %i.ky = trunc nsw i64 %indvars.iv.next370.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %sinfl_get.exit204, %sinfl_get.exit199, %.loopexit.loopexit, %bb.w
  %i.kz = phi i64 [ %i.hf, %bb.w ], [ %i.jo, %sinfl_get.exit199 ], [ %i.ij, %.loopexit.loopexit ], [ %i.kq, %sinfl_get.exit204 ]
  %i.la = phi i32 [ %i.hg, %bb.w ], [ %i.jp, %sinfl_get.exit199 ], [ %i.ik, %.loopexit.loopexit ], [ %i.kr, %sinfl_get.exit204 ]
  %i.lb = phi ptr [ %.sink392, %bb.w ], [ %.sink395, %sinfl_get.exit199 ], [ %.sink394, %.loopexit.loopexit ], [ %.sink396, %sinfl_get.exit204 ]
  %.5 = phi i32 [ %i.hk, %bb.w ], [ %i.jv, %sinfl_get.exit199 ], [ %i.ky, %.loopexit.loopexit ], [ %i.kx, %sinfl_get.exit204 ] ; 2 uses
  %i.lc = icmp slt i32 %.5, %i.fm
  br i1 %i.lc, label %bb.s, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  call fastcc void @sinfl_build(ptr noundef %i.s, ptr noundef %i.l, i32 noundef 10, i32 noundef 15, i32 noundef %i.fh)
  %i.ld = zext nneg i32 %i.fh to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ld
  call fastcc void @sinfl_build(ptr noundef %i.v, ptr noundef %i.le, i32 noundef 8, i32 noundef 15, i32 noundef %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #56
  br label %.preheader299.preheader

.preheader299.preheader:                          ; preds = %.preheader298.preheader, %bb.aj
  br label %.preheader299

.preheader299:                                    ; preds = %.preheader299.backedge, %.preheader299.preheader
  %.2155 = phi ptr [ %.0153426, %.preheader299.preheader ], [ %.2155.be, %.preheader299.backedge ] ; 6 uses
  %i.lf = load ptr, ptr %i.r, align 8
  %i.lg = load ptr, ptr %4, align 8               ; 5 uses
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li                    ; 2 uses
  %i.lk = icmp sgt i64 %i.lj, 7
  br i1 %i.lk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.preheader299
  %.val.i207 = load i64, ptr %i.lg, align 1
  %i.ll = load i32, ptr %i.u, align 8             ; 3 uses
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = shl i64 %.val.i207, %i.lm
  %i.lo = load i64, ptr %i.t, align 8
  %i.lp = or i64 %i.ln, %i.lo
  %i.lq = sub nsw i32 63, %i.ll
  %i.lr = ashr i32 %i.lq, 3
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds i8, ptr %i.lg, i64 %i.ls
  store ptr %i.lt, ptr %4, align 8
  %i.lu = or i32 %i.ll, 56
  br label %sinfl_refill.exit208

bb.al:                                            ; preds = %.preheader299
  %i.lv = load i32, ptr %i.u, align 8             ; 3 uses
  %i.lw = sub nsw i32 63, %i.lv
  %i.lx = ashr i32 %i.lw, 3
  %i.ly = sext i32 %i.lx to i64
  %i.lz = tail call i64 @llvm.smin.i64(i64 %i.lj, i64 %i.ly) ; 2 uses
  %i.ma = trunc i64 %i.lz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %sext.i205 = shl i64 %i.lz, 32
  %i.mb = ashr exact i64 %sext.i205, 32           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.lg, i64 %i.mb, i1 false)
  %.0..0..0..0..0..0..i206 = load i64, ptr %i.a, align 8
  %i.mc = zext nneg i32 %i.lv to i64
  %i.md = shl i64 %.0..0..0..0..0..0..i206, %i.mc
  %i.me = load i64, ptr %i.t, align 8
  %i.mf = or i64 %i.me, %i.md
  %i.mg = getelementptr inbounds i8, ptr %i.lg, i64 %i.mb
  store ptr %i.mg, ptr %4, align 8
  %i.mh = shl i32 %i.ma, 3
  %i.mi = add nsw i32 %i.mh, %i.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %sinfl_refill.exit208

sinfl_refill.exit208:                             ; preds = %bb.ak, %bb.al
  %.pre.i215 = phi i32 [ %i.lu, %bb.ak ], [ %i.mi, %bb.al ] ; 2 uses
  %.val15.i209 = phi i64 [ %i.lp, %bb.ak ], [ %i.mf, %bb.al ] ; 3 uses
  %i.mj = and i64 %.val15.i209, 1023
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4            ; 4 uses
  %i.mm = and i32 %i.ml, 16
  %.not.i210 = icmp eq i32 %i.mm, 0
  br i1 %.not.i210, label %sinfl_decode.exit216, label %bb.am

bb.am:                                            ; preds = %sinfl_refill.exit208
  %i.mn = and i32 %i.ml, 15
  %i.mo = lshr i64 %.val15.i209, 10               ; 2 uses
  %i.mp = add nsw i32 %.pre.i215, -10
  %i.mq = zext nneg i32 %i.mn to i64
  %notmask.i16.i211 = shl nsw i64 -1, %i.mq
  %i.mr = xor i64 %notmask.i16.i211, -1
  %i.ms = and i64 %i.mo, %i.mr
  %i.mt = trunc nuw nsw i64 %i.ms to i32
  %i.mu = lshr i32 %i.ml, 16
  %i.mv = add nuw nsw i32 %i.mu, %i.mt
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4
  br label %sinfl_decode.exit216

sinfl_decode.exit216:                             ; preds = %sinfl_refill.exit208, %bb.am
  %i.mz = phi i32 [ %i.mp, %bb.am ], [ %.pre.i215, %sinfl_refill.exit208 ]
  %i.na = phi i64 [ %i.mo, %bb.am ], [ %.val15.i209, %sinfl_refill.exit208 ]
  %.0.i212 = phi i32 [ %i.my, %bb.am ], [ %i.ml, %sinfl_refill.exit208 ] ; 2 uses
  %i.nb = and i32 %.0.i212, 15                    ; 2 uses
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = lshr i64 %i.na, %i.nc                   ; 2 uses
  store i64 %i.nd, ptr %i.t, align 8
  %i.ne = sub nsw i32 %i.mz, %i.nb                ; 2 uses
  store i32 %i.ne, ptr %i.u, align 8
  %i.nf = lshr i32 %.0.i212, 16                   ; 2 uses
  %i.ng = and i32 %i.nf, 4095                     ; 2 uses
  %i.nh = icmp samesign ult i32 %i.ng, 256
  br i1 %i.nh, label %bb.an, label %bb.as

bb.an:                                            ; preds = %sinfl_decode.exit216
  %.not = icmp ult ptr %.2155, %i.n
  br i1 %.not, label %bb.ap, label %bb.ao, !prof !213

bb.ao:                                            ; preds = %bb.an
  %i.ni = ptrtoint ptr %.2155 to i64
  %i.nj = sub i64 %i.ni, %i.w
  %i.nk = trunc i64 %i.nj to i32
  br label %.thread274

bb.ap:                                            ; preds = %bb.an
  %i.nl = trunc i32 %i.nf to i8
  %i.nm = getelementptr inbounds nuw i8, ptr %.2155, i64 1 ; 2 uses
  store i8 %i.nl, ptr %.2155, align 1
  %.val15.i217 = load i64, ptr %i.t, align 8      ; 3 uses
  %i.nn = and i64 %.val15.i217, 1023
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4            ; 4 uses
  %i.nq = and i32 %i.np, 16
  %.not.i218 = icmp eq i32 %i.nq, 0
  br i1 %.not.i218, label %._crit_edge.i221, label %bb.aq

._crit_edge.i221:                                 ; preds = %bb.ap
  %.pre.i223 = load i32, ptr %i.u, align 8
  br label %sinfl_decode.exit224

bb.aq:                                            ; preds = %bb.ap
  %i.nr = and i32 %i.np, 15
  %i.ns = lshr i64 %.val15.i217, 10               ; 2 uses
  %i.nt = load i32, ptr %i.u, align 8
  %i.nu = add nsw i32 %i.nt, -10
  %i.nv = zext nneg i32 %i.nr to i64
  %notmask.i16.i219 = shl nsw i64 -1, %i.nv
  %i.nw = xor i64 %notmask.i16.i219, -1
  %i.nx = and i64 %i.ns, %i.nw
  %i.ny = trunc nuw nsw i64 %i.nx to i32
  %i.nz = lshr i32 %i.np, 16
  %i.oa = add nuw nsw i32 %i.nz, %i.ny
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4
  br label %sinfl_decode.exit224

sinfl_decode.exit224:                             ; preds = %._crit_edge.i221, %bb.aq
  %i.oe = phi i32 [ %i.nu, %bb.aq ], [ %.pre.i223, %._crit_edge.i221 ]
  %i.of = phi i64 [ %i.ns, %bb.aq ], [ %.val15.i217, %._crit_edge.i221 ]
  %.0.i220 = phi i32 [ %i.od, %bb.aq ], [ %i.np, %._crit_edge.i221 ] ; 2 uses
  %i.og = and i32 %.0.i220, 15                    ; 2 uses
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = lshr i64 %i.of, %i.oh                   ; 2 uses
  store i64 %i.oi, ptr %i.t, align 8
  %i.oj = sub nsw i32 %i.oe, %i.og                ; 2 uses
  store i32 %i.oj, ptr %i.u, align 8
  %i.ok = lshr i32 %.0.i220, 16                   ; 2 uses
  %i.ol = and i32 %i.ok, 4095                     ; 2 uses
  %i.om = icmp samesign ult i32 %i.ol, 256
  br i1 %i.om, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %sinfl_decode.exit224
  %i.on = trunc i32 %i.ok to i8
  %i.oo = getelementptr inbounds nuw i8, ptr %.2155, i64 2
  store i8 %i.on, ptr %i.nm, align 1
  br label %.preheader299.backedge

bb.as:                                            ; preds = %sinfl_decode.exit224, %sinfl_decode.exit216
  %i.op = phi i32 [ %i.oj, %sinfl_decode.exit224 ], [ %i.ne, %sinfl_decode.exit216 ]
  %.val.i225 = phi i64 [ %i.oi, %sinfl_decode.exit224 ], [ %i.nd, %sinfl_decode.exit216 ] ; 2 uses
  %.3156 = phi ptr [ %i.nm, %sinfl_decode.exit224 ], [ %.2155, %sinfl_decode.exit216 ] ; 18 uses
  %.0 = phi i32 [ %i.ol, %sinfl_decode.exit224 ], [ %i.ng, %sinfl_decode.exit216 ] ; 3 uses
  %i.oq = icmp eq i32 %.0, 256
  br i1 %i.oq, label %bb.at, label %bb.av, !prof !214

bb.at:                                            ; preds = %bb.as
  %.not168 = icmp eq i32 %6, 0
  br i1 %.not168, label %.backedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.or = ptrtoint ptr %.3156 to i64
  %i.os = sub i64 %i.or, %i.w
  %i.ot = trunc i64 %i.os to i32
  br label %.thread274

bb.av:                                            ; preds = %bb.as
  %i.ou = icmp samesign ugt i32 %.0, 285
  br i1 %i.ou, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ov = ptrtoint ptr %.3156 to i64
  %i.ow = sub i64 %i.ov, %i.w
  %i.ox = trunc i64 %i.ow to i32
  br label %.thread274

bb.ax:                                            ; preds = %bb.av
  %i.oy = add nsw i32 %.0, -257
  %i.oz = zext nneg i32 %i.oy to i64              ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr @sinfl_decompress.lbits, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1             ; 2 uses
  %i.pc = zext i8 %i.pb to i32
  %i.pd = zext i8 %i.pb to i64                    ; 2 uses
  %notmask.i.i226 = shl nsw i64 -1, %i.pd
  %i.pe = xor i64 %notmask.i.i226, -1
  %i.pf = and i64 %.val.i225, %i.pe
  %i.pg = lshr i64 %.val.i225, %i.pd              ; 3 uses
  %i.ph = sub nsw i32 %i.op, %i.pc                ; 2 uses
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr @sinfl_decompress.lbase, i64 %i.oz
  %i.pj = load i16, ptr %i.pi, align 2
  %i.pk = and i64 %i.pg, 255
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4            ; 4 uses
  %i.pn = and i32 %i.pm, 16
  %.not.i228 = icmp eq i32 %i.pn, 0
  br i1 %.not.i228, label %sinfl_decode.exit234, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.po = and i32 %i.pm, 15
  %i.pp = lshr i64 %i.pg, 8                       ; 2 uses
  %i.pq = add nsw i32 %i.ph, -8
  %i.pr = zext nneg i32 %i.po to i64
  %notmask.i16.i229 = shl nsw i64 -1, %i.pr
  %i.ps = xor i64 %notmask.i16.i229, -1
  %i.pt = and i64 %i.pp, %i.ps
  %i.pu = trunc nuw nsw i64 %i.pt to i32
  %i.pv = lshr i32 %i.pm, 16
  %i.pw = add nuw nsw i32 %i.pv, %i.pu
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4
  br label %sinfl_decode.exit234

sinfl_decode.exit234:                             ; preds = %bb.ax, %bb.ay
  %i.qa = phi i32 [ %i.pq, %bb.ay ], [ %i.ph, %bb.ax ]
  %i.qb = phi i64 [ %i.pp, %bb.ay ], [ %i.pg, %bb.ax ]
  %.0.i230 = phi i32 [ %i.pz, %bb.ay ], [ %i.pm, %bb.ax ] ; 2 uses
  %i.qc = and i32 %.0.i230, 15                    ; 2 uses
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = lshr i64 %i.qb, %i.qd                   ; 2 uses
  %i.qf = lshr i32 %.0.i230, 16
  %i.qg = and i32 %i.qf, 4095
  %i.qh = zext nneg i32 %i.qg to i64              ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr @sinfl_decompress.dbits, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1             ; 2 uses
  %i.qk = zext i8 %i.qj to i32
  %i.ql = zext i8 %i.qj to i64                    ; 2 uses
  %notmask.i.i236 = shl nsw i64 -1, %i.ql
  %i.qm = xor i64 %notmask.i.i236, -1
  %i.qn = and i64 %i.qe, %i.qm
  %i.qo = trunc i64 %i.qn to i32
  %i.qp = lshr i64 %i.qe, %i.ql
  store i64 %i.qp, ptr %i.t, align 8
  %i.qq = add nuw nsw i32 %i.qc, %i.qk
  %i.qr = sub i32 %i.qa, %i.qq
  store i32 %i.qr, ptr %i.u, align 8
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr @sinfl_decompress.dbase, i64 %i.qh
  %i.qt = load i16, ptr %i.qs, align 2
  %i.qu = sext i16 %i.qt to i32
  %i.qv = add nsw i32 %i.qo, %i.qu                ; 5 uses
  %i.qw = sext i32 %i.qv to i64                   ; 3 uses
  %i.qx = sub nsw i64 0, %i.qw
  %i.qy = getelementptr inbounds i8, ptr %.3156, i64 %i.qx ; 10 uses
  %i.qz = ptrtoint ptr %.3156 to i64              ; 13 uses
  %i.ra = sub i64 %i.qz, %i.w
  %i.rb = trunc i64 %i.ra to i32                  ; 2 uses
  %i.rc = icmp sgt i32 %i.qv, %i.rb
  br i1 %i.rc, label %.thread274, label %bb.az, !prof !214

bb.az:                                            ; preds = %sinfl_decode.exit234
  %i.rd = sext i16 %i.pj to i64
  %i.re = add i64 %i.pf, %i.rd
  %sext = shl i64 %i.re, 32
  %i.rf = ashr exact i64 %sext, 32                ; 5 uses
  %i.rg = getelementptr inbounds i8, ptr %.3156, i64 %i.rf ; 15 uses
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = sub i64 %i.x, %i.rh
  %i.rj = icmp sgt i64 %i.ri, 20
  br i1 %i.rj, label %bb.ba, label %iter.check534, !prof !213

bb.ba:                                            ; preds = %bb.az
  %i.rk = icmp sgt i32 %i.qv, 7
  br i1 %i.rk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.rl = load i64, ptr %i.qy, align 1
  store i64 %i.rl, ptr %.3156, align 1
  %i.rm = getelementptr inbounds nuw i8, ptr %.3156, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ro = load i64, ptr %i.rn, align 1
  store i64 %i.ro, ptr %i.rm, align 1
  %i.rp = getelementptr inbounds nuw i8, ptr %.3156, i64 16 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 3 uses
  %i.rr = add i64 %i.rf, %i.qz
  %i.rs = add i64 %i.qz, 24
  %i.rt = tail call i64 @llvm.umax.i64(i64 %i.rr, i64 %i.rs)
  %i.ru = add i64 %i.rt, -17
  %i.rv = sub i64 %i.ru, %i.qz                    ; 2 uses
  %i.rw = lshr i64 %i.rv, 3
  %i.rx = add nuw nsw i64 %i.rw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rv, 24
  %diff.check = icmp ult i32 %i.qv, 32
  %or.cond552 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond552, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bb
  %n.vec = and i64 %i.rx, 4611686018427387900     ; 3 uses
  %i.ry = shl i64 %n.vec, 3                       ; 2 uses
  %i.rz = getelementptr i8, ptr %i.rp, i64 %i.ry
  %i.sa = getelementptr i8, ptr %i.rq, i64 %i.ry
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.sb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.rp, i64 %i.sb ; 2 uses
  %next.gep472 = getelementptr i8, ptr %i.rq, i64 %i.sb ; 2 uses
  %i.sc = getelementptr i8, ptr %next.gep472, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep472, align 1
  %wide.load473 = load <2 x i64>, ptr %i.sc, align 1
  %i.sd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load473, ptr %i.sd, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.se = icmp eq i64 %index.next, %n.vec
  br i1 %i.se, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rx, %n.vec
  br i1 %cmp.n, label %.preheader299.backedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bb, %middle.block
  %.0266.ph = phi ptr [ %i.rp, %bb.bb ], [ %i.rz, %middle.block ]
  %.0263.ph = phi ptr [ %i.rq, %bb.bb ], [ %i.sa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0266 = phi ptr [ %i.sg, %scalar.ph ], [ %.0266.ph, %scalar.ph.preheader ] ; 2 uses
  %.0263 = phi ptr [ %i.sh, %scalar.ph ], [ %.0263.ph, %scalar.ph.preheader ] ; 2 uses
  %i.sf = load i64, ptr %.0263, align 1
  store i64 %i.sf, ptr %.0266, align 1
  %i.sg = getelementptr inbounds nuw i8, ptr %.0266, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.0263, i64 8
  %i.si = icmp ult ptr %i.sg, %i.rg
  br i1 %i.si, label %scalar.ph, label %.preheader299.backedge, !llvm.loop !218

bb.bc:                                            ; preds = %bb.ba
  %i.sj = icmp eq i32 %i.qv, 1
  br i1 %i.sj, label %bb.bd, label %iter.check

bb.bd:                                            ; preds = %bb.bc
  %i.sk = load i8, ptr %i.qy, align 1
  %i.sl = zext i8 %i.sk to i32                    ; 4 uses
  %i.sm = shl nuw i32 %i.sl, 24
  %i.sn = shl nuw nsw i32 %i.sl, 16
  %i.so = shl nuw nsw i32 %i.sl, 8
  %i.sp = or disjoint i32 %i.sn, %i.sm
  %i.sq = or disjoint i32 %i.sp, %i.so
  %i.sr = or disjoint i32 %i.sq, %i.sl
  %i.ss = zext i32 %i.sr to i64                   ; 2 uses
  %i.st = shl nuw i64 %i.ss, 32
  %i.su = or disjoint i64 %i.st, %i.ss            ; 4 uses
  store i64 %i.su, ptr %.3156, align 1
  %i.sv = getelementptr inbounds nuw i8, ptr %.3156, i64 8
  store i64 %i.su, ptr %i.sv, align 1
  %i.sw = getelementptr inbounds nuw i8, ptr %.3156, i64 16 ; 3 uses
  %i.sx = add i64 %i.rf, %i.qz
  %i.sy = add i64 %i.qz, 24
  %i.sz = tail call i64 @llvm.umax.i64(i64 %i.sx, i64 %i.sy)
  %i.ta = add i64 %i.sz, -17
  %i.tb = sub i64 %i.ta, %i.qz                    ; 2 uses
  %i.tc = lshr i64 %i.tb, 3
  %i.td = add nuw nsw i64 %i.tc, 1                ; 2 uses
  %min.iters.check476 = icmp ult i64 %i.tb, 24
  br i1 %min.iters.check476, label %scalar.ph475.preheader, label %vector.ph477

vector.ph477:                                     ; preds = %bb.bd
  %n.vec478 = and i64 %i.td, 4611686018427387900  ; 3 uses
  %i.te = shl i64 %n.vec478, 3
end_hunk_6
begin_hunk_7_@EncodeDataBase64:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = and i32 %i.ah, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @EncodeDataBase64.base64EncodeTable, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  store i8 %i.bf, ptr %i.bg, align 1
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.bh, label %.lr.ph, label %.preheader.loopexit

._crit_edge:                                      ; preds = %.lr.ph65.preheader, %.preheader
  %i.bi = zext nneg i32 %.053.lcssa to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bi
  store i8 0, ptr %i.bj, align 1
  %.not60 = icmp eq i32 %.053.lcssa, %i.d
  br i1 %.not60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.251)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  store i32 %i.e, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define noundef ptr @DecodeDataBase64(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %1, align 4
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #57 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 32                 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.d, %bb.b ]
  %.060 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 61
  %i.h = add nuw nsw i32 %.060, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sdiv i32 %i.c, 4
  %i.j = mul nsw i32 %i.i, 3                      ; 3 uses
  %i.k = sub nsw i32 %i.j, %.060
  %i.l = sext i32 %i.j to i64                     ; 2 uses
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 1) #60 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.o = icmp sgt i32 %i.c, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %.not105 = icmp sgt i64 %i.d, 2
  br i1 %.not105, label %.lr.ph108.preheader, label %bb.e

.lr.ph108.preheader:                              ; preds = %.lr.ph.preheader
  %invariant.op = sub nsw i64 %i.d, 2
  br label %.lr.ph108

.lr.ph:                                           ; preds = %bb.k
  %.not = icmp slt i64 %indvars.iv.next86, %invariant.op
  br i1 %.not, label %.lr.ph108, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph._crit_edge, %.lr.ph.preheader
  %indvars.iv87.lcssa = phi i32 [ %i.p, %.lr.ph._crit_edge ], [ 0, %.lr.ph.preheader ]
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.252)
  br label %.loopexit

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph
  %indvars.iv85107 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 4 uses
  %indvars.iv87106 = phi i64 [ %indvars.iv.next88, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr i8, ptr %i.q, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not70 = icmp eq i8 %i.ae, 61
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph108
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 6
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %bb.f
  %i.ak = phi i32 [ %i.aj, %bb.f ], [ 0, %.lr.ph108 ] ; 4 uses
  %i.al = or disjoint i64 %indvars.iv85107, 3     ; 2 uses
  %i.am = icmp slt i64 %i.al, %i.d
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %.not71 = icmp eq i8 %i.ao, 61
  br i1 %.not71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = or i32 %i.ak, %i.as
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.au = phi i32 [ %i.at, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %bb.g ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87106, 3 ; 4 uses
  %.not72 = icmp sgt i64 %indvars.iv.next88, %i.l
  br i1 %.not72, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.av = trunc nuw nsw i64 %indvars.iv87106 to i32
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.253)
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aw = shl nuw nsw i32 %i.v, 18
  %i.ax = shl nuw nsw i32 %i.ab, 12
  %i.ay = or i32 %i.ax, %i.aw
  %i.az = or i32 %i.ay, %i.ak                     ; 2 uses
  %i.ba = lshr i32 %i.az, 16
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv87106 ; 3 uses
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = lshr i32 %i.az, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr i8, ptr %i.bc, i64 1
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = trunc i32 %i.au to i8
  %i.bh = getelementptr i8, ptr %i.bc, i64 2
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85107, 4 ; 3 uses
  %i.bi = trunc nuw i64 %indvars.iv.next86 to i32
  %i.bj = icmp slt i32 %i.bi, %i.c
  br i1 %i.bj, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.k
  %i.bk = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %.thread, %bb.e
  %.05778 = phi i32 [ %indvars.iv87.lcssa, %bb.e ], [ %i.av, %.thread ], [ 0, %.preheader ], [ %i.bk, %.loopexit.loopexit ]
  %.not73 = icmp eq i32 %i.j, %.05778
  br i1 %.not73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.254)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  store i32 %i.k, ptr %1, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d, %bb.a
  %.163 = phi ptr [ null, %bb.a ], [ %i.m, %bb.m ], [ null, %bb.d ]
  ret ptr %.163
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @ComputeCRC32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #50 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.c = lshr i32 %.078.epil.init, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = and i32 %.078.epil.init, 255
  %i.h = xor i32 %i.g, %i.f
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = xor i32 %i.k, %i.c
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i32 [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil.preheader ]
  %i.m = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  ret i32 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.078 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = lshr i32 %.078, 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = and i32 %.078, 255
  %i.s = xor i32 %i.r, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, %i.n                       ; 2 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.w, 255
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = xor i32 %i.ag, %i.x                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeMD5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeMD5.hash, align 16
  %i.a = add nsw i32 %1, 8
  %i.b = sdiv i32 %i.a, 64
  %i.c = shl nsw i32 %i.b, 6                      ; 2 uses
  %i.d = or disjoint i32 %i.c, 56
  %i.e = add nsw i32 %i.c, 120
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 5 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i32 %1, 3
  %i.k = sext i32 %i.d to i64                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  store i32 %i.j, ptr %i.l, align 1
  %i.m = icmp sgt i32 %1, -72
  br i1 %i.m, label %.lr.ph, label %bb.b

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.s, ptr @ComputeMD5.hash, align 16
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 4), align 4
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 8), align 8
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 12), align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef nonnull %i.g) #56
  ret ptr @ComputeMD5.hash

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = phi i32 [ %i.s, %bb.c ], [ 1732584193, %bb.a ] ; 2 uses
  %i.o = phi i32 [ %i.t, %bb.c ], [ -271733879, %bb.a ] ; 2 uses
  %i.p = phi i32 [ %i.u, %bb.c ], [ -1732584194, %bb.a ] ; 2 uses
  %i.q = phi i32 [ %i.v, %bb.c ], [ 271733878, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv82
  br label %bb.d

bb.c:                                             ; preds = %bb.k
  %i.s = add i32 %.06169, %i.n                    ; 2 uses
  %i.t = add i32 %i.bi, %i.o                      ; 2 uses
  %i.u = add i32 %.06367, %i.p                    ; 2 uses
  %i.v = add i32 %.06268, %i.q                    ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 64 ; 2 uses
  %i.w = icmp slt i64 %indvars.iv.next83, %i.k
  br i1 %i.w, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 10 uses
  %.06169 = phi i32 [ %i.q, %.lr.ph ], [ %.06268, %bb.k ] ; 7 uses
  %.06268 = phi i32 [ %i.p, %.lr.ph ], [ %.06367, %bb.k ] ; 6 uses
  %.06367 = phi i32 [ %i.o, %.lr.ph ], [ %i.bi, %bb.k ] ; 8 uses
  %.06466 = phi i32 [ %i.n, %.lr.ph ], [ %.06169, %bb.k ]
  %i.x = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %.06268, %.06367
  %i.z = xor i32 %.06367, -1
  %i.aa = and i32 %.06169, %i.z
  %i.ab = or i32 %i.aa, %i.y
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %.06169, %.06367
  %i.ae = xor i32 %.06169, -1
  %i.af = and i32 %.06268, %i.ae
  %i.ag = or i32 %i.ad, %i.af
  %i.ah = mul nuw nsw i64 %indvars.iv, 5
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = and i64 %i.ai, 15
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i64 %indvars.iv, 48
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = xor i32 %.06268, %.06367
  %i.am = xor i32 %i.al, %.06169
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = add nuw nsw i64 %i.an, 5
  %i.ap = and i64 %i.ao, 15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = xor i32 %.06169, -1
  %i.ar = or i32 %.06367, %i.aq
  %i.as = xor i32 %i.ar, %.06268
  %i.at = mul i64 %indvars.iv, 7
  %i.au = and i64 %i.at, 15
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.e
  %.059 = phi i32 [ %i.ab, %bb.e ], [ %i.ag, %bb.g ], [ %i.am, %bb.i ], [ %i.as, %bb.j ]
  %.0 = phi i64 [ %indvars.iv, %bb.e ], [ %i.aj, %bb.g ], [ %i.ap, %bb.i ], [ %i.au, %bb.j ]
  %i.av = add i32 %.059, %.06466
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.k, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add i32 %i.ay, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.r, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = shl i32 %i.bb, %i.bd
  %i.bf = sub i32 32, %i.bd
  %i.bg = lshr i32 %i.bb, %i.bf
  %i.bh = add i32 %i.be, %.06367
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.d
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeSHA1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  %i.a = alloca [80 x i32], align 16              ; 8 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeSHA1.hash, align 16
  store i32 -1009589776, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 16), align 16
  %i.b = add nsw i32 %1, 8
  %i.c = sdiv i32 %i.b, 64
  %i.d = shl nsw i32 %i.c, 6                      ; 2 uses
  %i.e = add i32 %i.d, 64                         ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 6 uses
  %i.h = sext i32 %1 to i64                       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i64 %i.h, 3                      ; 8 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = sext i32 %i.d to i64
end_hunk_7
begin_hunk_8_@GetMouseY:bb.a
  %i.c = fadd float %i.a, %i.b
  %i.d = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1880), align 8
  %i.e = fmul float %i.c, %i.d
  %i.f = fptosi float %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @GetMousePosition() local_unnamed_addr #26 {
bb.a:
  %i.a = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  %i.b = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1868), align 4
  %i.c = fadd <2 x float> %i.a, %i.b
  %i.d = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  %i.e = fmul <2 x float> %i.c, %i.d
  ret <2 x float> %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetMouseOffset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  store <2 x float> %i.c, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1868), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @GetMouseWheelMoveV() local_unnamed_addr #26 {
bb.a:
  %.sroa.0.0.copyload = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1932), align 4
  ret <2 x float> %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchX() local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1984), align 8
  %i.b = fptosi float %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchY() local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1988), align 4
  %i.b = fptosi float %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define <2 x float> @GetTouchPosition(i32 noundef %0) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp slt i32 %0, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1984), i64 %i.b
  %.sroa.0.0.copyload2 = load <2 x float>, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.273, i32 noundef 8)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload2, %bb.b ], [ splat (float -1.000000e+00), %bb.c ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchPointId(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1952), i64 %i.b
  %i.d = load i32, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchPointCount() local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1948), align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #52

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sinfl_build(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 7, 11) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 -2147483647, -2147483648) %4) unnamed_addr #53 {
bb.a:
  %i.a = alloca [288 x i16], align 16             ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 18 uses
  %i.c = alloca [16 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %4, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !298

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.b, align 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.am, ptr %i.an, align 4
  %wide.trip.count119 = zext nneg i32 %3 to i64   ; 2 uses
  %i.ao = add nsw i64 %wide.trip.count119, -1     ; 3 uses
  %xtraiter196 = and i64 %i.ao, 1
  %unroll_iter201 = and i64 %i.ao, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge
  %i.ap = phi i32 [ %i.am, %._crit_edge ], [ %i.aw, %bb.b ]
  %indvars.iv116 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next117.1, %bb.b ] ; 3 uses
  %.095 = phi i32 [ 0, %._crit_edge ], [ %i.bb, %bb.b ]
  %niter202 = phi i64 [ 0, %._crit_edge ], [ %niter202.next.1, %bb.b ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = add nsw i32 %i.ar, %i.ap                ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next117
  store i32 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = add nsw i32 %i.av, %i.as                ; 3 uses
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next117.1
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = shl i32 %.095, 2
  %i.az = shl i32 %i.ar, 1
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = add nsw i32 %i.av, %i.ba                ; 3 uses
  %niter202.next.1 = add nuw nsw i64 %niter202, 2 ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.unr-lcssa, label %bb.b

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod198.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod200 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.1
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.aw
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next117.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.be, ptr %i.bg, align 4
  %i.bh = shl i32 %i.bb, 1
  %i.bi = add nsw i32 %i.bd, %i.bh
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa194 = phi i32 [ %i.bb, %.unr-lcssa ], [ %i.bi, %.epil.preheader ]
  %i.bj = shl i32 %.lcssa194, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %wide.trip.count119
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add nsw i32 %i.bl, %i.bj
  br i1 %i.d, label %.lr.ph98.preheader, label %._crit_edge99

.lr.ph98.preheader:                               ; preds = %bb.c
  %wide.trip.count124 = zext nneg i32 %4 to i64   ; 2 uses
  %xtraiter203 = and i64 %wide.trip.count124, 1
  %i.bn = icmp eq i32 %4, 1
  br i1 %i.bn, label %.lr.ph98.epil.preheader, label %.lr.ph98.preheader.new

.lr.ph98.preheader.new:                           ; preds = %.lr.ph98.preheader
  %unroll_iter207 = and i64 %wide.trip.count124, 2147483646
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98, %.lr.ph98.preheader.new
  %indvars.iv121 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %indvars.iv.next122.1, %.lr.ph98 ] ; 4 uses
  %niter208 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %niter208.next.1, %.lr.ph98 ]
  %i.bo = trunc i64 %indvars.iv121 to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv121
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.bv
  store i16 %i.bo, ptr %i.bw, align 2
  %indvars.iv.next122 = or disjoint i64 %indvars.iv121, 1 ; 2 uses
  %i.bx = trunc i64 %indvars.iv.next122 to i16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next122
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ce
  store i16 %i.bx, ptr %i.cf, align 2
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge99.loopexit.unr-lcssa, label %.lr.ph98

._crit_edge99.loopexit.unr-lcssa:                 ; preds = %.lr.ph98
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod205.not, label %._crit_edge99.loopexit, label %.lr.ph98.epil.preheader

.lr.ph98.epil.preheader:                          ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.preheader
  %indvars.iv121.epil.init = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next122.1, %._crit_edge99.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod206 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.cg = trunc i64 %indvars.iv121.epil.init to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv121.epil.init
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cn
  store i16 %i.cg, ptr %i.co, align 2
  br label %._crit_edge99.loopexit

._crit_edge99.loopexit:                           ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.epil.preheader
  %.pre134 = load i32, ptr %i.c, align 16
  %i.cp = sext i32 %.pre134 to i64
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %bb.c
  %i.cq = phi i64 [ %i.cp, %._crit_edge99.loopexit ], [ 0, %bb.c ]
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cq ; 2 uses
  %i.cs = shl nuw nsw i32 1, %3
  %i.ct = icmp slt i32 %i.bm, %i.cs
  br i1 %i.ct, label %.preheader, label %bb.d

.preheader:                                       ; preds = %._crit_edge99, %.preheader
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.preheader ], [ 0, %._crit_edge99 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv130
  store i32 1, ptr %i.cu, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv.next131 to i32
  %.3.highbits = lshr i32 %i.cv, %2
  %i.cw = icmp eq i32 %.3.highbits, 0
  br i1 %i.cw, label %.preheader, label %sinfl_build_tbl.exit

bb.d:                                             ; preds = %._crit_edge99
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not59.i = icmp eq i32 %i.cy, 0
  br i1 %.not59.i, label %.lr.ph.i, label %.preheader55.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.da = load i32, ptr %i.cz, align 4            ; 3 uses
  %.not.i = icmp eq i32 %i.da, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.db = trunc nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  %.not4660.i = icmp slt i32 %2, %i.db
  br i1 %.not4660.i, label %.loopexit, label %.preheader55.lr.ph.i

.preheader55.lr.ph.i:                             ; preds = %bb.d, %._crit_edge.i
  %i.dc = phi i32 [ %i.db, %._crit_edge.i ], [ 1, %bb.d ] ; 2 uses
  %.sroa.17.068 = phi i32 [ %i.da, %._crit_edge.i ], [ %i.cy, %bb.d ]
  %i.dd = shl nuw nsw i32 1, %i.dc
  %i.de = zext nneg i32 %2 to i64
  br label %.preheader55.i

.loopexit54.i:                                    ; preds = %bb.g
  %i.df = trunc nsw i64 %indvars.iv126 to i32
  %i.dg = trunc nsw i64 %indvars.iv.next127 to i32 ; 2 uses
  %.not46.i.not = icmp sgt i32 %2, %i.df
  br i1 %.not46.i.not, label %.preheader55.i, label %.loopexit

.preheader55.i:                                   ; preds = %.loopexit54.i, %.preheader55.lr.ph.i
  %.sroa.0.1 = phi i32 [ %i.dc, %.preheader55.lr.ph.i ], [ %i.dg, %.loopexit54.i ] ; 7 uses
  %.sroa.17.1 = phi i32 [ %.sroa.17.068, %.preheader55.lr.ph.i ], [ %i.et, %.loopexit54.i ]
  %.sroa.26.0 = phi i32 [ 0, %.preheader55.lr.ph.i ], [ %i.el, %.loopexit54.i ]
  %.sroa.3346.0 = phi ptr [ %i.cr, %.preheader55.lr.ph.i ], [ %i.ef, %.loopexit54.i ]
  %.03961.i = phi i32 [ %i.dd, %.preheader55.lr.ph.i ], [ %.5.i, %.loopexit54.i ] ; 5 uses
  %i.dh = add nsw i32 %.03961.i, -1               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %.preheader55.i
  %.sroa.17.2 = phi i32 [ %.sroa.17.1, %.preheader55.i ], [ %i.em, %.thread.i ]
  %.sroa.26.1 = phi i32 [ %.sroa.26.0, %.preheader55.i ], [ %i.el, %.thread.i ] ; 4 uses
  %.sroa.3346.1 = phi ptr [ %.sroa.3346.0, %.preheader55.i ], [ %i.ef, %.thread.i ] ; 2 uses
  %i.di = load i16, ptr %.sroa.3346.1, align 2
  %i.dj = sext i16 %i.di to i32
  %i.dk = shl nsw i32 %i.dj, 16
  %i.dl = or i32 %i.dk, %.sroa.0.1
  %i.dm = sext i32 %.sroa.26.1 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dm
  store i32 %i.dl, ptr %i.dn, align 4
  %.not47.i = icmp eq i32 %.sroa.26.1, %i.dh
  br i1 %.not47.i, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.e
  %i.do = icmp slt i32 %.sroa.0.1, %2
  br i1 %i.do, label %.lr.ph63.i.preheader, label %sinfl_build_tbl.exit

.lr.ph63.i.preheader:                             ; preds = %.preheader.i
  %i.dp = sub i32 %2, %.sroa.0.1
  %.neg = add i32 %.sroa.0.1, 1
  %xtraiter211 = and i32 %i.dp, 1
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol

.lr.ph63.i.prol:                                  ; preds = %.lr.ph63.i.preheader
  %i.dq = sext i32 %.03961.i to i64               ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dq
  %i.ds = shl nsw i64 %i.dq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr nonnull align 4 %0, i64 %i.ds, i1 false)
  %i.dt = shl i32 %.03961.i, 1
  %i.du = add nsw i32 %.sroa.0.1, 1
  br label %.lr.ph63.i.prol.loopexit

.lr.ph63.i.prol.loopexit:                         ; preds = %.lr.ph63.i.prol, %.lr.ph63.i.preheader
  %.sroa.0.2.unr = phi i32 [ %.sroa.0.1, %.lr.ph63.i.preheader ], [ %i.du, %.lr.ph63.i.prol ]
  %.262.i.unr = phi i32 [ %.03961.i, %.lr.ph63.i.preheader ], [ %i.dt, %.lr.ph63.i.prol ]
  %i.dv = icmp eq i32 %2, %.neg
  br i1 %i.dv, label %sinfl_build_tbl.exit, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i
  %.sroa.0.2 = phi i32 [ %i.ee, %.lr.ph63.i ], [ %.sroa.0.2.unr, %.lr.ph63.i.prol.loopexit ]
  %.262.i = phi i32 [ %i.ed, %.lr.ph63.i ], [ %.262.i.unr, %.lr.ph63.i.prol.loopexit ] ; 3 uses
  %i.dw = sext i32 %.262.i to i64                 ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dw
  %i.dy = shl nsw i64 %i.dw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %0, i64 %i.dy, i1 false)
  %i.dz = shl i32 %.262.i, 1
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ea
  %i.ec = shl nsw i64 %i.ea, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr nonnull align 4 %0, i64 %i.ec, i1 false)
  %i.ed = shl i32 %.262.i, 2
  %i.ee = add nsw i32 %.sroa.0.2, 2               ; 2 uses
  %exitcond129.not.1 = icmp eq i32 %i.ee, %2
  br i1 %exitcond129.not.1, label %sinfl_build_tbl.exit, label %.lr.ph63.i

.thread.i:                                        ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.3346.1, i64 2 ; 3 uses
  %i.eg = xor i32 %.sroa.26.1, %i.dh
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = lshr exact i32 -2147483648, %i.eh       ; 2 uses
  %i.ej = add i32 %i.ei, -1
  %i.ek = and i32 %i.ej, %.sroa.26.1
  %i.el = or i32 %i.ek, %i.ei                     ; 3 uses
  %i.em = add nsw i32 %.sroa.17.2, -1             ; 2 uses
  %.not48.i = icmp eq i32 %i.em, 0
  br i1 %.not48.i, label %.preheader53.i.preheader, label %bb.e

.preheader53.i.preheader:                         ; preds = %.thread.i
  %i.en = sext i32 %.sroa.0.1 to i64
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.preheader53.i.preheader, %bb.g
  %indvars.iv126 = phi i64 [ %i.en, %.preheader53.i.preheader ], [ %indvars.iv.next127, %bb.g ] ; 3 uses
  %.4.i = phi i32 [ %.03961.i, %.preheader53.i.preheader ], [ %.5.i, %bb.g ] ; 3 uses
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 1 ; 3 uses
  %.not49.not.i = icmp slt i64 %indvars.iv126, %i.de
  br i1 %.not49.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader53.i
  %i.eo = sext i32 %.4.i to i64                   ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eo
  %i.eq = shl nsw i64 %i.eo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr nonnull align 4 %0, i64 %i.eq, i1 false)
  %i.er = shl i32 %.4.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader53.i
  %.5.i = phi i32 [ %i.er, %bb.f ], [ %.4.i, %.preheader53.i ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next127
  %i.et = load i32, ptr %i.es, align 4            ; 3 uses
  %.not50.i = icmp eq i32 %i.et, 0
  br i1 %.not50.i, label %.preheader53.i, label %.loopexit54.i

.loopexit:                                        ; preds = %.loopexit54.i, %._crit_edge.i
  %.sroa.0.3.ph = phi i32 [ %i.db, %._crit_edge.i ], [ %i.dg, %.loopexit54.i ]
  %.sroa.17.3.ph = phi i32 [ %i.da, %._crit_edge.i ], [ %i.et, %.loopexit54.i ]
  %.sroa.26.2.ph = phi i32 [ 0, %._crit_edge.i ], [ %i.el, %.loopexit54.i ]
  %.sroa.3346.2.ph = phi ptr [ %i.cr, %._crit_edge.i ], [ %i.ef, %.loopexit54.i ]
  %i.eu = shl nuw nsw i32 1, %2                   ; 2 uses
  %i.ev = add nsw i32 %i.eu, -1
  %i.ew = sub nsw i32 0, %2
  %i.ex = sext i32 %i.ew to i64
  %i.ey = zext nneg i32 %2 to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.b, i64 %i.ey
  br label %.loopexit.i.outer

.loopexit.i.loopexit:                             ; preds = %bb.l
  %i.ez = trunc nsw i64 %indvars.iv.next79.i to i32
  br label %.loopexit.i.outer

.loopexit.i.outer:                                ; preds = %.loopexit.i.loopexit, %.loopexit
  %.sroa.17.4.ph = phi i32 [ %i.go, %.loopexit.i.loopexit ], [ %.sroa.17.3.ph, %.loopexit ]
  %.sroa.26.3.ph = phi i32 [ %i.gk, %.loopexit.i.loopexit ], [ %.sroa.26.2.ph, %.loopexit ]
  %.sroa.3346.3.ph = phi ptr [ %i.ge, %.loopexit.i.loopexit ], [ %.sroa.3346.2.ph, %.loopexit ]
  %.pre82.i.ph = phi i32 [ %i.ez, %.loopexit.i.loopexit ], [ %.sroa.0.3.ph, %.loopexit ] ; 4 uses
  %.057.i.ph = phi i32 [ %.158.i, %.loopexit.i.loopexit ], [ 0, %.loopexit ]
  %.055.i.ph = phi i32 [ %.156.i, %.loopexit.i.loopexit ], [ -1, %.loopexit ]
  %.054.i.ph = phi i32 [ %.1.i, %.loopexit.i.loopexit ], [ %i.eu, %.loopexit ]
  %.pre136 = sub nsw i32 %.pre82.i.ph, %2         ; 3 uses
  %.pre137 = shl nuw i32 1, %.pre136              ; 3 uses
  %i.fa = sext i32 %.pre82.i.ph to i64
  %i.fb = add nsw i64 %i.fa, %i.ex
  %i.fc = and i32 %.pre136, 15
  %i.fd = sext i32 %.pre137 to i64
  %notmask.i = shl nsw i32 -1, %.pre82.i.ph
  %i.fe = xor i32 %notmask.i, -1                  ; 2 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.outer, %bb.k
  %.sroa.17.4 = phi i32 [ %i.gl, %bb.k ], [ %.sroa.17.4.ph, %.loopexit.i.outer ] ; 3 uses
  %.sroa.26.3 = phi i32 [ %i.gk, %bb.k ], [ %.sroa.26.3.ph, %.loopexit.i.outer ] ; 5 uses
  %.sroa.3346.3 = phi ptr [ %i.ge, %bb.k ], [ %.sroa.3346.3.ph, %.loopexit.i.outer ] ; 2 uses
  %.057.i = phi i32 [ %.158.i, %bb.k ], [ %.057.i.ph, %.loopexit.i.outer ]
  %.055.i = phi i32 [ %.156.i, %bb.k ], [ %.055.i.ph, %.loopexit.i.outer ] ; 2 uses
  %.054.i = phi i32 [ %.1.i, %bb.k ], [ %.054.i.ph, %.loopexit.i.outer ] ; 4 uses
  %i.ff = and i32 %.sroa.26.3, %i.ev              ; 3 uses
  %.not.i35 = icmp eq i32 %i.ff, %.055.i
  br i1 %.not.i35, label %._crit_edge135, label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  %i.fg = icmp slt i32 %.sroa.17.4, %.pre137
  br i1 %i.fg, label %.lr.ph.i37, label %._crit_edge.i36

.lr.ph.i37:                                       ; preds = %bb.h, %.lr.ph.i37
  %indvars.iv.i38 = phi i64 [ %indvars.iv.next.i39, %.lr.ph.i37 ], [ %i.fb, %bb.h ]
  %.05267.i = phi i32 [ %i.fj, %.lr.ph.i37 ], [ %.sroa.17.4, %bb.h ]
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i38, 1 ; 3 uses
  %i.fh = shl i32 %.05267.i, 1
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i39
  %i.fi = load i32, ptr %gep.i, align 4
  %i.fj = add nsw i32 %i.fi, %i.fh                ; 2 uses
  %i.fk = trunc nsw i64 %indvars.iv.next.i39 to i32 ; 2 uses
  %i.fl = shl nuw i32 1, %i.fk                    ; 2 uses
  %i.fm = icmp slt i32 %i.fj, %i.fl
  br i1 %i.fm, label %.lr.ph.i37, label %._crit_edge.i36

._crit_edge.i36:                                  ; preds = %.lr.ph.i37, %bb.h
  %.059.lcssa.i = phi i32 [ %.pre136, %bb.h ], [ %i.fk, %.lr.ph.i37 ]
  %.lcssa.i = phi i32 [ %.pre137, %bb.h ], [ %i.fl, %.lr.ph.i37 ]
  %i.fn = add nsw i32 %.lcssa.i, %.054.i
  %i.fo = shl i32 %.054.i, 16
  %i.fp = and i32 %.059.lcssa.i, 15
  %i.fq = or disjoint i32 %i.fp, %i.fo
  %i.fr = or disjoint i32 %i.fq, 16
  %i.fs = zext nneg i32 %i.ff to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fs
  store i32 %i.fr, ptr %i.ft, align 4
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %.loopexit.i, %._crit_edge.i36
  %.158.i = phi i32 [ %.054.i, %._crit_edge.i36 ], [ %.057.i, %.loopexit.i ] ; 3 uses
  %.156.i = phi i32 [ %i.ff, %._crit_edge.i36 ], [ %.055.i, %.loopexit.i ] ; 2 uses
  %.1.i = phi i32 [ %i.fn, %._crit_edge.i36 ], [ %.054.i, %.loopexit.i ] ; 3 uses
  %i.fu = load i16, ptr %.sroa.3346.3, align 2
  %i.fv = sext i16 %i.fu to i32
  %i.fw = shl nsw i32 %i.fv, 16
  %i.fx = or disjoint i32 %i.fw, %i.fc
  %i.fy = ashr i32 %.sroa.26.3, %2
  %i.fz = add i32 %.158.i, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = sext i32 %.1.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge135
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %bb.i ], [ %i.ga, %._crit_edge135 ] ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv75.i
  store i32 %i.fx, ptr %i.gc, align 4
  %indvars.iv.next76.i = add nsw i64 %indvars.iv75.i, %i.fd ; 2 uses
  %i.gd = icmp slt i64 %indvars.iv.next76.i, %i.gb
  br i1 %i.gd, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not65.i = icmp eq i32 %.sroa.26.3, %i.fe
  br i1 %.not65.i, label %sinfl_build_tbl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.3346.3, i64 2 ; 2 uses
  %i.gf = xor i32 %.sroa.26.3, %i.fe
  %i.gg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gf, i1 true)
  %i.gh = lshr exact i32 -2147483648, %i.gg       ; 2 uses
  %i.gi = add nsw i32 %i.gh, -1
  %i.gj = and i32 %i.gi, %.sroa.26.3
  %i.gk = or i32 %i.gj, %i.gh                     ; 2 uses
  %i.gl = add nsw i32 %.sroa.17.4, -1             ; 2 uses
  %.not6469.i = icmp eq i32 %i.gl, 0
  br i1 %.not6469.i, label %.lr.ph71.i, label %.loopexit.i

.lr.ph71.i:                                       ; preds = %bb.k
  %i.gm = sext i32 %.pre82.i.ph to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph71.i
  %indvars.iv78.i = phi i64 [ %i.gm, %.lr.ph71.i ], [ %indvars.iv.next79.i, %bb.l ]
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, 1 ; 3 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next79.i
  %i.go = load i32, ptr %i.gn, align 4            ; 2 uses
  %.not64.i = icmp eq i32 %i.go, 0
  br i1 %.not64.i, label %bb.l, label %.loopexit.i.loopexit

sinfl_build_tbl.exit:                             ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i, %bb.j, %.preheader, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #31

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sdefl_huff(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 19, 289) %3, i32 noundef range(i32 7, 16) %4) unnamed_addr #53 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 12 uses
  %i.b = alloca [288 x i32], align 16             ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1152) %i.b, i8 0, i64 1152, i1 false)
  %i.d = add nuw nsw i32 %3, 3
  %i.e = and i32 %i.d, 1020                       ; 3 uses
  %i.f = add nsw i32 %i.e, -1                     ; 4 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 11 uses
  %i.g = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.b

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.unr-lcssa, %bb.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod105 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.j = load i32, ptr %i.i, align 4
  %..i.epil = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.f)
  %i.k = zext nneg i32 %..i.epil to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.unr-lcssa, %.epil.preheader
  %wide.trip.count66.i = zext nneg i32 %i.e to i64 ; 2 uses
  %i.o = icmp eq i32 %i.e, 4
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.p = add nsw i64 %wide.trip.count66.i, -8
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4
  %..i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.f)
  %i.s = zext nneg i32 %..i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.f)
  %i.z = zext nneg i32 %..i.1 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.unr-lcssa, label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv63.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next64.i.3, %.lr.ph.i ] ; 5 uses
  %.053.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %niter111 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter111.next.3, %.lr.ph.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %.053.i, ptr %i.ad, align 4
  %i.af = add i32 %i.ae, %.053.i                  ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  store i32 %i.af, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, %i.af                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  store i32 %i.aj, ptr %i.al, align 4
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  store i32 %i.an, ptr %i.ap, align 4
  %i.ar = add i32 %i.aq, %i.an                    ; 2 uses
  %indvars.iv.next64.i.3 = add nuw nsw i64 %indvars.iv63.i, 4 ; 2 uses
  %niter111.next.3 = add nuw nsw i64 %niter111, 4
  %niter111.ncmp.3 = icmp eq i64 %niter111, %i.p
  br i1 %niter111.ncmp.3, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv63.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next64.i.3, %.lr.ph.i ]
  %.053.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ar, %.lr.ph.i ]
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv63.i.epil = phi i64 [ %indvars.iv63.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next64.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.053.i.epil = phi i32 [ %.053.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.au, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i.epil ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  store i32 %.053.i.epil, ptr %i.as, align 4
  %i.au = add i32 %i.at, %.053.i.epil             ; 6 uses
  %indvars.iv.next64.i.epil = add nuw nsw i64 %indvars.iv63.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !299

.preheader.i:                                     ; preds = %.lr.ph.i.epil, %bb.e
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %bb.e ], [ 0, %.lr.ph.i.epil ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv68.i
  %i.aw = load i32, ptr %i.av, align 4            ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.f)
  %i.ay = shl i32 %i.aw, 10
  %i.az = trunc nuw nsw i64 %indvars.iv68.i to i32
  %i.ba = or i32 %i.ay, %i.az
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  store i32 %i.ba, ptr %i.bg, align 4
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv68.i
  store i8 0, ptr %i.bh, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %wide.trip.count.i
  br i1 %exitcond72.not.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr [4 x i8], ptr %i.b, i64 %wide.trip.count66.i ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load i32, ptr %i.bj, align 8            ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bl ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bi, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub i32 %i.bo, %i.bk                    ; 6 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 -4 ; 12 uses
  %i.br = lshr i32 %i.bp, 1                       ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not7.i.i.i, label %sdefl_heap_array.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.bs = zext i32 %i.bp to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %sdefl_heap_sub.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bt, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %sdefl_heap_sub.exit.i.i.i ] ; 5 uses
  %.08.i.i.i = phi i32 [ %i.br, %.lr.ph.preheader.i.i.i ], [ %i.cp, %sdefl_heap_sub.exit.i.i.i ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = shl nuw nsw i64 %indvars.iv.i.i.i, 1    ; 2 uses
  %.not27.i.i.i.i = icmp samesign ugt i64 %i.bw, %i.bs
  br i1 %.not27.i.i.i.i, label %sdefl_heap_sub.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i
  %i.bz = phi i32 [ %i.cn, %bb.i ], [ %i.bx, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %.028.i.i.i.i = phi i32 [ %.022.i.i.i.i, %bb.i ], [ %i.by, %.lr.ph.i.preheader.i.i.i ]
  %i.ca = icmp ult i32 %i.bz, %i.bp
  br i1 %i.ca, label %bb.g, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i.i.i = zext i32 %i.bz to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.phi.trans.insert.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i.i, align 4
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = or disjoint i32 %i.bz, 1                ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = zext i32 %i.bz to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ci = icmp ugt i32 %i.ce, %i.ch
  %spec.select.i.i.i.i = select i1 %i.ci, i32 %i.cb, i32 %i.bz ; 2 uses
  %i.cj = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %i.ch)
  %.pre33.i.i.i.i = zext i32 %spec.select.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi34.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %.pre33.i.i.i.i, %bb.g ]
  %i.ck = phi i32 [ %.pre.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.cj, %bb.g ] ; 2 uses
  %.022.i.i.i.i = phi i32 [ %i.bz, %.lr.ph._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.g ] ; 2 uses
  %.not26.i.i.i.i = icmp ult i32 %i.bv, %i.ck
  %i.cl = zext i32 %.028.i.i.i.i to i64           ; 2 uses
  br i1 %.not26.i.i.i.i, label %bb.i, label %sdefl_heap_sub.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cl
  store i32 %i.ck, ptr %i.cm, align 4
  %i.cn = shl i32 %.022.i.i.i.i, 1                ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.cn, %i.bp
  br i1 %.not.i.i.i.i, label %sdefl_heap_sub.exit.i.i.i, label %.lr.ph.i.i.i.i
end_hunk_8
begin_hunk_9_@sdefl_huff:bb.a
  %i.gc = or disjoint i32 %i.gb, %i.ga
  store i32 %i.gc, ptr %i.fs, align 4
  %.not35.i = icmp samesign ult i32 %i.fz, %4
  br i1 %.not35.i, label %.lr.ph..loopexit_crit_edge.i, label %.preheader.i43

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i40
  %.phi.trans.insert.i = zext nneg i32 %i.fz to i64 ; 2 uses
  %.phi.trans.insert42.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert42.i, align 4
  %i.gd = add nuw nsw i32 %i.fy, 2
  br label %.loopexit.i

.preheader.i43:                                   ; preds = %.lr.ph.i40, %.preheader.i43
  %.0.i44 = phi i32 [ %i.ge, %.preheader.i43 ], [ %4, %.lr.ph.i40 ] ; 2 uses
  %i.ge = add i32 %.0.i44, -1                     ; 2 uses
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %.not36.i = icmp eq i32 %i.gh, 0
  br i1 %.not36.i, label %.preheader.i43, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i43, %.lr.ph..loopexit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gf, %.preheader.i43 ]
  %i.gi = phi i32 [ %.pre.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.gh, %.preheader.i43 ]
  %.1.i45 = phi i32 [ %i.gd, %.lr.ph..loopexit_crit_edge.i ], [ %.0.i44, %.preheader.i43 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi.i
  %i.gk = add i32 %i.gi, -1
  store i32 %i.gk, ptr %i.gj, align 4
  %i.gl = zext i32 %.1.i45 to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = add i32 %i.gn, 2
  store i32 %i.go, ptr %i.gm, align 4
  %i.gp = icmp samesign ugt i64 %indvars.iv.i41, 1
  br i1 %i.gp, label %.lr.ph.i40, label %sdefl_gen_len_cnt.exit

sdefl_gen_len_cnt.exit:                           ; preds = %.loopexit.i, %sdefl_build_tree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.gq = zext nneg i32 %4 to i64                 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %sdefl_gen_len_cnt.exit
  %indvars.iv.i46 = phi i64 [ %i.gq, %sdefl_gen_len_cnt.exit ], [ %indvars.iv.next.i48, %._crit_edge.i ] ; 3 uses
  %.02532.i = phi i32 [ 0, %sdefl_gen_len_cnt.exit ], [ %.126.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46
  %i.gs = load i32, ptr %i.gr, align 4            ; 5 uses
  %.not2829.i = icmp eq i32 %i.gs, 0
  br i1 %.not2829.i, label %._crit_edge.i, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.z
  %i.gt = trunc i64 %indvars.iv.i46 to i8         ; 5 uses
  %xtraiter112 = and i32 %i.gs, 3                 ; 2 uses
  %lcmp.mod113.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i47, %.prol.preheader
  %.031.i.prol = phi i32 [ %i.gu, %.prol.preheader ], [ %i.gs, %.lr.ph.i47 ]
  %.12630.i.prol = phi i32 [ %i.gv, %.prol.preheader ], [ %.02532.i, %.lr.ph.i47 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i47 ]
  %i.gu = add i32 %.031.i.prol, -1                ; 2 uses
  %i.gv = add i32 %.12630.i.prol, 1               ; 3 uses
  %i.gw = zext i32 %.12630.i.prol to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = and i32 %i.gy, 1023
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ha
  store i8 %i.gt, ptr %i.hb, align 1
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter112
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !300

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i47
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i47 ], [ %i.gv, %.prol.preheader ]
  %.031.i.unr = phi i32 [ %i.gs, %.lr.ph.i47 ], [ %i.gu, %.prol.preheader ]
  %.12630.i.unr = phi i32 [ %.02532.i, %.lr.ph.i47 ], [ %i.gv, %.prol.preheader ]
  %i.hc = icmp ult i32 %i.gs, 4
  br i1 %i.hc, label %._crit_edge.i, label %.lr.ph.i47.new

.lr.ph.i47.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i47.new
  %.031.i = phi i32 [ %i.hy, %.lr.ph.i47.new ], [ %.031.i.unr, %.prol.loopexit ]
  %.12630.i = phi i32 [ %i.hz, %.lr.ph.i47.new ], [ %.12630.i.unr, %.prol.loopexit ] ; 5 uses
  %i.hd = add i32 %.12630.i, 1
  %i.he = zext i32 %.12630.i to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = and i32 %i.hg, 1023
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %i.hi
  store i8 %i.gt, ptr %i.hj, align 1
  %i.hk = add i32 %.12630.i, 2
  %i.hl = zext i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = and i32 %i.hn, 1023
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 %i.hp
  store i8 %i.gt, ptr %i.hq, align 1
  %i.hr = add i32 %.12630.i, 3
  %i.hs = zext i32 %i.hk to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = and i32 %i.hu, 1023
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 %i.hw
  store i8 %i.gt, ptr %i.hx, align 1
  %i.hy = add i32 %.031.i, -4                     ; 2 uses
  %i.hz = add i32 %.12630.i, 4                    ; 2 uses
  %i.ia = zext i32 %i.hr to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = and i32 %i.ic, 1023
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 %i.ie
  store i8 %i.gt, ptr %i.if, align 1
  %.not28.i.3 = icmp eq i32 %i.hy, 0
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i47.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i47.new, %bb.z
  %.126.lcssa.i = phi i32 [ %.02532.i, %bb.z ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hz, %.lr.ph.i47.new ]
  %indvars.iv.next.i48 = add nsw i64 %indvars.iv.i46, -1 ; 2 uses
  %i.ig = and i64 %indvars.iv.next.i48, 4294967295
  %.not.i49 = icmp eq i64 %i.ig, 0
  br i1 %.not.i49, label %.new114, label %bb.z

.new114:                                          ; preds = %._crit_edge.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.ih, align 4
  store i32 0, ptr %i.a, align 16
  %i.ii = add nsw i64 %i.gq, -1                   ; 2 uses
  %xtraiter116 = and i64 %i.ii, 3                 ; 3 uses
  %unroll_iter120 = and i64 %i.ii, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.new114
  %i.ij = phi i32 [ 0, %.new114 ], [ %i.jg, %bb.aa ]
  %indvars.iv37.i = phi i64 [ 2, %.new114 ], [ %indvars.iv.next38.i.3, %bb.aa ] ; 6 uses
  %niter121 = phi i64 [ 0, %.new114 ], [ %niter121.next.3, %bb.aa ]
  %i.ik = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i
  %i.il = getelementptr i8, ptr %i.ik, i64 -4
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add i32 %i.im, %i.ij
  %i.io = shl i32 %i.in, 1                        ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i
  store i32 %i.io, ptr %i.ip, align 8
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.iq = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i
  %i.ir = getelementptr i8, ptr %i.iq, i64 -4
  %i.is = load i32, ptr %i.ir, align 8
  %i.it = add i32 %i.is, %i.io
  %i.iu = shl i32 %i.it, 1                        ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i
  store i32 %i.iu, ptr %i.iv, align 4
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.1
  %i.ix = getelementptr i8, ptr %i.iw, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = add i32 %i.iy, %i.iu
  %i.ja = shl i32 %i.iz, 1                        ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.1
  store i32 %i.ja, ptr %i.jb, align 8
  %indvars.iv.next38.i.2 = add nuw nsw i64 %indvars.iv37.i, 3 ; 2 uses
  %i.jc = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.2
  %i.jd = getelementptr i8, ptr %i.jc, i64 -4
  %i.je = load i32, ptr %i.jd, align 8
  %i.jf = add i32 %i.je, %i.ja
  %i.jg = shl i32 %i.jf, 1                        ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.2
  store i32 %i.jg, ptr %i.jh, align 4
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter121.next.3 = add nuw i64 %niter121, 4     ; 2 uses
  %niter121.ncmp.3 = icmp eq i64 %niter121.next.3, %unroll_iter120
  br i1 %niter121.ncmp.3, label %.preheader.i52.preheader.unr-lcssa, label %bb.aa

.preheader.i52.preheader.unr-lcssa:               ; preds = %bb.aa
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %.preheader.i52.preheader, label %.epil.preheader115

.epil.preheader115:                               ; preds = %.preheader.i52.preheader.unr-lcssa
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader115
  %i.ji = phi i32 [ %i.jg, %.epil.preheader115 ], [ %i.jn, %bb.ab ]
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv.next38.i.3, %.epil.preheader115 ], [ %indvars.iv.next38.i.epil, %bb.ab ] ; 3 uses
  %epil.iter117 = phi i64 [ 0, %.epil.preheader115 ], [ %epil.iter117.next, %bb.ab ]
  %i.jj = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i.epil
  %i.jk = getelementptr i8, ptr %i.jj, i64 -4
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = add i32 %i.jl, %i.ji
  %i.jn = shl i32 %i.jm, 1                        ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.epil
  store i32 %i.jn, ptr %i.jo, align 4
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.preheader.i52.preheader, label %bb.ab, !llvm.loop !301

.preheader.i52.preheader:                         ; preds = %bb.ab, %.preheader.i52.preheader.unr-lcssa
  %xtraiter122 = and i64 %wide.trip.count.i, 1
  %i.jp = icmp eq i64 %i.g, 0
  br i1 %i.jp, label %.preheader.i52.epil.preheader, label %.preheader.i52.preheader.new

.preheader.i52.preheader.new:                     ; preds = %.preheader.i52.preheader
  %unroll_iter126 = and i64 %wide.trip.count.i, 510
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %.preheader.i52, %.preheader.i52.preheader.new
  %indvars.iv41.i = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %indvars.iv.next42.i.1, %.preheader.i52 ] ; 4 uses
  %niter127 = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %niter127.next.1, %.preheader.i52 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.jt, align 4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i
  store i32 %i.ju, ptr %i.jw, align 4
  %indvars.iv.next42.i = or disjoint i64 %indvars.iv41.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.i
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4            ; 2 uses
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next42.i
  store i32 %i.kb, ptr %i.kd, align 4
  %indvars.iv.next42.i.1 = add nuw nsw i64 %indvars.iv41.i, 2 ; 2 uses
  %niter127.next.1 = add nuw nsw i64 %niter127, 2 ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %sdefl_gen_codes.exit.unr-lcssa, label %.preheader.i52

sdefl_gen_codes.exit.unr-lcssa:                   ; preds = %.preheader.i52
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %sdefl_gen_codes.exit, label %.preheader.i52.epil.preheader

.preheader.i52.epil.preheader:                    ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.preheader
  %indvars.iv41.i.epil.init = phi i64 [ 0, %.preheader.i52.preheader ], [ %indvars.iv.next42.i.1, %sdefl_gen_codes.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i.epil.init
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4            ; 2 uses
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i.epil.init
  store i32 %i.ki, ptr %i.kk, align 4
  br label %sdefl_gen_codes.exit

sdefl_gen_codes.exit:                             ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.kl = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.kl
  %scevgep100 = getelementptr i8, ptr %0, i64 %wide.trip.count.i
  %bound0 = icmp ult ptr %1, %scevgep100
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %sdefl_gen_codes.exit
  %n.vec = and i64 %wide.trip.count.i, 508        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.km, align 4, !alias.scope !302, !noalias !305
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load101 = load <4 x i8>, ptr %i.kn, align 1, !alias.scope !305
  %i.ko = trunc <4 x i32> %wide.load to <4 x i16>
  %i.kp = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.ko)
  %i.kq = zext <4 x i16> %i.kp to <4 x i32>
  %i.kr = zext <4 x i8> %wide.load101 to <4 x i32>
  %i.ks = sub nsw <4 x i32> splat (i32 16), %i.kr
  %i.kt = lshr <4 x i32> %i.kq, %i.ks
  store <4 x i32> %i.kt, ptr %i.km, align 4, !alias.scope !302, !noalias !305
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %sdefl_gen_codes.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %sdefl_gen_codes.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ky = load i8, ptr %i.kx, align 1
  %trunc.i = trunc i32 %i.kw to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.kz = zext i16 %rev.i to i32
  %i.la = zext i8 %i.ky to i32
  %i.lb = sub nsw i32 16, %i.la
  %i.lc = lshr i32 %i.kz, %i.lb
  store i32 %i.lc, ptr %i.kv, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !308

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %sdefl_sort_sym.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #54

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #55

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bitreverse.v4i16(<4 x i16>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_9
